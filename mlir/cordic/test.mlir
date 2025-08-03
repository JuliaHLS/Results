module {
  func.func public @cordic_int(%arg0: i64, %arg1: i64) -> i64 {
    %c10_i64 = arith.constant 10 : i64
    %false = arith.constant false
    %true = arith.constant true
    %c-1024_i64 = arith.constant -1024 : i64
    %c1024_i64 = arith.constant 1024 : i64
    %c15 = arith.constant 15 : index
    %c14 = arith.constant 14 : index
    %c13 = arith.constant 13 : index
    %c12 = arith.constant 12 : index
    %c11 = arith.constant 11 : index
    %c10 = arith.constant 10 : index
    %c9 = arith.constant 9 : index
    %c8 = arith.constant 8 : index
    %c7 = arith.constant 7 : index
    %c6 = arith.constant 6 : index
    %c5 = arith.constant 5 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
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
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<1x16x1xi64>
    memref.store %c804_i64, %alloc[%c0, %c0, %c0] : memref<1x16x1xi64>
    memref.store %c475_i64, %alloc[%c0, %c1, %c0] : memref<1x16x1xi64>
    memref.store %c251_i64, %alloc[%c0, %c2, %c0] : memref<1x16x1xi64>
    memref.store %c127_i64, %alloc[%c0, %c3, %c0] : memref<1x16x1xi64>
    memref.store %c64_i64, %alloc[%c0, %c4, %c0] : memref<1x16x1xi64>
    memref.store %c32_i64, %alloc[%c0, %c5, %c0] : memref<1x16x1xi64>
    memref.store %c16_i64, %alloc[%c0, %c6, %c0] : memref<1x16x1xi64>
    memref.store %c8_i64, %alloc[%c0, %c7, %c0] : memref<1x16x1xi64>
    memref.store %c4_i64, %alloc[%c0, %c8, %c0] : memref<1x16x1xi64>
    memref.store %c2_i64, %alloc[%c0, %c9, %c0] : memref<1x16x1xi64>
    memref.store %c1_i64, %alloc[%c0, %c10, %c0] : memref<1x16x1xi64>
    memref.store %c0_i64, %alloc[%c0, %c11, %c0] : memref<1x16x1xi64>
    memref.store %c0_i64, %alloc[%c0, %c12, %c0] : memref<1x16x1xi64>
    memref.store %c0_i64, %alloc[%c0, %c13, %c0] : memref<1x16x1xi64>
    memref.store %c0_i64, %alloc[%c0, %c14, %c0] : memref<1x16x1xi64>
    memref.store %c0_i64, %alloc[%c0, %c15, %c0] : memref<1x16x1xi64>
    cf.br ^bb1(%c1_i64, %c1_i64, %arg0, %c0_i64, %arg1 : i64, i64, i64, i64, i64)
  ^bb1(%0: i64, %1: i64, %2: i64, %3: i64, %4: i64):  // 2 preds: ^bb0, ^bb5
    %5 = arith.cmpi sge, %2, %c0_i64 : i64
    cf.cond_br %5, ^bb2(%c1024_i64 : i64), ^bb2(%c-1024_i64 : i64)
  ^bb2(%6: i64):  // 2 preds: ^bb1, ^bb1
    cf.br ^bb3
  ^bb3:  // pred: ^bb2
    %7 = arith.subi %0, %c1_i64 : i64
    %8 = arith.shrsi %3, %7 : i64
    %9 = arith.muli %6, %8 : i64
    %10 = arith.shrsi %9, %c10_i64 : i64
    %11 = arith.subi %4, %10 : i64
    %12 = arith.shrsi %4, %7 : i64
    %13 = arith.muli %6, %12 : i64
    %14 = arith.shrsi %13, %c10_i64 : i64
    %15 = arith.addi %3, %14 : i64
    %16 = arith.index_cast %7 : i64 to index
    %17 = memref.load %alloc[%c0, %c0, %16] : memref<1x16x1xi64>
    %18 = arith.muli %6, %17 : i64
    %19 = arith.shrsi %18, %c10_i64 : i64
    %20 = arith.subi %2, %19 : i64
    %21 = arith.cmpi eq, %1, %c16_i64 : i64
    cf.cond_br %21, ^bb5(%c0_i64, %c0_i64, %true : i64, i64, i1), ^bb4
  ^bb4:  // pred: ^bb3
    %22 = arith.addi %1, %c1_i64 : i64
    cf.br ^bb5(%22, %22, %false : i64, i64, i1)
  ^bb5(%23: i64, %24: i64, %25: i1):  // 2 preds: ^bb3, ^bb4
    %26 = arith.xori %25, %true : i1
    cf.cond_br %26, ^bb1(%23, %24, %20, %15, %11 : i64, i64, i64, i64, i64), ^bb6
  ^bb6:  // pred: ^bb5
    return %11 : i64
  }
}
