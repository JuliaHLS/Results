module {
  func.func public @cordic_int(%arg0: i64, %arg1: i64) -> i64 {
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
    %c10_i64 = arith.constant 10 : i64
    %c-1048576_i64 = arith.constant -1048576 : i64
    %c1048576_i64 = arith.constant 1048576 : i64
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
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
    %alloc = memref.alloc() : memref<16xi64>
    memref.store %c823550_i64, %alloc[%c0] : memref<16xi64>
    memref.store %c486170_i64, %alloc[%c1] : memref<16xi64>
    memref.store %c256879_i64, %alloc[%c2] : memref<16xi64>
    memref.store %c130396_i64, %alloc[%c3] : memref<16xi64>
    memref.store %c65451_i64, %alloc[%c4] : memref<16xi64>
    memref.store %c32757_i64, %alloc[%c5] : memref<16xi64>
    memref.store %c16383_i64, %alloc[%c6] : memref<16xi64>
    memref.store %c8192_i64, %alloc[%c7] : memref<16xi64>
    memref.store %c4096_i64, %alloc[%c8] : memref<16xi64>
    memref.store %c2048_i64, %alloc[%c9] : memref<16xi64>
    memref.store %c1024_i64, %alloc[%c10] : memref<16xi64>
    memref.store %c512_i64, %alloc[%c11] : memref<16xi64>
    memref.store %c256_i64, %alloc[%c12] : memref<16xi64>
    memref.store %c128_i64, %alloc[%c13] : memref<16xi64>
    memref.store %c64_i64, %alloc[%c14] : memref<16xi64>
    memref.store %c32_i64, %alloc[%c15] : memref<16xi64>
    %0:5 = scf.while (%arg2 = %c1_i64, %arg3 = %c1_i64, %arg4 = %arg0, %arg5 = %c0_i64, %arg6 = %arg1) : (i64, i64, i64, i64, i64) -> (i64, i64, i64, i64, i64) {
      %1 = arith.cmpi sge, %arg4, %c0_i64 : i64
      %2 = arith.select %1, %c1048576_i64, %c-1048576_i64 : i64
      %3 = arith.subi %arg2, %c1_i64 : i64
      %4 = arith.shrsi %arg5, %3 : i64
      %5 = arith.muli %2, %4 : i64
      %6 = arith.subi %arg6, %5 : i64
      %7 = arith.shrsi %arg6, %3 : i64
      %8 = arith.muli %2, %7 : i64
      %9 = arith.addi %arg5, %8 : i64
      %10 = arith.index_cast %3 : i64 to index
      %11 = memref.load %alloc[%10] : memref<16xi64>
      %12 = arith.muli %2, %11 : i64
      %13 = arith.subi %arg4, %12 : i64
      %14 = arith.cmpi eq, %arg3, %c10_i64 : i64
      %15:2 = scf.if %14 -> (i64, i64) {
        scf.yield %c0_i64, %c0_i64 : i64, i64
      } else {
        %17 = arith.addi %arg3, %c1_i64 : i64
        scf.yield %17, %17 : i64, i64
      }
      %16 = arith.cmpi ne, %arg3, %c10_i64 : i64
      scf.condition(%16) %15#0, %15#1, %13, %9, %6 : i64, i64, i64, i64, i64
    } do {
    ^bb0(%arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64):
      scf.yield %arg2, %arg3, %arg4, %arg5, %arg6 : i64, i64, i64, i64, i64
    }
    return %0#4 : i64
  }
}

