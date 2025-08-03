module {
  func.func public @conv2d_im2col(%arg0: tensor<1x3x3xi64>, %arg1: tensor<1x2x2xi64>) -> tensor<1x2x2xi64> {
    %0 = tensor.empty() : tensor<1x4x4xi64>
    %c1_i64 = arith.constant 1 : i64
    %c1_i64_0 = arith.constant 1 : i64
    %1 = "bufferization.to_memref"(%0) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    cf.br ^bb1(%c1_i64, %c1_i64_0 : i64, i64)
  ^bb1(%2: i64, %3: i64):  // 2 preds: ^bb0, ^bb23
    %4 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %5 = "bufferization.to_memref"(%4) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %5, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_1 = arith.constant 1 : i64
    %c1_i64_2 = arith.constant 1 : i64
    cf.br ^bb2(%c1_i64_1, %c1_i64_2 : i64, i64)
  ^bb2(%6: i64, %7: i64):  // 2 preds: ^bb1, ^bb18
    %8 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %9 = "bufferization.to_memref"(%8) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %9, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_3 = arith.constant 1 : i64
    %c1_i64_4 = arith.constant 1 : i64
    cf.br ^bb3(%c1_i64_3, %c1_i64_4 : i64, i64)
  ^bb3(%10: i64, %11: i64):  // 2 preds: ^bb2, ^bb13
    %12 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %13 = "bufferization.to_memref"(%12) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %13, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_5 = arith.constant 1 : i64
    %c1_i64_6 = arith.constant 1 : i64
    cf.br ^bb4(%c1_i64_5, %c1_i64_6 : i64, i64)
  ^bb4(%14: i64, %15: i64):  // 2 preds: ^bb3, ^bb8
    %16 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %c1_i64_7 = arith.constant 1 : i64
    %17 = arith.subi %10, %c1_i64_7 : i64
    %c2_i64 = arith.constant 2 : i64
    %18 = arith.muli %17, %c2_i64 : i64
    %19 = arith.addi %18, %14 : i64
    %c1_i64_8 = arith.constant 1 : i64
    %20 = arith.subi %2, %c1_i64_8 : i64
    %c2_i64_9 = arith.constant 2 : i64
    %21 = arith.muli %20, %c2_i64_9 : i64
    %22 = arith.addi %21, %6 : i64
    %23 = arith.addi %6, %14 : i64
    %c1_i64_10 = arith.constant 1 : i64
    %24 = arith.subi %23, %c1_i64_10 : i64
    %25 = arith.addi %2, %10 : i64
    %c1_i64_11 = arith.constant 1 : i64
    %26 = arith.subi %25, %c1_i64_11 : i64
    %c1_i64_12 = arith.constant 1 : i64
    %c1_i64_13 = arith.constant 1 : i64
    %27 = arith.subi %24, %c1_i64_13 : i64
    %28 = arith.index_cast %27 : i64 to index
    %29 = arith.subi %26, %c1_i64_13 : i64
    %30 = arith.index_cast %29 : i64 to index
    %c0_i64 = arith.constant 0 : i64
    %31 = arith.index_cast %c0_i64 : i64 to index
    %extracted = tensor.extract %arg0[%31, %28, %30] : tensor<1x3x3xi64>
    %c1_i64_14 = arith.constant 1 : i64
    %32 = arith.subi %19, %c1_i64_14 : i64
    %33 = arith.index_cast %32 : i64 to index
    %34 = arith.subi %22, %c1_i64_14 : i64
    %35 = arith.index_cast %34 : i64 to index
    %c0_i64_15 = arith.constant 0 : i64
    %36 = arith.index_cast %c0_i64_15 : i64 to index
    %inserted = tensor.insert %extracted into %16[%36, %33, %35] : tensor<1x4x4xi64>
    %37 = "bufferization.to_memref"(%inserted) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %37, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c2_i64_16 = arith.constant 2 : i64
    %38 = arith.cmpi eq, %15, %c2_i64_16 : i64
    cf.cond_br %38, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %39 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %40 = "bufferization.to_memref"(%39) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %40, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_17 = arith.constant 0 : i64
    %c0_i64_18 = arith.constant 0 : i64
    %true = arith.constant true
    cf.br ^bb7(%c0_i64_17, %c0_i64_18, %true : i64, i64, i1)
  ^bb6:  // pred: ^bb4
    %41 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %42 = "bufferization.to_memref"(%41) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %42, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_19 = arith.constant 1 : i64
    %43 = arith.addi %15, %c1_i64_19 : i64
    %false = arith.constant false
    cf.br ^bb7(%43, %43, %false : i64, i64, i1)
  ^bb7(%44: i64, %45: i64, %46: i1):  // 2 preds: ^bb5, ^bb6
    %47 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %48 = "bufferization.to_memref"(%47) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %48, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_20 = arith.constant true
    %49 = arith.xori %46, %true_20 : i1
    cf.cond_br %49, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %50 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %51 = "bufferization.to_memref"(%50) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %51, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb4(%44, %45 : i64, i64)
  ^bb9:  // pred: ^bb7
    %52 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %53 = "bufferization.to_memref"(%52) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %53, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c2_i64_21 = arith.constant 2 : i64
    %54 = arith.cmpi eq, %11, %c2_i64_21 : i64
    cf.cond_br %54, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %55 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %56 = "bufferization.to_memref"(%55) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %56, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_22 = arith.constant 0 : i64
    %c0_i64_23 = arith.constant 0 : i64
    %true_24 = arith.constant true
    cf.br ^bb12(%c0_i64_22, %c0_i64_23, %true_24 : i64, i64, i1)
  ^bb11:  // pred: ^bb9
    %57 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %58 = "bufferization.to_memref"(%57) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %58, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_25 = arith.constant 1 : i64
    %59 = arith.addi %11, %c1_i64_25 : i64
    %false_26 = arith.constant false
    cf.br ^bb12(%59, %59, %false_26 : i64, i64, i1)
  ^bb12(%60: i64, %61: i64, %62: i1):  // 2 preds: ^bb10, ^bb11
    %63 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %64 = "bufferization.to_memref"(%63) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %64, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_27 = arith.constant true
    %65 = arith.xori %62, %true_27 : i1
    cf.cond_br %65, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %66 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %67 = "bufferization.to_memref"(%66) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %67, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb3(%61, %60 : i64, i64)
  ^bb14:  // pred: ^bb12
    %68 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %69 = "bufferization.to_memref"(%68) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %69, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c2_i64_28 = arith.constant 2 : i64
    %70 = arith.cmpi eq, %7, %c2_i64_28 : i64
    cf.cond_br %70, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %71 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %72 = "bufferization.to_memref"(%71) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %72, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_29 = arith.constant 0 : i64
    %c0_i64_30 = arith.constant 0 : i64
    %true_31 = arith.constant true
    cf.br ^bb17(%c0_i64_29, %c0_i64_30, %true_31 : i64, i64, i1)
  ^bb16:  // pred: ^bb14
    %73 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %74 = "bufferization.to_memref"(%73) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %74, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_32 = arith.constant 1 : i64
    %75 = arith.addi %7, %c1_i64_32 : i64
    %false_33 = arith.constant false
    cf.br ^bb17(%75, %75, %false_33 : i64, i64, i1)
  ^bb17(%76: i64, %77: i64, %78: i1):  // 2 preds: ^bb15, ^bb16
    %79 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %80 = "bufferization.to_memref"(%79) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %80, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_34 = arith.constant true
    %81 = arith.xori %78, %true_34 : i1
    cf.cond_br %81, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %82 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %83 = "bufferization.to_memref"(%82) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %83, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb2(%77, %76 : i64, i64)
  ^bb19:  // pred: ^bb17
    %84 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %85 = "bufferization.to_memref"(%84) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %85, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c2_i64_35 = arith.constant 2 : i64
    %86 = arith.cmpi eq, %3, %c2_i64_35 : i64
    cf.cond_br %86, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %87 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %88 = "bufferization.to_memref"(%87) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %88, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_36 = arith.constant 0 : i64
    %c0_i64_37 = arith.constant 0 : i64
    %true_38 = arith.constant true
    cf.br ^bb22(%c0_i64_36, %c0_i64_37, %true_38 : i64, i64, i1)
  ^bb21:  // pred: ^bb19
    %89 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %90 = "bufferization.to_memref"(%89) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %90, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_39 = arith.constant 1 : i64
    %91 = arith.addi %3, %c1_i64_39 : i64
    %false_40 = arith.constant false
    cf.br ^bb22(%91, %91, %false_40 : i64, i64, i1)
  ^bb22(%92: i64, %93: i64, %94: i1):  // 2 preds: ^bb20, ^bb21
    %95 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %96 = "bufferization.to_memref"(%95) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %96, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_41 = arith.constant true
    %97 = arith.xori %94, %true_41 : i1
    cf.cond_br %97, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %98 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %99 = "bufferization.to_memref"(%98) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %99, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb1(%92, %93 : i64, i64)
  ^bb24:  // pred: ^bb22
    %100 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %101 = "bufferization.to_memref"(%100) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %101, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %102 = tensor.empty() : tensor<1x4x1xi64>
    %c1_i64_42 = arith.constant 1 : i64
    %c1_i64_43 = arith.constant 1 : i64
    %103 = "bufferization.to_memref"(%102) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    cf.br ^bb25(%c1_i64_42, %c1_i64_43 : i64, i64)
  ^bb25(%104: i64, %105: i64):  // 2 preds: ^bb24, ^bb35
    %106 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %107 = "bufferization.to_memref"(%106) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %107, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %108 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %109 = "bufferization.to_memref"(%108) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %109, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_44 = arith.constant 1 : i64
    %c1_i64_45 = arith.constant 1 : i64
    cf.br ^bb26(%c1_i64_44, %c1_i64_45 : i64, i64)
  ^bb26(%110: i64, %111: i64):  // 2 preds: ^bb25, ^bb30
    %112 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %113 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %114 = "bufferization.to_memref"(%113) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %114, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_46 = arith.constant 1 : i64
    %115 = arith.subi %104, %c1_i64_46 : i64
    %c2_i64_47 = arith.constant 2 : i64
    %116 = arith.muli %115, %c2_i64_47 : i64
    %117 = arith.addi %116, %110 : i64
    %c1_i64_48 = arith.constant 1 : i64
    %c1_i64_49 = arith.constant 1 : i64
    %118 = arith.subi %110, %c1_i64_49 : i64
    %119 = arith.index_cast %118 : i64 to index
    %120 = arith.subi %104, %c1_i64_49 : i64
    %121 = arith.index_cast %120 : i64 to index
    %c0_i64_50 = arith.constant 0 : i64
    %122 = arith.index_cast %c0_i64_50 : i64 to index
    %extracted_51 = tensor.extract %arg1[%122, %119, %121] : tensor<1x2x2xi64>
    %c1_i64_52 = arith.constant 1 : i64
    %c1_i64_53 = arith.constant 1 : i64
    %123 = arith.subi %117, %c1_i64_53 : i64
    %124 = arith.index_cast %123 : i64 to index
    %125 = arith.subi %c1_i64_52, %c1_i64_53 : i64
    %126 = arith.index_cast %125 : i64 to index
    %c0_i64_54 = arith.constant 0 : i64
    %127 = arith.index_cast %c0_i64_54 : i64 to index
    %inserted_55 = tensor.insert %extracted_51 into %112[%127, %124, %126] : tensor<1x4x1xi64>
    %128 = "bufferization.to_memref"(%inserted_55) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %128, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %c2_i64_56 = arith.constant 2 : i64
    %129 = arith.cmpi eq, %111, %c2_i64_56 : i64
    cf.cond_br %129, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %130 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %131 = "bufferization.to_memref"(%130) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %131, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %132 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %133 = "bufferization.to_memref"(%132) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %133, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_57 = arith.constant 0 : i64
    %c0_i64_58 = arith.constant 0 : i64
    %true_59 = arith.constant true
    cf.br ^bb29(%c0_i64_57, %c0_i64_58, %true_59 : i64, i64, i1)
  ^bb28:  // pred: ^bb26
    %134 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %135 = "bufferization.to_memref"(%134) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %135, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %136 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %137 = "bufferization.to_memref"(%136) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %137, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_60 = arith.constant 1 : i64
    %138 = arith.addi %111, %c1_i64_60 : i64
    %false_61 = arith.constant false
    cf.br ^bb29(%138, %138, %false_61 : i64, i64, i1)
  ^bb29(%139: i64, %140: i64, %141: i1):  // 2 preds: ^bb27, ^bb28
    %142 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %143 = "bufferization.to_memref"(%142) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %143, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %144 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %145 = "bufferization.to_memref"(%144) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %145, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_62 = arith.constant true
    %146 = arith.xori %141, %true_62 : i1
    cf.cond_br %146, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %147 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %148 = "bufferization.to_memref"(%147) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %148, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %149 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %150 = "bufferization.to_memref"(%149) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %150, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb26(%139, %140 : i64, i64)
  ^bb31:  // pred: ^bb29
    %151 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %152 = "bufferization.to_memref"(%151) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %152, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %153 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %154 = "bufferization.to_memref"(%153) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %154, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c2_i64_63 = arith.constant 2 : i64
    %155 = arith.cmpi eq, %105, %c2_i64_63 : i64
    cf.cond_br %155, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %156 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %157 = "bufferization.to_memref"(%156) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %157, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %158 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %159 = "bufferization.to_memref"(%158) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %159, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_64 = arith.constant 0 : i64
    %c0_i64_65 = arith.constant 0 : i64
    %true_66 = arith.constant true
    cf.br ^bb34(%c0_i64_64, %c0_i64_65, %true_66 : i64, i64, i1)
  ^bb33:  // pred: ^bb31
    %160 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %161 = "bufferization.to_memref"(%160) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %161, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %162 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %163 = "bufferization.to_memref"(%162) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %163, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_67 = arith.constant 1 : i64
    %164 = arith.addi %105, %c1_i64_67 : i64
    %false_68 = arith.constant false
    cf.br ^bb34(%164, %164, %false_68 : i64, i64, i1)
  ^bb34(%165: i64, %166: i64, %167: i1):  // 2 preds: ^bb32, ^bb33
    %168 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %169 = "bufferization.to_memref"(%168) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %169, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %170 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %171 = "bufferization.to_memref"(%170) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %171, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_69 = arith.constant true
    %172 = arith.xori %167, %true_69 : i1
    cf.cond_br %172, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %173 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %174 = "bufferization.to_memref"(%173) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %174, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %175 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %176 = "bufferization.to_memref"(%175) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %176, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb25(%165, %166 : i64, i64)
  ^bb36:  // pred: ^bb34
    %177 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %178 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %179 = "tosa.transpose"(%178) {perms = array<i32: 0, 2, 1>} : (tensor<1x4x4xi64>) -> tensor<1x4x4xi64>
    %180 = "bufferization.to_memref"(%179) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %180, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %181 = "tosa.const"() {values = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %182 = "tosa.const"() {values = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %183 = "tosa.matmul"(%179, %177, %181, %182) : (tensor<1x4x4xi64>, tensor<1x4x1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<1x4x1xi64>
    %184 = "bufferization.to_memref"(%183) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %184, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %185 = tensor.empty() : tensor<1x2x2xi64>
    %c1_i64_70 = arith.constant 1 : i64
    %c1_i64_71 = arith.constant 1 : i64
    %186 = "bufferization.to_memref"(%185) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    cf.br ^bb37(%c1_i64_70, %c1_i64_71 : i64, i64)
  ^bb37(%187: i64, %188: i64):  // 2 preds: ^bb36, ^bb47
    %189 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %190 = "bufferization.to_memref"(%189) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %190, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %191 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %192 = "bufferization.to_memref"(%191) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %192, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %193 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %194 = "bufferization.to_memref"(%193) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %194, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_72 = arith.constant 1 : i64
    %c1_i64_73 = arith.constant 1 : i64
    cf.br ^bb38(%c1_i64_72, %c1_i64_73 : i64, i64)
  ^bb38(%195: i64, %196: i64):  // 2 preds: ^bb37, ^bb42
    %197 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %198 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %199 = "bufferization.to_memref"(%198) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %199, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %200 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %201 = "bufferization.to_memref"(%200) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %201, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_74 = arith.constant 1 : i64
    %202 = arith.subi %187, %c1_i64_74 : i64
    %c2_i64_75 = arith.constant 2 : i64
    %203 = arith.muli %202, %c2_i64_75 : i64
    %204 = arith.addi %203, %195 : i64
    %c1_i64_76 = arith.constant 1 : i64
    %c1_i64_77 = arith.constant 1 : i64
    %c1_i64_78 = arith.constant 1 : i64
    %205 = arith.subi %204, %c1_i64_78 : i64
    %206 = arith.index_cast %205 : i64 to index
    %207 = arith.subi %c1_i64_76, %c1_i64_78 : i64
    %208 = arith.index_cast %207 : i64 to index
    %c0_i64_79 = arith.constant 0 : i64
    %209 = arith.index_cast %c0_i64_79 : i64 to index
    %extracted_80 = tensor.extract %183[%209, %206, %208] : tensor<1x4x1xi64>
    %c1_i64_81 = arith.constant 1 : i64
    %210 = arith.subi %195, %c1_i64_81 : i64
    %211 = arith.index_cast %210 : i64 to index
    %212 = arith.subi %187, %c1_i64_81 : i64
    %213 = arith.index_cast %212 : i64 to index
    %c0_i64_82 = arith.constant 0 : i64
    %214 = arith.index_cast %c0_i64_82 : i64 to index
    %inserted_83 = tensor.insert %extracted_80 into %197[%214, %211, %213] : tensor<1x2x2xi64>
    %215 = "bufferization.to_memref"(%inserted_83) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %215, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %c2_i64_84 = arith.constant 2 : i64
    %216 = arith.cmpi eq, %196, %c2_i64_84 : i64
    cf.cond_br %216, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %217 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %218 = "bufferization.to_memref"(%217) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %218, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %219 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %220 = "bufferization.to_memref"(%219) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %220, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %221 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %222 = "bufferization.to_memref"(%221) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %222, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_85 = arith.constant 0 : i64
    %c0_i64_86 = arith.constant 0 : i64
    %true_87 = arith.constant true
    cf.br ^bb41(%c0_i64_85, %c0_i64_86, %true_87 : i64, i64, i1)
  ^bb40:  // pred: ^bb38
    %223 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %224 = "bufferization.to_memref"(%223) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %224, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %225 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %226 = "bufferization.to_memref"(%225) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %226, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %227 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %228 = "bufferization.to_memref"(%227) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %228, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_88 = arith.constant 1 : i64
    %229 = arith.addi %196, %c1_i64_88 : i64
    %false_89 = arith.constant false
    cf.br ^bb41(%229, %229, %false_89 : i64, i64, i1)
  ^bb41(%230: i64, %231: i64, %232: i1):  // 2 preds: ^bb39, ^bb40
    %233 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %234 = "bufferization.to_memref"(%233) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %234, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %235 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %236 = "bufferization.to_memref"(%235) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %236, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %237 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %238 = "bufferization.to_memref"(%237) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %238, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_90 = arith.constant true
    %239 = arith.xori %232, %true_90 : i1
    cf.cond_br %239, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %240 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %241 = "bufferization.to_memref"(%240) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %241, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %242 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %243 = "bufferization.to_memref"(%242) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %243, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %244 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %245 = "bufferization.to_memref"(%244) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %245, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb38(%230, %231 : i64, i64)
  ^bb43:  // pred: ^bb41
    %246 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %247 = "bufferization.to_memref"(%246) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %247, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %248 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %249 = "bufferization.to_memref"(%248) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %249, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %250 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %251 = "bufferization.to_memref"(%250) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %251, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c2_i64_91 = arith.constant 2 : i64
    %252 = arith.cmpi eq, %188, %c2_i64_91 : i64
    cf.cond_br %252, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %253 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %254 = "bufferization.to_memref"(%253) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %254, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %255 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %256 = "bufferization.to_memref"(%255) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %256, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %257 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %258 = "bufferization.to_memref"(%257) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %258, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c0_i64_92 = arith.constant 0 : i64
    %c0_i64_93 = arith.constant 0 : i64
    %true_94 = arith.constant true
    cf.br ^bb46(%c0_i64_92, %c0_i64_93, %true_94 : i64, i64, i1)
  ^bb45:  // pred: ^bb43
    %259 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %260 = "bufferization.to_memref"(%259) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %260, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %261 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %262 = "bufferization.to_memref"(%261) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %262, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %263 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %264 = "bufferization.to_memref"(%263) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %264, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %c1_i64_95 = arith.constant 1 : i64
    %265 = arith.addi %188, %c1_i64_95 : i64
    %false_96 = arith.constant false
    cf.br ^bb46(%265, %265, %false_96 : i64, i64, i1)
  ^bb46(%266: i64, %267: i64, %268: i1):  // 2 preds: ^bb44, ^bb45
    %269 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %270 = "bufferization.to_memref"(%269) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %270, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %271 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %272 = "bufferization.to_memref"(%271) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %272, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %273 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %274 = "bufferization.to_memref"(%273) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %274, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %true_97 = arith.constant true
    %275 = arith.xori %268, %true_97 : i1
    cf.cond_br %275, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %276 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %277 = "bufferization.to_memref"(%276) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %277, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %278 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %279 = "bufferization.to_memref"(%278) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %279, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %280 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %281 = "bufferization.to_memref"(%280) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %281, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb37(%266, %267 : i64, i64)
  ^bb48:  // pred: ^bb46
    %282 = "bufferization.to_tensor"(%186) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %283 = "bufferization.to_memref"(%282) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %283, %186 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %284 = "bufferization.to_tensor"(%103) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %285 = "bufferization.to_memref"(%284) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %285, %103 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %286 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %287 = "bufferization.to_memref"(%286) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %287, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    return %282 : tensor<1x2x2xi64>
  }
}
