(* DONT_TOUCH="true" *)
module cordic_int(
  input [31:0] theta,
  input  theta_valid,
  input [31:0] K,
  input  K_valid,
  input [31:0] factors_loadData,
  input  factors_start_valid,
  input  start_valid,
  input  clk,
  input  rst,
  input  out0_ready,
  input  factors_end_ready,
  input  end_ready,
  output  theta_ready,
  output  K_ready,
  output  factors_start_ready,
  output  start_ready,
  output [31:0] out0,
  output  out0_valid,
  output  factors_end_valid,
  output  end_valid,
  output  factors_loadEn,
  output [3:0] factors_loadAddr,
  output  factors_storeEn,
  output [3:0] factors_storeAddr,
  output [31:0] factors_storeData
);
(* MARK_DEBUG = "true" *)wire  fork0_outs_0_valid;
(* MARK_DEBUG = "true" *)  wire  fork0_outs_0_ready;
(* MARK_DEBUG = "true" *)  wire  fork0_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork0_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire  fork0_outs_2_valid;
 (* MARK_DEBUG = "true" *) wire  fork0_outs_2_ready;
 (* MARK_DEBUG = "true" *) wire  buffer12_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer12_outs_ready;
 (* MARK_DEBUG = "true" *) wire  buffer13_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer13_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] mem_controller1_ldData_0;
 (* MARK_DEBUG = "true" *) wire  mem_controller1_ldData_0_valid;
 (* MARK_DEBUG = "true" *) wire  mem_controller1_ldData_0_ready;
 (* MARK_DEBUG = "true" *) wire  mem_controller1_memEnd_valid;
 (* MARK_DEBUG = "true" *) wire  mem_controller1_memEnd_ready;
 (* MARK_DEBUG = "true" *) wire  mem_controller1_loadEn;
 (* MARK_DEBUG = "true" *) wire [3:0] mem_controller1_loadAddr;
 (* MARK_DEBUG = "true" *) wire  mem_controller1_storeEn;
 (* MARK_DEBUG = "true" *) wire [3:0] mem_controller1_storeAddr;
 (* MARK_DEBUG = "true" *) wire [31:0] mem_controller1_storeData;
 (* MARK_DEBUG = "true" *) wire [0:0] constant0_outs;
 (* MARK_DEBUG = "true" *) wire  constant0_outs_valid;
 (* MARK_DEBUG = "true" *) wire  constant0_outs_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork1_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork1_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork1_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork1_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork1_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork1_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] extsi6_outs;
 (* MARK_DEBUG = "true" *) wire  extsi6_outs_valid;
 (* MARK_DEBUG = "true" *) wire  extsi6_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] extsi7_outs;
 (* MARK_DEBUG = "true" *) wire  extsi7_outs_valid;
 (* MARK_DEBUG = "true" *) wire  extsi7_outs_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] mux0_outs;
 (* MARK_DEBUG = "true" *) wire  mux0_outs_valid;
 (* MARK_DEBUG = "true" *) wire  mux0_outs_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] buffer0_outs;
 (* MARK_DEBUG = "true" *) wire  buffer0_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer0_outs_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] buffer1_outs;
 (* MARK_DEBUG = "true" *) wire  buffer1_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer1_outs_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] fork2_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork2_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork2_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] fork2_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork2_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork2_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] fork2_outs_2;
 (* MARK_DEBUG = "true" *) wire  fork2_outs_2_valid;
 (* MARK_DEBUG = "true" *) wire  fork2_outs_2_ready;
 (* MARK_DEBUG = "true" *) wire [5:0] extsi8_outs;
 (* MARK_DEBUG = "true" *) wire  extsi8_outs_valid;
 (* MARK_DEBUG = "true" *) wire  extsi8_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] extsi9_outs;
 (* MARK_DEBUG = "true" *) wire  extsi9_outs_valid;
 (* MARK_DEBUG = "true" *) wire  extsi9_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork3_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork3_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork3_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork3_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork3_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork3_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [3:0] trunci0_outs;
 (* MARK_DEBUG = "true" *) wire  trunci0_outs_valid;
 (* MARK_DEBUG = "true" *) wire  trunci0_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] mux1_outs;
 (* MARK_DEBUG = "true" *) wire  mux1_outs_valid;
 (* MARK_DEBUG = "true" *) wire  mux1_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer2_outs;
 (* MARK_DEBUG = "true" *) wire  buffer2_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer2_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer3_outs;
 (* MARK_DEBUG = "true" *) wire  buffer3_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer3_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork4_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork4_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork4_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork4_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork4_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork4_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] mux2_outs;
 (* MARK_DEBUG = "true" *) wire  mux2_outs_valid;
 (* MARK_DEBUG = "true" *) wire  mux2_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer4_outs;
 (* MARK_DEBUG = "true" *) wire  buffer4_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer4_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer5_outs;
 (* MARK_DEBUG = "true" *) wire  buffer5_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer5_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork5_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork5_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork5_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork5_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork5_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork5_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] mux3_outs;
 (* MARK_DEBUG = "true" *) wire  mux3_outs_valid;
 (* MARK_DEBUG = "true" *) wire  mux3_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer6_outs;
 (* MARK_DEBUG = "true" *) wire  buffer6_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer6_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer7_outs;
 (* MARK_DEBUG = "true" *) wire  buffer7_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer7_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork6_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork6_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork6_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork6_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork6_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork6_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire  control_merge0_outs_valid;
 (* MARK_DEBUG = "true" *) wire  control_merge0_outs_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] control_merge0_index;
 (* MARK_DEBUG = "true" *) wire  control_merge0_index_valid;
 (* MARK_DEBUG = "true" *) wire  control_merge0_index_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork7_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork7_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork7_outs_2;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_2_valid;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_2_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork7_outs_3;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_3_valid;
 (* MARK_DEBUG = "true" *) wire  fork7_outs_3_ready;
 (* MARK_DEBUG = "true" *) wire  source0_outs_valid;
 (* MARK_DEBUG = "true" *) wire  source0_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] constant6_outs;
 (* MARK_DEBUG = "true" *) wire  constant6_outs_valid;
 (* MARK_DEBUG = "true" *) wire  constant6_outs_ready;
 (* MARK_DEBUG = "true" *) wire  source1_outs_valid;
 (* MARK_DEBUG = "true" *) wire  source1_outs_ready;
 (* MARK_DEBUG = "true" *) wire [1:0] constant1_outs;
 (* MARK_DEBUG = "true" *) wire  constant1_outs_valid;
 (* MARK_DEBUG = "true" *) wire  constant1_outs_ready;
 (* MARK_DEBUG = "true" *) wire [1:0] fork8_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork8_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork8_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [1:0] fork8_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork8_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork8_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [5:0] extsi10_outs;
 (* MARK_DEBUG = "true" *) wire  extsi10_outs_valid;
 (* MARK_DEBUG = "true" *) wire  extsi10_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] extsi3_outs;
 (* MARK_DEBUG = "true" *) wire  extsi3_outs_valid;
 (* MARK_DEBUG = "true" *) wire  extsi3_outs_ready;
 (* MARK_DEBUG = "true" *) wire  source2_outs_valid;
 (* MARK_DEBUG = "true" *) wire  source2_outs_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] constant4_outs;
 (* MARK_DEBUG = "true" *) wire  constant4_outs_valid;
 (* MARK_DEBUG = "true" *) wire  constant4_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] extsi4_outs;
 (* MARK_DEBUG = "true" *) wire  extsi4_outs_valid;
 (* MARK_DEBUG = "true" *) wire  extsi4_outs_ready;
 (* MARK_DEBUG = "true" *) wire  source3_outs_valid;
 (* MARK_DEBUG = "true" *) wire  source3_outs_ready;
 (* MARK_DEBUG = "true" *) wire [5:0] constant5_outs;
 (* MARK_DEBUG = "true" *) wire  constant5_outs_valid;
 (* MARK_DEBUG = "true" *) wire  constant5_outs_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] cmpi0_result;
 (* MARK_DEBUG = "true" *) wire  cmpi0_result_valid;
 (* MARK_DEBUG = "true" *) wire  cmpi0_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] select0_result;
 (* MARK_DEBUG = "true" *) wire  select0_result_valid;
 (* MARK_DEBUG = "true" *) wire  select0_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork9_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork9_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork9_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork9_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork9_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork9_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] fork9_outs_2;
 (* MARK_DEBUG = "true" *) wire  fork9_outs_2_valid;
 (* MARK_DEBUG = "true" *) wire  fork9_outs_2_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] shrsi0_result;
 (* MARK_DEBUG = "true" *) wire  shrsi0_result_valid;
 (* MARK_DEBUG = "true" *) wire  shrsi0_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] shrsi1_result;
 (* MARK_DEBUG = "true" *) wire  shrsi1_result_valid;
 (* MARK_DEBUG = "true" *) wire  shrsi1_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] muli0_result;
 (* MARK_DEBUG = "true" *) wire  muli0_result_valid;
 (* MARK_DEBUG = "true" *) wire  muli0_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] subi0_result;
 (* MARK_DEBUG = "true" *) wire  subi0_result_valid;
 (* MARK_DEBUG = "true" *) wire  subi0_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] muli1_result;
 (* MARK_DEBUG = "true" *) wire  muli1_result_valid;
 (* MARK_DEBUG = "true" *) wire  muli1_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] addi0_result;
 (* MARK_DEBUG = "true" *) wire  addi0_result_valid;
 (* MARK_DEBUG = "true" *) wire  addi0_result_ready;
 (* MARK_DEBUG = "true" *) wire [3:0] load0_addrOut;
 (* MARK_DEBUG = "true" *) wire  load0_addrOut_valid;
 (* MARK_DEBUG = "true" *) wire  load0_addrOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] load0_dataOut;
 (* MARK_DEBUG = "true" *) wire  load0_dataOut_valid;
 (* MARK_DEBUG = "true" *) wire  load0_dataOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] muli2_result;
 (* MARK_DEBUG = "true" *) wire  muli2_result_valid;
 (* MARK_DEBUG = "true" *) wire  muli2_result_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] subi1_result;
 (* MARK_DEBUG = "true" *) wire  subi1_result_valid;
 (* MARK_DEBUG = "true" *) wire  subi1_result_ready;
 (* MARK_DEBUG = "true" *) wire [5:0] addi1_result;
 (* MARK_DEBUG = "true" *) wire  addi1_result_valid;
 (* MARK_DEBUG = "true" *) wire  addi1_result_ready;
 (* MARK_DEBUG = "true" *) wire [5:0] fork10_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork10_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork10_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [5:0] fork10_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork10_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork10_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] trunci1_outs;
 (* MARK_DEBUG = "true" *) wire  trunci1_outs_valid;
 (* MARK_DEBUG = "true" *) wire  trunci1_outs_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] cmpi1_result;
 (* MARK_DEBUG = "true" *) wire  cmpi1_result_valid;
 (* MARK_DEBUG = "true" *) wire  cmpi1_result_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork11_outs_0;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_0_valid;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_0_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork11_outs_1;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_1_valid;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_1_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork11_outs_2;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_2_valid;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_2_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork11_outs_3;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_3_valid;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_3_ready;
 (* MARK_DEBUG = "true" *) wire [0:0] fork11_outs_4;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_4_valid;
 (* MARK_DEBUG = "true" *) wire  fork11_outs_4_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] cond_br1_trueOut;
 (* MARK_DEBUG = "true" *) wire  cond_br1_trueOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br1_trueOut_ready;
 (* MARK_DEBUG = "true" *) wire [4:0] cond_br1_falseOut;
 (* MARK_DEBUG = "true" *) wire  cond_br1_falseOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br1_falseOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] cond_br2_trueOut;
 (* MARK_DEBUG = "true" *) wire  cond_br2_trueOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br2_trueOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] cond_br2_falseOut;
 (* MARK_DEBUG = "true" *) wire  cond_br2_falseOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br2_falseOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] cond_br3_trueOut;
 (* MARK_DEBUG = "true" *) wire  cond_br3_trueOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br3_trueOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] cond_br3_falseOut;
 (* MARK_DEBUG = "true" *) wire  cond_br3_falseOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br3_falseOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] cond_br4_trueOut;
 (* MARK_DEBUG = "true" *) wire  cond_br4_trueOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br4_trueOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] cond_br4_falseOut;
 (* MARK_DEBUG = "true" *) wire  cond_br4_falseOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br4_falseOut_ready;
 (* MARK_DEBUG = "true" *) wire  buffer8_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer8_outs_ready;
 (* MARK_DEBUG = "true" *) wire  buffer9_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer9_outs_ready;
 (* MARK_DEBUG = "true" *) wire  cond_br5_trueOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br5_trueOut_ready;
 (* MARK_DEBUG = "true" *) wire  cond_br5_falseOut_valid;
 (* MARK_DEBUG = "true" *) wire  cond_br5_falseOut_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer10_outs;
 (* MARK_DEBUG = "true" *) wire  buffer10_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer10_outs_ready;
 (* MARK_DEBUG = "true" *) wire [31:0] buffer11_outs;
 (* MARK_DEBUG = "true" *) wire  buffer11_outs_valid;
 (* MARK_DEBUG = "true" *) wire  buffer11_outs_ready;
  assign out0 = buffer11_outs;
  assign out0_valid = buffer11_outs_valid;
  assign buffer11_outs_ready = out0_ready;
  assign factors_end_valid = mem_controller1_memEnd_valid;
  assign mem_controller1_memEnd_ready = factors_end_ready;
  assign end_valid = fork0_outs_1_valid;
  assign fork0_outs_1_ready = end_ready;
  assign factors_loadEn = mem_controller1_loadEn;
  assign factors_loadAddr = mem_controller1_loadAddr;
  assign factors_storeEn = mem_controller1_storeEn;
  assign factors_storeAddr = mem_controller1_storeAddr;
  assign factors_storeData = mem_controller1_storeData;

  fork_dataless #(.SIZE(3)) fork0(
    .ins_valid (start_valid),
    .ins_ready (start_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid ({fork0_outs_2_valid, fork0_outs_1_valid, fork0_outs_0_valid}),
    .outs_ready ({fork0_outs_2_ready, fork0_outs_1_ready, fork0_outs_0_ready})
  );

  oehb_dataless buffer12(
    .ins_valid (cond_br5_falseOut_valid),
    .ins_ready (cond_br5_falseOut_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer12_outs_valid),
    .outs_ready (buffer12_outs_ready)
  );

  tehb_dataless buffer13(
    .ins_valid (buffer12_outs_valid),
    .ins_ready (buffer12_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer13_outs_valid),
    .outs_ready (buffer13_outs_ready)
  );

  mem_controller_storeless #(.NUM_LOADS(1), .DATA_TYPE(32), .ADDR_TYPE(4)) mem_controller1(
    .loadData (factors_loadData),
    .memStart_valid (factors_start_valid),
    .memStart_ready (factors_start_ready),
    .ldAddr ({load0_addrOut}),
    .ldAddr_valid ({load0_addrOut_valid}),
    .ldAddr_ready ({load0_addrOut_ready}),
    .ctrlEnd_valid (buffer13_outs_valid),
    .ctrlEnd_ready (buffer13_outs_ready),
    .clk (clk),
    .rst (rst),
    .ldData ({mem_controller1_ldData_0}),
    .ldData_valid ({mem_controller1_ldData_0_valid}),
    .ldData_ready ({mem_controller1_ldData_0_ready}),
    .memEnd_valid (mem_controller1_memEnd_valid),
    .memEnd_ready (mem_controller1_memEnd_ready),
    .loadEn (mem_controller1_loadEn),
    .loadAddr (mem_controller1_loadAddr),
    .storeEn (mem_controller1_storeEn),
    .storeAddr (mem_controller1_storeAddr),
    .storeData (mem_controller1_storeData)
  );

  handshake_constant_0 #(.DATA_WIDTH(1)) constant0(
    .ctrl_valid (fork0_outs_0_valid),
    .ctrl_ready (fork0_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .outs (constant0_outs),
    .outs_valid (constant0_outs_valid),
    .outs_ready (constant0_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(1)) fork1(
    .ins (constant0_outs),
    .ins_valid (constant0_outs_valid),
    .ins_ready (constant0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork1_outs_1, fork1_outs_0}),
    .outs_valid ({fork1_outs_1_valid, fork1_outs_0_valid}),
    .outs_ready ({fork1_outs_1_ready, fork1_outs_0_ready})
  );

  extsi #(.INPUT_TYPE(1), .OUTPUT_TYPE(5)) extsi6(
    .ins (fork1_outs_0),
    .ins_valid (fork1_outs_0_valid),
    .ins_ready (fork1_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi6_outs),
    .outs_valid (extsi6_outs_valid),
    .outs_ready (extsi6_outs_ready)
  );

  extsi #(.INPUT_TYPE(1), .OUTPUT_TYPE(32)) extsi7(
    .ins (fork1_outs_1),
    .ins_valid (fork1_outs_1_valid),
    .ins_ready (fork1_outs_1_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi7_outs),
    .outs_valid (extsi7_outs_valid),
    .outs_ready (extsi7_outs_ready)
  );

  mux #(.SIZE(2), .DATA_TYPE(5), .SELECT_TYPE(1)) mux0(
    .index (fork7_outs_0),
    .index_valid (fork7_outs_0_valid),
    .index_ready (fork7_outs_0_ready),
    .ins ({cond_br1_trueOut, extsi6_outs}),
    .ins_valid ({cond_br1_trueOut_valid, extsi6_outs_valid}),
    .ins_ready ({cond_br1_trueOut_ready, extsi6_outs_ready}),
    .clk (clk),
    .rst (rst),
    .outs (mux0_outs),
    .outs_valid (mux0_outs_valid),
    .outs_ready (mux0_outs_ready)
  );

  oehb #(.DATA_TYPE(5)) buffer0(
    .ins (mux0_outs),
    .ins_valid (mux0_outs_valid),
    .ins_ready (mux0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer0_outs),
    .outs_valid (buffer0_outs_valid),
    .outs_ready (buffer0_outs_ready)
  );

  tehb #(.DATA_TYPE(5)) buffer1(
    .ins (buffer0_outs),
    .ins_valid (buffer0_outs_valid),
    .ins_ready (buffer0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer1_outs),
    .outs_valid (buffer1_outs_valid),
    .outs_ready (buffer1_outs_ready)
  );

  fork_type #(.SIZE(3), .DATA_TYPE(5)) fork2(
    .ins (buffer1_outs),
    .ins_valid (buffer1_outs_valid),
    .ins_ready (buffer1_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork2_outs_2, fork2_outs_1, fork2_outs_0}),
    .outs_valid ({fork2_outs_2_valid, fork2_outs_1_valid, fork2_outs_0_valid}),
    .outs_ready ({fork2_outs_2_ready, fork2_outs_1_ready, fork2_outs_0_ready})
  );

  extsi #(.INPUT_TYPE(5), .OUTPUT_TYPE(6)) extsi8(
    .ins (fork2_outs_1),
    .ins_valid (fork2_outs_1_valid),
    .ins_ready (fork2_outs_1_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi8_outs),
    .outs_valid (extsi8_outs_valid),
    .outs_ready (extsi8_outs_ready)
  );

  extsi #(.INPUT_TYPE(5), .OUTPUT_TYPE(32)) extsi9(
    .ins (fork2_outs_2),
    .ins_valid (fork2_outs_2_valid),
    .ins_ready (fork2_outs_2_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi9_outs),
    .outs_valid (extsi9_outs_valid),
    .outs_ready (extsi9_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(32)) fork3(
    .ins (extsi9_outs),
    .ins_valid (extsi9_outs_valid),
    .ins_ready (extsi9_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork3_outs_1, fork3_outs_0}),
    .outs_valid ({fork3_outs_1_valid, fork3_outs_0_valid}),
    .outs_ready ({fork3_outs_1_ready, fork3_outs_0_ready})
  );

  trunci #(.INPUT_TYPE(5), .OUTPUT_TYPE(4)) trunci0(
    .ins (fork2_outs_0),
    .ins_valid (fork2_outs_0_valid),
    .ins_ready (fork2_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .outs (trunci0_outs),
    .outs_valid (trunci0_outs_valid),
    .outs_ready (trunci0_outs_ready)
  );

  mux #(.SIZE(2), .DATA_TYPE(32), .SELECT_TYPE(1)) mux1(
    .index (fork7_outs_1),
    .index_valid (fork7_outs_1_valid),
    .index_ready (fork7_outs_1_ready),
    .ins ({cond_br2_trueOut, theta}),
    .ins_valid ({cond_br2_trueOut_valid, theta_valid}),
    .ins_ready ({cond_br2_trueOut_ready, theta_ready}),
    .clk (clk),
    .rst (rst),
    .outs (mux1_outs),
    .outs_valid (mux1_outs_valid),
    .outs_ready (mux1_outs_ready)
  );

  oehb #(.DATA_TYPE(32)) buffer2(
    .ins (mux1_outs),
    .ins_valid (mux1_outs_valid),
    .ins_ready (mux1_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer2_outs),
    .outs_valid (buffer2_outs_valid),
    .outs_ready (buffer2_outs_ready)
  );

  tehb #(.DATA_TYPE(32)) buffer3(
    .ins (buffer2_outs),
    .ins_valid (buffer2_outs_valid),
    .ins_ready (buffer2_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer3_outs),
    .outs_valid (buffer3_outs_valid),
    .outs_ready (buffer3_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(32)) fork4(
    .ins (buffer3_outs),
    .ins_valid (buffer3_outs_valid),
    .ins_ready (buffer3_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork4_outs_1, fork4_outs_0}),
    .outs_valid ({fork4_outs_1_valid, fork4_outs_0_valid}),
    .outs_ready ({fork4_outs_1_ready, fork4_outs_0_ready})
  );

  mux #(.SIZE(2), .DATA_TYPE(32), .SELECT_TYPE(1)) mux2(
    .index (fork7_outs_2),
    .index_valid (fork7_outs_2_valid),
    .index_ready (fork7_outs_2_ready),
    .ins ({cond_br3_trueOut, extsi7_outs}),
    .ins_valid ({cond_br3_trueOut_valid, extsi7_outs_valid}),
    .ins_ready ({cond_br3_trueOut_ready, extsi7_outs_ready}),
    .clk (clk),
    .rst (rst),
    .outs (mux2_outs),
    .outs_valid (mux2_outs_valid),
    .outs_ready (mux2_outs_ready)
  );

  oehb #(.DATA_TYPE(32)) buffer4(
    .ins (mux2_outs),
    .ins_valid (mux2_outs_valid),
    .ins_ready (mux2_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer4_outs),
    .outs_valid (buffer4_outs_valid),
    .outs_ready (buffer4_outs_ready)
  );

  tehb #(.DATA_TYPE(32)) buffer5(
    .ins (buffer4_outs),
    .ins_valid (buffer4_outs_valid),
    .ins_ready (buffer4_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer5_outs),
    .outs_valid (buffer5_outs_valid),
    .outs_ready (buffer5_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(32)) fork5(
    .ins (buffer5_outs),
    .ins_valid (buffer5_outs_valid),
    .ins_ready (buffer5_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork5_outs_1, fork5_outs_0}),
    .outs_valid ({fork5_outs_1_valid, fork5_outs_0_valid}),
    .outs_ready ({fork5_outs_1_ready, fork5_outs_0_ready})
  );

  mux #(.SIZE(2), .DATA_TYPE(32), .SELECT_TYPE(1)) mux3(
    .index (fork7_outs_3),
    .index_valid (fork7_outs_3_valid),
    .index_ready (fork7_outs_3_ready),
    .ins ({cond_br4_trueOut, K}),
    .ins_valid ({cond_br4_trueOut_valid, K_valid}),
    .ins_ready ({cond_br4_trueOut_ready, K_ready}),
    .clk (clk),
    .rst (rst),
    .outs (mux3_outs),
    .outs_valid (mux3_outs_valid),
    .outs_ready (mux3_outs_ready)
  );

  oehb #(.DATA_TYPE(32)) buffer6(
    .ins (mux3_outs),
    .ins_valid (mux3_outs_valid),
    .ins_ready (mux3_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer6_outs),
    .outs_valid (buffer6_outs_valid),
    .outs_ready (buffer6_outs_ready)
  );

  tehb #(.DATA_TYPE(32)) buffer7(
    .ins (buffer6_outs),
    .ins_valid (buffer6_outs_valid),
    .ins_ready (buffer6_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer7_outs),
    .outs_valid (buffer7_outs_valid),
    .outs_ready (buffer7_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(32)) fork6(
    .ins (buffer7_outs),
    .ins_valid (buffer7_outs_valid),
    .ins_ready (buffer7_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork6_outs_1, fork6_outs_0}),
    .outs_valid ({fork6_outs_1_valid, fork6_outs_0_valid}),
    .outs_ready ({fork6_outs_1_ready, fork6_outs_0_ready})
  );

  control_merge_dataless #(.SIZE(2), .INDEX_TYPE(1)) control_merge0(
    .ins_valid ({cond_br5_trueOut_valid, fork0_outs_2_valid}),
    .ins_ready ({cond_br5_trueOut_ready, fork0_outs_2_ready}),
    .clk (clk),
    .rst (rst),
    .outs_valid (control_merge0_outs_valid),
    .outs_ready (control_merge0_outs_ready),
    .index (control_merge0_index),
    .index_valid (control_merge0_index_valid),
    .index_ready (control_merge0_index_ready)
  );

  fork_type #(.SIZE(4), .DATA_TYPE(1)) fork7(
    .ins (control_merge0_index),
    .ins_valid (control_merge0_index_valid),
    .ins_ready (control_merge0_index_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork7_outs_3, fork7_outs_2, fork7_outs_1, fork7_outs_0}),
    .outs_valid ({fork7_outs_3_valid, fork7_outs_2_valid, fork7_outs_1_valid, fork7_outs_0_valid}),
    .outs_ready ({fork7_outs_3_ready, fork7_outs_2_ready, fork7_outs_1_ready, fork7_outs_0_ready})
  );

  source source0(
    .clk (clk),
    .rst (rst),
    .outs_valid (source0_outs_valid),
    .outs_ready (source0_outs_ready)
  );

  handshake_constant_1 #(.DATA_WIDTH(32)) constant6(
    .ctrl_valid (source0_outs_valid),
    .ctrl_ready (source0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (constant6_outs),
    .outs_valid (constant6_outs_valid),
    .outs_ready (constant6_outs_ready)
  );

  source source1(
    .clk (clk),
    .rst (rst),
    .outs_valid (source1_outs_valid),
    .outs_ready (source1_outs_ready)
  );

  handshake_constant_2 #(.DATA_WIDTH(2)) constant1(
    .ctrl_valid (source1_outs_valid),
    .ctrl_ready (source1_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (constant1_outs),
    .outs_valid (constant1_outs_valid),
    .outs_ready (constant1_outs_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(2)) fork8(
    .ins (constant1_outs),
    .ins_valid (constant1_outs_valid),
    .ins_ready (constant1_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork8_outs_1, fork8_outs_0}),
    .outs_valid ({fork8_outs_1_valid, fork8_outs_0_valid}),
    .outs_ready ({fork8_outs_1_ready, fork8_outs_0_ready})
  );

  extsi #(.INPUT_TYPE(2), .OUTPUT_TYPE(6)) extsi10(
    .ins (fork8_outs_0),
    .ins_valid (fork8_outs_0_valid),
    .ins_ready (fork8_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi10_outs),
    .outs_valid (extsi10_outs_valid),
    .outs_ready (extsi10_outs_ready)
  );

  extsi #(.INPUT_TYPE(2), .OUTPUT_TYPE(32)) extsi3(
    .ins (fork8_outs_1),
    .ins_valid (fork8_outs_1_valid),
    .ins_ready (fork8_outs_1_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi3_outs),
    .outs_valid (extsi3_outs_valid),
    .outs_ready (extsi3_outs_ready)
  );

  source source2(
    .clk (clk),
    .rst (rst),
    .outs_valid (source2_outs_valid),
    .outs_ready (source2_outs_ready)
  );

  handshake_constant_0 #(.DATA_WIDTH(1)) constant4(
    .ctrl_valid (source2_outs_valid),
    .ctrl_ready (source2_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (constant4_outs),
    .outs_valid (constant4_outs_valid),
    .outs_ready (constant4_outs_ready)
  );

  extsi #(.INPUT_TYPE(1), .OUTPUT_TYPE(32)) extsi4(
    .ins (constant4_outs),
    .ins_valid (constant4_outs_valid),
    .ins_ready (constant4_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (extsi4_outs),
    .outs_valid (extsi4_outs_valid),
    .outs_ready (extsi4_outs_ready)
  );

  source source3(
    .clk (clk),
    .rst (rst),
    .outs_valid (source3_outs_valid),
    .outs_ready (source3_outs_ready)
  );

  handshake_constant_3 #(.DATA_WIDTH(6)) constant5(
    .ctrl_valid (source3_outs_valid),
    .ctrl_ready (source3_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (constant5_outs),
    .outs_valid (constant5_outs_valid),
    .outs_ready (constant5_outs_ready)
  );

  handshake_cmpi_0 #(.DATA_TYPE(32)) cmpi0(
    .lhs (fork4_outs_1),
    .lhs_valid (fork4_outs_1_valid),
    .lhs_ready (fork4_outs_1_ready),
    .rhs (extsi4_outs),
    .rhs_valid (extsi4_outs_valid),
    .rhs_ready (extsi4_outs_ready),
    .clk (clk),
    .rst (rst),
    .result (cmpi0_result),
    .result_valid (cmpi0_result_valid),
    .result_ready (cmpi0_result_ready)
  );

  selector #(.DATA_TYPE(32)) select0(
    .condition (cmpi0_result),
    .condition_valid (cmpi0_result_valid),
    .condition_ready (cmpi0_result_ready),
    .trueValue (extsi3_outs),
    .trueValue_valid (extsi3_outs_valid),
    .trueValue_ready (extsi3_outs_ready),
    .falseValue (constant6_outs),
    .falseValue_valid (constant6_outs_valid),
    .falseValue_ready (constant6_outs_ready),
    .clk (clk),
    .rst (rst),
    .result (select0_result),
    .result_valid (select0_result_valid),
    .result_ready (select0_result_ready)
  );

  fork_type #(.SIZE(3), .DATA_TYPE(32)) fork9(
    .ins (select0_result),
    .ins_valid (select0_result_valid),
    .ins_ready (select0_result_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork9_outs_2, fork9_outs_1, fork9_outs_0}),
    .outs_valid ({fork9_outs_2_valid, fork9_outs_1_valid, fork9_outs_0_valid}),
    .outs_ready ({fork9_outs_2_ready, fork9_outs_1_ready, fork9_outs_0_ready})
  );

  shrsi #(.DATA_TYPE(32)) shrsi0(
    .lhs (fork5_outs_1),
    .lhs_valid (fork5_outs_1_valid),
    .lhs_ready (fork5_outs_1_ready),
    .rhs (fork3_outs_1),
    .rhs_valid (fork3_outs_1_valid),
    .rhs_ready (fork3_outs_1_ready),
    .clk (clk),
    .rst (rst),
    .result (shrsi0_result),
    .result_valid (shrsi0_result_valid),
    .result_ready (shrsi0_result_ready)
  );

  shrsi #(.DATA_TYPE(32)) shrsi1(
    .lhs (fork6_outs_1),
    .lhs_valid (fork6_outs_1_valid),
    .lhs_ready (fork6_outs_1_ready),
    .rhs (fork3_outs_0),
    .rhs_valid (fork3_outs_0_valid),
    .rhs_ready (fork3_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .result (shrsi1_result),
    .result_valid (shrsi1_result_valid),
    .result_ready (shrsi1_result_ready)
  );

  muli #(.DATA_TYPE(32)) muli0(
    .lhs (fork9_outs_2),
    .lhs_valid (fork9_outs_2_valid),
    .lhs_ready (fork9_outs_2_ready),
    .rhs (shrsi0_result),
    .rhs_valid (shrsi0_result_valid),
    .rhs_ready (shrsi0_result_ready),
    .clk (clk),
    .rst (rst),
    .result (muli0_result),
    .result_valid (muli0_result_valid),
    .result_ready (muli0_result_ready)
  );

  subi #(.DATA_TYPE(32)) subi0(
    .lhs (fork6_outs_0),
    .lhs_valid (fork6_outs_0_valid),
    .lhs_ready (fork6_outs_0_ready),
    .rhs (muli0_result),
    .rhs_valid (muli0_result_valid),
    .rhs_ready (muli0_result_ready),
    .clk (clk),
    .rst (rst),
    .result (subi0_result),
    .result_valid (subi0_result_valid),
    .result_ready (subi0_result_ready)
  );

  muli #(.DATA_TYPE(32)) muli1(
    .lhs (fork9_outs_1),
    .lhs_valid (fork9_outs_1_valid),
    .lhs_ready (fork9_outs_1_ready),
    .rhs (shrsi1_result),
    .rhs_valid (shrsi1_result_valid),
    .rhs_ready (shrsi1_result_ready),
    .clk (clk),
    .rst (rst),
    .result (muli1_result),
    .result_valid (muli1_result_valid),
    .result_ready (muli1_result_ready)
  );

  addi #(.DATA_TYPE(32)) addi0(
    .lhs (fork5_outs_0),
    .lhs_valid (fork5_outs_0_valid),
    .lhs_ready (fork5_outs_0_ready),
    .rhs (muli1_result),
    .rhs_valid (muli1_result_valid),
    .rhs_ready (muli1_result_ready),
    .clk (clk),
    .rst (rst),
    .result (addi0_result),
    .result_valid (addi0_result_valid),
    .result_ready (addi0_result_ready)
  );

  load #(.DATA_TYPE(32), .ADDR_TYPE(4)) load0(
    .addrIn (trunci0_outs),
    .addrIn_valid (trunci0_outs_valid),
    .addrIn_ready (trunci0_outs_ready),
    .dataFromMem (mem_controller1_ldData_0),
    .dataFromMem_valid (mem_controller1_ldData_0_valid),
    .dataFromMem_ready (mem_controller1_ldData_0_ready),
    .clk (clk),
    .rst (rst),
    .addrOut (load0_addrOut),
    .addrOut_valid (load0_addrOut_valid),
    .addrOut_ready (load0_addrOut_ready),
    .dataOut (load0_dataOut),
    .dataOut_valid (load0_dataOut_valid),
    .dataOut_ready (load0_dataOut_ready)
  );

  muli #(.DATA_TYPE(32)) muli2(
    .lhs (fork9_outs_0),
    .lhs_valid (fork9_outs_0_valid),
    .lhs_ready (fork9_outs_0_ready),
    .rhs (load0_dataOut),
    .rhs_valid (load0_dataOut_valid),
    .rhs_ready (load0_dataOut_ready),
    .clk (clk),
    .rst (rst),
    .result (muli2_result),
    .result_valid (muli2_result_valid),
    .result_ready (muli2_result_ready)
  );

  subi #(.DATA_TYPE(32)) subi1(
    .lhs (fork4_outs_0),
    .lhs_valid (fork4_outs_0_valid),
    .lhs_ready (fork4_outs_0_ready),
    .rhs (muli2_result),
    .rhs_valid (muli2_result_valid),
    .rhs_ready (muli2_result_ready),
    .clk (clk),
    .rst (rst),
    .result (subi1_result),
    .result_valid (subi1_result_valid),
    .result_ready (subi1_result_ready)
  );

  addi #(.DATA_TYPE(6)) addi1(
    .lhs (extsi8_outs),
    .lhs_valid (extsi8_outs_valid),
    .lhs_ready (extsi8_outs_ready),
    .rhs (extsi10_outs),
    .rhs_valid (extsi10_outs_valid),
    .rhs_ready (extsi10_outs_ready),
    .clk (clk),
    .rst (rst),
    .result (addi1_result),
    .result_valid (addi1_result_valid),
    .result_ready (addi1_result_ready)
  );

  fork_type #(.SIZE(2), .DATA_TYPE(6)) fork10(
    .ins (addi1_result),
    .ins_valid (addi1_result_valid),
    .ins_ready (addi1_result_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork10_outs_1, fork10_outs_0}),
    .outs_valid ({fork10_outs_1_valid, fork10_outs_0_valid}),
    .outs_ready ({fork10_outs_1_ready, fork10_outs_0_ready})
  );

  trunci #(.INPUT_TYPE(6), .OUTPUT_TYPE(5)) trunci1(
    .ins (fork10_outs_0),
    .ins_valid (fork10_outs_0_valid),
    .ins_ready (fork10_outs_0_ready),
    .clk (clk),
    .rst (rst),
    .outs (trunci1_outs),
    .outs_valid (trunci1_outs_valid),
    .outs_ready (trunci1_outs_ready)
  );

  handshake_cmpi_1 #(.DATA_TYPE(6)) cmpi1(
    .lhs (fork10_outs_1),
    .lhs_valid (fork10_outs_1_valid),
    .lhs_ready (fork10_outs_1_ready),
    .rhs (constant5_outs),
    .rhs_valid (constant5_outs_valid),
    .rhs_ready (constant5_outs_ready),
    .clk (clk),
    .rst (rst),
    .result (cmpi1_result),
    .result_valid (cmpi1_result_valid),
    .result_ready (cmpi1_result_ready)
  );

  fork_type #(.SIZE(5), .DATA_TYPE(1)) fork11(
    .ins (cmpi1_result),
    .ins_valid (cmpi1_result_valid),
    .ins_ready (cmpi1_result_ready),
    .clk (clk),
    .rst (rst),
    .outs ({fork11_outs_4, fork11_outs_3, fork11_outs_2, fork11_outs_1, fork11_outs_0}),
    .outs_valid ({fork11_outs_4_valid, fork11_outs_3_valid, fork11_outs_2_valid, fork11_outs_1_valid, fork11_outs_0_valid}),
    .outs_ready ({fork11_outs_4_ready, fork11_outs_3_ready, fork11_outs_2_ready, fork11_outs_1_ready, fork11_outs_0_ready})
  );

  cond_br #(.DATA_TYPE(5)) cond_br1(
    .condition (fork11_outs_0),
    .condition_valid (fork11_outs_0_valid),
    .condition_ready (fork11_outs_0_ready),
    .data (trunci1_outs),
    .data_valid (trunci1_outs_valid),
    .data_ready (trunci1_outs_ready),
    .clk (clk),
    .rst (rst),
    .trueOut (cond_br1_trueOut),
    .trueOut_valid (cond_br1_trueOut_valid),
    .trueOut_ready (cond_br1_trueOut_ready),
    .falseOut (cond_br1_falseOut),
    .falseOut_valid (cond_br1_falseOut_valid),
    .falseOut_ready (cond_br1_falseOut_ready)
  );

  sink #(.DATA_TYPE(5)) sink0(
    .ins (cond_br1_falseOut),
    .ins_valid (cond_br1_falseOut_valid),
    .ins_ready (cond_br1_falseOut_ready),
    .clk (clk),
    .rst (rst)
  );

  cond_br #(.DATA_TYPE(32)) cond_br2(
    .condition (fork11_outs_1),
    .condition_valid (fork11_outs_1_valid),
    .condition_ready (fork11_outs_1_ready),
    .data (subi1_result),
    .data_valid (subi1_result_valid),
    .data_ready (subi1_result_ready),
    .clk (clk),
    .rst (rst),
    .trueOut (cond_br2_trueOut),
    .trueOut_valid (cond_br2_trueOut_valid),
    .trueOut_ready (cond_br2_trueOut_ready),
    .falseOut (cond_br2_falseOut),
    .falseOut_valid (cond_br2_falseOut_valid),
    .falseOut_ready (cond_br2_falseOut_ready)
  );

  sink #(.DATA_TYPE(32)) sink1(
    .ins (cond_br2_falseOut),
    .ins_valid (cond_br2_falseOut_valid),
    .ins_ready (cond_br2_falseOut_ready),
    .clk (clk),
    .rst (rst)
  );

  cond_br #(.DATA_TYPE(32)) cond_br3(
    .condition (fork11_outs_2),
    .condition_valid (fork11_outs_2_valid),
    .condition_ready (fork11_outs_2_ready),
    .data (addi0_result),
    .data_valid (addi0_result_valid),
    .data_ready (addi0_result_ready),
    .clk (clk),
    .rst (rst),
    .trueOut (cond_br3_trueOut),
    .trueOut_valid (cond_br3_trueOut_valid),
    .trueOut_ready (cond_br3_trueOut_ready),
    .falseOut (cond_br3_falseOut),
    .falseOut_valid (cond_br3_falseOut_valid),
    .falseOut_ready (cond_br3_falseOut_ready)
  );

  sink #(.DATA_TYPE(32)) sink2(
    .ins (cond_br3_falseOut),
    .ins_valid (cond_br3_falseOut_valid),
    .ins_ready (cond_br3_falseOut_ready),
    .clk (clk),
    .rst (rst)
  );

  cond_br #(.DATA_TYPE(32)) cond_br4(
    .condition (fork11_outs_3),
    .condition_valid (fork11_outs_3_valid),
    .condition_ready (fork11_outs_3_ready),
    .data (subi0_result),
    .data_valid (subi0_result_valid),
    .data_ready (subi0_result_ready),
    .clk (clk),
    .rst (rst),
    .trueOut (cond_br4_trueOut),
    .trueOut_valid (cond_br4_trueOut_valid),
    .trueOut_ready (cond_br4_trueOut_ready),
    .falseOut (cond_br4_falseOut),
    .falseOut_valid (cond_br4_falseOut_valid),
    .falseOut_ready (cond_br4_falseOut_ready)
  );

  oehb_dataless buffer8(
    .ins_valid (control_merge0_outs_valid),
    .ins_ready (control_merge0_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer8_outs_valid),
    .outs_ready (buffer8_outs_ready)
  );

  tehb_dataless buffer9(
    .ins_valid (buffer8_outs_valid),
    .ins_ready (buffer8_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs_valid (buffer9_outs_valid),
    .outs_ready (buffer9_outs_ready)
  );

  cond_br_dataless cond_br5(
    .condition (fork11_outs_4),
    .condition_valid (fork11_outs_4_valid),
    .condition_ready (fork11_outs_4_ready),
    .data_valid (buffer9_outs_valid),
    .data_ready (buffer9_outs_ready),
    .clk (clk),
    .rst (rst),
    .trueOut_valid (cond_br5_trueOut_valid),
    .trueOut_ready (cond_br5_trueOut_ready),
    .falseOut_valid (cond_br5_falseOut_valid),
    .falseOut_ready (cond_br5_falseOut_ready)
  );

  oehb #(.DATA_TYPE(32)) buffer10(
    .ins (cond_br4_falseOut),
    .ins_valid (cond_br4_falseOut_valid),
    .ins_ready (cond_br4_falseOut_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer10_outs),
    .outs_valid (buffer10_outs_valid),
    .outs_ready (buffer10_outs_ready)
  );

  tehb #(.DATA_TYPE(32)) buffer11(
    .ins (buffer10_outs),
    .ins_valid (buffer10_outs_valid),
    .ins_ready (buffer10_outs_ready),
    .clk (clk),
    .rst (rst),
    .outs (buffer11_outs),
    .outs_valid (buffer11_outs_valid),
    .outs_ready (buffer11_outs_ready)
  );

endmodule
