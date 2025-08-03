module {
  func.func public @conv2d_im2col(%arg0: tensor<1x3x3xi32>, %arg1: tensor<1x2x2xi32>) -> tensor<1x2x2xi32> {
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %true = arith.constant true
    %false = arith.constant false
    %c0 = arith.constant 0 : index
    %0 = tensor.empty() : tensor<1x4x4xi32>
    %1 = "bufferization.to_memref"(%0) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    cf.br ^bb1(%c1_i32, %c1_i32 : i32, i32)
  ^bb1(%2: i32, %3: i32):  // 2 preds: ^bb0, ^bb23
    %4 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %5 = "bufferization.to_memref"(%4) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %5, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb2(%c1_i32, %c1_i32 : i32, i32)
  ^bb2(%6: i32, %7: i32):  // 2 preds: ^bb1, ^bb18
    %8 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %9 = "bufferization.to_memref"(%8) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %9, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb3(%c1_i32, %c1_i32 : i32, i32)
  ^bb3(%10: i32, %11: i32):  // 2 preds: ^bb2, ^bb13
    %12 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %13 = "bufferization.to_memref"(%12) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %13, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb4(%c1_i32, %c1_i32 : i32, i32)
  ^bb4(%14: i32, %15: i32):  // 2 preds: ^bb3, ^bb8
    %16 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %17 = arith.subi %10, %c1_i32 : i32
    %18 = arith.muli %17, %c2_i32 : i32
    %19 = arith.addi %18, %14 : i32
    %20 = arith.subi %2, %c1_i32 : i32
    %21 = arith.muli %20, %c2_i32 : i32
    %22 = arith.addi %21, %6 : i32
    %23 = arith.addi %6, %14 : i32
    %24 = arith.addi %2, %10 : i32
    %25 = arith.subi %23, %c2_i32 : i32
    %26 = arith.index_cast %25 : i32 to index
    %27 = arith.subi %24, %c2_i32 : i32
    %28 = arith.index_cast %27 : i32 to index
    %extracted = tensor.extract %arg0[%c0, %26, %28] : tensor<1x3x3xi32>
    %29 = arith.subi %19, %c1_i32 : i32
    %30 = arith.index_cast %29 : i32 to index
    %31 = arith.subi %22, %c1_i32 : i32
    %32 = arith.index_cast %31 : i32 to index
    %inserted = tensor.insert %extracted into %16[%c0, %30, %32] : tensor<1x4x4xi32>
    %33 = "bufferization.to_memref"(%inserted) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %33, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %34 = arith.cmpi eq, %15, %c2_i32 : i32
    cf.cond_br %34, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %35 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %36 = "bufferization.to_memref"(%35) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %36, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb7(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb6:  // pred: ^bb4
    %37 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %38 = "bufferization.to_memref"(%37) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %38, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %39 = arith.addi %15, %c1_i32 : i32
    cf.br ^bb7(%39, %39, %false : i32, i32, i1)
  ^bb7(%40: i32, %41: i32, %42: i1):  // 2 preds: ^bb5, ^bb6
    %43 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %44 = "bufferization.to_memref"(%43) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %44, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %45 = arith.xori %42, %true : i1
    cf.cond_br %45, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %46 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %47 = "bufferization.to_memref"(%46) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %47, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb4(%40, %41 : i32, i32)
  ^bb9:  // pred: ^bb7
    %48 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %49 = "bufferization.to_memref"(%48) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %49, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %50 = arith.cmpi eq, %11, %c2_i32 : i32
    cf.cond_br %50, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %51 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %52 = "bufferization.to_memref"(%51) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %52, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb12(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb11:  // pred: ^bb9
    %53 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %54 = "bufferization.to_memref"(%53) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %54, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %55 = arith.addi %11, %c1_i32 : i32
    cf.br ^bb12(%55, %55, %false : i32, i32, i1)
  ^bb12(%56: i32, %57: i32, %58: i1):  // 2 preds: ^bb10, ^bb11
    %59 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %60 = "bufferization.to_memref"(%59) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %60, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %61 = arith.xori %58, %true : i1
    cf.cond_br %61, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %62 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %63 = "bufferization.to_memref"(%62) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %63, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb3(%57, %56 : i32, i32)
  ^bb14:  // pred: ^bb12
    %64 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %65 = "bufferization.to_memref"(%64) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %65, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %66 = arith.cmpi eq, %7, %c2_i32 : i32
    cf.cond_br %66, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %67 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %68 = "bufferization.to_memref"(%67) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %68, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb17(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb16:  // pred: ^bb14
    %69 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %70 = "bufferization.to_memref"(%69) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %70, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %71 = arith.addi %7, %c1_i32 : i32
    cf.br ^bb17(%71, %71, %false : i32, i32, i1)
  ^bb17(%72: i32, %73: i32, %74: i1):  // 2 preds: ^bb15, ^bb16
    %75 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %76 = "bufferization.to_memref"(%75) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %76, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %77 = arith.xori %74, %true : i1
    cf.cond_br %77, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %78 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %79 = "bufferization.to_memref"(%78) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %79, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb2(%73, %72 : i32, i32)
  ^bb19:  // pred: ^bb17
    %80 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %81 = "bufferization.to_memref"(%80) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %81, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %82 = arith.cmpi eq, %3, %c2_i32 : i32
    cf.cond_br %82, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %83 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %84 = "bufferization.to_memref"(%83) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %84, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb22(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb21:  // pred: ^bb19
    %85 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %86 = "bufferization.to_memref"(%85) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %86, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %87 = arith.addi %3, %c1_i32 : i32
    cf.br ^bb22(%87, %87, %false : i32, i32, i1)
  ^bb22(%88: i32, %89: i32, %90: i1):  // 2 preds: ^bb20, ^bb21
    %91 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %92 = "bufferization.to_memref"(%91) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %92, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %93 = arith.xori %90, %true : i1
    cf.cond_br %93, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %94 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %95 = "bufferization.to_memref"(%94) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %95, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb1(%88, %89 : i32, i32)
  ^bb24:  // pred: ^bb22
    %96 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %97 = "bufferization.to_memref"(%96) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %97, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %98 = tensor.empty() : tensor<1x4x1xi32>
    %99 = "bufferization.to_memref"(%98) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    cf.br ^bb25(%c1_i32, %c1_i32 : i32, i32)
  ^bb25(%100: i32, %101: i32):  // 2 preds: ^bb24, ^bb35
    %102 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %103 = "bufferization.to_memref"(%102) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %103, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %104 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %105 = "bufferization.to_memref"(%104) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %105, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb26(%c1_i32, %c1_i32 : i32, i32)
  ^bb26(%106: i32, %107: i32):  // 2 preds: ^bb25, ^bb30
    %108 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %109 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %110 = "bufferization.to_memref"(%109) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %110, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %111 = arith.subi %100, %c1_i32 : i32
    %112 = arith.muli %111, %c2_i32 : i32
    %113 = arith.addi %112, %106 : i32
    %114 = arith.subi %106, %c1_i32 : i32
    %115 = arith.index_cast %114 : i32 to index
    %116 = arith.index_cast %111 : i32 to index
    %extracted_0 = tensor.extract %arg1[%c0, %115, %116] : tensor<1x2x2xi32>
    %117 = arith.subi %113, %c1_i32 : i32
    %118 = arith.index_cast %117 : i32 to index
    %inserted_1 = tensor.insert %extracted_0 into %108[%c0, %118, %c0] : tensor<1x4x1xi32>
    %119 = "bufferization.to_memref"(%inserted_1) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %119, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %120 = arith.cmpi eq, %107, %c2_i32 : i32
    cf.cond_br %120, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %121 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %122 = "bufferization.to_memref"(%121) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %122, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %123 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %124 = "bufferization.to_memref"(%123) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %124, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb29(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb28:  // pred: ^bb26
    %125 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %126 = "bufferization.to_memref"(%125) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %126, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %127 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %128 = "bufferization.to_memref"(%127) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %128, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %129 = arith.addi %107, %c1_i32 : i32
    cf.br ^bb29(%129, %129, %false : i32, i32, i1)
  ^bb29(%130: i32, %131: i32, %132: i1):  // 2 preds: ^bb27, ^bb28
    %133 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %134 = "bufferization.to_memref"(%133) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %134, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %135 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %136 = "bufferization.to_memref"(%135) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %136, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %137 = arith.xori %132, %true : i1
    cf.cond_br %137, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %138 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %139 = "bufferization.to_memref"(%138) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %139, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %140 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %141 = "bufferization.to_memref"(%140) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %141, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb26(%130, %131 : i32, i32)
  ^bb31:  // pred: ^bb29
    %142 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %143 = "bufferization.to_memref"(%142) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %143, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %144 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %145 = "bufferization.to_memref"(%144) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %145, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %146 = arith.cmpi eq, %101, %c2_i32 : i32
    cf.cond_br %146, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %147 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %148 = "bufferization.to_memref"(%147) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %148, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %149 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %150 = "bufferization.to_memref"(%149) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %150, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb34(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb33:  // pred: ^bb31
    %151 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %152 = "bufferization.to_memref"(%151) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %152, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %153 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %154 = "bufferization.to_memref"(%153) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %154, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %155 = arith.addi %101, %c1_i32 : i32
    cf.br ^bb34(%155, %155, %false : i32, i32, i1)
  ^bb34(%156: i32, %157: i32, %158: i1):  // 2 preds: ^bb32, ^bb33
    %159 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %160 = "bufferization.to_memref"(%159) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %160, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %161 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %162 = "bufferization.to_memref"(%161) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %162, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %163 = arith.xori %158, %true : i1
    cf.cond_br %163, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %164 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %165 = "bufferization.to_memref"(%164) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %165, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %166 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %167 = "bufferization.to_memref"(%166) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %167, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb25(%156, %157 : i32, i32)
  ^bb36:  // pred: ^bb34
    %168 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %169 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %170 = "tosa.transpose"(%169) {perms = array<i32: 0, 2, 1>} : (tensor<1x4x4xi32>) -> tensor<1x4x4xi32>
    %171 = "bufferization.to_memref"(%170) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %171, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %172 = "tosa.const"() {values = dense<0> : tensor<1xi32>} : () -> tensor<1xi32>
    %173 = "tosa.const"() {values = dense<0> : tensor<1xi32>} : () -> tensor<1xi32>
    %174 = "tosa.matmul"(%170, %168, %172, %173) : (tensor<1x4x4xi32>, tensor<1x4x1xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<1x4x1xi32>
    %175 = "bufferization.to_memref"(%174) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %175, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %176 = tensor.empty() : tensor<1x2x2xi32>
    %177 = "bufferization.to_memref"(%176) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    cf.br ^bb37(%c1_i32, %c1_i32 : i32, i32)
  ^bb37(%178: i32, %179: i32):  // 2 preds: ^bb36, ^bb47
    %180 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %181 = "bufferization.to_memref"(%180) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %181, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %182 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %183 = "bufferization.to_memref"(%182) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %183, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %184 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %185 = "bufferization.to_memref"(%184) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %185, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb38(%c1_i32, %c1_i32 : i32, i32)
  ^bb38(%186: i32, %187: i32):  // 2 preds: ^bb37, ^bb42
    %188 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %189 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %190 = "bufferization.to_memref"(%189) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %190, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %191 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %192 = "bufferization.to_memref"(%191) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %192, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %193 = arith.subi %178, %c1_i32 : i32
    %194 = arith.muli %193, %c2_i32 : i32
    %195 = arith.addi %194, %186 : i32
    %196 = arith.subi %195, %c1_i32 : i32
    %197 = arith.index_cast %196 : i32 to index
    %extracted_2 = tensor.extract %174[%c0, %197, %c0] : tensor<1x4x1xi32>
    %198 = arith.subi %186, %c1_i32 : i32
    %199 = arith.index_cast %198 : i32 to index
    %200 = arith.index_cast %193 : i32 to index
    %inserted_3 = tensor.insert %extracted_2 into %188[%c0, %199, %200] : tensor<1x2x2xi32>
    %201 = "bufferization.to_memref"(%inserted_3) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %201, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %202 = arith.cmpi eq, %187, %c2_i32 : i32
    cf.cond_br %202, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %203 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %204 = "bufferization.to_memref"(%203) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %204, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %205 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %206 = "bufferization.to_memref"(%205) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %206, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %207 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %208 = "bufferization.to_memref"(%207) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %208, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb41(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb40:  // pred: ^bb38
    %209 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %210 = "bufferization.to_memref"(%209) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %210, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %211 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %212 = "bufferization.to_memref"(%211) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %212, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %213 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %214 = "bufferization.to_memref"(%213) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %214, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %215 = arith.addi %187, %c1_i32 : i32
    cf.br ^bb41(%215, %215, %false : i32, i32, i1)
  ^bb41(%216: i32, %217: i32, %218: i1):  // 2 preds: ^bb39, ^bb40
    %219 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %220 = "bufferization.to_memref"(%219) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %220, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %221 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %222 = "bufferization.to_memref"(%221) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %222, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %223 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %224 = "bufferization.to_memref"(%223) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %224, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %225 = arith.xori %218, %true : i1
    cf.cond_br %225, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %226 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %227 = "bufferization.to_memref"(%226) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %227, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %228 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %229 = "bufferization.to_memref"(%228) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %229, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %230 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %231 = "bufferization.to_memref"(%230) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %231, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb38(%216, %217 : i32, i32)
  ^bb43:  // pred: ^bb41
    %232 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %233 = "bufferization.to_memref"(%232) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %233, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %234 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %235 = "bufferization.to_memref"(%234) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %235, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %236 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %237 = "bufferization.to_memref"(%236) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %237, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %238 = arith.cmpi eq, %179, %c2_i32 : i32
    cf.cond_br %238, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %239 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %240 = "bufferization.to_memref"(%239) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %240, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %241 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %242 = "bufferization.to_memref"(%241) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %242, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %243 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %244 = "bufferization.to_memref"(%243) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %244, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb46(%c0_i32, %c0_i32, %true : i32, i32, i1)
  ^bb45:  // pred: ^bb43
    %245 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %246 = "bufferization.to_memref"(%245) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %246, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %247 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %248 = "bufferization.to_memref"(%247) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %248, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %249 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %250 = "bufferization.to_memref"(%249) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %250, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %251 = arith.addi %179, %c1_i32 : i32
    cf.br ^bb46(%251, %251, %false : i32, i32, i1)
  ^bb46(%252: i32, %253: i32, %254: i1):  // 2 preds: ^bb44, ^bb45
    %255 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %256 = "bufferization.to_memref"(%255) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %256, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %257 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %258 = "bufferization.to_memref"(%257) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %258, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %259 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %260 = "bufferization.to_memref"(%259) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %260, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    %261 = arith.xori %254, %true : i1
    cf.cond_br %261, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %262 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %263 = "bufferization.to_memref"(%262) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %263, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %264 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %265 = "bufferization.to_memref"(%264) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %265, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %266 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %267 = "bufferization.to_memref"(%266) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %267, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    cf.br ^bb37(%252, %253 : i32, i32)
  ^bb48:  // pred: ^bb46
    %268 = "bufferization.to_tensor"(%177) {restrict, writable} : (memref<1x2x2xi32>) -> tensor<1x2x2xi32>
    %269 = "bufferization.to_memref"(%268) : (tensor<1x2x2xi32>) -> memref<1x2x2xi32>
    memref.copy %269, %177 : memref<1x2x2xi32> to memref<1x2x2xi32>
    %270 = "bufferization.to_tensor"(%99) {restrict, writable} : (memref<1x4x1xi32>) -> tensor<1x4x1xi32>
    %271 = "bufferization.to_memref"(%270) : (tensor<1x4x1xi32>) -> memref<1x4x1xi32>
    memref.copy %271, %99 : memref<1x4x1xi32> to memref<1x4x1xi32>
    %272 = "bufferization.to_tensor"(%1) {restrict, writable} : (memref<1x4x4xi32>) -> tensor<1x4x4xi32>
    %273 = "bufferization.to_memref"(%272) : (tensor<1x4x4xi32>) -> memref<1x4x4xi32>
    memref.copy %273, %1 : memref<1x4x4xi32> to memref<1x4x4xi32>
    return %268 : tensor<1x2x2xi32>
  }
}
