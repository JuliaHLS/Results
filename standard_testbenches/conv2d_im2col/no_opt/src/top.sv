//======================================================================
//  TOP  – 13 store channels  (st0…st12) and 12 load channels (ld0…ld11)
//         All kernel pins wired explicitly.
//         AXI-Stream read buses carry only {addr} or {data} – no ID bits.
//======================================================================
module top
#( parameter int ADDR_W = 2,
   parameter int DATA_W = 64 )
(
  // ---------------- Clock / Reset ----------------------------------
  input  logic                           clk,
  input  logic                           reset,

  // ---------------- Token interface --------------------------------
  input  logic                           in3_valid,
  output logic                           in3_ready,

  output logic                           out0,
  output logic                           out0_valid,
  input  logic                           out0_ready,
  output logic                           out1_valid,
  input  logic                           out1_ready,

  // ------------- AXI-Stream : MEM-2 store (write) ------------------
  output logic [ADDR_W+DATA_W-1:0]       m_axis_mem2_store_tdata,
  output logic                           m_axis_mem2_store_tvalid,
  input  logic                           m_axis_mem2_store_tready,
  output logic                           m_axis_mem2_store_tlast,

  // ------------- AXI-Stream : MEM-2 load (read)  -------------------
  /*  request carries only addr[1:0]  */
  output logic [1:0]                     m_axis_mem2_req_tdata,
  output logic                           m_axis_mem2_req_tvalid,
  input  logic                           m_axis_mem2_req_tready,
  output logic                           m_axis_mem2_req_tlast,
  /*  payload carries only data[63:0] */
  input  logic [63:0]                    s_axis_mem2_pl_tdata,
  input  logic                           s_axis_mem2_pl_tvalid,
  output logic                           s_axis_mem2_pl_tready,
  input  logic                           s_axis_mem2_pl_tlast,

  // ---------------- AXI-Stream : MEM-0 read ------------------------
  output logic [3:0]                     m_axis_mem0_req_tdata,   // addr
  output logic                           m_axis_mem0_req_tvalid,
  input  logic                           m_axis_mem0_req_tready,
  output logic                           m_axis_mem0_req_tlast,

  input  logic [63:0]                    s_axis_mem0_pl_tdata,    // data
  input  logic                           s_axis_mem0_pl_tvalid,
  output logic                           s_axis_mem0_pl_tready,
  input  logic                           s_axis_mem0_pl_tlast,

  // ---------------- AXI-Stream : MEM-1 read ------------------------
  output logic [1:0]                     m_axis_mem1_req_tdata,   // addr
  output logic                           m_axis_mem1_req_tvalid,
  input  logic                           m_axis_mem1_req_tready,
  output logic                           m_axis_mem1_req_tlast,

  input  logic [63:0]                    s_axis_mem1_pl_tdata,    // data
  input  logic                           s_axis_mem1_pl_tvalid,
  output logic                           s_axis_mem1_pl_tready,
  input  logic                           s_axis_mem1_pl_tlast
);

  // ---------------- Local parameters --------------------------------
  localparam int N_CH_MEM0       = 1;
  localparam int N_CH_MEM1       = 1;
  localparam int N_CH_MEM2_STORE = 13;   // st0 … st12
  localparam int N_CH_MEM2_LOAD  = 12;   // ld0 … ld11

  logic rst_n = ~reset;

  // ---------------- Store-side (MEM-2 WRITE) arrays -----------------
  typedef struct packed { logic [ADDR_W-1:0] address; logic [DATA_W-1:0] data; } addr_data_t;

  addr_data_t           mem2_stPkt        [N_CH_MEM2_STORE];
  logic                 mem2_stValid      [N_CH_MEM2_STORE];
  logic                 mem2_stReady      [N_CH_MEM2_STORE];
  logic                 mem2_done_valid_wr[N_CH_MEM2_STORE];
  logic                 mem2_done_ready_wr[N_CH_MEM2_STORE];

  logic [ADDR_W-1:0]    mem2_stAddr       [N_CH_MEM2_STORE];
  logic [DATA_W-1:0]    mem2_stData       [N_CH_MEM2_STORE];

  generate
    for (genvar i = 0; i < N_CH_MEM2_STORE; i++) begin
      assign mem2_stAddr[i] = mem2_stPkt[i].address;
      assign mem2_stData[i] = mem2_stPkt[i].data;
    end
  endgenerate

  // ---------------- Load-side arrays --------------------------------
  /* MEM-0 */
  logic [3:0]           mem0_ldAddr [N_CH_MEM0];
  logic                 mem0_ldAddrValid [N_CH_MEM0];
  logic                 mem0_ldAddrReady [N_CH_MEM0];
  logic [DATA_W-1:0]    mem0_ldData [N_CH_MEM0];
  logic                 mem0_ldDataValid [N_CH_MEM0];
  logic                 mem0_ldDataReady [N_CH_MEM0];
  logic                 mem0_done_valid  [N_CH_MEM0];
  logic                 mem0_done_ready  [N_CH_MEM0];

  /* MEM-1 */
  logic [1:0]           mem1_ldAddr [N_CH_MEM1];
  logic                 mem1_ldAddrValid [N_CH_MEM1];
  logic                 mem1_ldAddrReady [N_CH_MEM1];
  logic [DATA_W-1:0]    mem1_ldData [N_CH_MEM1];
  logic                 mem1_ldDataValid [N_CH_MEM1];
  logic                 mem1_ldDataReady [N_CH_MEM1];
  logic                 mem1_done_valid  [N_CH_MEM1];
  logic                 mem1_done_ready  [N_CH_MEM1];

  /* MEM-2 load */
  logic [1:0]           mem2_ldAddr [N_CH_MEM2_LOAD];
  logic                 mem2_ldAddrValid [N_CH_MEM2_LOAD];
  logic                 mem2_ldAddrReady [N_CH_MEM2_LOAD];
  logic [DATA_W-1:0]    mem2_ldData [N_CH_MEM2_LOAD];
  logic                 mem2_ldDataValid [N_CH_MEM2_LOAD];
  logic                 mem2_ldDataReady [N_CH_MEM2_LOAD];
  logic                 mem2_done_valid  [N_CH_MEM2_LOAD];
  logic                 mem2_done_ready  [N_CH_MEM2_LOAD];

  // ------------------------------------------------------------------
  // 1. Kernel – all pins wired (identical to previous version)
  // ------------------------------------------------------------------
  conv2d_im2col kernel (
    // READ MEM-0
    .in0_ld0_addr        (mem0_ldAddr      [0]),
    .in0_ld0_addr_valid  (mem0_ldAddrValid [0]),
    .in0_ld0_addr_ready  (mem0_ldAddrReady [0]),
    .in0_ld0_data        (mem0_ldData      [0]),
    .in0_ld0_data_valid  (mem0_ldDataValid [0]),
    .in0_ld0_data_ready  (mem0_ldDataReady [0]),

    // READ MEM-1
    .in1_ld0_addr        (mem1_ldAddr      [0]),
    .in1_ld0_addr_valid  (mem1_ldAddrValid [0]),
    .in1_ld0_addr_ready  (mem1_ldAddrReady [0]),
    .in1_ld0_data        (mem1_ldData      [0]),
    .in1_ld0_data_valid  (mem1_ldDataValid [0]),
    .in1_ld0_data_ready  (mem1_ldDataReady [0]),

    // READ MEM-2 (12 channels)
    .in2_ld0_addr        (mem2_ldAddr      [0]), .in2_ld0_addr_valid (mem2_ldAddrValid [0]), .in2_ld0_addr_ready (mem2_ldAddrReady [0]),
    .in2_ld0_data        (mem2_ldData      [0]), .in2_ld0_data_valid (mem2_ldDataValid [0]), .in2_ld0_data_ready (mem2_ldDataReady [0]),

    .in2_ld1_addr        (mem2_ldAddr      [1]), .in2_ld1_addr_valid (mem2_ldAddrValid [1]), .in2_ld1_addr_ready (mem2_ldAddrReady [1]),
    .in2_ld1_data        (mem2_ldData      [1]), .in2_ld1_data_valid (mem2_ldDataValid [1]), .in2_ld1_data_ready (mem2_ldDataReady [1]),

    .in2_ld2_addr        (mem2_ldAddr      [2]), .in2_ld2_addr_valid (mem2_ldAddrValid [2]), .in2_ld2_addr_ready (mem2_ldAddrReady [2]),
    .in2_ld2_data        (mem2_ldData      [2]), .in2_ld2_data_valid (mem2_ldDataValid [2]), .in2_ld2_data_ready (mem2_ldDataReady [2]),

    .in2_ld3_addr        (mem2_ldAddr      [3]), .in2_ld3_addr_valid (mem2_ldAddrValid [3]), .in2_ld3_addr_ready (mem2_ldAddrReady [3]),
    .in2_ld3_data        (mem2_ldData      [3]), .in2_ld3_data_valid (mem2_ldDataValid [3]), .in2_ld3_data_ready (mem2_ldDataReady [3]),

    .in2_ld4_addr        (mem2_ldAddr      [4]), .in2_ld4_addr_valid (mem2_ldAddrValid [4]), .in2_ld4_addr_ready (mem2_ldAddrReady [4]),
    .in2_ld4_data        (mem2_ldData      [4]), .in2_ld4_data_valid (mem2_ldDataValid [4]), .in2_ld4_data_ready (mem2_ldDataReady [4]),

    .in2_ld5_addr        (mem2_ldAddr      [5]), .in2_ld5_addr_valid (mem2_ldAddrValid [5]), .in2_ld5_addr_ready (mem2_ldAddrReady [5]),
    .in2_ld5_data        (mem2_ldData      [5]), .in2_ld5_data_valid (mem2_ldDataValid [5]), .in2_ld5_data_ready (mem2_ldDataReady [5]),

    .in2_ld6_addr        (mem2_ldAddr      [6]), .in2_ld6_addr_valid (mem2_ldAddrValid [6]), .in2_ld6_addr_ready (mem2_ldAddrReady [6]),
    .in2_ld6_data        (mem2_ldData      [6]), .in2_ld6_data_valid (mem2_ldDataValid [6]), .in2_ld6_data_ready (mem2_ldDataReady [6]),

    .in2_ld7_addr        (mem2_ldAddr      [7]), .in2_ld7_addr_valid (mem2_ldAddrValid [7]), .in2_ld7_addr_ready (mem2_ldAddrReady [7]),
    .in2_ld7_data        (mem2_ldData      [7]), .in2_ld7_data_valid (mem2_ldDataValid [7]), .in2_ld7_data_ready (mem2_ldDataReady [7]),

    .in2_ld8_addr        (mem2_ldAddr      [8]), .in2_ld8_addr_valid (mem2_ldAddrValid [8]), .in2_ld8_addr_ready (mem2_ldAddrReady [8]),
    .in2_ld8_data        (mem2_ldData      [8]), .in2_ld8_data_valid (mem2_ldDataValid [8]), .in2_ld8_data_ready (mem2_ldDataReady [8]),

    .in2_ld9_addr        (mem2_ldAddr      [9]), .in2_ld9_addr_valid (mem2_ldAddrValid [9]), .in2_ld9_addr_ready (mem2_ldAddrReady [9]),
    .in2_ld9_data        (mem2_ldData      [9]), .in2_ld9_data_valid (mem2_ldDataValid [9]), .in2_ld9_data_ready (mem2_ldDataReady [9]),

    .in2_ld10_addr       (mem2_ldAddr      [10]), .in2_ld10_addr_valid (mem2_ldAddrValid [10]), .in2_ld10_addr_ready (mem2_ldAddrReady [10]),
    .in2_ld10_data       (mem2_ldData      [10]), .in2_ld10_data_valid (mem2_ldDataValid [10]), .in2_ld10_data_ready (mem2_ldDataReady [10]),

    .in2_ld11_addr       (mem2_ldAddr      [11]), .in2_ld11_addr_valid (mem2_ldAddrValid [11]), .in2_ld11_addr_ready (mem2_ldAddrReady [11]),
    .in2_ld11_data       (mem2_ldData      [11]), .in2_ld11_data_valid (mem2_ldDataValid [11]), .in2_ld11_data_ready (mem2_ldDataReady [11]),

    // STORE MEM-2  (st0 … st12)
    .in2_st0  (mem2_stPkt[0]),  .in2_st0_valid  (mem2_stValid[0]),  .in2_st0_ready  (mem2_stReady[0]),  .in2_st0_done_valid  (mem2_done_valid_wr[0]),  .in2_st0_done_ready  (mem2_done_ready_wr[0]),
    .in2_st1  (mem2_stPkt[1]),  .in2_st1_valid  (mem2_stValid[1]),  .in2_st1_ready  (mem2_stReady[1]),  .in2_st1_done_valid  (mem2_done_valid_wr[1]),  .in2_st1_done_ready  (mem2_done_ready_wr[1]),
    .in2_st2  (mem2_stPkt[2]),  .in2_st2_valid  (mem2_stValid[2]),  .in2_st2_ready  (mem2_stReady[2]),  .in2_st2_done_valid  (mem2_done_valid_wr[2]),  .in2_st2_done_ready  (mem2_done_ready_wr[2]),
    .in2_st3  (mem2_stPkt[3]),  .in2_st3_valid  (mem2_stValid[3]),  .in2_st3_ready  (mem2_stReady[3]),  .in2_st3_done_valid  (mem2_done_valid_wr[3]),  .in2_st3_done_ready  (mem2_done_ready_wr[3]),
    .in2_st4  (mem2_stPkt[4]),  .in2_st4_valid  (mem2_stValid[4]),  .in2_st4_ready  (mem2_stReady[4]),  .in2_st4_done_valid  (mem2_done_valid_wr[4]),  .in2_st4_done_ready  (mem2_done_ready_wr[4]),
    .in2_st5  (mem2_stPkt[5]),  .in2_st5_valid  (mem2_stValid[5]),  .in2_st5_ready  (mem2_stReady[5]),  .in2_st5_done_valid  (mem2_done_valid_wr[5]),  .in2_st5_done_ready  (mem2_done_ready_wr[5]),
    .in2_st6  (mem2_stPkt[6]),  .in2_st6_valid  (mem2_stValid[6]),  .in2_st6_ready  (mem2_stReady[6]),  .in2_st6_done_valid  (mem2_done_valid_wr[6]),  .in2_st6_done_ready  (mem2_done_ready_wr[6]),
    .in2_st7  (mem2_stPkt[7]),  .in2_st7_valid  (mem2_stValid[7]),  .in2_st7_ready  (mem2_stReady[7]),  .in2_st7_done_valid  (mem2_done_valid_wr[7]),  .in2_st7_done_ready  (mem2_done_ready_wr[7]),
    .in2_st8  (mem2_stPkt[8]),  .in2_st8_valid  (mem2_stValid[8]),  .in2_st8_ready  (mem2_stReady[8]),  .in2_st8_done_valid  (mem2_done_valid_wr[8]),  .in2_st8_done_ready  (mem2_done_ready_wr[8]),
    .in2_st9  (mem2_stPkt[9]),  .in2_st9_valid  (mem2_stValid[9]),  .in2_st9_ready  (mem2_stReady[9]),  .in2_st9_done_valid  (mem2_done_valid_wr[9]),  .in2_st9_done_ready  (mem2_done_ready_wr[9]),
    .in2_st10 (mem2_stPkt[10]), .in2_st10_valid (mem2_stValid[10]), .in2_st10_ready (mem2_stReady[10]), .in2_st10_done_valid (mem2_done_valid_wr[10]), .in2_st10_done_ready (mem2_done_ready_wr[10]),
    .in2_st11 (mem2_stPkt[11]), .in2_st11_valid (mem2_stValid[11]), .in2_st11_ready (mem2_stReady[11]), .in2_st11_done_valid (mem2_done_valid_wr[11]), .in2_st11_done_ready (mem2_done_ready_wr[11]),
    .in2_st12 (mem2_stPkt[12]), .in2_st12_valid (mem2_stValid[12]), .in2_st12_ready (mem2_stReady[12]), .in2_st12_done_valid (mem2_done_valid_wr[12]), .in2_st12_done_ready (mem2_done_ready_wr[12]),

    // tokens & scalars
    .in3_valid (in3_valid),  .in3_ready (in3_ready),
    .out0_ready(out0_ready), .out0_valid(out0_valid), .out0(out0),
    .out1_valid(out1_valid), .out1_ready(out1_ready),

    .clock (clk), .reset (reset)
  );

  // ------------------------------------------------------------------
  // 2. WRITE adapter for MEM-2 (13 channels)
  // ------------------------------------------------------------------
  handshake_to_axi_stream_write #(
    .ADDR_WIDTH (ADDR_W),
    .DATA_WIDTH (DATA_W),
    .N_CHANNELS (N_CH_MEM2_STORE)
  ) mem2_axi_wr (
    .clk    (clk),
    .rst_n  (rst_n),
    .stData (mem2_stData), .stData_valid(mem2_stValid), .stData_ready(mem2_stReady),
    .stAddr (mem2_stAddr), .stAddr_valid(mem2_stValid), .stAddr_ready(mem2_stReady),
    .stDone_valid(mem2_done_valid_wr), .stDone_ready(mem2_done_ready_wr),
    .m_axis_tdata (m_axis_mem2_store_tdata),
    .m_axis_tvalid(m_axis_mem2_store_tvalid),
    .m_axis_tready(m_axis_mem2_store_tready),
    .m_axis_tlast (m_axis_mem2_store_tlast)
  );

  // ------------------------------------------------------------------
  // 3. READ adapter for MEM-2 load (12 ch, addr width 2)
  // ------------------------------------------------------------------
  handshake_to_axi_stream_read_dual #(
    .ADDR_WIDTH (2), .DATA_WIDTH (DATA_W), .N_CHANNELS (N_CH_MEM2_LOAD)
  ) mem2_axi_rd (
    .clk(clk), .rst_n(rst_n),
    .stAddr(mem2_ldAddr), .stAddr_valid(mem2_ldAddrValid), .stAddr_ready(mem2_ldAddrReady),
    .stData(mem2_ldData), .stData_valid(mem2_ldDataValid), .stData_ready(mem2_ldDataReady),
    .stDone_valid(mem2_done_valid), .stDone_ready(mem2_done_ready),

    .m_axis_req_tdata (m_axis_mem2_req_tdata),
    .m_axis_req_tvalid(m_axis_mem2_req_tvalid),
    .m_axis_req_tready(m_axis_mem2_req_tready),
    .m_axis_req_tlast (m_axis_mem2_req_tlast),

    .s_axis_pl_tdata (s_axis_mem2_pl_tdata),
    .s_axis_pl_tvalid(s_axis_mem2_pl_tvalid),
    .s_axis_pl_tready(s_axis_mem2_pl_tready),
    .s_axis_pl_tlast (s_axis_mem2_pl_tlast)
  );

  // ------------------------------------------------------------------
  // 4. READ adapter for MEM-0 (1 ch, addr width 4)
  // ------------------------------------------------------------------
  handshake_to_axi_stream_read_dual #(
    .ADDR_WIDTH (4), .DATA_WIDTH (DATA_W), .N_CHANNELS (N_CH_MEM0)
  ) mem0_axi_rd (
    .clk(clk), .rst_n(rst_n),
    .stAddr(mem0_ldAddr), .stAddr_valid(mem0_ldAddrValid), .stAddr_ready(mem0_ldAddrReady),
    .stData(mem0_ldData), .stData_valid(mem0_ldDataValid), .stData_ready(mem0_ldDataReady),
    .stDone_valid(mem0_done_valid), .stDone_ready(mem0_done_ready),

    .m_axis_req_tdata (m_axis_mem0_req_tdata),
    .m_axis_req_tvalid(m_axis_mem0_req_tvalid),
    .m_axis_req_tready(m_axis_mem0_req_tready),
    .m_axis_req_tlast (m_axis_mem0_req_tlast),

    .s_axis_pl_tdata (s_axis_mem0_pl_tdata),
    .s_axis_pl_tvalid(s_axis_mem0_pl_tvalid),
    .s_axis_pl_tready(s_axis_mem0_pl_tready),
    .s_axis_pl_tlast (s_axis_mem0_pl_tlast)
  );

  // ------------------------------------------------------------------
  // 5. READ adapter for MEM-1 (1 ch, addr width 2)
  // ------------------------------------------------------------------
  handshake_to_axi_stream_read_dual #(
    .ADDR_WIDTH (2), .DATA_WIDTH (DATA_W), .N_CHANNELS (N_CH_MEM1)
  ) mem1_axi_rd (
    .clk(clk), .rst_n(rst_n),
    .stAddr(mem1_ldAddr), .stAddr_valid(mem1_ldAddrValid), .stAddr_ready(mem1_ldAddrReady),
    .stData(mem1_ldData), .stData_valid(mem1_ldDataValid), .stData_ready(mem1_ldDataReady),
    .stDone_valid(mem1_done_valid), .stDone_ready(mem1_done_ready),

    .m_axis_req_tdata (m_axis_mem1_req_tdata),
    .m_axis_req_tvalid(m_axis_mem1_req_tvalid),
    .m_axis_req_tready(m_axis_mem1_req_tready),
    .m_axis_req_tlast (m_axis_mem1_req_tlast),

    .s_axis_pl_tdata (s_axis_mem1_pl_tdata),
    .s_axis_pl_tvalid(s_axis_mem1_pl_tvalid),
    .s_axis_pl_tready(s_axis_mem1_pl_tready),
    .s_axis_pl_tlast (s_axis_mem1_pl_tlast)
  );

endmodule

