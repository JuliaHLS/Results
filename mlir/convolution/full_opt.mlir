module {
  func.func public @conv2d_im2col(%arg0: tensor<1x3x3xi64>, %arg1: tensor<1x2x2xi64>) -> tensor<1x2x2xi64> {
    %c1_i64 = arith.constant 1 : i64
    %c2_i64 = arith.constant 2 : i64
    %c0_i64 = arith.constant 0 : i64
    %true = arith.constant true
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %0 = tensor.empty() : tensor<1x4x4xi64>
    %1 = "bufferization.to_memref"(%0) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    cf.br ^bb1(%c1_i64, %c1_i64 : i64, i64)
  ^bb1(%2: i64, %3: i64):  // 2 preds: ^bb0, ^bb23
    %4 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %5 = "bufferization.to_memref"(%4) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %5, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb2(%c1_i64, %c1_i64 : i64, i64)
  ^bb2(%6: i64, %7: i64):  // 2 preds: ^bb1, ^bb18
    %8 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %9 = "bufferization.to_memref"(%8) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %9, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb3(%c1_i64, %c1_i64 : i64, i64)
  ^bb3(%10: i64, %11: i64):  // 2 preds: ^bb2, ^bb13
    %12 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %13 = "bufferization.to_memref"(%12) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %13, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb4(%c1_i64, %c1_i64 : i64, i64)
  ^bb4(%14: i64, %15: i64):  // 2 preds: ^bb3, ^bb8
    %16 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %17 = arith.subi %10, %c1_i64 : i64
    %18 = arith.muli %17, %c2_i64 : i64
    %19 = arith.addi %18, %14 : i64
    %20 = arith.subi %2, %c1_i64 : i64
    %21 = arith.muli %20, %c2_i64 : i64
    %22 = arith.addi %21, %6 : i64
    %23 = arith.addi %6, %14 : i64
    %24 = arith.addi %2, %10 : i64
    %25 = arith.subi %23, %c2_i64 : i64
    %26 = arith.index_cast %25 : i64 to index
    %27 = arith.subi %24, %c2_i64 : i64
    %28 = arith.index_cast %27 : i64 to index
    %extracted = tensor.extract %arg0[%c0, %26, %28] : tensor<1x3x3xi64>
    %29 = arith.subi %19, %c1_i64 : i64
    %30 = arith.index_cast %29 : i64 to index
    %31 = arith.subi %22, %c1_i64 : i64
    %32 = arith.index_cast %31 : i64 to index
    %inserted = tensor.insert %extracted into %16[%c0, %30, %32] : tensor<1x4x4xi64>
    %33 = "bufferization.to_memref"(%inserted) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %33, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %34 = arith.cmpi eq, %15, %c2_i64 : i64
    cf.cond_br %34, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %35 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %36 = "bufferization.to_memref"(%35) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %36, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb7(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb6:  // pred: ^bb4
    %37 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %38 = "bufferization.to_memref"(%37) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %38, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %39 = arith.addi %15, %c1_i64 : i64
    cf.br ^bb7(%39, %39, %false : i64, i64, i1)
  ^bb7(%40: i64, %41: i64, %42: i1):  // 2 preds: ^bb5, ^bb6
    %43 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %44 = "bufferization.to_memref"(%43) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %44, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %45 = arith.xori %42, %true : i1
    cf.cond_br %45, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %46 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %47 = "bufferization.to_memref"(%46) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %47, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb4(%40, %41 : i64, i64)
  ^bb9:  // pred: ^bb7
    %48 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %49 = "bufferization.to_memref"(%48) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %49, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %50 = arith.cmpi eq, %11, %c2_i64 : i64
    cf.cond_br %50, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %51 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %52 = "bufferization.to_memref"(%51) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %52, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb12(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb11:  // pred: ^bb9
    %53 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %54 = "bufferization.to_memref"(%53) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %54, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %55 = arith.addi %11, %c1_i64 : i64
    cf.br ^bb12(%55, %55, %false : i64, i64, i1)
  ^bb12(%56: i64, %57: i64, %58: i1):  // 2 preds: ^bb10, ^bb11
    %59 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %60 = "bufferization.to_memref"(%59) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %60, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %61 = arith.xori %58, %true : i1
    cf.cond_br %61, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %62 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %63 = "bufferization.to_memref"(%62) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %63, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb3(%57, %56 : i64, i64)
  ^bb14:  // pred: ^bb12
    %64 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %65 = "bufferization.to_memref"(%64) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %65, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %66 = arith.cmpi eq, %7, %c2_i64 : i64
    cf.cond_br %66, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %67 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %68 = "bufferization.to_memref"(%67) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %68, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb17(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb16:  // pred: ^bb14
    %69 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %70 = "bufferization.to_memref"(%69) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %70, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %71 = arith.addi %7, %c1_i64 : i64
    cf.br ^bb17(%71, %71, %false : i64, i64, i1)
  ^bb17(%72: i64, %73: i64, %74: i1):  // 2 preds: ^bb15, ^bb16
    %75 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %76 = "bufferization.to_memref"(%75) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %76, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %77 = arith.xori %74, %true : i1
    cf.cond_br %77, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %78 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %79 = "bufferization.to_memref"(%78) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %79, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb2(%73, %72 : i64, i64)
  ^bb19:  // pred: ^bb17
    %80 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %81 = "bufferization.to_memref"(%80) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %81, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %82 = arith.cmpi eq, %3, %c2_i64 : i64
    cf.cond_br %82, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %83 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %84 = "bufferization.to_memref"(%83) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %84, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb22(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb21:  // pred: ^bb19
    %85 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %86 = "bufferization.to_memref"(%85) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %86, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %87 = arith.addi %3, %c1_i64 : i64
    cf.br ^bb22(%87, %87, %false : i64, i64, i1)
  ^bb22(%88: i64, %89: i64, %90: i1):  // 2 preds: ^bb20, ^bb21
    %91 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %92 = "bufferization.to_memref"(%91) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %92, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %93 = arith.xori %90, %true : i1
    cf.cond_br %93, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %94 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %95 = "bufferization.to_memref"(%94) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %95, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb1(%88, %89 : i64, i64)
  ^bb24:  // pred: ^bb22
    %96 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %97 = "bufferization.to_memref"(%96) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %97, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %98 = tensor.empty() : tensor<1x4x1xi64>
    %99 = "bufferization.to_memref"(%98) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    cf.br ^bb25(%c1_i64, %c1_i64 : i64, i64)
  ^bb25(%100: i64, %101: i64):  // 2 preds: ^bb24, ^bb35
    %102 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %103 = "bufferization.to_memref"(%102) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %103, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %104 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %105 = "bufferization.to_memref"(%104) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %105, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb26(%c1_i64, %c1_i64 : i64, i64)
  ^bb26(%106: i64, %107: i64):  // 2 preds: ^bb25, ^bb30
    %108 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %109 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %110 = "bufferization.to_memref"(%109) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %110, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %111 = arith.subi %100, %c1_i64 : i64
    %112 = arith.muli %111, %c2_i64 : i64
    %113 = arith.addi %112, %106 : i64
    %114 = arith.subi %106, %c1_i64 : i64
    %115 = arith.index_cast %114 : i64 to index
    %116 = arith.index_cast %111 : i64 to index
    %extracted_0 = tensor.extract %arg1[%c0, %115, %116] : tensor<1x2x2xi64>
    %117 = arith.subi %113, %c1_i64 : i64
    %118 = arith.index_cast %117 : i64 to index
    %inserted_1 = tensor.insert %extracted_0 into %108[%c0, %118, %c0] : tensor<1x4x1xi64>
    %119 = "bufferization.to_memref"(%inserted_1) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %119, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %120 = arith.cmpi eq, %107, %c2_i64 : i64
    cf.cond_br %120, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %121 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %122 = "bufferization.to_memref"(%121) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %122, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %123 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %124 = "bufferization.to_memref"(%123) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %124, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb29(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb28:  // pred: ^bb26
    %125 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %126 = "bufferization.to_memref"(%125) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %126, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %127 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %128 = "bufferization.to_memref"(%127) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %128, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %129 = arith.addi %107, %c1_i64 : i64
    cf.br ^bb29(%129, %129, %false : i64, i64, i1)
  ^bb29(%130: i64, %131: i64, %132: i1):  // 2 preds: ^bb27, ^bb28
    %133 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %134 = "bufferization.to_memref"(%133) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %134, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %135 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %136 = "bufferization.to_memref"(%135) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %136, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %137 = arith.xori %132, %true : i1
    cf.cond_br %137, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %138 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %139 = "bufferization.to_memref"(%138) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %139, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %140 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %141 = "bufferization.to_memref"(%140) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %141, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb26(%130, %131 : i64, i64)
  ^bb31:  // pred: ^bb29
    %142 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %143 = "bufferization.to_memref"(%142) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %143, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %144 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %145 = "bufferization.to_memref"(%144) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %145, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %146 = arith.cmpi eq, %101, %c2_i64 : i64
    cf.cond_br %146, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %147 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %148 = "bufferization.to_memref"(%147) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %148, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %149 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %150 = "bufferization.to_memref"(%149) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %150, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb34(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb33:  // pred: ^bb31
    %151 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %152 = "bufferization.to_memref"(%151) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %152, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %153 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %154 = "bufferization.to_memref"(%153) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %154, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %155 = arith.addi %101, %c1_i64 : i64
    cf.br ^bb34(%155, %155, %false : i64, i64, i1)
  ^bb34(%156: i64, %157: i64, %158: i1):  // 2 preds: ^bb32, ^bb33
    %159 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %160 = "bufferization.to_memref"(%159) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %160, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %161 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %162 = "bufferization.to_memref"(%161) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %162, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %163 = arith.xori %158, %true : i1
    cf.cond_br %163, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %164 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %165 = "bufferization.to_memref"(%164) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %165, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %166 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %167 = "bufferization.to_memref"(%166) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %167, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb25(%156, %157 : i64, i64)
  ^bb36:  // pred: ^bb34
    %168 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %169 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %170 = "tosa.transpose"(%169) {perms = array<i32: 0, 2, 1>} : (tensor<1x4x4xi64>) -> tensor<1x4x4xi64>
    %171 = "bufferization.to_memref"(%170) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %171, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %172 = "tosa.const"() {values = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %173 = "tosa.const"() {values = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %174 = "tosa.matmul"(%170, %168, %172, %173) : (tensor<1x4x4xi64>, tensor<1x4x1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<1x4x1xi64>
    %175 = "bufferization.to_memref"(%174) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %175, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %176 = tensor.empty() : tensor<1x2x2xi64>
    %177 = "bufferization.to_memref"(%176) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    cf.br ^bb37(%c1_i64, %c1_i64 : i64, i64)
  ^bb37(%178: i64, %179: i64):  // 2 preds: ^bb36, ^bb47
    %180 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %181 = "bufferization.to_memref"(%180) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %181, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %182 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %183 = "bufferization.to_memref"(%182) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %183, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %184 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %185 = "bufferization.to_memref"(%184) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %185, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb38(%c1_i64, %c1_i64 : i64, i64)
  ^bb38(%186: i64, %187: i64):  // 2 preds: ^bb37, ^bb42
    %188 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %189 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %190 = "bufferization.to_memref"(%189) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %190, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %191 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %192 = "bufferization.to_memref"(%191) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %192, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %193 = arith.subi %178, %c1_i64 : i64
    %194 = arith.muli %193, %c2_i64 : i64
    %195 = arith.addi %194, %186 : i64
    %196 = arith.subi %195, %c1_i64 : i64
    %197 = arith.index_cast %196 : i64 to index
    %extracted_2 = tensor.extract %174[%c0, %197, %c0] : tensor<1x4x1xi64>
    %198 = arith.subi %186, %c1_i64 : i64
    %199 = arith.index_cast %198 : i64 to index
    %200 = arith.index_cast %193 : i64 to index
    %inserted_3 = tensor.insert %extracted_2 into %188[%c0, %199, %200] : tensor<1x2x2xi64>
    %201 = "bufferization.to_memref"(%inserted_3) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %201, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %202 = arith.cmpi eq, %187, %c2_i64 : i64
    cf.cond_br %202, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %203 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %204 = "bufferization.to_memref"(%203) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %204, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %205 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %206 = "bufferization.to_memref"(%205) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %206, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %207 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %208 = "bufferization.to_memref"(%207) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %208, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb41(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb40:  // pred: ^bb38
    %209 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %210 = "bufferization.to_memref"(%209) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %210, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %211 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %212 = "bufferization.to_memref"(%211) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %212, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %213 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %214 = "bufferization.to_memref"(%213) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %214, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %215 = arith.addi %187, %c1_i64 : i64
    cf.br ^bb41(%215, %215, %false : i64, i64, i1)
  ^bb41(%216: i64, %217: i64, %218: i1):  // 2 preds: ^bb39, ^bb40
    %219 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %220 = "bufferization.to_memref"(%219) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %220, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %221 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %222 = "bufferization.to_memref"(%221) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %222, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %223 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %224 = "bufferization.to_memref"(%223) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %224, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %225 = arith.xori %218, %true : i1
    cf.cond_br %225, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %226 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %227 = "bufferization.to_memref"(%226) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %227, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %228 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %229 = "bufferization.to_memref"(%228) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %229, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %230 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %231 = "bufferization.to_memref"(%230) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %231, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb38(%216, %217 : i64, i64)
  ^bb43:  // pred: ^bb41
    %232 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %233 = "bufferization.to_memref"(%232) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %233, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %234 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %235 = "bufferization.to_memref"(%234) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %235, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %236 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %237 = "bufferization.to_memref"(%236) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %237, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %238 = arith.cmpi eq, %179, %c2_i64 : i64
    cf.cond_br %238, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %239 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %240 = "bufferization.to_memref"(%239) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %240, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %241 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %242 = "bufferization.to_memref"(%241) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %242, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %243 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %244 = "bufferization.to_memref"(%243) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %244, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb46(%c0_i64, %c0_i64, %true : i64, i64, i1)
  ^bb45:  // pred: ^bb43
    %245 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %246 = "bufferization.to_memref"(%245) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %246, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %247 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %248 = "bufferization.to_memref"(%247) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %248, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %249 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %250 = "bufferization.to_memref"(%249) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %250, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %251 = arith.addi %179, %c1_i64 : i64
    cf.br ^bb46(%251, %251, %false : i64, i64, i1)
  ^bb46(%252: i64, %253: i64, %254: i1):  // 2 preds: ^bb44, ^bb45
    %255 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %256 = "bufferization.to_memref"(%255) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %256, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %257 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %258 = "bufferization.to_memref"(%257) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %258, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %259 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %260 = "bufferization.to_memref"(%259) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %260, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    %261 = arith.xori %254, %true : i1
    cf.cond_br %261, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %262 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %263 = "bufferization.to_memref"(%262) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %263, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %264 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %265 = "bufferization.to_memref"(%264) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %265, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %266 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %267 = "bufferization.to_memref"(%266) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %267, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    cf.br ^bb37(%252, %253 : i64, i64)
  ^bb48:  // pred: ^bb46
    %268 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi64>) -> tensor<1x2x2xi64>
    %269 = "bufferization.to_memref"(%268) : (tensor<1x2x2xi64>) -> memref<1x2x2xi64>
    memref.copy %269, %177 : memref<1x2x2xi64> to memref<1x2x2xi64>
    %270 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi64>) -> tensor<1x4x1xi64>
    %271 = "bufferization.to_memref"(%270) : (tensor<1x4x1xi64>) -> memref<1x4x1xi64>
    memref.copy %271, %99 : memref<1x4x1xi64> to memref<1x4x1xi64>
    %272 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi64>) -> tensor<1x4x4xi64>
    %273 = "bufferization.to_memref"(%272) : (tensor<1x4x4xi64>) -> memref<1x4x4xi64>
    memref.copy %273, %1 : memref<1x4x4xi64> to memref<1x4x4xi64>
    return %268 : tensor<1x2x2xi64>
  }
}
