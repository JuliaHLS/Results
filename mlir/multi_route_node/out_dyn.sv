"builtin.module"() ({
  "handshake.func"() <{function_type = (i64, i64, none) -> (i64, none)}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: none):
    %0 = "handshake.merge"(%arg0) : (i64) -> i64
    %1 = "handshake.merge"(%arg1) : (i64) -> i64
    %2 = "handshake.merge"(%arg2) : (none) -> none
    %3 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %4 = "arith.cmpi"(%0, %1) <{predicate = 2 : i64}> : (i64, i64) -> i1
    %5:2 = "handshake.cond_br"(%4, %0) : (i1, i64) -> (i64, i64)
    %6:2 = "handshake.cond_br"(%4, %1) : (i1, i64) -> (i64, i64)
    %7:2 = "handshake.cond_br"(%4, %2) : (i1, none) -> (none, none)
    %8:2 = "handshake.cond_br"(%4, %3) : (i1, i64) -> (i64, i64)
    "cf.cond_br"(%4, %0, %1, %2, %0, %1, %3, %2)[^bb1, ^bb2] <{operandSegmentSizes = array<i32: 1, 3, 4>}> : (i1, i64, i64, none, i64, i64, i64, none) -> ()
  ^bb1:  // pred: ^bb0
    %9 = "handshake.merge"(%5#0) : (i64) -> i64
    %10 = "handshake.merge"(%6#0) : (i64) -> i64
    %11:2 = "handshake.control_merge"(%7#0) : (none) -> (none, index)
    %12 = "arith.addi"(%9, %10) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %13 = "handshake.br"(%11#0) : (none) -> none
    %14 = "handshake.br"(%12) : (i64) -> i64
    "cf.br"(%12, %11#0)[^bb4] : (i64, none) -> ()
  ^bb2:  // pred: ^bb0
    %15 = "handshake.merge"(%5#1) : (i64) -> i64
    %16 = "handshake.merge"(%6#1) : (i64) -> i64
    %17 = "handshake.merge"(%8#1) : (i64) -> i64
    %18:2 = "handshake.control_merge"(%7#1) : (none) -> (none, index)
    %19 = "arith.cmpi"(%15, %16) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %20:2 = "handshake.cond_br"(%19, %15) : (i1, i64) -> (i64, i64)
    %21:2 = "handshake.cond_br"(%19, %16) : (i1, i64) -> (i64, i64)
    %22:2 = "handshake.cond_br"(%19, %17) : (i1, i64) -> (i64, i64)
    %23:2 = "handshake.cond_br"(%19, %18#0) : (i1, none) -> (none, none)
    "cf.cond_br"(%19, %15, %16, %18#0, %17, %18#0)[^bb3, ^bb4] <{operandSegmentSizes = array<i32: 1, 3, 2>}> : (i1, i64, i64, none, i64, none) -> ()
  ^bb3:  // pred: ^bb2
    %24 = "handshake.merge"(%20#0) : (i64) -> i64
    %25 = "handshake.merge"(%21#0) : (i64) -> i64
    %26:2 = "handshake.control_merge"(%23#0) : (none) -> (none, index)
    %27 = "arith.subi"(%24, %25) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %28 = "handshake.br"(%26#0) : (none) -> none
    %29 = "handshake.br"(%27) : (i64) -> i64
    "cf.br"(%27, %26#0)[^bb4] : (i64, none) -> ()
  ^bb4:  // 3 preds: ^bb1, ^bb2, ^bb3
    %30 = "handshake.mux"(%31#1, %29, %22#1, %14) : (index, i64, i64, i64) -> i64
    %31:2 = "handshake.control_merge"(%28, %23#1, %13) : (none, none, none) -> (none, index)
    "handshake.return"(%30, %31#0) : (i64, none) -> ()
  }) {argNames = ["in0", "in1", "in2"], resNames = ["out0", "out1"], sym_name = "multi_route_node", sym_visibility = "public"} : () -> ()
}) : () -> ()
