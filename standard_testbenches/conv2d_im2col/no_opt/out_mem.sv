module handshake_memory_out_ui64_id5(
     input  [63:0]         stData0,
     input                 stData0_valid,
     input  [63:0]         stAddr0,
     input                 stAddr0_valid,
     input  [63:0]         stData1,
     input                 stData1_valid,
     input  [63:0]         stAddr1,
     input                 stAddr1_valid,
     input  [63:0]         stData2,
     input                 stData2_valid,
     input  [63:0]         stAddr2,
     input                 stAddr2_valid,
     input  [63:0]         stData3,
     input                 stData3_valid,
     input  [63:0]         stAddr3,
     input                 stAddr3_valid,
     input  [63:0]         stData4,
     input                 stData4_valid,
     input  [63:0]         stAddr4,
     input                 stAddr4_valid,
                           clock,
                           reset,
                           stDone0_ready,
                           stDone1_ready,
                           stDone2_ready,
                           stDone3_ready,
                           stDone4_ready,
     output                stData0_ready,
                           stAddr0_ready,
                           stData1_ready,
                           stAddr1_ready,
                           stData2_ready,
                           stAddr2_ready,
                           stData3_ready,
                           stAddr3_ready,
                           stData4_ready,
                           stAddr4_ready,
  // output /*Zero Width*/ stDone0,
     output                stDone0_valid,
  // output /*Zero Width*/ stDone1,
     output                stDone1_valid,
  // output /*Zero Width*/ stDone2,
     output                stDone2_valid,
  // output /*Zero Width*/ stDone3,
     output                stDone3_valid,
  // output /*Zero Width*/ stDone4,
     output                stDone4_valid
);

  wire        emptyOrComplete;
  reg  [63:0] _handshake_memory_5[0:3];
  reg         writeValidBuffer;
  wire        emptyOrComplete_0 = ~writeValidBuffer | stDone0_ready & writeValidBuffer;
  reg         writeValidBuffer_0;
  wire        emptyOrComplete_1 =
    ~writeValidBuffer_0 | stDone1_ready & writeValidBuffer_0;
  reg         writeValidBuffer_1;
  wire        emptyOrComplete_2 =
    ~writeValidBuffer_1 | stDone2_ready & writeValidBuffer_1;
  reg         writeValidBuffer_2;
  wire        emptyOrComplete_3 =
    ~writeValidBuffer_2 | stDone3_ready & writeValidBuffer_2;
  reg         writeValidBuffer_3;
  always_ff @(posedge clock) begin
    if (reset) begin
      writeValidBuffer <= 1'h0;
      writeValidBuffer_0 <= 1'h0;
      writeValidBuffer_1 <= 1'h0;
      writeValidBuffer_2 <= 1'h0;
      writeValidBuffer_3 <= 1'h0;
    end
    else begin
      automatic logic writeValid = stAddr0_valid & stData0_valid;
      automatic logic writeValid_0 = stAddr1_valid & stData1_valid;
      automatic logic writeValid_1 = stAddr2_valid & stData2_valid;
      automatic logic writeValid_2 = stAddr3_valid & stData3_valid;
      automatic logic writeValid_3 = stAddr4_valid & stData4_valid;
      if (writeValid_3)
        _handshake_memory_5[stAddr4[1:0]] <= stData4;
      if (writeValid_2)
        _handshake_memory_5[stAddr3[1:0]] <= stData3;
      if (writeValid_1)
        _handshake_memory_5[stAddr2[1:0]] <= stData2;
      if (writeValid_0)
        _handshake_memory_5[stAddr1[1:0]] <= stData1;
      if (writeValid)
        _handshake_memory_5[stAddr0[1:0]] <= stData0;
      writeValidBuffer <= emptyOrComplete_0 ? writeValid : writeValidBuffer;
      writeValidBuffer_0 <= emptyOrComplete_1 ? writeValid_0 : writeValidBuffer_0;
      writeValidBuffer_1 <= emptyOrComplete_2 ? writeValid_1 : writeValidBuffer_1;
      writeValidBuffer_2 <= emptyOrComplete_3 ? writeValid_2 : writeValidBuffer_2;
      writeValidBuffer_3 <= emptyOrComplete ? writeValid_3 : writeValidBuffer_3;
    end
  end // always_ff @(posedge)
  assign emptyOrComplete = ~writeValidBuffer_3 | stDone4_ready & writeValidBuffer_3;
  assign stData0_ready = emptyOrComplete_0;
  assign stAddr0_ready = emptyOrComplete_0;
  assign stData1_ready = emptyOrComplete_1;
  assign stAddr1_ready = emptyOrComplete_1;
  assign stData2_ready = emptyOrComplete_2;
  assign stAddr2_ready = emptyOrComplete_2;
  assign stData3_ready = emptyOrComplete_3;
  assign stAddr3_ready = emptyOrComplete_3;
  assign stData4_ready = emptyOrComplete;
  assign stAddr4_ready = emptyOrComplete;
  // Zero width: assign stDone0 = /*Zero width*/;
  assign stDone0_valid = writeValidBuffer;
  // Zero width: assign stDone1 = /*Zero width*/;
  assign stDone1_valid = writeValidBuffer_0;
  // Zero width: assign stDone2 = /*Zero width*/;
  assign stDone2_valid = writeValidBuffer_1;
  // Zero width: assign stDone3 = /*Zero width*/;
  assign stDone3_valid = writeValidBuffer_2;
  // Zero width: assign stDone4 = /*Zero width*/;
  assign stDone4_valid = writeValidBuffer_3;
endmodule
