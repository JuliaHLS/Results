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
    %c1_i64_0 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %0 = "bufferization.to_memref"(%from_elements) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    cf.br ^bb1(%c1_i64, %c1_i64_0, %arg0, %c0_i64, %arg1 : i64, i64, i64, i64, i64)
  ^bb1(%1: i64, %2: i64, %3: i64, %4: i64, %5: i64):  // 2 preds: ^bb0, ^bb12
    %6 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi64>) -> tensor<1x16x1xi64>
    %7 = "bufferization.to_memref"(%6) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    memref.copy %7, %0 : memref<1x16x1xi64> to memref<1x16x1xi64>
    %c0_i64_1 = arith.constant 0 : i64
    %8 = arith.cmpi sge, %3, %c0_i64_1 : i64
    cf.cond_br %8, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %9 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi64>) -> tensor<1x16x1xi64>
    %10 = "bufferization.to_memref"(%9) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    memref.copy %10, %0 : memref<1x16x1xi64> to memref<1x16x1xi64>
    %c1048576_i64 = arith.constant 1048576 : i64
    cf.br ^bb4(%c1048576_i64 : i64)
  ^bb3:  // pred: ^bb1
    %11 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi64>) -> tensor<1x16x1xi64>
    %12 = "bufferization.to_memref"(%11) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    memref.copy %12, %0 : memref<1x16x1xi64> to memref<1x16x1xi64>
    %c-1048576_i64 = arith.constant -1048576 : i64
    cf.br ^bb4(%c-1048576_i64 : i64)
  ^bb4(%13: i64):  // 2 preds: ^bb2, ^bb3
    cf.br ^bb5
  ^bb5:  // pred: ^bb4
    cf.br ^bb6
  ^bb6:  // pred: ^bb5
    %c1_i64_2 = arith.constant 1 : i64
    %14 = arith.subi %1, %c1_i64_2 : i64
    cf.br ^bb7
  ^bb7:  // pred: ^bb6
    cf.br ^bb8
  ^bb8:  // pred: ^bb7
    %15 = arith.shrsi %4, %14 : i64
    %16 = arith.muli %13, %15 : i64
    %17 = arith.subi %5, %16 : i64
    %18 = arith.shrsi %5, %14 : i64
    %19 = arith.muli %13, %18 : i64
    %20 = arith.addi %4, %19 : i64
    %c1_i64_3 = arith.constant 1 : i64
    %c1_i64_4 = arith.constant 1 : i64
    %21 = arith.subi %1, %c1_i64_4 : i64
    %22 = arith.index_cast %21 : i64 to index
    %c0_i64_5 = arith.constant 0 : i64
    %23 = arith.index_cast %c0_i64_5 : i64 to index
    %c0_i64_6 = arith.constant 0 : i64
    %24 = arith.index_cast %c0_i64_6 : i64 to index
    %extracted = tensor.extract %from_elements[%24, %23, %22] : tensor<1x16x1xi64>
    %25 = arith.muli %13, %extracted : i64
    %26 = arith.subi %3, %25 : i64
    %c10_i64 = arith.constant 10 : i64
    %27 = arith.cmpi eq, %2, %c10_i64 : i64
    cf.cond_br %27, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %c0_i64_7 = arith.constant 0 : i64
    %c0_i64_8 = arith.constant 0 : i64
    %true = arith.constant true
    cf.br ^bb11(%c0_i64_7, %c0_i64_8, %true : i64, i64, i1)
  ^bb10:  // pred: ^bb8
    %c1_i64_9 = arith.constant 1 : i64
    %28 = arith.addi %2, %c1_i64_9 : i64
    %false = arith.constant false
    cf.br ^bb11(%28, %28, %false : i64, i64, i1)
  ^bb11(%29: i64, %30: i64, %31: i1):  // 2 preds: ^bb9, ^bb10
    %true_10 = arith.constant true
    %32 = arith.xori %31, %true_10 : i1
    cf.cond_br %32, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    cf.br ^bb1(%29, %30, %26, %20, %17 : i64, i64, i64, i64, i64)
  ^bb13:  // pred: ^bb11
    return %17 : i64
  }
}
