func.func @uplift_while(%arg0: index, %arg1: index, %arg2: index) -> index {
  %0 = scf.while (%arg3 = %arg0) : (index) -> (index) {
    %1 = arith.cmpi slt, %arg3, %arg1 : index
    scf.condition(%1) %arg3 : index
  } do {
  ^bb0(%arg3: index):
    "test.test1"(%arg3) : (index) -> ()
    %added = arith.addi %arg3, %arg2 : index
    "test.test2"(%added) : (index) -> ()
    scf.yield %added : index
  }
  return %0 : index
}
