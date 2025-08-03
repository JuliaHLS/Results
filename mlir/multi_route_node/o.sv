module {
  hw.module @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %c0_i0 = hw.constant 0 : i0
    %valid0_reg = seq.compreg sym @valid0_reg %2, %clock reset %reset, %false : i1  
    %0 = comb.xor %valid0_reg, %true : i1
    %1 = comb.or %0, %5 : i1
    %2 = comb.mux %1, %in0_valid, %valid0_reg : i1
    %3 = comb.mux %1, %in0, %data0_reg : i0
    %data0_reg = seq.compreg sym @data0_reg %3, %clock reset %reset, %c0_i0 : i0  
    %ready0_reg = seq.compreg sym @ready0_reg %11, %clock reset %reset, %false : i1  
    %4 = comb.mux %ready0_reg, %ready0_reg, %valid0_reg : i1
    %5 = comb.xor %ready0_reg, %true : i1
    %6 = comb.xor %16, %true : i1
    %7 = comb.and %6, %5 : i1
    %8 = comb.mux %7, %valid0_reg, %ready0_reg : i1
    %9 = comb.and %16, %ready0_reg : i1
    %10 = comb.xor %9, %true : i1
    %11 = comb.and %10, %8 : i1
    %ctrl_data0_reg = seq.compreg sym @ctrl_data0_reg %14, %clock reset %reset, %c0_i0 : i0  
    %12 = comb.mux %ready0_reg, %ctrl_data0_reg, %data0_reg : i0
    %13 = comb.mux %7, %data0_reg, %ctrl_data0_reg : i0
    %14 = comb.mux %9, %c0_i0, %13 : i0
    %valid1_reg = seq.compreg sym @valid1_reg %17, %clock reset %reset, %false : i1  
    %15 = comb.xor %valid1_reg, %true : i1
    %16 = comb.or %15, %20 : i1
    %17 = comb.mux %16, %4, %valid1_reg : i1
    %18 = comb.mux %16, %12, %data1_reg : i0
    %data1_reg = seq.compreg sym @data1_reg %18, %clock reset %reset, %c0_i0 : i0  
    %ready1_reg = seq.compreg sym @ready1_reg %26, %clock reset %reset, %false : i1  
    %19 = comb.mux %ready1_reg, %ready1_reg, %valid1_reg : i1
    %20 = comb.xor %ready1_reg, %true : i1
    %21 = comb.xor %out0_ready, %true : i1
    %22 = comb.and %21, %20 : i1
    %23 = comb.mux %22, %valid1_reg, %ready1_reg : i1
    %24 = comb.and %out0_ready, %ready1_reg : i1
    %25 = comb.xor %24, %true : i1
    %26 = comb.and %25, %23 : i1
    %ctrl_data1_reg = seq.compreg sym @ctrl_data1_reg %29, %clock reset %reset, %c0_i0 : i0  
    %27 = comb.mux %ready1_reg, %ctrl_data1_reg, %data1_reg : i0
    %28 = comb.mux %22, %data1_reg, %ctrl_data1_reg : i0
    %29 = comb.mux %24, %c0_i0, %28 : i0
    hw.output %1, %27, %19 : i1, i0, i1
  }
  hw.module @handshake_buffer_in_ui64_out_ui64_2slots_seq(in %in0 : i64, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i64, out out0_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %c0_i64 = hw.constant 0 : i64
    %valid0_reg = seq.compreg sym @valid0_reg %2, %clock reset %reset, %false : i1  
    %0 = comb.xor %valid0_reg, %true : i1
    %1 = comb.or %0, %5 : i1
    %2 = comb.mux %1, %in0_valid, %valid0_reg : i1
    %3 = comb.mux %1, %in0, %data0_reg : i64
    %data0_reg = seq.compreg sym @data0_reg %3, %clock reset %reset, %c0_i64 : i64  
    %ready0_reg = seq.compreg sym @ready0_reg %11, %clock reset %reset, %false : i1  
    %4 = comb.mux %ready0_reg, %ready0_reg, %valid0_reg : i1
    %5 = comb.xor %ready0_reg, %true : i1
    %6 = comb.xor %16, %true : i1
    %7 = comb.and %6, %5 : i1
    %8 = comb.mux %7, %valid0_reg, %ready0_reg : i1
    %9 = comb.and %16, %ready0_reg : i1
    %10 = comb.xor %9, %true : i1
    %11 = comb.and %10, %8 : i1
    %ctrl_data0_reg = seq.compreg sym @ctrl_data0_reg %14, %clock reset %reset, %c0_i64 : i64  
    %12 = comb.mux %ready0_reg, %ctrl_data0_reg, %data0_reg : i64
    %13 = comb.mux %7, %data0_reg, %ctrl_data0_reg : i64
    %14 = comb.mux %9, %c0_i64, %13 : i64
    %valid1_reg = seq.compreg sym @valid1_reg %17, %clock reset %reset, %false : i1  
    %15 = comb.xor %valid1_reg, %true : i1
    %16 = comb.or %15, %20 : i1
    %17 = comb.mux %16, %4, %valid1_reg : i1
    %18 = comb.mux %16, %12, %data1_reg : i64
    %data1_reg = seq.compreg sym @data1_reg %18, %clock reset %reset, %c0_i64 : i64  
    %ready1_reg = seq.compreg sym @ready1_reg %26, %clock reset %reset, %false : i1  
    %19 = comb.mux %ready1_reg, %ready1_reg, %valid1_reg : i1
    %20 = comb.xor %ready1_reg, %true : i1
    %21 = comb.xor %out0_ready, %true : i1
    %22 = comb.and %21, %20 : i1
    %23 = comb.mux %22, %valid1_reg, %ready1_reg : i1
    %24 = comb.and %out0_ready, %ready1_reg : i1
    %25 = comb.xor %24, %true : i1
    %26 = comb.and %25, %23 : i1
    %ctrl_data1_reg = seq.compreg sym @ctrl_data1_reg %29, %clock reset %reset, %c0_i64 : i64  
    %27 = comb.mux %ready1_reg, %ctrl_data1_reg, %data1_reg : i64
    %28 = comb.mux %22, %data1_reg, %ctrl_data1_reg : i64
    %29 = comb.mux %24, %c0_i64, %28 : i64
    hw.output %1, %27, %19 : i1, i64, i1
  }
  hw.module @handshake_fork_1ins_2outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %12, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %12, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.and %5, %11 {sv.namehint = "allDone"} : i1
    hw.output %12, %in0, %3, %in0, %9 : i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_in_ui64_out_ui64_ui64(in %in0 : i64, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, out in0_ready : i1, out out0 : i64, out out0_valid : i1, out out1 : i64, out out1_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %12, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %12, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.and %5, %11 {sv.namehint = "allDone"} : i1
    hw.output %12, %in0, %3, %in0, %9 : i1, i64, i1, i64, i1
  }
  hw.module @handshake_constant_c0_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c0_i64 = hw.constant 0 : i64
    hw.output %out0_ready, %c0_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @arith_cmpi_in_ui64_ui64_out_ui1_slt(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i1, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.icmp slt %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i1, i1
  }
  hw.module @handshake_buffer_in_ui1_out_ui1_2slots_seq(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %valid0_reg = seq.compreg sym @valid0_reg %2, %clock reset %reset, %false : i1  
    %0 = comb.xor %valid0_reg, %true : i1
    %1 = comb.or %0, %5 : i1
    %2 = comb.mux %1, %in0_valid, %valid0_reg : i1
    %3 = comb.mux %1, %in0, %data0_reg : i1
    %data0_reg = seq.compreg sym @data0_reg %3, %clock reset %reset, %false : i1  
    %ready0_reg = seq.compreg sym @ready0_reg %11, %clock reset %reset, %false : i1  
    %4 = comb.mux %ready0_reg, %ready0_reg, %valid0_reg : i1
    %5 = comb.xor %ready0_reg, %true : i1
    %6 = comb.xor %17, %true : i1
    %7 = comb.and %6, %5 : i1
    %8 = comb.mux %7, %valid0_reg, %ready0_reg : i1
    %9 = comb.and %17, %ready0_reg : i1
    %10 = comb.xor %9, %true : i1
    %11 = comb.and %10, %8 : i1
    %ctrl_data0_reg = seq.compreg sym @ctrl_data0_reg %15, %clock reset %reset, %false : i1  
    %12 = comb.mux %ready0_reg, %ctrl_data0_reg, %data0_reg : i1
    %13 = comb.mux %7, %data0_reg, %ctrl_data0_reg : i1
    %14 = comb.xor %9, %true : i1
    %15 = comb.and %14, %13 : i1
    %valid1_reg = seq.compreg sym @valid1_reg %18, %clock reset %reset, %false : i1  
    %16 = comb.xor %valid1_reg, %true : i1
    %17 = comb.or %16, %21 : i1
    %18 = comb.mux %17, %4, %valid1_reg : i1
    %19 = comb.mux %17, %12, %data1_reg : i1
    %data1_reg = seq.compreg sym @data1_reg %19, %clock reset %reset, %false : i1  
    %ready1_reg = seq.compreg sym @ready1_reg %27, %clock reset %reset, %false : i1  
    %20 = comb.mux %ready1_reg, %ready1_reg, %valid1_reg : i1
    %21 = comb.xor %ready1_reg, %true : i1
    %22 = comb.xor %out0_ready, %true : i1
    %23 = comb.and %22, %21 : i1
    %24 = comb.mux %23, %valid1_reg, %ready1_reg : i1
    %25 = comb.and %out0_ready, %ready1_reg : i1
    %26 = comb.xor %25, %true : i1
    %27 = comb.and %26, %24 : i1
    %ctrl_data1_reg = seq.compreg sym @ctrl_data1_reg %31, %clock reset %reset, %false : i1  
    %28 = comb.mux %ready1_reg, %ctrl_data1_reg, %data1_reg : i1
    %29 = comb.mux %23, %data1_reg, %ctrl_data1_reg : i1
    %30 = comb.xor %25, %true : i1
    %31 = comb.and %30, %29 : i1
    hw.output %1, %28, %20 : i1, i1, i1
  }
  hw.module @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1, out out1 : i1, out out1_valid : i1, out out2 : i1, out out2_valid : i1, out out3 : i1, out out3_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %24, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %24, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %24, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %24, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.and %5, %11, %17, %23 {sv.namehint = "allDone"} : i1
    hw.output %24, %in0, %3, %in0, %9, %in0, %15, %in0, %21 : i1, i1, i1, i1, i1, i1, i1, i1, i1
  }
  hw.module @handshake_buffer_in_ui1_out_ui1_2slots_fifo(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %valid0_reg = seq.compreg sym @valid0_reg %2, %clock reset %reset, %false : i1  
    %0 = comb.xor %valid0_reg, %true : i1
    %1 = comb.or %0, %5 : i1
    %2 = comb.mux %1, %in0_valid, %valid0_reg : i1
    %3 = comb.mux %1, %in0, %data0_reg : i1
    %data0_reg = seq.compreg sym @data0_reg %3, %clock reset %reset, %false : i1  
    %ready0_reg = seq.compreg sym @ready0_reg %11, %clock reset %reset, %false : i1  
    %4 = comb.mux %ready0_reg, %ready0_reg, %valid0_reg : i1
    %5 = comb.xor %ready0_reg, %true : i1
    %6 = comb.xor %17, %true : i1
    %7 = comb.and %6, %5 : i1
    %8 = comb.mux %7, %valid0_reg, %ready0_reg : i1
    %9 = comb.and %17, %ready0_reg : i1
    %10 = comb.xor %9, %true : i1
    %11 = comb.and %10, %8 : i1
    %ctrl_data0_reg = seq.compreg sym @ctrl_data0_reg %15, %clock reset %reset, %false : i1  
    %12 = comb.mux %ready0_reg, %ctrl_data0_reg, %data0_reg : i1
    %13 = comb.mux %7, %data0_reg, %ctrl_data0_reg : i1
    %14 = comb.xor %9, %true : i1
    %15 = comb.and %14, %13 : i1
    %valid1_reg = seq.compreg sym @valid1_reg %18, %clock reset %reset, %false : i1  
    %16 = comb.xor %valid1_reg, %true : i1
    %17 = comb.or %16, %21 : i1
    %18 = comb.mux %17, %4, %valid1_reg : i1
    %19 = comb.mux %17, %12, %data1_reg : i1
    %data1_reg = seq.compreg sym @data1_reg %19, %clock reset %reset, %false : i1  
    %ready1_reg = seq.compreg sym @ready1_reg %27, %clock reset %reset, %false : i1  
    %20 = comb.mux %ready1_reg, %ready1_reg, %valid1_reg : i1
    %21 = comb.xor %ready1_reg, %true : i1
    %22 = comb.xor %out0_ready, %true : i1
    %23 = comb.and %22, %21 : i1
    %24 = comb.mux %23, %valid1_reg, %ready1_reg : i1
    %25 = comb.and %out0_ready, %ready1_reg : i1
    %26 = comb.xor %25, %true : i1
    %27 = comb.and %26, %24 : i1
    %ctrl_data1_reg = seq.compreg sym @ctrl_data1_reg %31, %clock reset %reset, %false : i1  
    %28 = comb.mux %ready1_reg, %ctrl_data1_reg, %data1_reg : i1
    %29 = comb.mux %23, %data1_reg, %ctrl_data1_reg : i1
    %30 = comb.xor %25, %true : i1
    %31 = comb.and %30, %29 : i1
    hw.output %1, %28, %20 : i1, i1, i1
  }
  hw.module @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(in %cond : i1, in %cond_valid : i1, in %data : i64, in %data_valid : i1, in %outTrue_ready : i1, in %outFalse_ready : i1, out cond_ready : i1, out data_ready : i1, out outTrue : i64, out outTrue_valid : i1, out outFalse : i64, out outFalse_valid : i1) {
    %true = hw.constant true
    %0 = comb.and %cond_valid, %data_valid : i1
    %1 = comb.and %cond, %0 : i1
    %2 = comb.xor %cond, %true : i1
    %3 = comb.and %2, %0 : i1
    %4 = comb.mux %cond, %outTrue_ready, %outFalse_ready : i1
    %5 = comb.and %4, %0 : i1
    hw.output %5, %5, %data, %1, %data, %3 : i1, i1, i64, i1, i64, i1
  }
  hw.module @handshake_sink_in_ui64(in %in0 : i64, in %in0_valid : i1, out in0_ready : i1) {
    %true = hw.constant true
    hw.output %true : i1
  }
  hw.module @arith_addi_in_ui64_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.add %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i64, i1
  }
  hw.module @arith_cmpi_in_ui64_ui64_out_ui1_sgt(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i1, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.icmp sgt %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i1, i1
  }
  hw.module @arith_subi_in_ui64_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.sub %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i64, i1
  }
  hw.module @handshake_mux_in_ui64_ui64_ui64_out_ui64(in %select : i64, in %select_valid : i1, in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out select_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c1_i2 = hw.constant 1 : i2
    %false = hw.constant false
    %0 = comb.extract %select from 0 : (i64) -> i1
    %1 = comb.concat %false, %0 : i1, i1
    %2 = comb.shl %c1_i2, %1 : i2
    %3 = comb.mux %0, %in1_valid, %in0_valid : i1
    %4 = comb.and %3, %select_valid : i1
    %5 = comb.and %4, %out0_ready : i1
    %6 = comb.extract %2 from 0 : (i2) -> i1
    %7 = comb.and %6, %5 : i1
    %8 = comb.extract %2 from 1 : (i2) -> i1
    %9 = comb.and %8, %5 : i1
    %10 = comb.mux %0, %in1, %in0 : i64
    hw.output %5, %7, %9, %10, %4 : i1, i1, i1, i64, i1
  }
  hw.module @arith_index_cast_in_ui1_out_ui64(in %in0 : i1, in %in0_valid : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %out0_ready, %in0_valid : i1
    %1 = comb.replicate %in0 : (i1) -> i64
    hw.output %0, %1, %in0_valid : i1, i64, i1
  }
  hw.module @implicit_else(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out out0 : i64, out out0_valid : i1, out out1 : i0, out out1_valid : i1) {
    %handshake_buffer0.in0_ready, %handshake_buffer0.out0, %handshake_buffer0.out0_valid = hw.instance "handshake_buffer0" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %in2: i0, in0_valid: %in2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork0.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer1.in0_ready, %handshake_buffer1.out0, %handshake_buffer1.out0_valid = hw.instance "handshake_buffer1" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %in1: i64, in0_valid: %in1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer2.in0_ready, %handshake_buffer2.out0, %handshake_buffer2.out0_valid = hw.instance "handshake_buffer2" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %in0: i64, in0_valid: %in0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork2.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork0.in0_ready, %handshake_fork0.out0, %handshake_fork0.out0_valid, %handshake_fork0.out1, %handshake_fork0.out1_valid = hw.instance "handshake_fork0" @handshake_fork_1ins_2outs_ctrl(in0: %handshake_buffer0.out0: i0, in0_valid: %handshake_buffer0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer4.in0_ready: i1, out1_ready: %handshake_buffer3.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1)
    %handshake_buffer3.in0_ready, %handshake_buffer3.out0, %handshake_buffer3.out0_valid = hw.instance "handshake_buffer3" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out1: i0, in0_valid: %handshake_fork0.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant0.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer4.in0_ready, %handshake_buffer4.out0, %handshake_buffer4.out0_valid = hw.instance "handshake_buffer4" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out0: i0, in0_valid: %handshake_fork0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %out1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork1.in0_ready, %handshake_fork1.out0, %handshake_fork1.out0_valid, %handshake_fork1.out1, %handshake_fork1.out1_valid = hw.instance "handshake_fork1" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer1.out0: i64, in0_valid: %handshake_buffer1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer6.in0_ready: i1, out1_ready: %handshake_buffer5.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer5.in0_ready, %handshake_buffer5.out0, %handshake_buffer5.out0_valid = hw.instance "handshake_buffer5" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork1.out1: i64, in0_valid: %handshake_fork1.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br1.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer6.in0_ready, %handshake_buffer6.out0, %handshake_buffer6.out0_valid = hw.instance "handshake_buffer6" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork1.out0: i64, in0_valid: %handshake_fork1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork2.in0_ready, %handshake_fork2.out0, %handshake_fork2.out0_valid, %handshake_fork2.out1, %handshake_fork2.out1_valid = hw.instance "handshake_fork2" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer2.out0: i64, in0_valid: %handshake_buffer2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer8.in0_ready: i1, out1_ready: %handshake_buffer7.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer7.in0_ready, %handshake_buffer7.out0, %handshake_buffer7.out0_valid = hw.instance "handshake_buffer7" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork2.out1: i64, in0_valid: %handshake_fork2.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br0.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer8.in0_ready, %handshake_buffer8.out0, %handshake_buffer8.out0_valid = hw.instance "handshake_buffer8" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork2.out0: i64, in0_valid: %handshake_fork2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant0.ctrl_ready, %handshake_constant0.out0, %handshake_constant0.out0_valid = hw.instance "handshake_constant0" @handshake_constant_c0_out_ui64(ctrl: %handshake_buffer3.out0: i0, ctrl_valid: %handshake_buffer3.out0_valid: i1, out0_ready: %handshake_buffer9.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer9.in0_ready, %handshake_buffer9.out0, %handshake_buffer9.out0_valid = hw.instance "handshake_buffer9" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant0.out0: i64, in0_valid: %handshake_constant0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br2.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_cmpi0.in0_ready, %arith_cmpi0.in1_ready, %arith_cmpi0.out0, %arith_cmpi0.out0_valid = hw.instance "arith_cmpi0" @arith_cmpi_in_ui64_ui64_out_ui1_slt(in0: %handshake_buffer8.out0: i64, in0_valid: %handshake_buffer8.out0_valid: i1, in1: %handshake_buffer6.out0: i64, in1_valid: %handshake_buffer6.out0_valid: i1, out0_ready: %handshake_buffer10.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer10.in0_ready, %handshake_buffer10.out0, %handshake_buffer10.out0_valid = hw.instance "handshake_buffer10" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %arith_cmpi0.out0: i1, in0_valid: %arith_cmpi0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork3.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_fork3.in0_ready, %handshake_fork3.out0, %handshake_fork3.out0_valid, %handshake_fork3.out1, %handshake_fork3.out1_valid, %handshake_fork3.out2, %handshake_fork3.out2_valid, %handshake_fork3.out3, %handshake_fork3.out3_valid = hw.instance "handshake_fork3" @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1(in0: %handshake_buffer10.out0: i1, in0_valid: %handshake_buffer10.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer14.in0_ready: i1, out1_ready: %handshake_buffer13.in0_ready: i1, out2_ready: %handshake_buffer12.in0_ready: i1, out3_ready: %handshake_buffer11.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1, out1: i1, out1_valid: i1, out2: i1, out2_valid: i1, out3: i1, out3_valid: i1)
    %handshake_buffer11.in0_ready, %handshake_buffer11.out0, %handshake_buffer11.out0_valid = hw.instance "handshake_buffer11" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork3.out3: i1, in0_valid: %handshake_fork3.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br0.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer12.in0_ready, %handshake_buffer12.out0, %handshake_buffer12.out0_valid = hw.instance "handshake_buffer12" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork3.out2: i1, in0_valid: %handshake_fork3.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br1.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer13.in0_ready, %handshake_buffer13.out0, %handshake_buffer13.out0_valid = hw.instance "handshake_buffer13" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork3.out1: i1, in0_valid: %handshake_fork3.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br2.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer14.in0_ready, %handshake_buffer14.out0, %handshake_buffer14.out0_valid = hw.instance "handshake_buffer14" @handshake_buffer_in_ui1_out_ui1_2slots_fifo(in0: %handshake_fork3.out0: i1, in0_valid: %handshake_fork3.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_index_cast1.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_cond_br0.cond_ready, %handshake_cond_br0.data_ready, %handshake_cond_br0.outTrue, %handshake_cond_br0.outTrue_valid, %handshake_cond_br0.outFalse, %handshake_cond_br0.outFalse_valid = hw.instance "handshake_cond_br0" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer11.out0: i1, cond_valid: %handshake_buffer11.out0_valid: i1, data: %handshake_buffer7.out0: i64, data_valid: %handshake_buffer7.out0_valid: i1, outTrue_ready: %handshake_buffer16.in0_ready: i1, outFalse_ready: %handshake_buffer15.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer15.in0_ready, %handshake_buffer15.out0, %handshake_buffer15.out0_valid = hw.instance "handshake_buffer15" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br0.outFalse: i64, in0_valid: %handshake_cond_br0.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork4.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer16.in0_ready, %handshake_buffer16.out0, %handshake_buffer16.out0_valid = hw.instance "handshake_buffer16" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br0.outTrue: i64, in0_valid: %handshake_cond_br0.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork4.in0_ready, %handshake_fork4.out0, %handshake_fork4.out0_valid, %handshake_fork4.out1, %handshake_fork4.out1_valid = hw.instance "handshake_fork4" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer15.out0: i64, in0_valid: %handshake_buffer15.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer18.in0_ready: i1, out1_ready: %handshake_buffer17.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer17.in0_ready, %handshake_buffer17.out0, %handshake_buffer17.out0_valid = hw.instance "handshake_buffer17" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork4.out1: i64, in0_valid: %handshake_fork4.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br3.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer18.in0_ready, %handshake_buffer18.out0, %handshake_buffer18.out0_valid = hw.instance "handshake_buffer18" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork4.out0: i64, in0_valid: %handshake_fork4.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_cond_br1.cond_ready, %handshake_cond_br1.data_ready, %handshake_cond_br1.outTrue, %handshake_cond_br1.outTrue_valid, %handshake_cond_br1.outFalse, %handshake_cond_br1.outFalse_valid = hw.instance "handshake_cond_br1" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer12.out0: i1, cond_valid: %handshake_buffer12.out0_valid: i1, data: %handshake_buffer5.out0: i64, data_valid: %handshake_buffer5.out0_valid: i1, outTrue_ready: %handshake_buffer20.in0_ready: i1, outFalse_ready: %handshake_buffer19.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer19.in0_ready, %handshake_buffer19.out0, %handshake_buffer19.out0_valid = hw.instance "handshake_buffer19" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br1.outFalse: i64, in0_valid: %handshake_cond_br1.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork5.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer20.in0_ready, %handshake_buffer20.out0, %handshake_buffer20.out0_valid = hw.instance "handshake_buffer20" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br1.outTrue: i64, in0_valid: %handshake_cond_br1.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork5.in0_ready, %handshake_fork5.out0, %handshake_fork5.out0_valid, %handshake_fork5.out1, %handshake_fork5.out1_valid = hw.instance "handshake_fork5" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer19.out0: i64, in0_valid: %handshake_buffer19.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer22.in0_ready: i1, out1_ready: %handshake_buffer21.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer21.in0_ready, %handshake_buffer21.out0, %handshake_buffer21.out0_valid = hw.instance "handshake_buffer21" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork5.out1: i64, in0_valid: %handshake_fork5.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br4.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer22.in0_ready, %handshake_buffer22.out0, %handshake_buffer22.out0_valid = hw.instance "handshake_buffer22" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork5.out0: i64, in0_valid: %handshake_fork5.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_cond_br2.cond_ready, %handshake_cond_br2.data_ready, %handshake_cond_br2.outTrue, %handshake_cond_br2.outTrue_valid, %handshake_cond_br2.outFalse, %handshake_cond_br2.outFalse_valid = hw.instance "handshake_cond_br2" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer13.out0: i1, cond_valid: %handshake_buffer13.out0_valid: i1, data: %handshake_buffer9.out0: i64, data_valid: %handshake_buffer9.out0_valid: i1, outTrue_ready: %handshake_sink0.in0_ready: i1, outFalse_ready: %handshake_buffer23.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer23.in0_ready, %handshake_buffer23.out0, %handshake_buffer23.out0_valid = hw.instance "handshake_buffer23" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br2.outFalse: i64, in0_valid: %handshake_cond_br2.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br5.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink0.in0_ready = hw.instance "handshake_sink0" @handshake_sink_in_ui64(in0: %handshake_cond_br2.outTrue: i64, in0_valid: %handshake_cond_br2.outTrue_valid: i1) -> (in0_ready: i1)
    %arith_addi0.in0_ready, %arith_addi0.in1_ready, %arith_addi0.out0, %arith_addi0.out0_valid = hw.instance "arith_addi0" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer16.out0: i64, in0_valid: %handshake_buffer16.out0_valid: i1, in1: %handshake_buffer20.out0: i64, in1_valid: %handshake_buffer20.out0_valid: i1, out0_ready: %handshake_buffer24.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer24.in0_ready, %handshake_buffer24.out0, %handshake_buffer24.out0_valid = hw.instance "handshake_buffer24" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi0.out0: i64, in0_valid: %arith_addi0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_cmpi1.in0_ready, %arith_cmpi1.in1_ready, %arith_cmpi1.out0, %arith_cmpi1.out0_valid = hw.instance "arith_cmpi1" @arith_cmpi_in_ui64_ui64_out_ui1_sgt(in0: %handshake_buffer18.out0: i64, in0_valid: %handshake_buffer18.out0_valid: i1, in1: %handshake_buffer22.out0: i64, in1_valid: %handshake_buffer22.out0_valid: i1, out0_ready: %handshake_buffer25.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer25.in0_ready, %handshake_buffer25.out0, %handshake_buffer25.out0_valid = hw.instance "handshake_buffer25" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %arith_cmpi1.out0: i1, in0_valid: %arith_cmpi1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork6.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_fork6.in0_ready, %handshake_fork6.out0, %handshake_fork6.out0_valid, %handshake_fork6.out1, %handshake_fork6.out1_valid, %handshake_fork6.out2, %handshake_fork6.out2_valid, %handshake_fork6.out3, %handshake_fork6.out3_valid = hw.instance "handshake_fork6" @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1(in0: %handshake_buffer25.out0: i1, in0_valid: %handshake_buffer25.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer29.in0_ready: i1, out1_ready: %handshake_buffer28.in0_ready: i1, out2_ready: %handshake_buffer27.in0_ready: i1, out3_ready: %handshake_buffer26.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1, out1: i1, out1_valid: i1, out2: i1, out2_valid: i1, out3: i1, out3_valid: i1)
    %handshake_buffer26.in0_ready, %handshake_buffer26.out0, %handshake_buffer26.out0_valid = hw.instance "handshake_buffer26" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork6.out3: i1, in0_valid: %handshake_fork6.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br3.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer27.in0_ready, %handshake_buffer27.out0, %handshake_buffer27.out0_valid = hw.instance "handshake_buffer27" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork6.out2: i1, in0_valid: %handshake_fork6.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br4.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer28.in0_ready, %handshake_buffer28.out0, %handshake_buffer28.out0_valid = hw.instance "handshake_buffer28" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork6.out1: i1, in0_valid: %handshake_fork6.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br5.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer29.in0_ready, %handshake_buffer29.out0, %handshake_buffer29.out0_valid = hw.instance "handshake_buffer29" @handshake_buffer_in_ui1_out_ui1_2slots_fifo(in0: %handshake_fork6.out0: i1, in0_valid: %handshake_fork6.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_index_cast0.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_cond_br3.cond_ready, %handshake_cond_br3.data_ready, %handshake_cond_br3.outTrue, %handshake_cond_br3.outTrue_valid, %handshake_cond_br3.outFalse, %handshake_cond_br3.outFalse_valid = hw.instance "handshake_cond_br3" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer26.out0: i1, cond_valid: %handshake_buffer26.out0_valid: i1, data: %handshake_buffer17.out0: i64, data_valid: %handshake_buffer17.out0_valid: i1, outTrue_ready: %handshake_buffer30.in0_ready: i1, outFalse_ready: %handshake_sink1.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer30.in0_ready, %handshake_buffer30.out0, %handshake_buffer30.out0_valid = hw.instance "handshake_buffer30" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br3.outTrue: i64, in0_valid: %handshake_cond_br3.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink1.in0_ready = hw.instance "handshake_sink1" @handshake_sink_in_ui64(in0: %handshake_cond_br3.outFalse: i64, in0_valid: %handshake_cond_br3.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br4.cond_ready, %handshake_cond_br4.data_ready, %handshake_cond_br4.outTrue, %handshake_cond_br4.outTrue_valid, %handshake_cond_br4.outFalse, %handshake_cond_br4.outFalse_valid = hw.instance "handshake_cond_br4" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer27.out0: i1, cond_valid: %handshake_buffer27.out0_valid: i1, data: %handshake_buffer21.out0: i64, data_valid: %handshake_buffer21.out0_valid: i1, outTrue_ready: %handshake_buffer31.in0_ready: i1, outFalse_ready: %handshake_sink2.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer31.in0_ready, %handshake_buffer31.out0, %handshake_buffer31.out0_valid = hw.instance "handshake_buffer31" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br4.outTrue: i64, in0_valid: %handshake_cond_br4.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink2.in0_ready = hw.instance "handshake_sink2" @handshake_sink_in_ui64(in0: %handshake_cond_br4.outFalse: i64, in0_valid: %handshake_cond_br4.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br5.cond_ready, %handshake_cond_br5.data_ready, %handshake_cond_br5.outTrue, %handshake_cond_br5.outTrue_valid, %handshake_cond_br5.outFalse, %handshake_cond_br5.outFalse_valid = hw.instance "handshake_cond_br5" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer28.out0: i1, cond_valid: %handshake_buffer28.out0_valid: i1, data: %handshake_buffer23.out0: i64, data_valid: %handshake_buffer23.out0_valid: i1, outTrue_ready: %handshake_sink3.in0_ready: i1, outFalse_ready: %handshake_buffer32.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer32.in0_ready, %handshake_buffer32.out0, %handshake_buffer32.out0_valid = hw.instance "handshake_buffer32" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br5.outFalse: i64, in0_valid: %handshake_cond_br5.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink3.in0_ready = hw.instance "handshake_sink3" @handshake_sink_in_ui64(in0: %handshake_cond_br5.outTrue: i64, in0_valid: %handshake_cond_br5.outTrue_valid: i1) -> (in0_ready: i1)
    %arith_subi0.in0_ready, %arith_subi0.in1_ready, %arith_subi0.out0, %arith_subi0.out0_valid = hw.instance "arith_subi0" @arith_subi_in_ui64_ui64_out_ui64(in0: %handshake_buffer30.out0: i64, in0_valid: %handshake_buffer30.out0_valid: i1, in1: %handshake_buffer31.out0: i64, in1_valid: %handshake_buffer31.out0_valid: i1, out0_ready: %handshake_buffer33.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer33.in0_ready, %handshake_buffer33.out0, %handshake_buffer33.out0_valid = hw.instance "handshake_buffer33" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_subi0.out0: i64, in0_valid: %arith_subi0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux0.select_ready, %handshake_mux0.in0_ready, %handshake_mux0.in1_ready, %handshake_mux0.out0, %handshake_mux0.out0_valid = hw.instance "handshake_mux0" @handshake_mux_in_ui64_ui64_ui64_out_ui64(select: %handshake_buffer35.out0: i64, select_valid: %handshake_buffer35.out0_valid: i1, in0: %handshake_buffer32.out0: i64, in0_valid: %handshake_buffer32.out0_valid: i1, in1: %handshake_buffer33.out0: i64, in1_valid: %handshake_buffer33.out0_valid: i1, out0_ready: %handshake_buffer34.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer34.in0_ready, %handshake_buffer34.out0, %handshake_buffer34.out0_valid = hw.instance "handshake_buffer34" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux0.out0: i64, in0_valid: %handshake_mux0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_index_cast0.in0_ready, %arith_index_cast0.out0, %arith_index_cast0.out0_valid = hw.instance "arith_index_cast0" @arith_index_cast_in_ui1_out_ui64(in0: %handshake_buffer29.out0: i1, in0_valid: %handshake_buffer29.out0_valid: i1, out0_ready: %handshake_buffer35.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer35.in0_ready, %handshake_buffer35.out0, %handshake_buffer35.out0_valid = hw.instance "handshake_buffer35" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_index_cast0.out0: i64, in0_valid: %arith_index_cast0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux0.select_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux1.select_ready, %handshake_mux1.in0_ready, %handshake_mux1.in1_ready, %handshake_mux1.out0, %handshake_mux1.out0_valid = hw.instance "handshake_mux1" @handshake_mux_in_ui64_ui64_ui64_out_ui64(select: %handshake_buffer37.out0: i64, select_valid: %handshake_buffer37.out0_valid: i1, in0: %handshake_buffer34.out0: i64, in0_valid: %handshake_buffer34.out0_valid: i1, in1: %handshake_buffer24.out0: i64, in1_valid: %handshake_buffer24.out0_valid: i1, out0_ready: %handshake_buffer36.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer36.in0_ready, %handshake_buffer36.out0, %handshake_buffer36.out0_valid = hw.instance "handshake_buffer36" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux1.out0: i64, in0_valid: %handshake_mux1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %out0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_index_cast1.in0_ready, %arith_index_cast1.out0, %arith_index_cast1.out0_valid = hw.instance "arith_index_cast1" @arith_index_cast_in_ui1_out_ui64(in0: %handshake_buffer14.out0: i1, in0_valid: %handshake_buffer14.out0_valid: i1, out0_ready: %handshake_buffer37.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer37.in0_ready, %handshake_buffer37.out0, %handshake_buffer37.out0_valid = hw.instance "handshake_buffer37" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_index_cast1.out0: i64, in0_valid: %arith_index_cast1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux1.select_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    hw.output %handshake_buffer2.in0_ready, %handshake_buffer1.in0_ready, %handshake_buffer0.in0_ready, %handshake_buffer36.out0, %handshake_buffer36.out0_valid, %handshake_buffer4.out0, %handshake_buffer4.out0_valid : i1, i1, i1, i64, i1, i0, i1
  }
}
