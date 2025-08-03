module implicit_else(
  input [63:0] arg0,
  input  arg0_valid,
  input [63:0] arg1,
  input  arg1_valid,
  input  start_valid,
  input  clk,
  input  rst,
  input  out0_ready,
  input  end_ready,
  output  arg0_ready,
  output  arg1_ready,
  output  start_ready,
  output [63:0] out0,
  output  out0_valid,
  output  end_valid
);
  wire  fork0_outs_0_valid;
  wire  fork0_outs_0_ready;
  wire  fork0_outs_1_valid;
  wire  fork0_outs_1_ready;
  wire [63:0] fork1_outs_0;
  wire  fork1_outs_0_valid;
  wire  fork1_outs_0_ready;
  wire [63:0] fork1_outs_1;
  wire  fork1_outs_1_valid;
  wire  fork1_outs_1_ready;
  wire [63:0] fork2_outs_0;
  wire  fork2_outs_0_valid;
  wire  fork2_outs_0_ready;
  wire [63:0] fork2_outs_1;
  wire  fork2_outs_1_valid;
  wire  fork2_outs_1_ready;
  wire [0:0] cmpi0_result;
  wire  cmpi0_result_valid;
  wire  cmpi0_result_ready;
  wire [0:0] fork3_outs_0;
  wire  fork3_outs_0_valid;
  wire  fork3_outs_0_ready;
  wire [0:0] fork3_outs_1;
  wire  fork3_outs_1_valid;
  wire  fork3_outs_1_ready;
  wire [0:0] fork3_outs_2;
  wire  fork3_outs_2_valid;
  wire  fork3_outs_2_ready;
  wire [63:0] cond_br1_trueOut;
  wire  cond_br1_trueOut_valid;
  wire  cond_br1_trueOut_ready;
  wire [63:0] cond_br1_falseOut;
  wire  cond_br1_falseOut_valid;
  wire  cond_br1_falseOut_ready;
  wire [63:0] cond_br2_trueOut;
  wire  cond_br2_trueOut_valid;
  wire  cond_br2_trueOut_ready;
  wire [63:0] cond_br2_falseOut;
  wire  cond_br2_falseOut_valid;
  wire  cond_br2_falseOut_ready;
  wire  cond_br3_trueOut_valid;
  wire  cond_br3_trueOut_ready;
  wire  cond_br3_falseOut_valid;
  wire  cond_br3_falseOut_ready;
  wire [63:0] buffer0_outs;
  wire  buffer0_outs_valid;
  wire  buffer0_outs_ready;
  wire [63:0] buffer1_outs;
  wire  buffer1_outs_valid;
  wire  buffer1_outs_ready;
  wire [63:0] buffer2_outs;
  wire  buffer2_outs_valid;
  wire  buffer2_outs_ready;
  wire [63:0] buffer3_outs;
  wire  buffer3_outs_valid;
  wire  buffer3_outs_ready;
  wire [63:0] addi0_result;
  wire  addi0_result_valid;
  wire  addi0_result_ready;
  wire  buffer4_outs_valid;
  wire  buffer4_outs_ready;
  wire  buffer5_outs_valid;
  wire  buffer5_outs_ready;
  wire [63:0] buffer6_outs;
  wire  buffer6_outs_valid;
  wire  buffer6_outs_ready;
  wire [63:0] buffer7_outs;
  wire  buffer7_outs_valid;
  wire  buffer7_outs_ready;
  wire [63:0] fork4_outs_0;
  wire  fork4_outs_0_valid;
  wire  fork4_outs_0_ready;
  wire [63:0] fork4_outs_1;
  wire  fork4_outs_1_valid;
  wire  fork4_outs_1_ready;
  wire [63:0] buffer8_outs;
  wire  buffer8_outs_valid;
  wire  buffer8_outs_ready;
  wire [63:0] buffer9_outs;
  wire  buffer9_outs_valid;
  wire  buffer9_outs_ready;
  wire [63:0] fork5_outs_0;
  wire  fork5_outs_0_valid;
  wire  fork5_outs_0_ready;
  wire [63:0] fork5_outs_1;
  wire  fork5_outs_1_valid;
  wire  fork5_outs_1_ready;
  wire  source0_outs_valid;
  wire  source0_outs_ready;
  wire [0:0] constant0_outs;
  wire  constant0_outs_valid;
  wire  constant0_outs_ready;
  wire [63:0] extsi0_outs;
  wire  extsi0_outs_valid;
  wire  extsi0_outs_ready;
  wire [0:0] cmpi1_result;
  wire  cmpi1_result_valid;
  wire  cmpi1_result_ready;
  wire [63:0] subi1_result;
  wire  subi1_result_valid;
  wire  subi1_result_ready;
  wire [63:0] select0_result;
  wire  select0_result_valid;
  wire  select0_result_ready;
  wire  buffer10_outs_valid;
  wire  buffer10_outs_ready;
  wire  buffer11_outs_valid;
  wire  buffer11_outs_ready;
  wire [63:0] mux0_outs;
  wire  mux0_outs_valid;
  wire  mux0_outs_ready;
  wire  control_merge2_outs_valid;
  wire  control_merge2_outs_ready;
  wire [0:0] control_merge2_index;
  wire  control_merge2_index_valid;
  wire  control_merge2_index_ready;
  wire  buffer14_outs_valid;
  wire  buffer14_outs_ready;
  wire  buffer15_outs_valid;
  wire  buffer15_outs_ready;
  wire [63:0] buffer12_outs;
  wire  buffer12_outs_valid;
  wire  buffer12_outs_ready;
  wire [63:0] buffer13_outs;
  wire  buffer13_outs_valid;
  wire  buffer13_outs_ready;

  assign out0 = buffer13_outs;
  assign out0_valid = buffer13_outs_valid;
  assign buffer13_outs_ready = out0_ready;
  assign end_valid = fork0_outs_0_valid;
  assign fork0_outs_0_ready = end_ready;

  fork_dataless #(.SIZE(2)) fork0(
    .ins_valid (start_valid),
    .ins_ready (start_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid ({fork0_outs_1_valid, fork0_outs_0_valid}),
    .outs_ready ({fork0_outs_1_ready, fork0_outs_0_ready})
  );

  fork_type #(.SIZE(2), .DATA_TYPE(64)) fork1(
    .ins (arg1),
    .ins_valid (arg1_valid),
    .ins_ready (arg1_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork1_outs_1, fork1_outs_0}),
    .outs_valid ({fork1_outs_1_valid, fork1_outs_0_valid}),
    .outs_ready ({fork1_outs_1_ready, fork1_outs_0_ready})
  );

  fork_type #(.SIZE(2), .DATA_TYPE(64)) fork2(
    .ins (arg0),
    .ins_valid (arg0_valid),
    .ins_ready (arg0_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork2_outs_1, fork2_outs_0}),
    .outs_valid ({fork2_outs_1_valid, fork2_outs_0_valid}),
    .outs_ready ({fork2_outs_1_ready, fork2_outs_0_ready})
  );

  handshake_cmpi_0 #(.DATA_TYPE(64)) cmpi0(
    .lhs (fork2_outs_1),
    .lhs_valid (fork2_outs_1_valid),
    .lhs_ready (fork2_outs_1_ready),
    .rhs (fork1_outs_1),
    .rhs_valid (fork1_outs_1_valid),
    .rhs_ready (fork1_outs_1_ready),
    .clk (clk),
    .rst (rst),
    .result (cmpi0_result),
    .result_valid (cmpi0_result_valid),
    .result_ready (cmpi0_result_ready)
  );

  fork_type #(.SIZE(3), .DATA_TYPE(1)) fork3(
    .ins (cmpi0_result),
    .ins_valid (cmpi0_result_valid),
    .ins_ready (cmpi0_result_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork3_outs_2, fork3_outs_1, fork3_outs_0}),
    .outs_valid ({fork3_outs_2_valid, fork3_outs_1_valid, fork3_outs_0_valid}),
    .outs_ready ({fork3_outs_2_ready, fork3_outs_1_ready, fork3_outs_0_ready})
  );

  cond_br #(.DATA_TYPE(64)) cond_br1(
    .condition (fork3_outs_2),
    .condition_valid (fork3_outs_2_valid),
    .condition_ready (fork3_outs_2_ready),
    .data (fork2_outs_0),
    .data_valid (fork2_outs_0_valid),
    .data_ready (fork2_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .trueOut (cond_br1_trueOut),
    .trueOut_valid (cond_br1_trueOut_valid),
    .trueOut_ready (cond_br1_trueOut_ready),
    .falseOut (cond_br1_falseOut),
    .falseOut_valid (cond_br1_falseOut_valid),
    .falseOut_ready (cond_br1_falseOut_ready)
  );

  cond_br #(.DATA_TYPE(64)) cond_br2(
    .condition (fork3_outs_1),
    .condition_valid (fork3_outs_1_valid),
    .condition_ready (fork3_outs_1_ready),
    .data (fork1_outs_0),
    .data_valid (fork1_outs_0_valid),
    .data_ready (fork1_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .trueOut (cond_br2_trueOut),
    .trueOut_valid (cond_br2_trueOut_valid),
    .trueOut_ready (cond_br2_trueOut_ready),
    .falseOut (cond_br2_falseOut),
    .falseOut_valid (cond_br2_falseOut_valid),
    .falseOut_ready (cond_br2_falseOut_ready)
  );

  cond_br_dataless cond_br3(
    .condition (fork3_outs_0),
    .condition_valid (fork3_outs_0_valid),
    .condition_ready (fork3_outs_0_ready),
    .data_valid (fork0_outs_1_valid),
    .data_ready (fork0_outs_1_ready),
    .clk (clk),
    .rst (rst),
    .trueOut_valid (cond_br3_trueOut_valid),
    .trueOut_ready (cond_br3_trueOut_ready),
    .falseOut_valid (cond_br3_falseOut_valid),
    .falseOut_ready (cond_br3_falseOut_ready)
  );

  oehb #(.DATA_TYPE(64)) buffer0(
    .ins (cond_br1_trueOut),
    .ins_valid (cond_br1_trueOut_valid),
    .ins_ready (cond_br1_trueOut_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer0_outs),
    .outs_valid (buffer0_outs_valid),
    .outs_ready (buffer0_outs_ready)
  );

  tehb #(.DATA_TYPE(64)) buffer1(
    .ins (buffer0_outs),
    .ins_valid (buffer0_outs_valid),
    .ins_ready (buffer0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer1_outs),
    .outs_valid (buffer1_outs_valid),
    .outs_ready (buffer1_outs_ready)
  );

  oehb #(.DATA_TYPE(64)) buffer2(
    .ins (cond_br2_trueOut),
    .ins_valid (cond_br2_trueOut_valid),
    .ins_ready (cond_br2_trueOut_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer2_outs),
    .outs_valid (buffer2_outs_valid),
    .outs_ready (buffer2_outs_ready)
  );

  tehb #(.DATA_TYPE(64)) buffer3(
    .ins (buffer2_outs),
    .ins_valid (buffer2_outs_valid),
    .ins_ready (buffer2_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer3_outs),
    .outs_valid (buffer3_outs_valid),
    .outs_ready (buffer3_outs_ready)
  );

  addi #(.DATA_TYPE(64)) addi0(
    .lhs (buffer1_outs),
    .lhs_valid (buffer1_outs_valid),
    .lhs_ready (buffer1_outs_ready),
    .rhs (buffer3_outs),
    .rhs_valid (buffer3_outs_valid),
    .rhs_ready (buffer3_outs_ready),
    .clk (clk),
    .rst (rst),
    .result (addi0_result),
    .result_valid (addi0_result_valid),
    .result_ready (addi0_result_ready)
  );

  oehb_dataless buffer4(
    .ins_valid (cond_br3_trueOut_valid),
    .ins_ready (cond_br3_trueOut_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer4_outs_valid),
    .outs_ready (buffer4_outs_ready)
  );

  tehb_dataless buffer5(
    .ins_valid (buffer4_outs_valid),
    .ins_ready (buffer4_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer5_outs_valid),
    .outs_ready (buffer5_outs_ready)
  );

  oehb #(.DATA_TYPE(64)) buffer6(
    .ins (cond_br1_falseOut),
    .ins_valid (cond_br1_falseOut_valid),
    .ins_ready (cond_br1_falseOut_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer6_outs),
    .outs_valid (buffer6_outs_valid),
    .outs_ready (buffer6_outs_ready)
  );

  tehb #(.DATA_TYPE(64)) buffer7(
    .ins (buffer6_outs),
    .ins_valid (buffer6_outs_valid),
    .ins_ready (buffer6_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer7_outs),
    .outs_valid (buffer7_outs_valid),
    .outs_ready (buffer7_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(64)) fork4(
    .ins (buffer7_outs),
    .ins_valid (buffer7_outs_valid),
    .ins_ready (buffer7_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork4_outs_1, fork4_outs_0}),
    .outs_valid ({fork4_outs_1_valid, fork4_outs_0_valid}),
    .outs_ready ({fork4_outs_1_ready, fork4_outs_0_ready})
  );

  oehb #(.DATA_TYPE(64)) buffer8(
    .ins (cond_br2_falseOut),
    .ins_valid (cond_br2_falseOut_valid),
    .ins_ready (cond_br2_falseOut_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer8_outs),
    .outs_valid (buffer8_outs_valid),
    .outs_ready (buffer8_outs_ready)
  );

  tehb #(.DATA_TYPE(64)) buffer9(
    .ins (buffer8_outs),
    .ins_valid (buffer8_outs_valid),
    .ins_ready (buffer8_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer9_outs),
    .outs_valid (buffer9_outs_valid),
    .outs_ready (buffer9_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(64)) fork5(
    .ins (buffer9_outs),
    .ins_valid (buffer9_outs_valid),
    .ins_ready (buffer9_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork5_outs_1, fork5_outs_0}),
    .outs_valid ({fork5_outs_1_valid, fork5_outs_0_valid}),
    .outs_ready ({fork5_outs_1_ready, fork5_outs_0_ready})
  );

  source source0(
    .clk (clk),
    .rst (rst),
    .outs_valid (source0_outs_valid),
    .outs_ready (source0_outs_ready)
  );

  handshake_constant_0 #(.DATA_WIDTH(1)) constant0(
    .ctrl_valid (source0_outs_valid),
    .ctrl_ready (source0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (constant0_outs),
    .outs_valid (constant0_outs_valid),
    .outs_ready (constant0_outs_ready)
  );

  extsi #(.INPUT_TYPE(1), .OUTPUT_TYPE(64)) extsi0(
    .ins (constant0_outs),
    .ins_valid (constant0_outs_valid),
    .ins_ready (constant0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi0_outs),
    .outs_valid (extsi0_outs_valid),
    .outs_ready (extsi0_outs_ready)
  );

  handshake_cmpi_1 #(.DATA_TYPE(64)) cmpi1(
    .lhs (fork4_outs_1),
    .lhs_valid (fork4_outs_1_valid),
    .lhs_ready (fork4_outs_1_ready),
    .rhs (fork5_outs_1),
    .rhs_valid (fork5_outs_1_valid),
    .rhs_ready (fork5_outs_1_ready),
    .clk (clk),
    .rst (rst),
    .result (cmpi1_result),
    .result_valid (cmpi1_result_valid),
    .result_ready (cmpi1_result_ready)
  );

  subi #(.DATA_TYPE(64)) subi1(
    .lhs (fork4_outs_0),
    .lhs_valid (fork4_outs_0_valid),
    .lhs_ready (fork4_outs_0_ready),
    .rhs (fork5_outs_0),
    .rhs_valid (fork5_outs_0_valid),
    .rhs_ready (fork5_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .result (subi1_result),
    .result_valid (subi1_result_valid),
    .result_ready (subi1_result_ready)
  );

  selector #(.DATA_TYPE(64)) select0(
    .condition (cmpi1_result),
    .condition_valid (cmpi1_result_valid),
    .condition_ready (cmpi1_result_ready),
    .trueValue (subi1_result),
    .trueValue_valid (subi1_result_valid),
    .trueValue_ready (subi1_result_ready),
    .falseValue (extsi0_outs),
    .falseValue_valid (extsi0_outs_valid),
    .falseValue_ready (extsi0_outs_ready),
    .clk (clk),
    .rst (rst),
    .result (select0_result),
    .result_valid (select0_result_valid),
    .result_ready (select0_result_ready)
  );

  oehb_dataless buffer10(
    .ins_valid (cond_br3_falseOut_valid),
    .ins_ready (cond_br3_falseOut_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer10_outs_valid),
    .outs_ready (buffer10_outs_ready)
  );

  tehb_dataless buffer11(
    .ins_valid (buffer10_outs_valid),
    .ins_ready (buffer10_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer11_outs_valid),
    .outs_ready (buffer11_outs_ready)
  );

  mux #(.SIZE(2), .DATA_TYPE(64), .SELECT_TYPE(1)) mux0(
    .index (control_merge2_index),
    .index_valid (control_merge2_index_valid),
    .index_ready (control_merge2_index_ready),
    .ins ({select0_result, addi0_result}),
    .ins_valid ({select0_result_valid, addi0_result_valid}),
    .ins_ready ({select0_result_ready, addi0_result_ready}),
    .clk (clk),
    .rst (rst),
    .outs (mux0_outs),
    .outs_valid (mux0_outs_valid),
    .outs_ready (mux0_outs_ready)
  );

  control_merge_dataless #(.SIZE(2), .INDEX_TYPE(1)) control_merge2(
    .ins_valid ({buffer11_outs_valid, buffer5_outs_valid}),
    .ins_ready ({buffer11_outs_ready, buffer5_outs_ready}),
    .clk (clk),
    .rst (rst),
    .outs_valid (control_merge2_outs_valid),
    .outs_ready (control_merge2_outs_ready),
    .index (control_merge2_index),
    .index_valid (control_merge2_index_valid),
    .index_ready (control_merge2_index_ready)
  );

  oehb_dataless buffer14(
    .ins_valid (control_merge2_outs_valid),
    .ins_ready (control_merge2_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer14_outs_valid),
    .outs_ready (buffer14_outs_ready)
  );

  tehb_dataless buffer15(
    .ins_valid (buffer14_outs_valid),
    .ins_ready (buffer14_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer15_outs_valid),
    .outs_ready (buffer15_outs_ready)
  );

  sink_dataless sink2(
    .ins_valid (buffer15_outs_valid),
    .ins_ready (buffer15_outs_ready),
    .clk (clk),
    .rst (rst)
  );

  oehb #(.DATA_TYPE(64)) buffer12(
    .ins (mux0_outs),
    .ins_valid (mux0_outs_valid),
    .ins_ready (mux0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer12_outs),
    .outs_valid (buffer12_outs_valid),
    .outs_ready (buffer12_outs_ready)
  );

  tehb #(.DATA_TYPE(64)) buffer13(
    .ins (buffer12_outs),
    .ins_valid (buffer12_outs_valid),
    .ins_ready (buffer12_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer13_outs),
    .outs_valid (buffer13_outs_valid),
    .outs_ready (buffer13_outs_ready)
  );

endmodule
