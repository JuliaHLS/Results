module {
  func.func public @cordic(%arg0: i32, %arg1: i32) -> i32 {
    %c804_i32 = arith.constant 804 : i32
    %c475_i32 = arith.constant 475 : i32
    %c251_i32 = arith.constant 251 : i32
    %c127_i32 = arith.constant 127 : i32
    %c64_i32 = arith.constant 64 : i32
    %c32_i32 = arith.constant 32 : i32
    %c16_i32 = arith.constant 16 : i32
    %c8_i32 = arith.constant 8 : i32
    %c4_i32 = arith.constant 4 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c0_i32_1 = arith.constant 0 : i32
    %c0_i32_2 = arith.constant 0 : i32
    %c0_i32_3 = arith.constant 0 : i32
    %from_elements = tensor.from_elements %c804_i32, %c475_i32, %c251_i32, %c127_i32, %c64_i32, %c32_i32, %c16_i32, %c8_i32, %c4_i32, %c2_i32, %c1_i32, %c0_i32, %c0_i32_0, %c0_i32_1, %c0_i32_2, %c0_i32_3 : tensor<1x16x1xi32>
    %c1_i32_4 = arith.constant 1 : i32
    %c1_i32_5 = arith.constant 1 : i32
    %c0_i32_6 = arith.constant 0 : i32
    %0 = "bufferization.to_memref"(%from_elements) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    cf.br ^bb1(%c1_i32_4, %c1_i32_5, %arg0, %c0_i32_6, %arg1 : i32, i32, i32, i32, i32)
  ^bb1(%1: i32, %2: i32, %3: i32, %4: i32, %5: i32):  // 2 preds: ^bb0, ^bb12
    %6 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi32>) -> tensor<1x16x1xi32>
    %7 = "bufferization.to_memref"(%6) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    memref.copy %7, %0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    %c0_i32_7 = arith.constant 0 : i32
    %8 = arith.cmpi sge, %3, %c0_i32_7 : i32
    cf.cond_br %8, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %9 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi32>) -> tensor<1x16x1xi32>
    %10 = "bufferization.to_memref"(%9) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    memref.copy %10, %0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    %c1024_i32 = arith.constant 1024 : i32
    %c1024_i32_8 = arith.constant 1024 : i32
    %c1024_i32_9 = arith.constant 1024 : i32
    cf.br ^bb4(%c1024_i32, %c1024_i32_8, %c1024_i32_9 : i32, i32, i32)
  ^bb3:  // pred: ^bb1
    %11 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi32>) -> tensor<1x16x1xi32>
    %12 = "bufferization.to_memref"(%11) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    memref.copy %12, %0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    %c-1024_i32 = arith.constant -1024 : i32
    %c-1024_i32_10 = arith.constant -1024 : i32
    %c-1024_i32_11 = arith.constant -1024 : i32
    cf.br ^bb4(%c-1024_i32, %c-1024_i32_10, %c-1024_i32_11 : i32, i32, i32)
  ^bb4(%13: i32, %14: i32, %15: i32):  // 2 preds: ^bb2, ^bb3
    cf.br ^bb5
  ^bb5:  // pred: ^bb4
    cf.br ^bb6
  ^bb6:  // pred: ^bb5
    %c1_i32_12 = arith.constant 1 : i32
    %16 = arith.subi %1, %c1_i32_12 : i32
    cf.br ^bb7
  ^bb7:  // pred: ^bb6
    cf.br ^bb8
  ^bb8:  // pred: ^bb7
    %17 = arith.shrsi %4, %16 : i32
    %c0_i32_13 = arith.constant 0 : i32
    %18 = arith.addi %c0_i32_13, %17 : i32
    %19 = arith.muli %13, %18 : i32
    %c10_i32 = arith.constant 10 : i32
    %20 = arith.shrsi %19, %c10_i32 : i32
    %c0_i32_14 = arith.constant 0 : i32
    %21 = arith.addi %c0_i32_14, %20 : i32
    %22 = arith.subi %5, %21 : i32
    %23 = arith.shrsi %5, %16 : i32
    %c0_i32_15 = arith.constant 0 : i32
    %24 = arith.addi %c0_i32_15, %23 : i32
    %25 = arith.muli %14, %24 : i32
    %c10_i32_16 = arith.constant 10 : i32
    %26 = arith.shrsi %25, %c10_i32_16 : i32
    %c0_i32_17 = arith.constant 0 : i32
    %27 = arith.addi %c0_i32_17, %26 : i32
    %28 = arith.addi %4, %27 : i32
    %c1_i32_18 = arith.constant 1 : i32
    %c1_i32_19 = arith.constant 1 : i32
    %29 = arith.subi %1, %c1_i32_19 : i32
    %30 = arith.index_cast %29 : i32 to index
    %c0_i64 = arith.constant 0 : i64
    %31 = arith.index_cast %c0_i64 : i64 to index
    %c0_i64_20 = arith.constant 0 : i64
    %32 = arith.index_cast %c0_i64_20 : i64 to index
    %extracted = tensor.extract %from_elements[%32, %31, %30] : tensor<1x16x1xi32>
    %c0_i32_21 = arith.constant 0 : i32
    %33 = arith.addi %c0_i32_21, %extracted : i32
    %34 = arith.muli %15, %33 : i32
    %c10_i32_22 = arith.constant 10 : i32
    %35 = arith.shrsi %34, %c10_i32_22 : i32
    %c0_i32_23 = arith.constant 0 : i32
    %36 = arith.addi %c0_i32_23, %35 : i32
    %37 = arith.subi %3, %36 : i32
    %c16_i32_24 = arith.constant 16 : i32
    %38 = arith.cmpi eq, %2, %c16_i32_24 : i32
    cf.cond_br %38, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %c0_i32_25 = arith.constant 0 : i32
    %c0_i32_26 = arith.constant 0 : i32
    %true = arith.constant true
    cf.br ^bb11(%c0_i32_25, %c0_i32_26, %true : i32, i32, i1)
  ^bb10:  // pred: ^bb8
    %c1_i32_27 = arith.constant 1 : i32
    %39 = arith.addi %2, %c1_i32_27 : i32
    %false = arith.constant false
    cf.br ^bb11(%39, %39, %false : i32, i32, i1)
  ^bb11(%40: i32, %41: i32, %42: i1):  // 2 preds: ^bb9, ^bb10
    %true_28 = arith.constant true
    %43 = arith.xori %42, %true_28 : i1
    cf.cond_br %43, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    cf.br ^bb1(%40, %41, %37, %28, %22 : i32, i32, i32, i32, i32)
  ^bb13:  // pred: ^bb11
    return %22 : i32
  }
}
