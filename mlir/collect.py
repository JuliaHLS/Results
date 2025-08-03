import mlir.ir as ir
import argparse

# Define the set of memory-related ops (excluding copies)
MEMORY_OPS = {
    'memref.alloc',
    'memref.dealloc',
    'memref.load',
    'memref.store'
}

# Define names for branch ops used to detect empty blocks
BRANCH_OPS = {'cf.br', 'std.br'}

# Define ops that explicitly modify memory/tensors in place
# Expanded to include more tosa and tensor ops that write to memory,
# including operations like 'tensor.from_elements'.
MEMORY_MODIFICATION_OPS = {
    'linalg.fill',
    'tensor.insert',
    'tensor.insert_slice',
    'tensor.scatter', # Writes elements into a tensor
    'tensor.pack',    # Packs a tensor, creating a new one
    'tensor.unpack',  # Unpacks a tensor, creating new ones
    'tensor.from_elements', # Creates a tensor from a list of elements

    # Common TOSA ops that produce output tensors (i.e., write to memory)
    'tosa.add',
    'tosa.sub',
    'tosa.mul',
    'tosa.div',
    'tosa.negate',
    'tosa.abs',
    'tosa.ceil',
    'tosa.floor',
    'tosa.clamp',
    'tosa.conv2d',
    'tosa.depthwise_conv2d',
    'tosa.fully_connected',
    'tosa.matmul',
    'tosa.maxpool2d',
    'tosa.avgpool2d',
    'tosa.reshape',
    'tosa.transpose',
    'tosa.slice',
    'tosa.concat',
    'tosa.resize',
    'tosa.pad',
    'tosa.gather',
    'tosa.scatter', # TOSA scatter also writes
    'tosa.select',
    'tosa.sigmoid',
    'tosa.tanh',
    'tosa.relu',
    'tosa.rsqrt',
    'tosa.log',
    'tosa.exp',
    'tosa.pow',
    'tosa.reciprocal',
    'tosa.logical_and',
    'tosa.logical_or',
    'tosa.logical_not',
    'tosa.equal',
    'tosa.greater',
    'tosa.greater_equal',
    'tosa.maximum',
    'tosa.minimum',
    'tosa.reduce_all',
    'tosa.reduce_any',
    'tosa.reduce_max',
    'tosa.reduce_min',
    'tosa.reduce_prod',
    'tosa.reduce_sum',
    'tosa.tile',
    'tosa.while_loop', # While loop can contain ops that write
    'tosa.if',        # If op can contain ops that write
    'tosa.cast',      # Type conversion that produces a new tensor
    # Note: 'memref.store' is already counted in MEMORY_OPS.
    # If you want to count it here as well, add it to this set.
}

# Define bufferization ops that act as type conversions
BUFFERIZATION_CAST_OPS = {
    'bufferization.to_memref',
    'bufferization.to_tensor'
}


def analyze_mlir(mlir_text: str) -> dict:
    """
    Analyze an MLIR module, returning counts of various categories:
      - basic_blocks
      - total_ops
      - type_casts
      - empty_basic_blocks
      - arithmetic_ops
      - memory_ops
      - memory_copies
      - memory_modifications (newly added)
    Additionally, this function now prints the content of each collected block.
    """
    with ir.Context(), ir.Location.unknown():
        module = ir.Module.parse(mlir_text)
        # The parsed module is also an Operation with regions
        root_op = module.operation

        # Collect all blocks recursively
        blocks = []
        def collect_blocks(regions):
            for region in regions:
                for block in region.blocks:
                    blocks.append(block)
                    # Recurse into nested regions of each operation
                    for op in block.operations:
                        collect_blocks(op.regions)

        # Start from the module's regions
        collect_blocks(root_op.regions)
        blocks = blocks[1:]

        # --- Added section to print block contents ---
        print("\n--- MLIR Block Contents ---")
        for i, block in enumerate(blocks):
            print(f"\nBlock {i}:")
            print(block) # Printing the block object directly will give its MLIR representation
        print("--- End MLIR Block Contents ---\n")
        # -------------------------------------------

        basic_blocks = len(blocks)
        total_ops = sum(len(block.operations) for block in blocks)

        cast_ops = 0
        arith_ops = 0
        mem_ops = 0
        copy_ops = 0
        empty_blocks = 0
        memory_mod_ops = 0 # New counter for memory modifications

        for block in blocks:
            ops = block.operations
            # Empty block: single unconditional branch forwarding arguments
            if len(ops) == 1:
                # Use str(ops[0].name) to get the string value
                name = str(ops[0].name)
                if name in BRANCH_OPS:
                    empty_blocks += 1

            for op in ops:
                # Use str(op.name) to get the string value
                name = str(op.name)
                # Type-casts: any op with 'cast' in its name OR specific bufferization cast ops
                if 'cast' in name or name in BUFFERIZATION_CAST_OPS:
                    cast_ops += 1

                # Arithmetic ops: arith.* except constant
                if name.startswith('arith.') and not name.endswith('.constant'):
                    arith_ops += 1

                # Memory ops (alloc, dealloc, load, store)
                if name in MEMORY_OPS:
                    mem_ops += 1

                # Memory copy ops
                if name.endswith('.copy'):
                    copy_ops += 1

                # New: Memory modification ops
                if name in MEMORY_MODIFICATION_OPS:
                    memory_mod_ops += 1

        return {
            'basic_blocks': basic_blocks,
            'total_ops': total_ops,
            'type_casts': cast_ops,
            'empty_basic_blocks': empty_blocks,
            'arithmetic_ops': arith_ops,
            'memory_ops': mem_ops,
            'memory_copies': copy_ops,
            'memory_modifications': memory_mod_ops # Add to return dict
        }


def main():
    parser = argparse.ArgumentParser(
        description="Analyze an MLIR program and report various operation counts."
    )
    parser.add_argument(
        "file", help="Path to the MLIR file to analyze"
    )
    args = parser.parse_args()

    try:
        with open(args.file, 'r') as f:
            mlir_text = f.read()
    except FileNotFoundError:
        print(f"Error: File '{args.file}' not found.")
        return
    except Exception as e:
        print(f"Error reading file: {e}")
        return

    results = analyze_mlir(mlir_text)
    print("\n--- Analysis Results ---")
    for category, count in results.items():
        print(f"{category}: {count}")
    print("------------------------")


if __name__ == "__main__":
    main()

