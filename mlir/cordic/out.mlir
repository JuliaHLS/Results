module {
  func.func public @cordic_int(%arg0: i64, %arg1: i64) -> i64 {
    %false = arith.constant false
    %true = arith.constant true
    %c10_i64 = arith.constant 10 : i64
    %c-1048576_i64 = arith.constant -1048576 : i64
    %c1048576_i64 = arith.constant 1048576 : i64
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
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
    %c4_0 = arith.constant 4 : index
    %0 = arith.shli %c0, %c4_0 : index
    %1 = arith.addi %0, %c0 : index
    %c0_1 = arith.constant 0 : index
    %2 = arith.shli %1, %c0_1 : index
    %3 = arith.addi %2, %c0 : index
    memref.store %c823550_i64, %alloc[%3] : memref<16xi64>
    %c4_2 = arith.constant 4 : index
    %4 = arith.shli %c0, %c4_2 : index
    %5 = arith.addi %4, %c1 : index
    %c0_3 = arith.constant 0 : index
    %6 = arith.shli %5, %c0_3 : index
    %7 = arith.addi %6, %c0 : index
    memref.store %c486170_i64, %alloc[%7] : memref<16xi64>
    %c4_4 = arith.constant 4 : index
    %8 = arith.shli %c0, %c4_4 : index
    %9 = arith.addi %8, %c2 : index
    %c0_5 = arith.constant 0 : index
    %10 = arith.shli %9, %c0_5 : index
    %11 = arith.addi %10, %c0 : index
    memref.store %c256879_i64, %alloc[%11] : memref<16xi64>
    %c4_6 = arith.constant 4 : index
    %12 = arith.shli %c0, %c4_6 : index
    %13 = arith.addi %12, %c3 : index
    %c0_7 = arith.constant 0 : index
    %14 = arith.shli %13, %c0_7 : index
    %15 = arith.addi %14, %c0 : index
    memref.store %c130396_i64, %alloc[%15] : memref<16xi64>
    %c4_8 = arith.constant 4 : index
    %16 = arith.shli %c0, %c4_8 : index
    %17 = arith.addi %16, %c4 : index
    %c0_9 = arith.constant 0 : index
    %18 = arith.shli %17, %c0_9 : index
    %19 = arith.addi %18, %c0 : index
    memref.store %c65451_i64, %alloc[%19] : memref<16xi64>
    %c4_10 = arith.constant 4 : index
    %20 = arith.shli %c0, %c4_10 : index
    %21 = arith.addi %20, %c5 : index
    %c0_11 = arith.constant 0 : index
    %22 = arith.shli %21, %c0_11 : index
    %23 = arith.addi %22, %c0 : index
    memref.store %c32757_i64, %alloc[%23] : memref<16xi64>
    %c4_12 = arith.constant 4 : index
    %24 = arith.shli %c0, %c4_12 : index
    %25 = arith.addi %24, %c6 : index
    %c0_13 = arith.constant 0 : index
    %26 = arith.shli %25, %c0_13 : index
    %27 = arith.addi %26, %c0 : index
    memref.store %c16383_i64, %alloc[%27] : memref<16xi64>
    %c4_14 = arith.constant 4 : index
    %28 = arith.shli %c0, %c4_14 : index
    %29 = arith.addi %28, %c7 : index
    %c0_15 = arith.constant 0 : index
    %30 = arith.shli %29, %c0_15 : index
    %31 = arith.addi %30, %c0 : index
    memref.store %c8192_i64, %alloc[%31] : memref<16xi64>
    %c4_16 = arith.constant 4 : index
    %32 = arith.shli %c0, %c4_16 : index
    %33 = arith.addi %32, %c8 : index
    %c0_17 = arith.constant 0 : index
    %34 = arith.shli %33, %c0_17 : index
    %35 = arith.addi %34, %c0 : index
    memref.store %c4096_i64, %alloc[%35] : memref<16xi64>
    %c4_18 = arith.constant 4 : index
    %36 = arith.shli %c0, %c4_18 : index
    %37 = arith.addi %36, %c9 : index
    %c0_19 = arith.constant 0 : index
    %38 = arith.shli %37, %c0_19 : index
    %39 = arith.addi %38, %c0 : index
    memref.store %c2048_i64, %alloc[%39] : memref<16xi64>
    %c4_20 = arith.constant 4 : index
    %40 = arith.shli %c0, %c4_20 : index
    %41 = arith.addi %40, %c10 : index
    %c0_21 = arith.constant 0 : index
    %42 = arith.shli %41, %c0_21 : index
    %43 = arith.addi %42, %c0 : index
    memref.store %c1024_i64, %alloc[%43] : memref<16xi64>
    %c4_22 = arith.constant 4 : index
    %44 = arith.shli %c0, %c4_22 : index
    %45 = arith.addi %44, %c11 : index
    %c0_23 = arith.constant 0 : index
    %46 = arith.shli %45, %c0_23 : index
    %47 = arith.addi %46, %c0 : index
    memref.store %c512_i64, %alloc[%47] : memref<16xi64>
    %c4_24 = arith.constant 4 : index
    %48 = arith.shli %c0, %c4_24 : index
    %49 = arith.addi %48, %c12 : index
    %c0_25 = arith.constant 0 : index
    %50 = arith.shli %49, %c0_25 : index
    %51 = arith.addi %50, %c0 : index
    memref.store %c256_i64, %alloc[%51] : memref<16xi64>
    %c4_26 = arith.constant 4 : index
    %52 = arith.shli %c0, %c4_26 : index
    %53 = arith.addi %52, %c13 : index
    %c0_27 = arith.constant 0 : index
    %54 = arith.shli %53, %c0_27 : index
    %55 = arith.addi %54, %c0 : index
    memref.store %c128_i64, %alloc[%55] : memref<16xi64>
    %c4_28 = arith.constant 4 : index
    %56 = arith.shli %c0, %c4_28 : index
    %57 = arith.addi %56, %c14 : index
    %c0_29 = arith.constant 0 : index
    %58 = arith.shli %57, %c0_29 : index
    %59 = arith.addi %58, %c0 : index
    memref.store %c64_i64, %alloc[%59] : memref<16xi64>
    %c4_30 = arith.constant 4 : index
    %60 = arith.shli %c0, %c4_30 : index
    %61 = arith.addi %60, %c15 : index
    %c0_31 = arith.constant 0 : index
    %62 = arith.shli %61, %c0_31 : index
    %63 = arith.addi %62, %c0 : index
    memref.store %c32_i64, %alloc[%63] : memref<16xi64>
    cf.br ^bb1(%c1_i64, %c1_i64, %arg0, %c0_i64, %arg1 : i64, i64, i64, i64, i64)
  ^bb1(%64: i64, %65: i64, %66: i64, %67: i64, %68: i64):  // 2 preds: ^bb0, ^bb5
    %69 = arith.cmpi sge, %66, %c0_i64 : i64
    cf.cond_br %69, ^bb2(%c1048576_i64 : i64), ^bb2(%c-1048576_i64 : i64)
  ^bb2(%70: i64):  // 2 preds: ^bb1, ^bb1
    cf.br ^bb3
  ^bb3:  // pred: ^bb2
    %71 = arith.subi %64, %c1_i64 : i64
    %72 = arith.shrsi %67, %71 : i64
    %73 = arith.muli %70, %72 : i64
    %74 = arith.subi %68, %73 : i64
    %75 = arith.shrsi %68, %71 : i64
    %76 = arith.muli %70, %75 : i64
    %77 = arith.addi %67, %76 : i64
    %78 = arith.index_cast %71 : i64 to index
    %c4_33 = arith.constant 4 : index
    %79 = arith.shli %c0, %c4_33 : index
    %80 = arith.addi %79, %c0 : index
    %c0_34 = arith.constant 0 : index
    %81 = arith.shli %80, %c0_34 : index
    %82 = arith.addi %81, %78 : index
    %83 = memref.load %alloc[%82] : memref<16xi64>
    %84 = arith.muli %70, %83 : i64
    %85 = arith.subi %66, %84 : i64
    %86 = arith.cmpi eq, %65, %c10_i64 : i64
    cf.cond_br %86, ^bb5(%c0_i64, %c0_i64, %true : i64, i64, i1), ^bb4
  ^bb4:  // pred: ^bb3
    %87 = arith.addi %65, %c1_i64 : i64
    cf.br ^bb5(%87, %87, %false : i64, i64, i1)
  ^bb5(%88: i64, %89: i64, %90: i1):  // 2 preds: ^bb3, ^bb4
    %91 = arith.xori %90, %true : i1
    cf.cond_br %91, ^bb1(%88, %89, %85, %77, %74 : i64, i64, i64, i64, i64), ^bb6
  ^bb6:  // pred: ^bb5
    return %74 : i64
  }
}
