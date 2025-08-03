import mlir.ir as ir
import argparse
import yaml
import csv
import os # Import os for path handling

# Define the set of memory-related ops (excluding copies)
MEMORY_OPS = {
    'memref.alloc',
    'memref.dealloc',
    'memref.load',
    'memref.store'
}

# Define names for branch ops used to detect empty blocks
BRANCH_OPS = {'cf.br', 'std.br'}

# Define bufferization ops that act as type conversions
BUFFERIZATION_CAST_OPS = {
    'bufferization.to_memref',
    'bufferization.to_tensor'
    'tosa.transpose',
    'tosa.const',
    'tosa.matmul'
}

# Define ops that perform arithmetic on tensors (or produce tensor results)
TENSOR_ARITHMETIC_OPS = {
    # TOSA arithmetic operations that produce new tensors
    'tosa.add',
    'tosa.sub',
    'tosa.mul',
    'tosa.div',
    'tosa.negate',
    'tosa.abs',
    'tosa.ceil',
    'tosa.floor',
    'tosa.clamp',
    'tosa.log',
    'tosa.exp',
    'tosa.pow',
    'tosa.reciprocal',
    'tosa.rsqrt',
    'tosa.sigmoid',
    'tosa.tanh',
    'tosa.relu',
    'tosa.maximum',
    'tosa.minimum',
    'tosa.reduce_all',
    'tosa.reduce_any',
    'tosa.reduce_max',
    'tosa.reduce_min',
    'tosa.reduce_prod',
    'tosa.reduce_sum',
    'tosa.logical_and',
    'tosa.logical_or',
    'tosa.logical_not',
    'tosa.equal',
    'tosa.greater',
    'tosa.greater_equal',
    'tosa.transpose',
    'tosa.const',
    'tosa.matmul'
}

# Define ops that explicitly modify memory/tensors in place or create new tensors
# Excluding those already covered by TENSOR_ARITHMETIC_OPS
MEMORY_MODIFICATION_OPS = {
    'linalg.fill',          # Fills a memref/tensor
    'tensor.insert',        # Inserts a scalar into a tensor
    'tensor.insert_slice',  # Inserts a slice into a tensor
    'tensor.scatter',       # Scatters elements into a tensor
    'tensor.pack',          # Packs a tensor
    'tensor.unpack',        # Unpacks a tensor
    'tensor.from_elements', # Creates a tensor from elements
    # 'tosa.conv2d',          # Convolution, produces a new tensor
    # 'tosa.depthwise_conv2d',# Depthwise convolution, produces a new tensor
    'tosa.fully_connected', # Fully connected, produces a new tensor
    # 'tosa.matmul',          # Matrix multiplication, produces a new tensor
    # 'tosa.maxpool2d',       # Max pooling, produces a new tensor
    # 'tosa.avgpool2d',       # Average pooling, produces a new tensor
    'tosa.reshape',         # Reshape, produces a new tensor
    'tosa.transpose',       # Transpose, produces a new tensor
    'tosa.slice',           # Slice, produces a new tensor
    'tosa.concat',          # Concatenate, produces a new tensor
    'tosa.resize',          # Resize, produces a new tensor
    'tosa.pad',             # Pad, produces a new tensor
    'tosa.gather',          # Gather, produces a new tensor
    'tosa.scatter',         # TOSA scatter (distinct from tensor.scatter if both exist and behave differently)
    'tosa.select',          # Select, produces a new tensor
    'tosa.tile',            # Tile, produces a new tensor
    'tosa.while_loop',      # While loop can contain ops that write
    'tosa.if',              # If op can contain ops that write
    'tosa.cast',            # TOSA type conversion that produces a new tensor
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
      - tensor_arithmetic_ops
      - memory_modifications_without_tensor_arithmetic
    """
    with ir.Context(), ir.Location.unknown():
        module = ir.Module.parse(mlir_text)
        root_op = module.operation

        blocks = []
        def collect_blocks(regions):
            for region in regions:
                for block in region.blocks:
                    blocks.append(block)
                    for op in block.operations:
                        collect_blocks(op.regions)

        collect_blocks(root_op.regions)
        blocks = blocks[1:]

        basic_blocks = len(blocks)
        total_ops = sum(len(block.operations) for block in blocks)

        cast_ops = 0
        arith_ops = 0
        mem_ops = 0
        copy_ops = 0
        empty_blocks = 0
        tensor_arith_ops = 0
        memory_mod_without_arith_ops = 0

        for block in blocks:
            ops = block.operations
            if len(ops) == 1:
                name = str(ops[0].name)
                if name in BRANCH_OPS:
                    empty_blocks += 1

            for op in ops:
                name = str(op.name)

                if 'cast' in name or name in BUFFERIZATION_CAST_OPS:
                    cast_ops += 1

                if name.startswith('arith.') and not name.endswith('.constant'):
                    arith_ops += 1

                if name in MEMORY_OPS:
                    mem_ops += 1

                if name.endswith('.copy'):
                    copy_ops += 1

                if name in TENSOR_ARITHMETIC_OPS:
                    tensor_arith_ops += 1

                # Count memory modifications that are NOT tensor arithmetic
                if name in MEMORY_MODIFICATION_OPS and name not in TENSOR_ARITHMETIC_OPS:
                    memory_mod_without_arith_ops += 1

        return {
            'basic_blocks': basic_blocks,
            'total_ops': total_ops,
            'type_casts': cast_ops,
            'empty_basic_blocks': empty_blocks,
            'arithmetic_ops': arith_ops,
            'memory_ops': mem_ops,
            'memory_copies': copy_ops,
            'tensor_arithmetic_ops': tensor_arith_ops,
            'memory_modifications_without_tensor_arithmetic': memory_mod_without_arith_ops
        }


def main():
    parser = argparse.ArgumentParser(
        description="Analyze MLIR programs from a YAML configuration and output results to CSV."
    )
    parser.add_argument(
        "--input_yaml",
        required=True,
        help="Path to the YAML configuration file specifying MLIR files and output names."
    )
    parser.add_argument(
        "--output_csv",
        required=True,
        help="Path to the output CSV file where results will be written."
    )
    args = parser.parse_args()

    # Read YAML configuration
    try:
        with open(args.input_yaml, 'r') as f:
            config = yaml.safe_load(f)
    except FileNotFoundError:
        print(f"Error: YAML configuration file '{args.input_yaml}' not found.")
        return
    except yaml.YAMLError as e:
        print(f"Error parsing YAML file '{args.input_yaml}': {e}")
        return

    if 'programs' not in config or not isinstance(config['programs'], list):
        print("Error: YAML file must contain a 'programs' key with a list of program configurations.")
        return

    all_results = []
    # Initialize headers with 'Program Name' and then all keys from a sample analysis result
    headers = ['Program Name']
    first_program_processed = False

    for program_config in config['programs']:
        output_name = program_config.get('output_name')
        mlir_file_path = program_config.get('mlir_file')

        if not output_name or not mlir_file_path:
            print(f"Warning: Skipping an entry in YAML due to missing 'output_name' or 'mlir_file': {program_config}")
            continue

        if not os.path.exists(mlir_file_path):
            print(f"Warning: MLIR file '{mlir_file_path}' for program '{output_name}' not found. Skipping.")
            continue

        try:
            with open(mlir_file_path, 'r') as f:
                mlir_text = f.read()
        except Exception as e:
            print(f"Error reading MLIR file '{mlir_file_path}' for program '{output_name}': {e}. Skipping.")
            continue

        print(f"Analyzing program: {output_name} (from {mlir_file_path})...")
        results = analyze_mlir(mlir_text)

        # If this is the first program, populate headers
        if not first_program_processed:
            headers.extend(results.keys())
            first_program_processed = True

        row_data = {'Program Name': output_name}
        row_data.update(results)
        all_results.append(row_data)

    # Write results to CSV
    if not all_results:
        print("No programs were successfully analyzed. No CSV file will be generated.")
        return

    try:
        with open(args.output_csv, 'w', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=headers)
            writer.writeheader()
            writer.writerows(all_results)
        print(f"\nAnalysis complete. Results written to '{args.output_csv}'.")
    except Exception as e:
        print(f"Error writing to CSV file '{args.output_csv}': {e}")


if __name__ == "__main__":
    main()

