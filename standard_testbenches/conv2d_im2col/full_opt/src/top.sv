module top
#( parameter int ADDR_W = 2,
   parameter int DATA_W = 32 )
(
  /* ---------------- Clock & ACTIVE-HIGH reset ------------------- */
  input  logic                          clk,
  input  logic                          reset,

  /* ================= TOKENS ===================================== */
  input  logic                          in3_valid,
  output logic                          in3_ready,

  output logic                          out0,
  output logic                          out0_valid,
  input  logic                          out0_ready,
  output logic                          out1_valid,
  input  logic                          out1_ready,

  /* ============= WRITE MEM-2   ======================= */
  output logic [ADDR_W+DATA_W-1:0]      m_axis_mem2_store_tdata,
  output logic                          m_axis_mem2_store_tvalid,
  input  logic                          m_axis_mem2_store_tready,
  output logic                          m_axis_mem2_store_tlast,

  /* ---------------- READ MEM-2 (load) --------------------------- */
  output logic [2:0]                    m_axis_mem2_req_tdata,
  output logic                          m_axis_mem2_req_tvalid,
  input  logic                          m_axis_mem2_req_tready,
  output logic                          m_axis_mem2_req_tlast,

  input  logic [DATA_W-1:0]             s_axis_mem2_pl_tdata,
  input  logic                          s_axis_mem2_pl_tvalid,
  output logic                          s_axis_mem2_pl_tready,
  input  logic                          s_axis_mem2_pl_tlast,

  /* ---------------- READ MEM-0 (addr-width 4) ------------------- */
  output logic [3:0]                    m_axis_mem0_req_tdata,
  output logic                          m_axis_mem0_req_tvalid,
  input  logic                          m_axis_mem0_req_tready,
  output logic                          m_axis_mem0_req_tlast,

  input  logic [DATA_W-1:0]             s_axis_mem0_pl_tdata,
  input  logic                          s_axis_mem0_pl_tvalid,
  output logic                          s_axis_mem0_pl_tready,
  input  logic                          s_axis_mem0_pl_tlast,

  /* ---------------- READ MEM-1 (addr-width 2) ------------------- */
  output logic [1:0]                    m_axis_mem1_req_tdata,
  output logic                          m_axis_mem1_req_tvalid,
  input  logic                          m_axis_mem1_req_tready,
  output logic                          m_axis_mem1_req_tlast,

  input  logic [DATA_W-1:0]             s_axis_mem1_pl_tdata,
  input  logic                          s_axis_mem1_pl_tvalid,
  output logic                          s_axis_mem1_pl_tready,
  input  logic                          s_axis_mem1_pl_tlast
);
  localparam int N_CH_MEM0       = 1;
  localparam int N_CH_MEM1       = 1;
  localparam int N_CH_MEM2_STORE = 2;
  localparam int N_CH_MEM2_LOAD  = 1;

  logic rst_n = ~reset;

  logic [3:0]          mem0_ldAddr       [N_CH_MEM0];
  logic                mem0_ldAddrValid  [N_CH_MEM0];
  logic                mem0_ldAddrReady  [N_CH_MEM0];
  logic [DATA_W-1:0]   mem0_ldData       [N_CH_MEM0];
  logic                mem0_ldDataValid  [N_CH_MEM0];
  logic                mem0_ldDataReady  [N_CH_MEM0];
  logic                mem0_done_valid   [N_CH_MEM0];
  logic                mem0_done_ready   [N_CH_MEM0];

  logic [1:0]          mem1_ldAddr       [N_CH_MEM1];
  logic                mem1_ldAddrValid  [N_CH_MEM1];
  logic                mem1_ldAddrReady  [N_CH_MEM1];
  logic [DATA_W-1:0]   mem1_ldData       [N_CH_MEM1];
  logic                mem1_ldDataValid  [N_CH_MEM1];
  logic                mem1_ldDataReady  [N_CH_MEM1];
  logic                mem1_done_valid   [N_CH_MEM1];
  logic                mem1_done_ready   [N_CH_MEM1];

  logic [1:0]          mem2_ldAddr       [N_CH_MEM2_LOAD];
  logic                mem2_ldAddrValid  [N_CH_MEM2_LOAD];
  logic                mem2_ldAddrReady  [N_CH_MEM2_LOAD];
  logic [DATA_W-1:0]   mem2_ldData       [N_CH_MEM2_LOAD];
  logic                mem2_ldDataValid  [N_CH_MEM2_LOAD];
  logic                mem2_ldDataReady  [N_CH_MEM2_LOAD];
  logic                mem2_done_valid   [N_CH_MEM2_LOAD];
  logic                mem2_done_ready   [N_CH_MEM2_LOAD];

  typedef struct packed { logic [ADDR_W-1:0] address; logic [DATA_W-1:0] data; } addr_data_t;

  addr_data_t          mem2_stPkt     [N_CH_MEM2_STORE];
  logic                mem2_stValid   [N_CH_MEM2_STORE];
  logic                mem2_stReady   [N_CH_MEM2_STORE];
  logic                mem2_done_valid_wr [N_CH_MEM2_STORE];
  logic                mem2_done_ready_wr [N_CH_MEM2_STORE];

  conv2d_im2col kernel (
    .in0_ld0_addr        (mem0_ldAddr      [0]),
    .in0_ld0_addr_valid  (mem0_ldAddrValid [0]),
    .in0_ld0_addr_ready  (mem0_ldAddrReady [0]),
    .in0_ld0_data        (mem0_ldData      [0]),
    .in0_ld0_data_valid  (mem0_ldDataValid [0]),
    .in0_ld0_data_ready  (mem0_ldDataReady [0]),

    .in1_ld0_addr        (mem1_ldAddr      [0]),
    .in1_ld0_addr_valid  (mem1_ldAddrValid [0]),
    .in1_ld0_addr_ready  (mem1_ldAddrReady [0]),
    .in1_ld0_data        (mem1_ldData      [0]),
    .in1_ld0_data_valid  (mem1_ldDataValid [0]),
    .in1_ld0_data_ready  (mem1_ldDataReady [0]),

    // .in2_ld0_addr        (mem2_ldAddr      [0]),
    // .in2_ld0_addr_valid  (mem2_ldAddrValid [0]),
    // .in2_ld0_addr_ready  (mem2_ldAddrReady [0]),
    // .in2_ld0_data        (mem2_ldData      [0]),
    // .in2_ld0_data_valid  (mem2_ldDataValid [0]),
    // .in2_ld0_data_ready  (mem2_ldDataReady [0]),

    .in2_st0             (mem2_stPkt       [0]),
    .in2_st0_valid       (mem2_stValid     [0]),
    .in2_st0_ready       (mem2_stReady     [0]),
    // .in2_st1             (mem2_stPkt       [1]),
    // .in2_st1_valid       (mem2_stValid     [1]),
    // .in2_st1_ready       (mem2_stReady     [1]),
    .in2_st0_done_valid  (mem2_done_valid_wr[0]),
    .in2_st0_done_ready  (mem2_done_ready_wr[0]),
    // .in2_st1_done_valid  (mem2_done_valid_wr[1]),
    // .in2_st1_done_ready  (mem2_done_ready_wr[1]),

    .in3_valid           (in3_valid),
    .in3_ready           (in3_ready),
    .out0_ready          (out0_ready),
    .out0_valid          (out0_valid),
    .out0                (out0),
    .out1_valid          (out1_valid),
    .out1_ready          (out1_ready),

    .clock               (clk),
    .reset               (reset)
  );

  logic [ADDR_W-1:0] mem2_stAddr [N_CH_MEM2_STORE];
  logic [DATA_W-1:0] mem2_stData [N_CH_MEM2_STORE];

  genvar gw;
  generate
    for (gw = 0; gw < N_CH_MEM2_STORE; gw++) begin : UNPACK_WR
      assign mem2_stAddr[gw] = mem2_stPkt[gw].address;
      assign mem2_stData[gw] = mem2_stPkt[gw].data;
    end
  endgenerate

  handshake_to_axi_stream_write #(
    .ADDR_WIDTH (ADDR_W),
    .DATA_WIDTH (DATA_W),
    .N_CHANNELS (N_CH_MEM2_STORE)
  ) mem2_axi_wr (
    .clk          (clk),
    .rst_n        (rst_n),
    .stData       (mem2_stData),
    .stData_valid (mem2_stValid),
    .stData_ready (mem2_stReady),
    .stAddr       (mem2_stAddr),
    .stAddr_valid (mem2_stValid),
    .stAddr_ready (mem2_stReady),
    .stDone_valid (mem2_done_valid_wr),
    .stDone_ready (mem2_done_ready_wr),
    .m_axis_tdata (m_axis_mem2_store_tdata),
    .m_axis_tvalid(m_axis_mem2_store_tvalid),
    .m_axis_tready(m_axis_mem2_store_tready),
    .m_axis_tlast (m_axis_mem2_store_tlast)
  );

  handshake_to_axi_stream_read_dual #(
    .ADDR_WIDTH (2),
    .DATA_WIDTH (DATA_W),
    .N_CHANNELS (N_CH_MEM2_LOAD)
  ) mem2_axi_rd (
    .clk              (clk),
    .rst_n            (rst_n),

    .stAddr           (mem2_ldAddr),
    .stAddr_valid     (mem2_ldAddrValid),
    .stAddr_ready     (mem2_ldAddrReady),
    .stData           (mem2_ldData),
    .stData_valid     (mem2_ldDataValid),
    .stData_ready     (mem2_ldDataReady),
    .stDone_valid     (mem2_done_valid),
    .stDone_ready     (mem2_done_ready),

    .m_axis_req_tdata (m_axis_mem2_req_tdata),
    .m_axis_req_tvalid(m_axis_mem2_req_tvalid),
    .m_axis_req_tready(m_axis_mem2_req_tready),
    .m_axis_req_tlast (m_axis_mem2_req_tlast),

    .s_axis_pl_tdata  (s_axis_mem2_pl_tdata),
    .s_axis_pl_tvalid (s_axis_mem2_pl_tvalid),
    .s_axis_pl_tready (s_axis_mem2_pl_tready),
    .s_axis_pl_tlast  (s_axis_mem2_pl_tlast)
  );

  handshake_to_axi_stream_read_dual #(
    .ADDR_WIDTH (4),
    .DATA_WIDTH (DATA_W),
    .N_CHANNELS (N_CH_MEM0)
  ) mem0_axi_rd (
    .clk              (clk),
    .rst_n            (rst_n),

    .stAddr           (mem0_ldAddr),
    .stAddr_valid     (mem0_ldAddrValid),
    .stAddr_ready     (mem0_ldAddrReady),
    .stData           (mem0_ldData),
    .stData_valid     (mem0_ldDataValid),
    .stData_ready     (mem0_ldDataReady),
    .stDone_valid     (mem0_done_valid),
    .stDone_ready     (mem0_done_ready),

    .m_axis_req_tdata (m_axis_mem0_req_tdata),
    .m_axis_req_tvalid(m_axis_mem0_req_tvalid),
    .m_axis_req_tready(m_axis_mem0_req_tready),
    .m_axis_req_tlast (m_axis_mem0_req_tlast),

    .s_axis_pl_tdata  (s_axis_mem0_pl_tdata),
    .s_axis_pl_tvalid (s_axis_mem0_pl_tvalid),
    .s_axis_pl_tready (s_axis_mem0_pl_tready),
    .s_axis_pl_tlast  (s_axis_mem0_pl_tlast)
  );

  handshake_to_axi_stream_read_dual #(
    .ADDR_WIDTH (2),
    .DATA_WIDTH (DATA_W),
    .N_CHANNELS (N_CH_MEM1)
  ) mem1_axi_rd (
    .clk              (clk),
    .rst_n            (rst_n),

    .stAddr           (mem1_ldAddr),
    .stAddr_valid     (mem1_ldAddrValid),
    .stAddr_ready     (mem1_ldAddrReady),
    .stData           (mem1_ldData),
    .stData_valid     (mem1_ldDataValid),
    .stData_ready     (mem1_ldDataReady),
    .stDone_valid     (mem1_done_valid),
    .stDone_ready     (mem1_done_ready),

    .m_axis_req_tdata (m_axis_mem1_req_tdata),
    .m_axis_req_tvalid(m_axis_mem1_req_tvalid),
    .m_axis_req_tready(m_axis_mem1_req_tready),
    .m_axis_req_tlast (m_axis_mem1_req_tlast),

    .s_axis_pl_tdata  (s_axis_mem1_pl_tdata),
    .s_axis_pl_tvalid (s_axis_mem1_pl_tvalid),
    .s_axis_pl_tready (s_axis_mem1_pl_tready),
    .s_axis_pl_tlast  (s_axis_mem1_pl_tlast)
  );

endmodule

