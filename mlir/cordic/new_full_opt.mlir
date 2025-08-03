module {
  func.func public @cordic_int(%arg0: i64, %arg1: i64) -> i64 {
    %c823550_i64 = arith.constant 823550 : i64
    %c486170_i64 = arith.constant 486170 : i64
    %c256879_i64 = arith.constant 256879 : i64
    %c130396_i64 = arith.constant 130396 : i64
    %c65451_i64 = arith.constant 65451 : i64
    %c32757_i64 = arith.constant 32757 : i64
    %c16383_i64 = arith.constant 16383 : i64
    %c8192_i64 = arith.constant 8192 : i64
    %c4096_i64 = arith.constant 4096 : i64
    %c2048_i64 = arith.constant 2048 : i64
    %c1024_i64 = arith.constant 1024 : i64
    %c512_i64 = arith.constant 512 : i64
    %c256_i64 = arith.constant 256 : i64
    %c128_i64 = arith.constant 128 : i64
    %c64_i64 = arith.constant 64 : i64
    %c32_i64 = arith.constant 32 : i64
    %from_elements = tensor.from_elements %c823550_i64, %c486170_i64, %c256879_i64, %c130396_i64, %c65451_i64, %c32757_i64, %c16383_i64, %c8192_i64, %c4096_i64, %c2048_i64, %c1024_i64, %c512_i64, %c256_i64, %c128_i64, %c64_i64, %c32_i64 : tensor<1x16x1xi64>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c1048576_i64 = arith.constant 1048576 : i64
    %c-1048576_i64 = arith.constant -1048576 : i64
    %c10_i64 = arith.constant 10 : i64
    %true = arith.constant true
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %0 = "bufferization.to_memref"(%from_elements) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    cf.br ^bb1(%c1_i64, %c1_i64, %arg0, %c0_i64, %arg1 : i64, i64, i64, i64, i64)
  ^bb1(%1: i64, %2: i64, %3: i64, %4: i64, %5: i64):  // 2 preds: ^bb0, ^bb5
    %6 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi64>) -> tensor<1x16x1xi64>
    %7 = "bufferization.to_memref"(%6) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    memref.copy %7, %0 : memref<1x16x1xi64> to memref<1x16x1xi64>
    %8 = arith.cmpi sge, %3, %c0_i64 : i64
    cf.cond_br %8, ^bb2(%c1048576_i64 : i64), ^bb2(%c-1048576_i64 : i64)
  ^bb2(%9: i64):  // 2 preds: ^bb1, ^bb1
    %10 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi64>) -> tensor<1x16x1xi64>
    %11 = "bufferization.to_memref"(%10) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    memref.copy %11, %0 : memref<1x16x1xi64> to memref<1x16x1xi64>
    cf.br ^bb3
  ^bb3:  // pred: ^bb2
    %12 = arith.subi %1, %c1_i64 : i64
    %13 = arith.shrsi %4, %12 : i64
    %14 = arith.muli %9, %13 : i64
    %15 = arith.subi %5, %14 : i64
    %16 = arith.shrsi %5, %12 : i64
    %17 = arith.muli %9, %16 : i64
    %18 = arith.addi %4, %17 : i64
    %19 = arith.index_cast %12 : i64 to index
    %extracted = tensor.extract %from_elements[%c0, %c0, %19] : tensor<1x16x1xi64>
    %20 = arith.muli %9, %extracted : i64
    %21 = arith.subi %3, %20 : i64
    %22 = arith.cmpi eq, %2, %c10_i64 : i64
    cf.cond_br %22, ^bb5(%c0_i64, %c0_i64, %true : i64, i64, i1), ^bb4
  ^bb4:  // pred: ^bb3
    %23 = arith.addi %2, %c1_i64 : i64
    cf.br ^bb5(%23, %23, %false : i64, i64, i1)
  ^bb5(%24: i64, %25: i64, %26: i1):  // 2 preds: ^bb3, ^bb4
    %27 = arith.xori %26, %true : i1
    cf.cond_br %27, ^bb1(%24, %25, %21, %18, %15 : i64, i64, i64, i64, i64), ^bb6
  ^bb6:  // pred: ^bb5
    return %15 : i64
  }
}
