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
    %c0_i32_4 = arith.constant 0 : i32
    %c1_i32_5 = arith.constant 1 : i32
    %c16_i32_6 = arith.constant 16 : i32
    %c1024_i32 = arith.constant 1024 : i32
    %c-1024_i32 = arith.constant -1024 : i32
    %c10_i32 = arith.constant 10 : i32
    %true = arith.constant true
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %0 = "bufferization.to_memref"(%from_elements) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    cf.br ^bb1(%c1_i32_5, %c1_i32_5, %arg0, %c0_i32_4, %arg1 : i32, i32, i32, i32, i32)
  ^bb1(%1: i32, %2: i32, %3: i32, %4: i32, %5: i32):  // 2 preds: ^bb0, ^bb5
    %6 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi32>) -> tensor<1x16x1xi32>
    %7 = "bufferization.to_memref"(%6) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    memref.copy %7, %0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    %8 = arith.cmpi sge, %3, %c0_i32_4 : i32
    cf.cond_br %8, ^bb2(%c1024_i32 : i32), ^bb2(%c-1024_i32 : i32)
  ^bb2(%9: i32):  // 2 preds: ^bb1, ^bb1
    %10 = "bufferization.to_tensor"(%0) {restrict, writable} : (memref<1x16x1xi32>) -> tensor<1x16x1xi32>
    %11 = "bufferization.to_memref"(%10) : (tensor<1x16x1xi32>) -> memref<1x16x1xi32>
    memref.copy %11, %0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    cf.br ^bb3
  ^bb3:  // pred: ^bb2
    %12 = arith.subi %1, %c1_i32_5 : i32
    %13 = arith.shrsi %4, %12 : i32
    %14 = arith.muli %9, %13 : i32
    %15 = arith.shrsi %14, %c10_i32 : i32
    %16 = arith.subi %5, %15 : i32
    %17 = arith.shrsi %5, %12 : i32
    %18 = arith.muli %9, %17 : i32
    %19 = arith.shrsi %18, %c10_i32 : i32
    %20 = arith.addi %4, %19 : i32
    %21 = arith.index_cast %12 : i32 to index
    %extracted = tensor.extract %from_elements[%c0, %c0, %21] : tensor<1x16x1xi32>
    %22 = arith.muli %9, %extracted : i32
    %23 = arith.shrsi %22, %c10_i32 : i32
    %24 = arith.subi %3, %23 : i32
    %25 = arith.cmpi eq, %2, %c16_i32_6 : i32
    cf.cond_br %25, ^bb5(%c0_i32_4, %c0_i32_4, %true : i32, i32, i1), ^bb4
  ^bb4:  // pred: ^bb3
    %26 = arith.addi %2, %c1_i32_5 : i32
    cf.br ^bb5(%26, %26, %false : i32, i32, i1)
  ^bb5(%27: i32, %28: i32, %29: i1):  // 2 preds: ^bb3, ^bb4
    %30 = arith.xori %29, %true : i1
    cf.cond_br %30, ^bb1(%27, %28, %24, %20, %16 : i32, i32, i32, i32, i32), ^bb6
  ^bb6:  // pred: ^bb5
    return %16 : i32
  }
}
