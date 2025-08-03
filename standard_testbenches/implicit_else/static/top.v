module top (
  // upstream “done_valid” inputs
  input        in0_st0_done_valid,
  input        in0_st1_done_valid,
  input        in0_st2_done_valid,
  input        in0_st3_done_valid,
  input        in0_st4_done_valid,
  input        in1_valid,
  // clock / reset
  input        clock,
  input        reset,
  // downstream “ready” inputs
  input        out0_ready,
  input        out1_ready,
  input        in0_st0_ready,
  input        in0_st1_ready,
  input        in0_st2_ready,
  input        in0_st3_ready,
  input        in0_st4_ready,
  // upstream “done_ready” outputs
  output       in0_st0_done_ready,
  output       in0_st1_done_ready,
  output       in0_st2_done_ready,
  output       in0_st3_done_ready,
  output       in0_st4_done_ready,
  output       in1_ready,
  // data outputs
  output       out0,
  output       out0_valid,
  output       out1_valid,
  output [1:0] in0_st0_address,
  output [63:0] in0_st0_data,
  output       in0_st0_valid,
  output [1:0] in0_st1_address,
  output [63:0] in0_st1_data,
  output       in0_st1_valid,
  output [1:0] in0_st2_address,
  output [63:0] in0_st2_data,
  output       in0_st2_valid,
  output [1:0] in0_st3_address,
  output [63:0] in0_st3_data,
  output       in0_st3_valid,
  output [1:0] in0_st4_address,
  output [63:0] in0_st4_data,
  output       in0_st4_valid
);

  // Instantiate the convolution module
  conv2d_mat_test u_conv2d (
    .in0_st0_done_valid  (in0_st0_done_valid),
    .in0_st1_done_valid  (in0_st1_done_valid),
    .in0_st2_done_valid  (in0_st2_done_valid),
    .in0_st3_done_valid  (in0_st3_done_valid),
    .in0_st4_done_valid  (in0_st4_done_valid),
    .in1_valid           (in1_valid),
    .clock               (clock),
    .reset               (reset),
    .out0_ready          (out0_ready),
    .out1_ready          (out1_ready),
    .in0_st0_ready       (in0_st0_ready),
    .in0_st1_ready       (in0_st1_ready),
    .in0_st2_ready       (in0_st2_ready),
    .in0_st3_ready       (in0_st3_ready),
    .in0_st4_ready       (in0_st4_ready),

    .in0_st0_done_ready  (in0_st0_done_ready),
    .in0_st1_done_ready  (in0_st1_done_ready),
    .in0_st2_done_ready  (in0_st2_done_ready),
    .in0_st3_done_ready  (in0_st3_done_ready),
    .in0_st4_done_ready  (in0_st4_done_ready),
    .in1_ready           (in1_ready),

    .out0                (out0),
    .out0_valid          (out0_valid),
    .out1_valid          (out1_valid),

    .in0_st0_address     (in0_st0_address),
    .in0_st0_data        (in0_st0_data),
    .in0_st0_valid       (in0_st0_valid),

    .in0_st1_address     (in0_st1_address),
    .in0_st1_data        (in0_st1_data),
    .in0_st1_valid       (in0_st1_valid),

    .in0_st2_address     (in0_st2_address),
    .in0_st2_data        (in0_st2_data),
    .in0_st2_valid       (in0_st2_valid),

    .in0_st3_address     (in0_st3_address),
    .in0_st3_data        (in0_st3_data),
    .in0_st3_valid       (in0_st3_valid),

    .in0_st4_address     (in0_st4_address),
    .in0_st4_data        (in0_st4_data),
    .in0_st4_valid       (in0_st4_valid)
  );

endmodule

