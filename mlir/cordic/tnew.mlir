func.func @while(%arg0: i32, %arg1: i32) -> i32 {
  %c2_i32 = arith.constant 2 : i32
  %0 = scf.while (%arg3 = %arg0) : (i32) -> (i32) {
    %1 = arith.cmpi slt, %arg3, %arg1 : i32
    scf.condition(%1) %arg3 : i32
  } do {
  ^bb0(%arg5: i32):
    %1 = arith.muli %arg5, %c2_i32 : i32
    scf.yield %1 : i32
  }
  return %0 : i32
}


