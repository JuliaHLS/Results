module {
  func.func public @cordic_int(%arg0: i32, %arg1: i32) -> i32 {
    %c823550_i32 = arith.constant 823550 : i32
    %c486170_i32 = arith.constant 486170 : i32
    %c256879_i32 = arith.constant 256879 : i32
    %c130396_i32 = arith.constant 130396 : i32
    %c65451_i32 = arith.constant 65451 : i32
    %c32757_i32 = arith.constant 32757 : i32
    %c16383_i32 = arith.constant 16383 : i32
    %c8192_i32 = arith.constant 8192 : i32
    %c4096_i32 = arith.constant 4096 : i32
    %c2048_i32 = arith.constant 2048 : i32
    %c1024_i32 = arith.constant 1024 : i32
    %c512_i32 = arith.constant 512 : i32
    %c256_i32 = arith.constant 256 : i32
    %c128_i32 = arith.constant 128 : i32
    %c64_i32 = arith.constant 64 : i32
    %c32_i32 = arith.constant 32 : i32
    %from_elements = tensor.from_elements %c823550_i32, %c486170_i32, %c256879_i32, %c130396_i32, %c65451_i32, %c32757_i32, %c16383_i32, %c8192_i32, %c4096_i32, %c2048_i32, %c1024_i32, %c512_i32, %c256_i32, %c128_i32, %c64_i32, %c32_i32 : tensor<1x16x1xi32>
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1048576_i32 = arith.constant 1048576 : i32
    %c-1048576_i32 = arith.constant -1048576 : i32
    %c10_i32 = arith.constant 10 : i32
    %true = arith.constant true
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %0 = "bufferization.to_memref"(%from_elements) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    cf.br ^bb1(%c1_i32, %c1_i32, %arg0, %c0_i32, %arg1 : i32, i32, i32, i32, i32)
  ^bb1(%1: i32, %2: i32, %3: i32, %4: i32, %5: i32):  // 2 preds: ^bb0, ^bb5
    %6 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi32>) -> tensor<1x16x1xi32>
    %7 = "bufferization.to_memref"(%6) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    memref.copy %7, %0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    %8 = arith.cmpi sge, %3, %c0_i32 : i32
    cf.cond_br %8, ^bb2(%c1048576_i32 : i32), ^bb2(%c-1048576_i32 : i32)
  ^bb2(%9: i32):  // 2 preds: ^bb1, ^bb1
    %10 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi32>) -> tensor<1x16x1xi32>
    %11 = "bufferization.to_memref"(%10) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    memref.copy %11, %0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    cf.br ^bb3
  ^bb3:  // pred: ^bb2
    %12 = arith.subi %1, %c1_i32 : i32
    %13 = arith.shrsi %4, %12 : i32
    %14 = arith.muli %9, %13 : i32
    %15 = arith.subi %5, %14 : i32
    %16 = arith.shrsi %5, %12 : i32
    %17 = arith.muli %9, %16 : i32
    %18 = arith.addi %4, %17 : i32
    %19 = arith.index_cast %12 : i32 to index
    %extracted = tensor.extract %from_elements[%c0, %c0, %19] : tensor<1x16x1xi32>
    %20 = arith.muli %9, %extracted : i32
    %21 = arith.subi %3, %20 : i32
    %22 = arith.cmpi eq, %2, %c10_i32 : i32
    cf.cond_br %22, ^bb5(%c0_i32, %c0_i32, %true : i32, i32, i1), ^bb4
  ^bb4:  // pred: ^bb3
    %23 = arith.addi %2, %c1_i32 : i32
    cf.br ^bb5(%23, %23, %false : i32, i32, i1)
  ^bb5(%24: i32, %25: i32, %26: i1):  // 2 preds: ^bb3, ^bb4
    %27 = arith.xori %26, %true : i1
    cf.cond_br %27, ^bb1(%24, %25, %21, %18, %15 : i32, i32, i32, i32, i32), ^bb6
  ^bb6:  // pred: ^bb5
    return %15 : i32
  }
}
