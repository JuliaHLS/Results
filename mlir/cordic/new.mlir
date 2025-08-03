 module {
  func.func public @cordic(%arg0: i32, %arg1: i32) -> (i32, i32) {
    %false = arith.constant false
    %true = arith.constant true
    %c10_i32 = arith.constant 10 : i32
    %c-1024_i32 = arith.constant -1024 : i32
    %c1024_i32 = arith.constant 1024 : i32
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
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<1x16x1xi32>
    memref.store %c804_i32, %alloc[%c0, %c0, %c0] : memref<1x16x1xi32>
    memref.store %c475_i32, %alloc[%c0, %c1, %c0] : memref<1x16x1xi32>
    memref.store %c251_i32, %alloc[%c0, %c2, %c0] : memref<1x16x1xi32>
    memref.store %c127_i32, %alloc[%c0, %c3, %c0] : memref<1x16x1xi32>
    memref.store %c64_i32, %alloc[%c0, %c4, %c0] : memref<1x16x1xi32>
    memref.store %c32_i32, %alloc[%c0, %c5, %c0] : memref<1x16x1xi32>
    memref.store %c16_i32, %alloc[%c0, %c6, %c0] : memref<1x16x1xi32>
    memref.store %c8_i32, %alloc[%c0, %c7, %c0] : memref<1x16x1xi32>
    memref.store %c4_i32, %alloc[%c0, %c8, %c0] : memref<1x16x1xi32>
    memref.store %c2_i32, %alloc[%c0, %c9, %c0] : memref<1x16x1xi32>
    memref.store %c1_i32, %alloc[%c0, %c10, %c0] : memref<1x16x1xi32>
    memref.store %c0_i32, %alloc[%c0, %c11, %c0] : memref<1x16x1xi32>
    memref.store %c0_i32, %alloc[%c0, %c12, %c0] : memref<1x16x1xi32>
    memref.store %c0_i32, %alloc[%c0, %c13, %c0] : memref<1x16x1xi32>
    memref.store %c0_i32, %alloc[%c0, %c14, %c0] : memref<1x16x1xi32>
    memref.store %c0_i32, %alloc[%c0, %c15, %c0] : memref<1x16x1xi32>
    %alloc_0 = memref.alloc() {alignment = 64 : i64} : memref<1x16x1xi32>
    memref.copy %alloc, %alloc_0 : memref<1x16x1xi32> to memref<1x16x1xi32>
    cf.br ^bb1(%c1_i32, %c1_i32, %arg0, %c0_i32, %arg1 : i32, i32, i32, i32, i32)
  ^bb1(%0: i32, %1: i32, %2: i32, %3: i32, %4: i32):  // 2 preds: ^bb0, ^bb3
    %5 = arith.cmpi sge, %2, %c0_i32 : i32
    %6 = arith.select %5, %c1024_i32, %c-1024_i32 : i32
    %7 = arith.select %5, %c1024_i32, %c-1024_i32 : i32
    %8 = arith.select %5, %c1024_i32, %c-1024_i32 : i32
    %9 = arith.subi %0, %c1_i32 : i32
    %10 = arith.shrsi %3, %9 : i32
    %11 = arith.muli %6, %10 : i32
    %12 = arith.shrsi %11, %c10_i32 : i32
    %13 = arith.subi %4, %12 : i32
    %14 = arith.shrsi %4, %9 : i32
    %15 = arith.muli %7, %14 : i32
    %16 = arith.shrsi %15, %c10_i32 : i32
    %17 = arith.addi %3, %16 : i32
    %18 = arith.subi %0, %c1_i32 : i32
    %19 = arith.index_cast %18 : i32 to index
    %20 = memref.load %alloc[%c0, %c0, %19] : memref<1x16x1xi32>
    %21 = arith.muli %8, %20 : i32
    %22 = arith.shrsi %21, %c10_i32 : i32
    %23 = arith.subi %2, %22 : i32
    %24 = arith.cmpi eq, %1, %c16_i32 : i32
    cf.cond_br %24, ^bb3(%c0_i32, %c0_i32, %true : i32, i32, i1), ^bb2
  ^bb2:  // pred: ^bb1
    %25 = arith.addi %1, %c1_i32 : i32
    cf.br ^bb3(%25, %25, %false : i32, i32, i1)
  ^bb3(%26: i32, %27: i32, %28: i1):  // 2 preds: ^bb1, ^bb2
    %29 = arith.xori %28, %true : i1
    cf.cond_br %29, ^bb1(%26, %27, %23, %17, %13 : i32, i32, i32, i32, i32), ^bb4
  ^bb4:  // pred: ^bb3
    // %30 = builtin.unrealized_conversion_cast %13, %17 : i32, i32 to tuple<i32, i32>
    return %13, %17 : i32, i32 
  }
}
