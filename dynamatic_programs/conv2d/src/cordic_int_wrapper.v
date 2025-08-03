module cordic_int_wrapper(
  input [31:0] theta,
  input  theta_valid,
  input [31:0] K,
  input  K_valid,
  input [31:0] factors_din0,
  input [31:0] factors_din1,
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
  output  factors_ce0,
  output  factors_we0,
  output [3:0] factors_address0,
  output [31:0] factors_dout0,
  output  factors_ce1,
  output  factors_we1,
  output [3:0] factors_address1,
  output [31:0] factors_dout1
);
  wire  mem_to_bram_converter_factors_ce0;
  wire  mem_to_bram_converter_factors_we0;
  wire [3:0] mem_to_bram_converter_factors_address0;
  wire [31:0] mem_to_bram_converter_factors_dout0;
  wire  mem_to_bram_converter_factors_ce1;
  wire  mem_to_bram_converter_factors_we1;
  wire [3:0] mem_to_bram_converter_factors_address1;
  wire [31:0] mem_to_bram_converter_factors_dout1;
  wire [31:0] mem_to_bram_converter_factors_loadData;
  wire [31:0] cordic_int_wrapped_out0;
  wire  cordic_int_wrapped_out0_valid;
  wire  cordic_int_wrapped_out0_ready;
  wire  cordic_int_wrapped_factors_end_valid;
  wire  cordic_int_wrapped_factors_end_ready;
  wire  cordic_int_wrapped_end_valid;
  wire  cordic_int_wrapped_end_ready;
  wire  cordic_int_wrapped_factors_loadEn;
  wire [3:0] cordic_int_wrapped_factors_loadAddr;
  wire  cordic_int_wrapped_factors_storeEn;
  wire [3:0] cordic_int_wrapped_factors_storeAddr;
  wire [31:0] cordic_int_wrapped_factors_storeData;

  assign out0 = cordic_int_wrapped_out0;
  assign out0_valid = cordic_int_wrapped_out0_valid;
  assign cordic_int_wrapped_out0_ready = out0_ready;
  assign factors_end_valid = cordic_int_wrapped_factors_end_valid;
  assign cordic_int_wrapped_factors_end_ready = factors_end_ready;
  assign end_valid = cordic_int_wrapped_end_valid;
  assign cordic_int_wrapped_end_ready = end_ready;
  assign factors_ce0 = mem_to_bram_converter_factors_ce0;
  assign factors_we0 = mem_to_bram_converter_factors_we0;
  assign factors_address0 = mem_to_bram_converter_factors_address0;
  assign factors_dout0 = mem_to_bram_converter_factors_dout0;
  assign factors_ce1 = mem_to_bram_converter_factors_ce1;
  assign factors_we1 = mem_to_bram_converter_factors_we1;
  assign factors_address1 = mem_to_bram_converter_factors_address1;
  assign factors_dout1 = mem_to_bram_converter_factors_dout1;

  mem_to_bram #(.DATA_WIDTH(32), .ADDR_WIDTH(4)) mem_to_bram_converter_factors(
    .loadEn (cordic_int_wrapped_factors_loadEn),
    .loadAddr (cordic_int_wrapped_factors_loadAddr),
    .storeEn (cordic_int_wrapped_factors_storeEn),
    .storeAddr (cordic_int_wrapped_factors_storeAddr),
    .storeData (cordic_int_wrapped_factors_storeData),
    .din0 (factors_din0),
    .din1 (factors_din1),
    .ce0 (mem_to_bram_converter_factors_ce0),
    .we0 (mem_to_bram_converter_factors_we0),
    .address0 (mem_to_bram_converter_factors_address0),
    .dout0 (mem_to_bram_converter_factors_dout0),
    .ce1 (mem_to_bram_converter_factors_ce1),
    .we1 (mem_to_bram_converter_factors_we1),
    .address1 (mem_to_bram_converter_factors_address1),
    .dout1 (mem_to_bram_converter_factors_dout1),
    .loadData (mem_to_bram_converter_factors_loadData)
  );

  cordic_int cordic_int_wrapped(
    .theta (theta),
    .theta_valid (theta_valid),
    .theta_ready (theta_ready),
    .K (K),
    .K_valid (K_valid),
    .K_ready (K_ready),
    .factors_loadData (mem_to_bram_converter_factors_loadData),
    .factors_start_valid (factors_start_valid),
    .factors_start_ready (factors_start_ready),
    .start_valid (start_valid),
    .start_ready (start_ready),
    .clk (clk),
    .rst (rst),
    .out0 (cordic_int_wrapped_out0),
    .out0_valid (cordic_int_wrapped_out0_valid),
    .out0_ready (cordic_int_wrapped_out0_ready),
    .factors_end_valid (cordic_int_wrapped_factors_end_valid),
    .factors_end_ready (cordic_int_wrapped_factors_end_ready),
    .end_valid (cordic_int_wrapped_end_valid),
    .end_ready (cordic_int_wrapped_end_ready),
    .factors_loadEn (cordic_int_wrapped_factors_loadEn),
    .factors_loadAddr (cordic_int_wrapped_factors_loadAddr),
    .factors_storeEn (cordic_int_wrapped_factors_storeEn),
    .factors_storeAddr (cordic_int_wrapped_factors_storeAddr),
    .factors_storeData (cordic_int_wrapped_factors_storeData)
  );

endmodule
