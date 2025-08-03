module {
  func.func public @cordic_int(%arg0: i64, %arg1: i64) -> i64 {
    %c804_i64 = arith.constant 804 : i64
    %c475_i64 = arith.constant 475 : i64
    %c251_i64 = arith.constant 251 : i64
    %c127_i64 = arith.constant 127 : i64
    %c64_i64 = arith.constant 64 : i64
    %c32_i64 = arith.constant 32 : i64
    %c16_i64 = arith.constant 16 : i64
    %c8_i64 = arith.constant 8 : i64
    %c4_i64 = arith.constant 4 : i64
    %c2_i64 = arith.constant 2 : i64
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_0 = arith.constant 0 : i64
    %c0_i64_1 = arith.constant 0 : i64
    %c0_i64_2 = arith.constant 0 : i64
    %c0_i64_3 = arith.constant 0 : i64
    %from_elements = tensor.from_elements %c804_i64, %c475_i64, %c251_i64, %c127_i64, %c64_i64, %c32_i64, %c16_i64, %c8_i64, %c4_i64, %c2_i64, %c1_i64, %c0_i64, %c0_i64_0, %c0_i64_1, %c0_i64_2, %c0_i64_3 : tensor<1x16x1xi64>
    %c0_i64_4 = arith.constant 0 : i64
    %c1_i64_5 = arith.constant 1 : i64
    %c16_i64_6 = arith.constant 16 : i64
    %c1024_i64 = arith.constant 1024 : i64
    %c-1024_i64 = arith.constant -1024 : i64
    %true = arith.constant true
    %false = arith.constant false
    %c10_i64 = arith.constant 10 : i64
    %c0 = arith.constant 0 : index
    %0 = "bufferization.to_memref"(%from_elements) : (tensor<1x16x1xi64>) -> memref<1x16x1xi64>
    cf.br ^bb1(%c1_i64_5, %c1_i64_5, %arg0, %c0_i64_4, %arg1 : i64, i64, i64, i64, i64)
  ^bb1(%1: i64, %2: i64, %3: i64, %4: i64, %5: i64):  // 2 preds: ^bb0, ^bb5
    %6 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi64>) -> tensor<1x16x1xi64>
    %7 = arith.cmpi sge, %3, %c0_i64_4 : i64
    cf.cond_br %7, ^bb2(%c1024_i64 : i64), ^bb2(%c-1024_i64 : i64)
  ^bb2(%8: i64):  // 2 preds: ^bb1, ^bb1
    %9 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi64>) -> tensor<1x16x1xi64>
    cf.br ^bb3
  ^bb3:  // pred: ^bb2
    %10 = arith.subi %1, %c1_i64_5 : i64
    %11 = arith.shrsi %4, %10 : i64
    %12 = arith.muli %8, %11 : i64
    %13 = arith.shrsi %12, %c10_i64 : i64
    %14 = arith.subi %5, %13 : i64
    %15 = arith.shrsi %5, %10 : i64
    %16 = arith.muli %8, %15 : i64
    %17 = arith.shrsi %16, %c10_i64 : i64
    %18 = arith.addi %4, %17 : i64
    %19 = arith.index_cast %10 : i64 to index
    %extracted = tensor.extract %from_elements[%c0, %c0, %19] : tensor<1x16x1xi64>
    %20 = arith.muli %8, %extracted : i64
    %21 = arith.shrsi %20, %c10_i64 : i64
    %22 = arith.subi %3, %21 : i64
    %23 = arith.cmpi eq, %2, %c16_i64_6 : i64
    cf.cond_br %23, ^bb5(%c0_i64_4, %c0_i64_4, %true : i64, i64, i1), ^bb4
  ^bb4:  // pred: ^bb3
    %24 = arith.addi %2, %c1_i64_5 : i64
    cf.br ^bb5(%24, %24, %false : i64, i64, i1)
  ^bb5(%25: i64, %26: i64, %27: i1):  // 2 preds: ^bb3, ^bb4
    %28 = arith.xori %27, %true : i1
    cf.cond_br %28, ^bb1(%25, %26, %22, %18, %14 : i64, i64, i64, i64, i64), ^bb6
  ^bb6:  // pred: ^bb5
    return %14 : i64
  }
}
