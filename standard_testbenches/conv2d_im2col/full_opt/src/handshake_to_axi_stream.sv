function automatic int clog2 (input int value);
  int v;
  for (clog2 = 0, v = value-1; v > 0; clog2 = clog2+1)
    v = v >> 1;
endfunction

//---------------------------------------------------------------------
//  Dual-stream read adapter, *single outstanding request*
//---------------------------------------------------------------------
//module handshake_to_axi_stream_read_dual #(
//  parameter int ADDR_WIDTH   = 2,
//  parameter int DATA_WIDTH   = 64,
//  parameter int N_CHANNELS   = 5,

//  localparam int CH_ID_W   = (N_CHANNELS < 2) ? 1 : $clog2(N_CHANNELS),
//  localparam int REQ_WIDTH = CH_ID_W + ADDR_WIDTH,
//  localparam int RSP_WIDTH = CH_ID_W + DATA_WIDTH
//)(
//  input  logic                         clk,
//  input  logic                         rst_n,

//  /*---------------- Kernel side -------------------------------------*/
//  input  logic [ADDR_WIDTH-1:0]        stAddr       [N_CHANNELS],
//  input  logic                         stAddr_valid [N_CHANNELS],
//  output logic                         stAddr_ready [N_CHANNELS],

//  output logic [DATA_WIDTH-1:0]        stData       [N_CHANNELS],
//  output logic                         stData_valid [N_CHANNELS],
//  input  logic                         stData_ready [N_CHANNELS],

//  output logic                         stDone_valid [N_CHANNELS],
//  input  logic                         stDone_ready [N_CHANNELS],

//  /*---------------- AXI-Stream request (master) ---------------------*/
//  output logic [REQ_WIDTH-1:0]         m_axis_req_tdata,
//  output logic                         m_axis_req_tvalid,
//  input  logic                         m_axis_req_tready,
//  output logic                         m_axis_req_tlast,

//  /*---------------- AXI-Stream payload (slave) ----------------------*/
//  input  logic [RSP_WIDTH-1:0]         s_axis_pl_tdata,
//  input  logic                         s_axis_pl_tvalid,
//  output logic                         s_axis_pl_tready,
//  input  logic                         s_axis_pl_tlast
//);

//  /*==================================================================
//   *  Global state :  only one request may be outstanding
//   *=================================================================*/
//  logic               outstanding;           // ★ NEW
//  logic [CH_ID_W-1:0] outstanding_id;        // channel that owns it

//  /*------------------------------------------------------------------
//   *  Per-channel storage for returned data
//   *-----------------------------------------------------------------*/
//  logic                  pend_valid  [N_CHANNELS];
//  logic [DATA_WIDTH-1:0] pend_data   [N_CHANNELS];

//  /*---------------- stAddr_ready: issue only when free -------------*/
//  genvar gi;
//  generate
//    for (gi = 0; gi < N_CHANNELS; gi++) begin : READY_OUT
//      assign stAddr_ready[gi] = ~outstanding & ~pend_valid[gi];   // ★ CHANGED
//    end
//  endgenerate

//  /*==================================================================
//   *  Simple priority encoder (no round-robin needed — one at a time)
//   *=================================================================*/
//  integer k;
//  always_comb begin
//    m_axis_req_tvalid = 1'b0;
//    m_axis_req_tdata  = '0;
//    m_axis_req_tlast  = 1'b1;

//    for (k = 0; k < N_CHANNELS; k++) begin
//      if (!outstanding                          &&   // ★ NEW
//          stAddr_valid[k] && stAddr_ready[k]) begin
//        m_axis_req_tvalid = 1'b1;
//        m_axis_req_tdata  = {k[CH_ID_W-1:0], stAddr[k]};
//        /* no need to look further */
//        break;
//      end
//    end
//  end

//  /*---------------- AXI payload back-pressure ----------------------*/
//  assign s_axis_pl_tready = outstanding;      // ★ Only when expecting one

//  /*==================================================================
//   *  Channel processes
//   *=================================================================*/
//  generate
//    for (gi = 0; gi < N_CHANNELS; gi++) begin : CHANNEL
//      /* tie-offs */
//      assign stData      [gi] = pend_valid[gi] ? pend_data[gi] : '0;
//      assign stData_valid[gi] = pend_valid[gi];

//      always_ff @(posedge clk or negedge rst_n) begin
//        if (!rst_n) begin
//          pend_valid   [gi] <= 1'b0;
//          stDone_valid [gi] <= 1'b0;
//        end
//        else begin
//          /*----------------------------------------------------------
//           *  A)  Request accepted on req bus
//           *---------------------------------------------------------*/
//          if ( m_axis_req_tvalid && m_axis_req_tready &&
//               {k[CH_ID_W-1:0]} == gi[CH_ID_W-1:0] ) begin
//            outstanding_id <= gi;             // ★ capture owner
//            outstanding    <= 1'b1;           // ★
//          end

//          /*----------------------------------------------------------
//           *  B)  Payload arrives for this channel
//           *---------------------------------------------------------*/
//          if ( s_axis_pl_tvalid && s_axis_pl_tready &&
//               s_axis_pl_tdata[RSP_WIDTH-1 -: CH_ID_W] == gi[CH_ID_W-1:0]) begin
//            pend_data [gi] <= s_axis_pl_tdata[DATA_WIDTH-1:0];
//            pend_valid[gi] <= 1'b1;
//            outstanding    <= 1'b0;           // ★ request completed
//          end

//          /*----------------------------------------------------------
//           *  C)  Kernel consumes payload
//           *---------------------------------------------------------*/
//          if (pend_valid[gi] && stData_ready[gi]) begin
//            pend_valid  [gi] <= 1'b0;
//            stDone_valid[gi] <= 1'b1;
//          end
//          else if (stDone_valid[gi] && stDone_ready[gi]) begin
//            stDone_valid[gi] <= 1'b0;
//          end
//        end
//      end
//    end
//  endgenerate

//  /*------------------------------------------------------------------
//   *  Reset logic for global flag
//   *-----------------------------------------------------------------*/
//  always_ff @(posedge clk or negedge rst_n)
//    if (!rst_n)
//      outstanding <= 1'b0;
//endmodule

module handshake_to_axi_stream_read_dual #(
  parameter int ADDR_WIDTH   = 2,
  parameter int DATA_WIDTH   = 64,
  parameter int N_CHANNELS   = 5,

  localparam int CH_ID_W   = (N_CHANNELS < 2) ? 1 : $clog2(N_CHANNELS),
  localparam int REQ_WIDTH = CH_ID_W + ADDR_WIDTH,
  localparam int RSP_WIDTH = CH_ID_W + DATA_WIDTH
)(
  input  logic                         clk,
  input  logic                         rst_n,

  /*---------------- Kernel side -------------------------------------*/
  input  logic [ADDR_WIDTH-1:0]        stAddr       [N_CHANNELS],
  input  logic                         stAddr_valid [N_CHANNELS],
  output logic                         stAddr_ready [N_CHANNELS],

  output logic [DATA_WIDTH-1:0]        stData       [N_CHANNELS],
  output logic                         stData_valid [N_CHANNELS],
  input  logic                         stData_ready [N_CHANNELS],

  output logic                         stDone_valid [N_CHANNELS],
  input  logic                         stDone_ready [N_CHANNELS],

  /*---------------- AXI-Stream request (master) ---------------------*/
  output logic [REQ_WIDTH-1:0]         m_axis_req_tdata,
  output logic                         m_axis_req_tvalid,
  input  logic                         m_axis_req_tready,
  output logic                         m_axis_req_tlast,

  /*---------------- AXI-Stream payload (slave) ----------------------*/
  input  logic [RSP_WIDTH-1:0]         s_axis_pl_tdata,
  input  logic                         s_axis_pl_tvalid,
  output logic                         s_axis_pl_tready,
  input  logic                         s_axis_pl_tlast
);

  /*==================================================================
   *  Global state : only one request may be outstanding
   *=================================================================*/
  logic               outstanding;
  logic [CH_ID_W-1:0] outstanding_id;

  /*------------------------------------------------------------------
   *  Per-channel storage for returned data
   *-----------------------------------------------------------------*/
  logic                  pend_valid  [N_CHANNELS];
  logic [DATA_WIDTH-1:0] pend_data   [N_CHANNELS];

  /*---------------- stAddr_ready: issue only when free -------------*/
  genvar gi;
  generate
    for (gi = 0; gi < N_CHANNELS; gi++) begin : READY_OUT
      assign stAddr_ready[gi] = ~outstanding & ~pend_valid[gi];
    end
  endgenerate

  /*==================================================================
   *  Simple priority encoder (no round-robin needed — one at a time)
   *=================================================================*/
  integer k;
  always_comb begin
    m_axis_req_tvalid = 1'b0;
    m_axis_req_tdata  = '0;
    m_axis_req_tlast  = 1'b1;

    for (k = 0; k < N_CHANNELS; k++) begin
      if (!outstanding && stAddr_valid[k] && stAddr_ready[k]) begin
        m_axis_req_tvalid = 1'b1;
        m_axis_req_tdata  = {k[CH_ID_W-1:0], stAddr[k]};
        break;
      end
    end
  end


  /*---------------- AXI payload back-pressure ----------------------*/
  assign s_axis_pl_tready = outstanding;

  reg buff_m_axis_req_tready;

  /*==================================================================
   *  Global state machine: track outstanding requests
   *=================================================================*/
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      outstanding    <= 1'b0;
      outstanding_id <= '0;
    end else begin
      buff_m_axis_req_tready <= m_axis_req_tready;

      // A) Request accepted
      if (buff_m_axis_req_tready && m_axis_req_tvalid) begin
        outstanding    <= 1'b1;
        // MSBs of tdata hold channel ID
        outstanding_id <= m_axis_req_tdata[REQ_WIDTH-1 -: CH_ID_W];
      end
      // B) Response arrives
      else if (s_axis_pl_tvalid && s_axis_pl_tready) begin
        outstanding <= 1'b0;
      end
    end
  end

  /*==================================================================
   *  Channel processes
   *=================================================================*/
  generate
    for (gi = 0; gi < N_CHANNELS; gi++) begin : CHANNEL
      /* tie-offs */
      assign stData       [gi] = pend_valid[gi] ? pend_data[gi] : '0;
      assign stData_valid [gi] = pend_valid[gi];

      always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
          pend_valid   [gi] <= 1'b0;
          stDone_valid [gi] <= 1'b0;
        end else begin
          // B) Payload arrives for this channel
          if (s_axis_pl_tvalid && s_axis_pl_tready &&
              s_axis_pl_tdata[RSP_WIDTH-1 -: CH_ID_W] == gi[CH_ID_W-1:0]) begin
            pend_data [gi] <= s_axis_pl_tdata[DATA_WIDTH-1:0];
            pend_valid[gi] <= 1'b1;
          end

          // C) Kernel consumes payload
          if (pend_valid[gi] && stData_ready[gi]) begin
            pend_valid   [gi] <= 1'b0;
            stDone_valid [gi] <= 1'b1;
          end else if (stDone_valid[gi] && stDone_ready[gi]) begin
            stDone_valid [gi] <= 1'b0;
          end
        end
      end
    end
  endgenerate
endmodule

module handshake_to_axi_stream_write #(
  parameter int ADDR_WIDTH   = 2,
  parameter int DATA_WIDTH   = 64,
  parameter int N_CHANNELS   = 5,
  localparam  int STREAM_WIDTH = ADDR_WIDTH + DATA_WIDTH
)(
  input  logic                     clk,
  input  logic                     rst_n,

  // per-channel write handshake
  input  logic [DATA_WIDTH-1:0]    stData       [N_CHANNELS],
  input  logic                     stData_valid [N_CHANNELS],
  output logic                     stData_ready [N_CHANNELS],

  input  logic [ADDR_WIDTH-1:0]    stAddr       [N_CHANNELS],
  input  logic                     stAddr_valid [N_CHANNELS],
  output logic                     stAddr_ready [N_CHANNELS],

  // per-channel done handshake
  output logic                     stDone_valid [N_CHANNELS],
  input  logic                     stDone_ready [N_CHANNELS],

  // AXI-Stream master
  output logic [STREAM_WIDTH-1:0]  m_axis_tdata,
  output logic                     m_axis_tvalid,
  input  logic                     m_axis_tready,
  output logic                     m_axis_tlast
);

  /* ------------------------------------------------------------------ *
   *  Per-channel storage                                               *
   * ------------------------------------------------------------------ */
  logic [ADDR_WIDTH-1:0] pending_addr [N_CHANNELS];
  logic [DATA_WIDTH-1:0] pending_data [N_CHANNELS];
  logic                  has_pending  [N_CHANNELS];

  /* ready = !pending  (combinational) */
  genvar g;
  generate
    for (g = 0; g < N_CHANNELS; g++) begin : READY
      assign stAddr_ready[g] = ~has_pending[g];
      assign stData_ready[g] = ~has_pending[g];
    end
  endgenerate

  /* ------------------------------------------------------------------ *
   *  Round-robin arbiter                                               *
   * ------------------------------------------------------------------ */
  localparam int PTR_W = (N_CHANNELS < 2) ? 1 : $clog2(N_CHANNELS);
  logic [PTR_W-1:0]       rr_ptr;
  logic [N_CHANNELS-1:0]  grant;

  /* pointer advance */
  always_ff @(posedge clk or negedge rst_n)
    if (!rst_n)
      rr_ptr <= '0;
    else if (m_axis_tvalid && m_axis_tready)
      rr_ptr <= rr_ptr + 1'b1;

  /* select next channel with a pending beat */
  integer k;
  always_comb begin
    grant         = '0;
    m_axis_tvalid = 1'b0;
    m_axis_tdata  = '0;
    m_axis_tlast  = 1'b1;   // every beat is a single-word packet

    for (k = 0; k < N_CHANNELS; k++) begin
      int sel = rr_ptr + k;
      if (sel >= N_CHANNELS) sel -= N_CHANNELS;

      if (!m_axis_tvalid && has_pending[sel]) begin
        grant[sel]    = 1'b1;
        m_axis_tvalid = 1'b1;
        m_axis_tdata  = {pending_addr[sel], pending_data[sel]};
      end
    end
  end

  /* ------------------------------------------------------------------ *
   *  One process per channel                                           *
   * ------------------------------------------------------------------ */
  generate
    for (g = 0; g < N_CHANNELS; g++) begin : CH
      always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
          has_pending [g] <= 1'b0;
          stDone_valid[g] <= 1'b0;
        end
        else begin
          /* capture a new request */
          if (!has_pending[g] && stAddr_valid[g] && stData_valid[g]) begin
            pending_addr[g] <= stAddr[g];
            pending_data[g] <= stData[g];
            has_pending [g] <= 1'b1;
          end
          /* beat accepted by AXI; clear pending and raise done */
          else if (m_axis_tvalid && m_axis_tready && grant[g]) begin
            has_pending [g] <= 1'b0;
            stDone_valid[g] <= 1'b1;
          end
          /* kernel accepted the done pulse */
          else if (stDone_valid[g] && stDone_ready[g]) begin
            stDone_valid[g] <= 1'b0;
          end
        end
      end
    end
  endgenerate

endmodule
