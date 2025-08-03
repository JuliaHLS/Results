module {
  func.func public @cordic_int(%arg0: i64, %arg1: i64) -> i64 {
    %0 = ub.poison : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
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
    %alloc = memref.alloc() : memref<16xi64>
    %c4_0 = arith.constant 4 : index
    %1 = arith.shli %c0, %c4_0 : index
    %2 = arith.addi %1, %c0 : index
    %c0_1 = arith.constant 0 : index
    %3 = arith.shli %2, %c0_1 : index
    %4 = arith.addi %3, %c0 : index
    memref.store %c804_i64, %alloc[%4] : memref<16xi64>
    %c4_2 = arith.constant 4 : index
    %5 = arith.shli %c0, %c4_2 : index
    %6 = arith.addi %5, %c1 : index
    %c0_3 = arith.constant 0 : index
    %7 = arith.shli %6, %c0_3 : index
    %8 = arith.addi %7, %c0 : index
    memref.store %c475_i64, %alloc[%8] : memref<16xi64>
    %c4_4 = arith.constant 4 : index
    %9 = arith.shli %c0, %c4_4 : index
    %10 = arith.addi %9, %c2 : index
    %c0_5 = arith.constant 0 : index
    %11 = arith.shli %10, %c0_5 : index
    %12 = arith.addi %11, %c0 : index
    memref.store %c251_i64, %alloc[%12] : memref<16xi64>
    %c4_6 = arith.constant 4 : index
    %13 = arith.shli %c0, %c4_6 : index
    %14 = arith.addi %13, %c3 : index
    %c0_7 = arith.constant 0 : index
    %15 = arith.shli %14, %c0_7 : index
    %16 = arith.addi %15, %c0 : index
    memref.store %c127_i64, %alloc[%16] : memref<16xi64>
    %c4_8 = arith.constant 4 : index
    %17 = arith.shli %c0, %c4_8 : index
    %18 = arith.addi %17, %c4 : index
    %c0_9 = arith.constant 0 : index
    %19 = arith.shli %18, %c0_9 : index
    %20 = arith.addi %19, %c0 : index
    memref.store %c64_i64, %alloc[%20] : memref<16xi64>
    %c4_10 = arith.constant 4 : index
    %21 = arith.shli %c0, %c4_10 : index
    %22 = arith.addi %21, %c5 : index
    %c0_11 = arith.constant 0 : index
    %23 = arith.shli %22, %c0_11 : index
    %24 = arith.addi %23, %c0 : index
    memref.store %c32_i64, %alloc[%24] : memref<16xi64>
    %c4_12 = arith.constant 4 : index
    %25 = arith.shli %c0, %c4_12 : index
    %26 = arith.addi %25, %c6 : index
    %c0_13 = arith.constant 0 : index
    %27 = arith.shli %26, %c0_13 : index
    %28 = arith.addi %27, %c0 : index
    memref.store %c16_i64, %alloc[%28] : memref<16xi64>
    %c4_14 = arith.constant 4 : index
    %29 = arith.shli %c0, %c4_14 : index
    %30 = arith.addi %29, %c7 : index
    %c0_15 = arith.constant 0 : index
    %31 = arith.shli %30, %c0_15 : index
    %32 = arith.addi %31, %c0 : index
    memref.store %c8_i64, %alloc[%32] : memref<16xi64>
    %c4_16 = arith.constant 4 : index
    %33 = arith.shli %c0, %c4_16 : index
    %34 = arith.addi %33, %c8 : index
    %c0_17 = arith.constant 0 : index
    %35 = arith.shli %34, %c0_17 : index
    %36 = arith.addi %35, %c0 : index
    memref.store %c4_i64, %alloc[%36] : memref<16xi64>
    %c4_18 = arith.constant 4 : index
    %37 = arith.shli %c0, %c4_18 : index
    %38 = arith.addi %37, %c9 : index
    %c0_19 = arith.constant 0 : index
    %39 = arith.shli %38, %c0_19 : index
    %40 = arith.addi %39, %c0 : index
    memref.store %c2_i64, %alloc[%40] : memref<16xi64>
    %c4_20 = arith.constant 4 : index
    %41 = arith.shli %c0, %c4_20 : index
    %42 = arith.addi %41, %c10 : index
    %c0_21 = arith.constant 0 : index
    %43 = arith.shli %42, %c0_21 : index
    %44 = arith.addi %43, %c0 : index
    memref.store %c1_i64, %alloc[%44] : memref<16xi64>
    %c4_22 = arith.constant 4 : index
    %45 = arith.shli %c0, %c4_22 : index
    %46 = arith.addi %45, %c11 : index
    %c0_23 = arith.constant 0 : index
    %47 = arith.shli %46, %c0_23 : index
    %48 = arith.addi %47, %c0 : index
    memref.store %c0_i64, %alloc[%48] : memref<16xi64>
    %c4_24 = arith.constant 4 : index
    %49 = arith.shli %c0, %c4_24 : index
    %50 = arith.addi %49, %c12 : index
    %c0_25 = arith.constant 0 : index
    %51 = arith.shli %50, %c0_25 : index
    %52 = arith.addi %51, %c0 : index
    memref.store %c0_i64, %alloc[%52] : memref<16xi64>
    %c4_26 = arith.constant 4 : index
    %53 = arith.shli %c0, %c4_26 : index
    %54 = arith.addi %53, %c13 : index
    %c0_27 = arith.constant 0 : index
    %55 = arith.shli %54, %c0_27 : index
    %56 = arith.addi %55, %c0 : index
    memref.store %c0_i64, %alloc[%56] : memref<16xi64>
    %c4_28 = arith.constant 4 : index
    %57 = arith.shli %c0, %c4_28 : index
    %58 = arith.addi %57, %c14 : index
    %c0_29 = arith.constant 0 : index
    %59 = arith.shli %58, %c0_29 : index
    %60 = arith.addi %59, %c0 : index
    memref.store %c0_i64, %alloc[%60] : memref<16xi64>
    %c4_30 = arith.constant 4 : index
    %61 = arith.shli %c0, %c4_30 : index
    %62 = arith.addi %61, %c15 : index
    %c0_31 = arith.constant 0 : index
    %63 = arith.shli %62, %c0_31 : index
    %64 = arith.addi %63, %c0 : index
    memref.store %c0_i64, %alloc[%64] : memref<16xi64>
    %65:6 = scf.while (%arg2 = %c1_i64, %arg3 = %c1_i64, %arg4 = %arg0, %arg5 = %c0_i64, %arg6 = %arg1, %arg7 = %0) : (i64, i64, i64, i64, i64, i64) -> (i64, i64, i64, i64, i64, i64) {
      %66 = arith.cmpi sge, %arg4, %c0_i64 : i64
      %67 = scf.if %66 -> (i64) {
        scf.yield %c1024_i64 : i64
      } else {
        scf.yield %c-1024_i64 : i64
      }
      %68 = arith.subi %arg2, %c1_i64 : i64
      %69 = arith.shrsi %arg5, %68 : i64
      %70 = arith.muli %67, %69 : i64
      %71 = arith.shrsi %70, %c10_i64 : i64
      %72 = arith.subi %arg6, %71 : i64
      %73 = arith.shrsi %arg6, %68 : i64
      %74 = arith.muli %67, %73 : i64
      %75 = arith.shrsi %74, %c10_i64 : i64
      %76 = arith.addi %arg5, %75 : i64
      %77 = arith.index_cast %68 : i64 to index
      %c4_32 = arith.constant 4 : index
      %78 = arith.shli %c0, %c4_32 : index
      %79 = arith.addi %78, %c0 : index
      %c0_33 = arith.constant 0 : index
      %80 = arith.shli %79, %c0_33 : index
      %81 = arith.addi %80, %77 : index
      %82 = memref.load %alloc[%81] : memref<16xi64>
      %83 = arith.muli %67, %82 : i64
      %84 = arith.shrsi %83, %c10_i64 : i64
      %85 = arith.subi %arg4, %84 : i64
      %86 = arith.cmpi eq, %arg3, %c16_i64 : i64
      %87:3 = scf.if %86 -> (i64, i64, i1) {
        scf.yield %c0_i64, %c0_i64, %true : i64, i64, i1
      } else {
        %90 = arith.addi %arg3, %c1_i64 : i64
        scf.yield %90, %90, %false : i64, i64, i1
      }
      %88:7 = scf.if %87#2 -> (i64, i64, i64, i64, i64, i32, i32) {
        scf.yield %0, %0, %0, %0, %0, %c1_i32, %c0_i32 : i64, i64, i64, i64, i64, i32, i32
      } else {
        scf.yield %87#0, %87#1, %85, %76, %72, %c0_i32, %c1_i32 : i64, i64, i64, i64, i64, i32, i32
      }
      %89 = arith.trunci %88#6 : i32 to i1
      scf.condition(%89) %88#0, %88#1, %88#2, %88#3, %88#4, %72 : i64, i64, i64, i64, i64, i64
    } do {
    ^bb0(%arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64):
      scf.yield %arg2, %arg3, %arg4, %arg5, %arg6, %arg7 : i64, i64, i64, i64, i64, i64
    }
    return %65#5 : i64
  }
}
