module {
  func.func public @implicit_else(%arg0: i64, %arg1: i64) -> i64 {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi slt, %arg0, %arg1 : i64
    cf.cond_br %0, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %1 = arith.addi %arg0, %arg1 : i64
    cf.br ^bb4(%1 : i64)
  ^bb2:  // pred: ^bb0
    %2 = arith.cmpi sgt, %arg0, %arg1 : i64
    cf.cond_br %2, ^bb3, ^bb4(%c0_i64 : i64)
  ^bb3:  // pred: ^bb2
    %3 = arith.subi %arg0, %arg1 : i64
    cf.br ^bb4(%3 : i64)
  ^bb4(%4: i64):  // 3 preds: ^bb1, ^bb2, ^bb3
    return %4 : i64
  }
}
