module implicit_else_wrapper(
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
  wire [63:0] implicit_else_wrapped_out0;
  wire  implicit_else_wrapped_out0_valid;
  wire  implicit_else_wrapped_out0_ready;
  wire  implicit_else_wrapped_end_valid;
  wire  implicit_else_wrapped_end_ready;

  assign out0 = implicit_else_wrapped_out0;
  assign out0_valid = implicit_else_wrapped_out0_valid;
  assign implicit_else_wrapped_out0_ready = out0_ready;
  assign end_valid = implicit_else_wrapped_end_valid;
  assign implicit_else_wrapped_end_ready = end_ready;

  implicit_else implicit_else_wrapped(
    .arg0 (arg0),
    .arg0_valid (arg0_valid),
    .arg0_ready (arg0_ready),
    .arg1 (arg1),
    .arg1_valid (arg1_valid),
    .arg1_ready (arg1_ready),
    .start_valid (start_valid),
    .start_ready (start_ready),
    .clk (clk),
    .rst (rst),
    .out0 (implicit_else_wrapped_out0),
    .out0_valid (implicit_else_wrapped_out0_valid),
    .out0_ready (implicit_else_wrapped_out0_ready),
    .end_valid (implicit_else_wrapped_end_valid),
    .end_ready (implicit_else_wrapped_end_ready)
  );

endmodule
