module {
  handshake.func public @multi_route_node(%arg0: i64, %arg1: i64, %arg2: none, ...) -> (i64, none) attributes {argNames = ["in0", "in1", "in2"], resNames = ["out0", "out1"]} {
    %0 = merge %arg0 : i64
    %1 = merge %arg1 : i64
    %2 = merge %arg2 : none
    %3 = constant %2 {value = 0 : i64} : i64
    %4 = arith.cmpi slt, %0, %1 : i64
    %5 = buffer [2] fifo %4 : i1
    %trueResult, %falseResult = cond_br %4, %0 : i64
    %trueResult_0, %falseResult_1 = cond_br %4, %1 : i64
    %trueResult_2, %falseResult_3 = cond_br %4, %2 : none
    %trueResult_4, %falseResult_5 = cond_br %4, %3 : i64
    %6 = merge %trueResult : i64
    %7 = merge %trueResult_0 : i64
    %result, %index = control_merge %trueResult_2 : none, index
    %8 = arith.addi %6, %7 : i64
    %9 = br %result : none
    %10 = br %8 : i64
    %11 = merge %falseResult : i64
    %12 = merge %falseResult_1 : i64
    %13 = merge %falseResult_5 : i64
    %result_6, %index_7 = control_merge %falseResult_3 : none, index
    %14 = arith.cmpi sgt, %11, %12 : i64
    %15 = buffer [2] fifo %14 : i1
    %trueResult_8, %falseResult_9 = cond_br %14, %11 : i64
    %trueResult_10, %falseResult_11 = cond_br %14, %12 : i64
    %trueResult_12, %falseResult_13 = cond_br %14, %13 : i64
    %trueResult_14, %falseResult_15 = cond_br %14, %result_6 : none
    %16 = merge %trueResult_8 : i64
    %17 = merge %trueResult_10 : i64
    %result_16, %index_17 = control_merge %trueResult_14 : none, index
    %18 = arith.subi %16, %17 : i64
    %19 = br %result_16 : none
    %20 = br %18 : i64
    %21 = mux %23 [%falseResult_13, %20] : index, i64
    %22 = mux %15 [%falseResult_15, %19] : i1, none
    %23 = arith.index_cast %15 : i1 to index
    %24 = br %21 : i64
    %25 = br %22 : none
    %26 = mux %28 [%24, %10] : index, i64
    %27 = mux %5 [%25, %9] : i1, none
    %28 = arith.index_cast %5 : i1 to index
    return %26, %27 : i64, none
  }
}
