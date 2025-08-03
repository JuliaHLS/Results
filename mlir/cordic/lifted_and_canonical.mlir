module {
  func.func public @cordic_int(%arg0: i64, %arg1: i64) -> i64 {
    %c10_i64 = arith.constant 10 : i64
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
    %0:5 = scf.while (%arg2 = %c1_i64, %arg3 = %c1_i64, %arg4 = %arg0, %arg5 = %c0_i64, %arg6 = %arg1) : (i64, i64, i64, i64, i64) -> (i64, i64, i64, i64, i64) {
      %1 = arith.cmpi sge, %arg4, %c0_i64 : i64
      %2 = arith.select %1, %c1024_i64, %c-1024_i64 : i64
      %3 = arith.subi %arg2, %c1_i64 : i64
      %4 = arith.shrsi %arg5, %3 : i64
      %5 = arith.muli %2, %4 : i64
      %6 = arith.shrsi %5, %c10_i64 : i64
      %7 = arith.subi %arg6, %6 : i64
      %8 = arith.shrsi %arg6, %3 : i64
      %9 = arith.muli %2, %8 : i64
      %10 = arith.shrsi %9, %c10_i64 : i64
      %11 = arith.addi %arg5, %10 : i64
      %12 = arith.index_cast %3 : i64 to index
      %13 = memref.load %alloc[%c0, %c0, %12] : memref<1x16x1xi64>
      %14 = arith.muli %2, %13 : i64
      %15 = arith.shrsi %14, %c10_i64 : i64
      %16 = arith.subi %arg4, %15 : i64
      %17 = arith.cmpi eq, %arg3, %c16_i64 : i64
      %18:2 = scf.if %17 -> (i64, i64) {
        scf.yield %c0_i64, %c0_i64 : i64, i64
      } else {
        %20 = arith.addi %arg3, %c1_i64 : i64
        scf.yield %20, %20 : i64, i64
      }
      %19 = arith.cmpi ne, %arg3, %c16_i64 : i64
      scf.condition(%19) %18#0, %18#1, %16, %11, %7 : i64, i64, i64, i64, i64
    } do {
    ^bb0(%arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64):
      scf.yield %arg2, %arg3, %arg4, %arg5, %arg6 : i64, i64, i64, i64, i64
    }
    return %0#4 : i64
  }
}

