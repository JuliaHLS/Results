module {
  handshake.func public @multi_route_node(%arg0: i64, %arg1: i64, %arg2: none, ...) -> (i64, none) attributes {argNames = ["in0", "in1", "in2"], resNames = ["out0", "out1"]} {
    %0 = buffer [2] seq %arg2 : none
    %1 = buffer [2] seq %arg1 : i64
    %2 = buffer [2] seq %arg0 : i64
    %3:2 = fork [2] %0 : none
    %4 = buffer [2] seq %3#1 : none
    %5 = buffer [2] seq %3#0 : none
    %6:2 = fork [2] %1 : i64
    %7 = buffer [2] seq %6#1 : i64
    %8 = buffer [2] seq %6#0 : i64
    %9:2 = fork [2] %2 : i64
    %10 = buffer [2] seq %9#1 : i64
    %11 = buffer [2] seq %9#0 : i64
    %12 = constant %4 {value = 0 : i64} : i64
    %13 = buffer [2] seq %12 : i64
    %14 = arith.cmpi slt, %11, %8 : i64
    %15 = buffer [2] seq %14 : i1
    %16:4 = fork [4] %15 : i1
    %17 = buffer [2] seq %16#3 : i1
    %18 = buffer [2] seq %16#2 : i1
    %19 = buffer [2] seq %16#1 : i1
    %20 = buffer [2] fifo %16#0 : i1
    %trueResult, %falseResult = cond_br %17, %10 : i64
    %21 = buffer [2] seq %falseResult : i64
    %22 = buffer [2] seq %trueResult : i64
    %23:2 = fork [2] %21 : i64
    %24 = buffer [2] seq %23#1 : i64
    %25 = buffer [2] seq %23#0 : i64
    %trueResult_0, %falseResult_1 = cond_br %18, %7 : i64
    %26 = buffer [2] seq %falseResult_1 : i64
    %27 = buffer [2] seq %trueResult_0 : i64
    %28:2 = fork [2] %26 : i64
    %29 = buffer [2] seq %28#1 : i64
    %30 = buffer [2] seq %28#0 : i64
    %trueResult_2, %falseResult_3 = cond_br %19, %13 : i64
    %31 = buffer [2] seq %falseResult_3 : i64
    sink %trueResult_2 : i64
    %32 = arith.addi %22, %27 : i64
    %33 = buffer [2] seq %32 : i64
    %34 = arith.cmpi sgt, %25, %30 : i64
    %35 = buffer [2] seq %34 : i1
    %36:4 = fork [4] %35 : i1
    %37 = buffer [2] seq %36#3 : i1
    %38 = buffer [2] seq %36#2 : i1
    %39 = buffer [2] seq %36#1 : i1
    %40 = buffer [2] fifo %36#0 : i1
    %trueResult_4, %falseResult_5 = cond_br %37, %24 : i64
    %41 = buffer [2] seq %trueResult_4 : i64
    sink %falseResult_5 : i64
    %trueResult_6, %falseResult_7 = cond_br %38, %29 : i64
    %42 = buffer [2] seq %trueResult_6 : i64
    sink %falseResult_7 : i64
    %trueResult_8, %falseResult_9 = cond_br %39, %31 : i64
    %43 = buffer [2] seq %falseResult_9 : i64
    sink %trueResult_8 : i64
    %44 = arith.subi %41, %42 : i64
    %45 = buffer [2] seq %44 : i64
    %46 = mux %49 [%43, %45] : index, i64
    %47 = buffer [2] seq %46 : i64
    %48 = arith.index_cast %40 : i1 to index
    %49 = buffer [2] seq %48 : index
    %50 = mux %53 [%47, %33] : index, i64
    %51 = buffer [2] seq %50 : i64
    %52 = arith.index_cast %20 : i1 to index
    %53 = buffer [2] seq %52 : index
    return %51, %5 : i64, none
  }
}
