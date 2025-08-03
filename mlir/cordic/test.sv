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
  hw.module @handshake_fork_1ins_72outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, in %out13_ready : i1, in %out14_ready : i1, in %out15_ready : i1, in %out16_ready : i1, in %out17_ready : i1, in %out18_ready : i1, in %out19_ready : i1, in %out20_ready : i1, in %out21_ready : i1, in %out22_ready : i1, in %out23_ready : i1, in %out24_ready : i1, in %out25_ready : i1, in %out26_ready : i1, in %out27_ready : i1, in %out28_ready : i1, in %out29_ready : i1, in %out30_ready : i1, in %out31_ready : i1, in %out32_ready : i1, in %out33_ready : i1, in %out34_ready : i1, in %out35_ready : i1, in %out36_ready : i1, in %out37_ready : i1, in %out38_ready : i1, in %out39_ready : i1, in %out40_ready : i1, in %out41_ready : i1, in %out42_ready : i1, in %out43_ready : i1, in %out44_ready : i1, in %out45_ready : i1, in %out46_ready : i1, in %out47_ready : i1, in %out48_ready : i1, in %out49_ready : i1, in %out50_ready : i1, in %out51_ready : i1, in %out52_ready : i1, in %out53_ready : i1, in %out54_ready : i1, in %out55_ready : i1, in %out56_ready : i1, in %out57_ready : i1, in %out58_ready : i1, in %out59_ready : i1, in %out60_ready : i1, in %out61_ready : i1, in %out62_ready : i1, in %out63_ready : i1, in %out64_ready : i1, in %out65_ready : i1, in %out66_ready : i1, in %out67_ready : i1, in %out68_ready : i1, in %out69_ready : i1, in %out70_ready : i1, in %out71_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1, out out10 : i0, out out10_valid : i1, out out11 : i0, out out11_valid : i1, out out12 : i0, out out12_valid : i1, out out13 : i0, out out13_valid : i1, out out14 : i0, out out14_valid : i1, out out15 : i0, out out15_valid : i1, out out16 : i0, out out16_valid : i1, out out17 : i0, out out17_valid : i1, out out18 : i0, out out18_valid : i1, out out19 : i0, out out19_valid : i1, out out20 : i0, out out20_valid : i1, out out21 : i0, out out21_valid : i1, out out22 : i0, out out22_valid : i1, out out23 : i0, out out23_valid : i1, out out24 : i0, out out24_valid : i1, out out25 : i0, out out25_valid : i1, out out26 : i0, out out26_valid : i1, out out27 : i0, out out27_valid : i1, out out28 : i0, out out28_valid : i1, out out29 : i0, out out29_valid : i1, out out30 : i0, out out30_valid : i1, out out31 : i0, out out31_valid : i1, out out32 : i0, out out32_valid : i1, out out33 : i0, out out33_valid : i1, out out34 : i0, out out34_valid : i1, out out35 : i0, out out35_valid : i1, out out36 : i0, out out36_valid : i1, out out37 : i0, out out37_valid : i1, out out38 : i0, out out38_valid : i1, out out39 : i0, out out39_valid : i1, out out40 : i0, out out40_valid : i1, out out41 : i0, out out41_valid : i1, out out42 : i0, out out42_valid : i1, out out43 : i0, out out43_valid : i1, out out44 : i0, out out44_valid : i1, out out45 : i0, out out45_valid : i1, out out46 : i0, out out46_valid : i1, out out47 : i0, out out47_valid : i1, out out48 : i0, out out48_valid : i1, out out49 : i0, out out49_valid : i1, out out50 : i0, out out50_valid : i1, out out51 : i0, out out51_valid : i1, out out52 : i0, out out52_valid : i1, out out53 : i0, out out53_valid : i1, out out54 : i0, out out54_valid : i1, out out55 : i0, out out55_valid : i1, out out56 : i0, out out56_valid : i1, out out57 : i0, out out57_valid : i1, out out58 : i0, out out58_valid : i1, out out59 : i0, out out59_valid : i1, out out60 : i0, out out60_valid : i1, out out61 : i0, out out61_valid : i1, out out62 : i0, out out62_valid : i1, out out63 : i0, out out63_valid : i1, out out64 : i0, out out64_valid : i1, out out65 : i0, out out65_valid : i1, out out66 : i0, out out66_valid : i1, out out67 : i0, out out67_valid : i1, out out68 : i0, out out68_valid : i1, out out69 : i0, out out69_valid : i1, out out70 : i0, out out70_valid : i1, out out71 : i0, out out71_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %432, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %432, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %432, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %432, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %432, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %432, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %432, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %432, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %432, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %432, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %432, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %432, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %432, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.xor %432, %true : i1
    %79 = comb.and %83, %78 : i1
    %emitted_13 = seq.compreg sym @emitted_13 %79, %clock reset %reset, %false : i1  
    %80 = comb.xor %emitted_13, %true : i1
    %81 = comb.and %80, %in0_valid : i1
    %82 = comb.and %out13_ready, %81 : i1
    %83 = comb.or %82, %emitted_13 {sv.namehint = "done13"} : i1
    %84 = comb.xor %432, %true : i1
    %85 = comb.and %89, %84 : i1
    %emitted_14 = seq.compreg sym @emitted_14 %85, %clock reset %reset, %false : i1  
    %86 = comb.xor %emitted_14, %true : i1
    %87 = comb.and %86, %in0_valid : i1
    %88 = comb.and %out14_ready, %87 : i1
    %89 = comb.or %88, %emitted_14 {sv.namehint = "done14"} : i1
    %90 = comb.xor %432, %true : i1
    %91 = comb.and %95, %90 : i1
    %emitted_15 = seq.compreg sym @emitted_15 %91, %clock reset %reset, %false : i1  
    %92 = comb.xor %emitted_15, %true : i1
    %93 = comb.and %92, %in0_valid : i1
    %94 = comb.and %out15_ready, %93 : i1
    %95 = comb.or %94, %emitted_15 {sv.namehint = "done15"} : i1
    %96 = comb.xor %432, %true : i1
    %97 = comb.and %101, %96 : i1
    %emitted_16 = seq.compreg sym @emitted_16 %97, %clock reset %reset, %false : i1  
    %98 = comb.xor %emitted_16, %true : i1
    %99 = comb.and %98, %in0_valid : i1
    %100 = comb.and %out16_ready, %99 : i1
    %101 = comb.or %100, %emitted_16 {sv.namehint = "done16"} : i1
    %102 = comb.xor %432, %true : i1
    %103 = comb.and %107, %102 : i1
    %emitted_17 = seq.compreg sym @emitted_17 %103, %clock reset %reset, %false : i1  
    %104 = comb.xor %emitted_17, %true : i1
    %105 = comb.and %104, %in0_valid : i1
    %106 = comb.and %out17_ready, %105 : i1
    %107 = comb.or %106, %emitted_17 {sv.namehint = "done17"} : i1
    %108 = comb.xor %432, %true : i1
    %109 = comb.and %113, %108 : i1
    %emitted_18 = seq.compreg sym @emitted_18 %109, %clock reset %reset, %false : i1  
    %110 = comb.xor %emitted_18, %true : i1
    %111 = comb.and %110, %in0_valid : i1
    %112 = comb.and %out18_ready, %111 : i1
    %113 = comb.or %112, %emitted_18 {sv.namehint = "done18"} : i1
    %114 = comb.xor %432, %true : i1
    %115 = comb.and %119, %114 : i1
    %emitted_19 = seq.compreg sym @emitted_19 %115, %clock reset %reset, %false : i1  
    %116 = comb.xor %emitted_19, %true : i1
    %117 = comb.and %116, %in0_valid : i1
    %118 = comb.and %out19_ready, %117 : i1
    %119 = comb.or %118, %emitted_19 {sv.namehint = "done19"} : i1
    %120 = comb.xor %432, %true : i1
    %121 = comb.and %125, %120 : i1
    %emitted_20 = seq.compreg sym @emitted_20 %121, %clock reset %reset, %false : i1  
    %122 = comb.xor %emitted_20, %true : i1
    %123 = comb.and %122, %in0_valid : i1
    %124 = comb.and %out20_ready, %123 : i1
    %125 = comb.or %124, %emitted_20 {sv.namehint = "done20"} : i1
    %126 = comb.xor %432, %true : i1
    %127 = comb.and %131, %126 : i1
    %emitted_21 = seq.compreg sym @emitted_21 %127, %clock reset %reset, %false : i1  
    %128 = comb.xor %emitted_21, %true : i1
    %129 = comb.and %128, %in0_valid : i1
    %130 = comb.and %out21_ready, %129 : i1
    %131 = comb.or %130, %emitted_21 {sv.namehint = "done21"} : i1
    %132 = comb.xor %432, %true : i1
    %133 = comb.and %137, %132 : i1
    %emitted_22 = seq.compreg sym @emitted_22 %133, %clock reset %reset, %false : i1  
    %134 = comb.xor %emitted_22, %true : i1
    %135 = comb.and %134, %in0_valid : i1
    %136 = comb.and %out22_ready, %135 : i1
    %137 = comb.or %136, %emitted_22 {sv.namehint = "done22"} : i1
    %138 = comb.xor %432, %true : i1
    %139 = comb.and %143, %138 : i1
    %emitted_23 = seq.compreg sym @emitted_23 %139, %clock reset %reset, %false : i1  
    %140 = comb.xor %emitted_23, %true : i1
    %141 = comb.and %140, %in0_valid : i1
    %142 = comb.and %out23_ready, %141 : i1
    %143 = comb.or %142, %emitted_23 {sv.namehint = "done23"} : i1
    %144 = comb.xor %432, %true : i1
    %145 = comb.and %149, %144 : i1
    %emitted_24 = seq.compreg sym @emitted_24 %145, %clock reset %reset, %false : i1  
    %146 = comb.xor %emitted_24, %true : i1
    %147 = comb.and %146, %in0_valid : i1
    %148 = comb.and %out24_ready, %147 : i1
    %149 = comb.or %148, %emitted_24 {sv.namehint = "done24"} : i1
    %150 = comb.xor %432, %true : i1
    %151 = comb.and %155, %150 : i1
    %emitted_25 = seq.compreg sym @emitted_25 %151, %clock reset %reset, %false : i1  
    %152 = comb.xor %emitted_25, %true : i1
    %153 = comb.and %152, %in0_valid : i1
    %154 = comb.and %out25_ready, %153 : i1
    %155 = comb.or %154, %emitted_25 {sv.namehint = "done25"} : i1
    %156 = comb.xor %432, %true : i1
    %157 = comb.and %161, %156 : i1
    %emitted_26 = seq.compreg sym @emitted_26 %157, %clock reset %reset, %false : i1  
    %158 = comb.xor %emitted_26, %true : i1
    %159 = comb.and %158, %in0_valid : i1
    %160 = comb.and %out26_ready, %159 : i1
    %161 = comb.or %160, %emitted_26 {sv.namehint = "done26"} : i1
    %162 = comb.xor %432, %true : i1
    %163 = comb.and %167, %162 : i1
    %emitted_27 = seq.compreg sym @emitted_27 %163, %clock reset %reset, %false : i1  
    %164 = comb.xor %emitted_27, %true : i1
    %165 = comb.and %164, %in0_valid : i1
    %166 = comb.and %out27_ready, %165 : i1
    %167 = comb.or %166, %emitted_27 {sv.namehint = "done27"} : i1
    %168 = comb.xor %432, %true : i1
    %169 = comb.and %173, %168 : i1
    %emitted_28 = seq.compreg sym @emitted_28 %169, %clock reset %reset, %false : i1  
    %170 = comb.xor %emitted_28, %true : i1
    %171 = comb.and %170, %in0_valid : i1
    %172 = comb.and %out28_ready, %171 : i1
    %173 = comb.or %172, %emitted_28 {sv.namehint = "done28"} : i1
    %174 = comb.xor %432, %true : i1
    %175 = comb.and %179, %174 : i1
    %emitted_29 = seq.compreg sym @emitted_29 %175, %clock reset %reset, %false : i1  
    %176 = comb.xor %emitted_29, %true : i1
    %177 = comb.and %176, %in0_valid : i1
    %178 = comb.and %out29_ready, %177 : i1
    %179 = comb.or %178, %emitted_29 {sv.namehint = "done29"} : i1
    %180 = comb.xor %432, %true : i1
    %181 = comb.and %185, %180 : i1
    %emitted_30 = seq.compreg sym @emitted_30 %181, %clock reset %reset, %false : i1  
    %182 = comb.xor %emitted_30, %true : i1
    %183 = comb.and %182, %in0_valid : i1
    %184 = comb.and %out30_ready, %183 : i1
    %185 = comb.or %184, %emitted_30 {sv.namehint = "done30"} : i1
    %186 = comb.xor %432, %true : i1
    %187 = comb.and %191, %186 : i1
    %emitted_31 = seq.compreg sym @emitted_31 %187, %clock reset %reset, %false : i1  
    %188 = comb.xor %emitted_31, %true : i1
    %189 = comb.and %188, %in0_valid : i1
    %190 = comb.and %out31_ready, %189 : i1
    %191 = comb.or %190, %emitted_31 {sv.namehint = "done31"} : i1
    %192 = comb.xor %432, %true : i1
    %193 = comb.and %197, %192 : i1
    %emitted_32 = seq.compreg sym @emitted_32 %193, %clock reset %reset, %false : i1  
    %194 = comb.xor %emitted_32, %true : i1
    %195 = comb.and %194, %in0_valid : i1
    %196 = comb.and %out32_ready, %195 : i1
    %197 = comb.or %196, %emitted_32 {sv.namehint = "done32"} : i1
    %198 = comb.xor %432, %true : i1
    %199 = comb.and %203, %198 : i1
    %emitted_33 = seq.compreg sym @emitted_33 %199, %clock reset %reset, %false : i1  
    %200 = comb.xor %emitted_33, %true : i1
    %201 = comb.and %200, %in0_valid : i1
    %202 = comb.and %out33_ready, %201 : i1
    %203 = comb.or %202, %emitted_33 {sv.namehint = "done33"} : i1
    %204 = comb.xor %432, %true : i1
    %205 = comb.and %209, %204 : i1
    %emitted_34 = seq.compreg sym @emitted_34 %205, %clock reset %reset, %false : i1  
    %206 = comb.xor %emitted_34, %true : i1
    %207 = comb.and %206, %in0_valid : i1
    %208 = comb.and %out34_ready, %207 : i1
    %209 = comb.or %208, %emitted_34 {sv.namehint = "done34"} : i1
    %210 = comb.xor %432, %true : i1
    %211 = comb.and %215, %210 : i1
    %emitted_35 = seq.compreg sym @emitted_35 %211, %clock reset %reset, %false : i1  
    %212 = comb.xor %emitted_35, %true : i1
    %213 = comb.and %212, %in0_valid : i1
    %214 = comb.and %out35_ready, %213 : i1
    %215 = comb.or %214, %emitted_35 {sv.namehint = "done35"} : i1
    %216 = comb.xor %432, %true : i1
    %217 = comb.and %221, %216 : i1
    %emitted_36 = seq.compreg sym @emitted_36 %217, %clock reset %reset, %false : i1  
    %218 = comb.xor %emitted_36, %true : i1
    %219 = comb.and %218, %in0_valid : i1
    %220 = comb.and %out36_ready, %219 : i1
    %221 = comb.or %220, %emitted_36 {sv.namehint = "done36"} : i1
    %222 = comb.xor %432, %true : i1
    %223 = comb.and %227, %222 : i1
    %emitted_37 = seq.compreg sym @emitted_37 %223, %clock reset %reset, %false : i1  
    %224 = comb.xor %emitted_37, %true : i1
    %225 = comb.and %224, %in0_valid : i1
    %226 = comb.and %out37_ready, %225 : i1
    %227 = comb.or %226, %emitted_37 {sv.namehint = "done37"} : i1
    %228 = comb.xor %432, %true : i1
    %229 = comb.and %233, %228 : i1
    %emitted_38 = seq.compreg sym @emitted_38 %229, %clock reset %reset, %false : i1  
    %230 = comb.xor %emitted_38, %true : i1
    %231 = comb.and %230, %in0_valid : i1
    %232 = comb.and %out38_ready, %231 : i1
    %233 = comb.or %232, %emitted_38 {sv.namehint = "done38"} : i1
    %234 = comb.xor %432, %true : i1
    %235 = comb.and %239, %234 : i1
    %emitted_39 = seq.compreg sym @emitted_39 %235, %clock reset %reset, %false : i1  
    %236 = comb.xor %emitted_39, %true : i1
    %237 = comb.and %236, %in0_valid : i1
    %238 = comb.and %out39_ready, %237 : i1
    %239 = comb.or %238, %emitted_39 {sv.namehint = "done39"} : i1
    %240 = comb.xor %432, %true : i1
    %241 = comb.and %245, %240 : i1
    %emitted_40 = seq.compreg sym @emitted_40 %241, %clock reset %reset, %false : i1  
    %242 = comb.xor %emitted_40, %true : i1
    %243 = comb.and %242, %in0_valid : i1
    %244 = comb.and %out40_ready, %243 : i1
    %245 = comb.or %244, %emitted_40 {sv.namehint = "done40"} : i1
    %246 = comb.xor %432, %true : i1
    %247 = comb.and %251, %246 : i1
    %emitted_41 = seq.compreg sym @emitted_41 %247, %clock reset %reset, %false : i1  
    %248 = comb.xor %emitted_41, %true : i1
    %249 = comb.and %248, %in0_valid : i1
    %250 = comb.and %out41_ready, %249 : i1
    %251 = comb.or %250, %emitted_41 {sv.namehint = "done41"} : i1
    %252 = comb.xor %432, %true : i1
    %253 = comb.and %257, %252 : i1
    %emitted_42 = seq.compreg sym @emitted_42 %253, %clock reset %reset, %false : i1  
    %254 = comb.xor %emitted_42, %true : i1
    %255 = comb.and %254, %in0_valid : i1
    %256 = comb.and %out42_ready, %255 : i1
    %257 = comb.or %256, %emitted_42 {sv.namehint = "done42"} : i1
    %258 = comb.xor %432, %true : i1
    %259 = comb.and %263, %258 : i1
    %emitted_43 = seq.compreg sym @emitted_43 %259, %clock reset %reset, %false : i1  
    %260 = comb.xor %emitted_43, %true : i1
    %261 = comb.and %260, %in0_valid : i1
    %262 = comb.and %out43_ready, %261 : i1
    %263 = comb.or %262, %emitted_43 {sv.namehint = "done43"} : i1
    %264 = comb.xor %432, %true : i1
    %265 = comb.and %269, %264 : i1
    %emitted_44 = seq.compreg sym @emitted_44 %265, %clock reset %reset, %false : i1  
    %266 = comb.xor %emitted_44, %true : i1
    %267 = comb.and %266, %in0_valid : i1
    %268 = comb.and %out44_ready, %267 : i1
    %269 = comb.or %268, %emitted_44 {sv.namehint = "done44"} : i1
    %270 = comb.xor %432, %true : i1
    %271 = comb.and %275, %270 : i1
    %emitted_45 = seq.compreg sym @emitted_45 %271, %clock reset %reset, %false : i1  
    %272 = comb.xor %emitted_45, %true : i1
    %273 = comb.and %272, %in0_valid : i1
    %274 = comb.and %out45_ready, %273 : i1
    %275 = comb.or %274, %emitted_45 {sv.namehint = "done45"} : i1
    %276 = comb.xor %432, %true : i1
    %277 = comb.and %281, %276 : i1
    %emitted_46 = seq.compreg sym @emitted_46 %277, %clock reset %reset, %false : i1  
    %278 = comb.xor %emitted_46, %true : i1
    %279 = comb.and %278, %in0_valid : i1
    %280 = comb.and %out46_ready, %279 : i1
    %281 = comb.or %280, %emitted_46 {sv.namehint = "done46"} : i1
    %282 = comb.xor %432, %true : i1
    %283 = comb.and %287, %282 : i1
    %emitted_47 = seq.compreg sym @emitted_47 %283, %clock reset %reset, %false : i1  
    %284 = comb.xor %emitted_47, %true : i1
    %285 = comb.and %284, %in0_valid : i1
    %286 = comb.and %out47_ready, %285 : i1
    %287 = comb.or %286, %emitted_47 {sv.namehint = "done47"} : i1
    %288 = comb.xor %432, %true : i1
    %289 = comb.and %293, %288 : i1
    %emitted_48 = seq.compreg sym @emitted_48 %289, %clock reset %reset, %false : i1  
    %290 = comb.xor %emitted_48, %true : i1
    %291 = comb.and %290, %in0_valid : i1
    %292 = comb.and %out48_ready, %291 : i1
    %293 = comb.or %292, %emitted_48 {sv.namehint = "done48"} : i1
    %294 = comb.xor %432, %true : i1
    %295 = comb.and %299, %294 : i1
    %emitted_49 = seq.compreg sym @emitted_49 %295, %clock reset %reset, %false : i1  
    %296 = comb.xor %emitted_49, %true : i1
    %297 = comb.and %296, %in0_valid : i1
    %298 = comb.and %out49_ready, %297 : i1
    %299 = comb.or %298, %emitted_49 {sv.namehint = "done49"} : i1
    %300 = comb.xor %432, %true : i1
    %301 = comb.and %305, %300 : i1
    %emitted_50 = seq.compreg sym @emitted_50 %301, %clock reset %reset, %false : i1  
    %302 = comb.xor %emitted_50, %true : i1
    %303 = comb.and %302, %in0_valid : i1
    %304 = comb.and %out50_ready, %303 : i1
    %305 = comb.or %304, %emitted_50 {sv.namehint = "done50"} : i1
    %306 = comb.xor %432, %true : i1
    %307 = comb.and %311, %306 : i1
    %emitted_51 = seq.compreg sym @emitted_51 %307, %clock reset %reset, %false : i1  
    %308 = comb.xor %emitted_51, %true : i1
    %309 = comb.and %308, %in0_valid : i1
    %310 = comb.and %out51_ready, %309 : i1
    %311 = comb.or %310, %emitted_51 {sv.namehint = "done51"} : i1
    %312 = comb.xor %432, %true : i1
    %313 = comb.and %317, %312 : i1
    %emitted_52 = seq.compreg sym @emitted_52 %313, %clock reset %reset, %false : i1  
    %314 = comb.xor %emitted_52, %true : i1
    %315 = comb.and %314, %in0_valid : i1
    %316 = comb.and %out52_ready, %315 : i1
    %317 = comb.or %316, %emitted_52 {sv.namehint = "done52"} : i1
    %318 = comb.xor %432, %true : i1
    %319 = comb.and %323, %318 : i1
    %emitted_53 = seq.compreg sym @emitted_53 %319, %clock reset %reset, %false : i1  
    %320 = comb.xor %emitted_53, %true : i1
    %321 = comb.and %320, %in0_valid : i1
    %322 = comb.and %out53_ready, %321 : i1
    %323 = comb.or %322, %emitted_53 {sv.namehint = "done53"} : i1
    %324 = comb.xor %432, %true : i1
    %325 = comb.and %329, %324 : i1
    %emitted_54 = seq.compreg sym @emitted_54 %325, %clock reset %reset, %false : i1  
    %326 = comb.xor %emitted_54, %true : i1
    %327 = comb.and %326, %in0_valid : i1
    %328 = comb.and %out54_ready, %327 : i1
    %329 = comb.or %328, %emitted_54 {sv.namehint = "done54"} : i1
    %330 = comb.xor %432, %true : i1
    %331 = comb.and %335, %330 : i1
    %emitted_55 = seq.compreg sym @emitted_55 %331, %clock reset %reset, %false : i1  
    %332 = comb.xor %emitted_55, %true : i1
    %333 = comb.and %332, %in0_valid : i1
    %334 = comb.and %out55_ready, %333 : i1
    %335 = comb.or %334, %emitted_55 {sv.namehint = "done55"} : i1
    %336 = comb.xor %432, %true : i1
    %337 = comb.and %341, %336 : i1
    %emitted_56 = seq.compreg sym @emitted_56 %337, %clock reset %reset, %false : i1  
    %338 = comb.xor %emitted_56, %true : i1
    %339 = comb.and %338, %in0_valid : i1
    %340 = comb.and %out56_ready, %339 : i1
    %341 = comb.or %340, %emitted_56 {sv.namehint = "done56"} : i1
    %342 = comb.xor %432, %true : i1
    %343 = comb.and %347, %342 : i1
    %emitted_57 = seq.compreg sym @emitted_57 %343, %clock reset %reset, %false : i1  
    %344 = comb.xor %emitted_57, %true : i1
    %345 = comb.and %344, %in0_valid : i1
    %346 = comb.and %out57_ready, %345 : i1
    %347 = comb.or %346, %emitted_57 {sv.namehint = "done57"} : i1
    %348 = comb.xor %432, %true : i1
    %349 = comb.and %353, %348 : i1
    %emitted_58 = seq.compreg sym @emitted_58 %349, %clock reset %reset, %false : i1  
    %350 = comb.xor %emitted_58, %true : i1
    %351 = comb.and %350, %in0_valid : i1
    %352 = comb.and %out58_ready, %351 : i1
    %353 = comb.or %352, %emitted_58 {sv.namehint = "done58"} : i1
    %354 = comb.xor %432, %true : i1
    %355 = comb.and %359, %354 : i1
    %emitted_59 = seq.compreg sym @emitted_59 %355, %clock reset %reset, %false : i1  
    %356 = comb.xor %emitted_59, %true : i1
    %357 = comb.and %356, %in0_valid : i1
    %358 = comb.and %out59_ready, %357 : i1
    %359 = comb.or %358, %emitted_59 {sv.namehint = "done59"} : i1
    %360 = comb.xor %432, %true : i1
    %361 = comb.and %365, %360 : i1
    %emitted_60 = seq.compreg sym @emitted_60 %361, %clock reset %reset, %false : i1  
    %362 = comb.xor %emitted_60, %true : i1
    %363 = comb.and %362, %in0_valid : i1
    %364 = comb.and %out60_ready, %363 : i1
    %365 = comb.or %364, %emitted_60 {sv.namehint = "done60"} : i1
    %366 = comb.xor %432, %true : i1
    %367 = comb.and %371, %366 : i1
    %emitted_61 = seq.compreg sym @emitted_61 %367, %clock reset %reset, %false : i1  
    %368 = comb.xor %emitted_61, %true : i1
    %369 = comb.and %368, %in0_valid : i1
    %370 = comb.and %out61_ready, %369 : i1
    %371 = comb.or %370, %emitted_61 {sv.namehint = "done61"} : i1
    %372 = comb.xor %432, %true : i1
    %373 = comb.and %377, %372 : i1
    %emitted_62 = seq.compreg sym @emitted_62 %373, %clock reset %reset, %false : i1  
    %374 = comb.xor %emitted_62, %true : i1
    %375 = comb.and %374, %in0_valid : i1
    %376 = comb.and %out62_ready, %375 : i1
    %377 = comb.or %376, %emitted_62 {sv.namehint = "done62"} : i1
    %378 = comb.xor %432, %true : i1
    %379 = comb.and %383, %378 : i1
    %emitted_63 = seq.compreg sym @emitted_63 %379, %clock reset %reset, %false : i1  
    %380 = comb.xor %emitted_63, %true : i1
    %381 = comb.and %380, %in0_valid : i1
    %382 = comb.and %out63_ready, %381 : i1
    %383 = comb.or %382, %emitted_63 {sv.namehint = "done63"} : i1
    %384 = comb.xor %432, %true : i1
    %385 = comb.and %389, %384 : i1
    %emitted_64 = seq.compreg sym @emitted_64 %385, %clock reset %reset, %false : i1  
    %386 = comb.xor %emitted_64, %true : i1
    %387 = comb.and %386, %in0_valid : i1
    %388 = comb.and %out64_ready, %387 : i1
    %389 = comb.or %388, %emitted_64 {sv.namehint = "done64"} : i1
    %390 = comb.xor %432, %true : i1
    %391 = comb.and %395, %390 : i1
    %emitted_65 = seq.compreg sym @emitted_65 %391, %clock reset %reset, %false : i1  
    %392 = comb.xor %emitted_65, %true : i1
    %393 = comb.and %392, %in0_valid : i1
    %394 = comb.and %out65_ready, %393 : i1
    %395 = comb.or %394, %emitted_65 {sv.namehint = "done65"} : i1
    %396 = comb.xor %432, %true : i1
    %397 = comb.and %401, %396 : i1
    %emitted_66 = seq.compreg sym @emitted_66 %397, %clock reset %reset, %false : i1  
    %398 = comb.xor %emitted_66, %true : i1
    %399 = comb.and %398, %in0_valid : i1
    %400 = comb.and %out66_ready, %399 : i1
    %401 = comb.or %400, %emitted_66 {sv.namehint = "done66"} : i1
    %402 = comb.xor %432, %true : i1
    %403 = comb.and %407, %402 : i1
    %emitted_67 = seq.compreg sym @emitted_67 %403, %clock reset %reset, %false : i1  
    %404 = comb.xor %emitted_67, %true : i1
    %405 = comb.and %404, %in0_valid : i1
    %406 = comb.and %out67_ready, %405 : i1
    %407 = comb.or %406, %emitted_67 {sv.namehint = "done67"} : i1
    %408 = comb.xor %432, %true : i1
    %409 = comb.and %413, %408 : i1
    %emitted_68 = seq.compreg sym @emitted_68 %409, %clock reset %reset, %false : i1  
    %410 = comb.xor %emitted_68, %true : i1
    %411 = comb.and %410, %in0_valid : i1
    %412 = comb.and %out68_ready, %411 : i1
    %413 = comb.or %412, %emitted_68 {sv.namehint = "done68"} : i1
    %414 = comb.xor %432, %true : i1
    %415 = comb.and %419, %414 : i1
    %emitted_69 = seq.compreg sym @emitted_69 %415, %clock reset %reset, %false : i1  
    %416 = comb.xor %emitted_69, %true : i1
    %417 = comb.and %416, %in0_valid : i1
    %418 = comb.and %out69_ready, %417 : i1
    %419 = comb.or %418, %emitted_69 {sv.namehint = "done69"} : i1
    %420 = comb.xor %432, %true : i1
    %421 = comb.and %425, %420 : i1
    %emitted_70 = seq.compreg sym @emitted_70 %421, %clock reset %reset, %false : i1  
    %422 = comb.xor %emitted_70, %true : i1
    %423 = comb.and %422, %in0_valid : i1
    %424 = comb.and %out70_ready, %423 : i1
    %425 = comb.or %424, %emitted_70 {sv.namehint = "done70"} : i1
    %426 = comb.xor %432, %true : i1
    %427 = comb.and %431, %426 : i1
    %emitted_71 = seq.compreg sym @emitted_71 %427, %clock reset %reset, %false : i1  
    %428 = comb.xor %emitted_71, %true : i1
    %429 = comb.and %428, %in0_valid : i1
    %430 = comb.and %out71_ready, %429 : i1
    %431 = comb.or %430, %emitted_71 {sv.namehint = "done71"} : i1
    %432 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77, %83, %89, %95, %101, %107, %113, %119, %125, %131, %137, %143, %149, %155, %161, %167, %173, %179, %185, %191, %197, %203, %209, %215, %221, %227, %233, %239, %245, %251, %257, %263, %269, %275, %281, %287, %293, %299, %305, %311, %317, %323, %329, %335, %341, %347, %353, %359, %365, %371, %377, %383, %389, %395, %401, %407, %413, %419, %425, %431 {sv.namehint = "allDone"} : i1
    hw.output %432, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75, %in0, %81, %in0, %87, %in0, %93, %in0, %99, %in0, %105, %in0, %111, %in0, %117, %in0, %123, %in0, %129, %in0, %135, %in0, %141, %in0, %147, %in0, %153, %in0, %159, %in0, %165, %in0, %171, %in0, %177, %in0, %183, %in0, %189, %in0, %195, %in0, %201, %in0, %207, %in0, %213, %in0, %219, %in0, %225, %in0, %231, %in0, %237, %in0, %243, %in0, %249, %in0, %255, %in0, %261, %in0, %267, %in0, %273, %in0, %279, %in0, %285, %in0, %291, %in0, %297, %in0, %303, %in0, %309, %in0, %315, %in0, %321, %in0, %327, %in0, %333, %in0, %339, %in0, %345, %in0, %351, %in0, %357, %in0, %363, %in0, %369, %in0, %375, %in0, %381, %in0, %387, %in0, %393, %in0, %399, %in0, %405, %in0, %411, %in0, %417, %in0, %423, %in0, %429 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_memory_out_ui64_id0(in %stData0 : i64, in %stData0_valid : i1, in %stAddr0 : i64, in %stAddr0_valid : i1, in %stData1 : i64, in %stData1_valid : i1, in %stAddr1 : i64, in %stAddr1_valid : i1, in %stData2 : i64, in %stData2_valid : i1, in %stAddr2 : i64, in %stAddr2_valid : i1, in %stData3 : i64, in %stData3_valid : i1, in %stAddr3 : i64, in %stAddr3_valid : i1, in %stData4 : i64, in %stData4_valid : i1, in %stAddr4 : i64, in %stAddr4_valid : i1, in %stData5 : i64, in %stData5_valid : i1, in %stAddr5 : i64, in %stAddr5_valid : i1, in %stData6 : i64, in %stData6_valid : i1, in %stAddr6 : i64, in %stAddr6_valid : i1, in %stData7 : i64, in %stData7_valid : i1, in %stAddr7 : i64, in %stAddr7_valid : i1, in %stData8 : i64, in %stData8_valid : i1, in %stAddr8 : i64, in %stAddr8_valid : i1, in %stData9 : i64, in %stData9_valid : i1, in %stAddr9 : i64, in %stAddr9_valid : i1, in %stData10 : i64, in %stData10_valid : i1, in %stAddr10 : i64, in %stAddr10_valid : i1, in %stData11 : i64, in %stData11_valid : i1, in %stAddr11 : i64, in %stAddr11_valid : i1, in %stData12 : i64, in %stData12_valid : i1, in %stAddr12 : i64, in %stAddr12_valid : i1, in %stData13 : i64, in %stData13_valid : i1, in %stAddr13 : i64, in %stAddr13_valid : i1, in %stData14 : i64, in %stData14_valid : i1, in %stAddr14 : i64, in %stAddr14_valid : i1, in %stData15 : i64, in %stData15_valid : i1, in %stAddr15 : i64, in %stAddr15_valid : i1, in %ldAddr0 : i64, in %ldAddr0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %ldData0_ready : i1, in %stDone0_ready : i1, in %stDone1_ready : i1, in %stDone2_ready : i1, in %stDone3_ready : i1, in %stDone4_ready : i1, in %stDone5_ready : i1, in %stDone6_ready : i1, in %stDone7_ready : i1, in %stDone8_ready : i1, in %stDone9_ready : i1, in %stDone10_ready : i1, in %stDone11_ready : i1, in %stDone12_ready : i1, in %stDone13_ready : i1, in %stDone14_ready : i1, in %stDone15_ready : i1, in %ldDone0_ready : i1, out stData0_ready : i1, out stAddr0_ready : i1, out stData1_ready : i1, out stAddr1_ready : i1, out stData2_ready : i1, out stAddr2_ready : i1, out stData3_ready : i1, out stAddr3_ready : i1, out stData4_ready : i1, out stAddr4_ready : i1, out stData5_ready : i1, out stAddr5_ready : i1, out stData6_ready : i1, out stAddr6_ready : i1, out stData7_ready : i1, out stAddr7_ready : i1, out stData8_ready : i1, out stAddr8_ready : i1, out stData9_ready : i1, out stAddr9_ready : i1, out stData10_ready : i1, out stAddr10_ready : i1, out stData11_ready : i1, out stAddr11_ready : i1, out stData12_ready : i1, out stAddr12_ready : i1, out stData13_ready : i1, out stAddr13_ready : i1, out stData14_ready : i1, out stAddr14_ready : i1, out stData15_ready : i1, out stAddr15_ready : i1, out ldAddr0_ready : i1, out ldData0 : i64, out ldData0_valid : i1, out stDone0 : i0, out stDone0_valid : i1, out stDone1 : i0, out stDone1_valid : i1, out stDone2 : i0, out stDone2_valid : i1, out stDone3 : i0, out stDone3_valid : i1, out stDone4 : i0, out stDone4_valid : i1, out stDone5 : i0, out stDone5_valid : i1, out stDone6 : i0, out stDone6_valid : i1, out stDone7 : i0, out stDone7_valid : i1, out stDone8 : i0, out stDone8_valid : i1, out stDone9 : i0, out stDone9_valid : i1, out stDone10 : i0, out stDone10_valid : i1, out stDone11 : i0, out stDone11_valid : i1, out stDone12 : i0, out stDone12_valid : i1, out stDone13 : i0, out stDone13_valid : i1, out stDone14 : i0, out stDone14_valid : i1, out stDone15 : i0, out stDone15_valid : i1, out ldDone0 : i0, out ldDone0_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %c0_i0 = hw.constant 0 : i0
    %_handshake_memory_0 = seq.hlmem @_handshake_memory_0 %clock, %reset : <16xi64>
    %0 = comb.extract %ldAddr0 from 0 : (i64) -> i4
    %_handshake_memory_0_rdata = seq.read %_handshake_memory_0[%0] rden %ldAddr0_valid {latency = 0 : i64} : !seq.hlmem<16xi64>
    %1 = comb.xor %13, %true : i1
    %2 = comb.and %6, %1 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %2, %clock reset %reset, %false : i1  
    %3 = comb.xor %emitted_0, %true : i1
    %4 = comb.and %3, %ldAddr0_valid : i1
    %5 = comb.and %ldData0_ready, %4 : i1
    %6 = comb.or %5, %emitted_0 {sv.namehint = "done0"} : i1
    %7 = comb.xor %13, %true : i1
    %8 = comb.and %12, %7 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %8, %clock reset %reset, %false : i1  
    %9 = comb.xor %emitted_1, %true : i1
    %10 = comb.and %9, %ldAddr0_valid : i1
    %11 = comb.and %ldDone0_ready, %10 : i1
    %12 = comb.or %11, %emitted_1 {sv.namehint = "done1"} : i1
    %13 = comb.and %6, %12 {sv.namehint = "allDone"} : i1
    %writeValidBuffer = seq.compreg sym @writeValidBuffer %18, %clock reset %reset, %false : i1  
    %14 = comb.and %stDone0_ready, %writeValidBuffer {sv.namehint = "storeCompleted"} : i1
    %15 = comb.xor %writeValidBuffer, %true : i1
    %16 = comb.or %15, %14 {sv.namehint = "emptyOrComplete"} : i1
    %17 = comb.and %stAddr0_valid, %stData0_valid {sv.namehint = "writeValid"} : i1
    %18 = comb.mux %16, %17, %writeValidBuffer : i1
    %19 = comb.extract %stAddr0 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%19] %stData0 wren %17 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_0 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %24, %clock reset %reset, %false : i1  
    %20 = comb.and %stDone1_ready, %writeValidBuffer_0 {sv.namehint = "storeCompleted"} : i1
    %21 = comb.xor %writeValidBuffer_0, %true : i1
    %22 = comb.or %21, %20 {sv.namehint = "emptyOrComplete"} : i1
    %23 = comb.and %stAddr1_valid, %stData1_valid {sv.namehint = "writeValid"} : i1
    %24 = comb.mux %22, %23, %writeValidBuffer_0 : i1
    %25 = comb.extract %stAddr1 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%25] %stData1 wren %23 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_1 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %30, %clock reset %reset, %false : i1  
    %26 = comb.and %stDone2_ready, %writeValidBuffer_1 {sv.namehint = "storeCompleted"} : i1
    %27 = comb.xor %writeValidBuffer_1, %true : i1
    %28 = comb.or %27, %26 {sv.namehint = "emptyOrComplete"} : i1
    %29 = comb.and %stAddr2_valid, %stData2_valid {sv.namehint = "writeValid"} : i1
    %30 = comb.mux %28, %29, %writeValidBuffer_1 : i1
    %31 = comb.extract %stAddr2 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%31] %stData2 wren %29 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_2 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %36, %clock reset %reset, %false : i1  
    %32 = comb.and %stDone3_ready, %writeValidBuffer_2 {sv.namehint = "storeCompleted"} : i1
    %33 = comb.xor %writeValidBuffer_2, %true : i1
    %34 = comb.or %33, %32 {sv.namehint = "emptyOrComplete"} : i1
    %35 = comb.and %stAddr3_valid, %stData3_valid {sv.namehint = "writeValid"} : i1
    %36 = comb.mux %34, %35, %writeValidBuffer_2 : i1
    %37 = comb.extract %stAddr3 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%37] %stData3 wren %35 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_3 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %42, %clock reset %reset, %false : i1  
    %38 = comb.and %stDone4_ready, %writeValidBuffer_3 {sv.namehint = "storeCompleted"} : i1
    %39 = comb.xor %writeValidBuffer_3, %true : i1
    %40 = comb.or %39, %38 {sv.namehint = "emptyOrComplete"} : i1
    %41 = comb.and %stAddr4_valid, %stData4_valid {sv.namehint = "writeValid"} : i1
    %42 = comb.mux %40, %41, %writeValidBuffer_3 : i1
    %43 = comb.extract %stAddr4 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%43] %stData4 wren %41 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_4 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %48, %clock reset %reset, %false : i1  
    %44 = comb.and %stDone5_ready, %writeValidBuffer_4 {sv.namehint = "storeCompleted"} : i1
    %45 = comb.xor %writeValidBuffer_4, %true : i1
    %46 = comb.or %45, %44 {sv.namehint = "emptyOrComplete"} : i1
    %47 = comb.and %stAddr5_valid, %stData5_valid {sv.namehint = "writeValid"} : i1
    %48 = comb.mux %46, %47, %writeValidBuffer_4 : i1
    %49 = comb.extract %stAddr5 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%49] %stData5 wren %47 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_5 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %54, %clock reset %reset, %false : i1  
    %50 = comb.and %stDone6_ready, %writeValidBuffer_5 {sv.namehint = "storeCompleted"} : i1
    %51 = comb.xor %writeValidBuffer_5, %true : i1
    %52 = comb.or %51, %50 {sv.namehint = "emptyOrComplete"} : i1
    %53 = comb.and %stAddr6_valid, %stData6_valid {sv.namehint = "writeValid"} : i1
    %54 = comb.mux %52, %53, %writeValidBuffer_5 : i1
    %55 = comb.extract %stAddr6 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%55] %stData6 wren %53 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_6 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %60, %clock reset %reset, %false : i1  
    %56 = comb.and %stDone7_ready, %writeValidBuffer_6 {sv.namehint = "storeCompleted"} : i1
    %57 = comb.xor %writeValidBuffer_6, %true : i1
    %58 = comb.or %57, %56 {sv.namehint = "emptyOrComplete"} : i1
    %59 = comb.and %stAddr7_valid, %stData7_valid {sv.namehint = "writeValid"} : i1
    %60 = comb.mux %58, %59, %writeValidBuffer_6 : i1
    %61 = comb.extract %stAddr7 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%61] %stData7 wren %59 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_7 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %66, %clock reset %reset, %false : i1  
    %62 = comb.and %stDone8_ready, %writeValidBuffer_7 {sv.namehint = "storeCompleted"} : i1
    %63 = comb.xor %writeValidBuffer_7, %true : i1
    %64 = comb.or %63, %62 {sv.namehint = "emptyOrComplete"} : i1
    %65 = comb.and %stAddr8_valid, %stData8_valid {sv.namehint = "writeValid"} : i1
    %66 = comb.mux %64, %65, %writeValidBuffer_7 : i1
    %67 = comb.extract %stAddr8 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%67] %stData8 wren %65 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_8 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %72, %clock reset %reset, %false : i1  
    %68 = comb.and %stDone9_ready, %writeValidBuffer_8 {sv.namehint = "storeCompleted"} : i1
    %69 = comb.xor %writeValidBuffer_8, %true : i1
    %70 = comb.or %69, %68 {sv.namehint = "emptyOrComplete"} : i1
    %71 = comb.and %stAddr9_valid, %stData9_valid {sv.namehint = "writeValid"} : i1
    %72 = comb.mux %70, %71, %writeValidBuffer_8 : i1
    %73 = comb.extract %stAddr9 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%73] %stData9 wren %71 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_9 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %78, %clock reset %reset, %false : i1  
    %74 = comb.and %stDone10_ready, %writeValidBuffer_9 {sv.namehint = "storeCompleted"} : i1
    %75 = comb.xor %writeValidBuffer_9, %true : i1
    %76 = comb.or %75, %74 {sv.namehint = "emptyOrComplete"} : i1
    %77 = comb.and %stAddr10_valid, %stData10_valid {sv.namehint = "writeValid"} : i1
    %78 = comb.mux %76, %77, %writeValidBuffer_9 : i1
    %79 = comb.extract %stAddr10 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%79] %stData10 wren %77 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_10 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %84, %clock reset %reset, %false : i1  
    %80 = comb.and %stDone11_ready, %writeValidBuffer_10 {sv.namehint = "storeCompleted"} : i1
    %81 = comb.xor %writeValidBuffer_10, %true : i1
    %82 = comb.or %81, %80 {sv.namehint = "emptyOrComplete"} : i1
    %83 = comb.and %stAddr11_valid, %stData11_valid {sv.namehint = "writeValid"} : i1
    %84 = comb.mux %82, %83, %writeValidBuffer_10 : i1
    %85 = comb.extract %stAddr11 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%85] %stData11 wren %83 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_11 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %90, %clock reset %reset, %false : i1  
    %86 = comb.and %stDone12_ready, %writeValidBuffer_11 {sv.namehint = "storeCompleted"} : i1
    %87 = comb.xor %writeValidBuffer_11, %true : i1
    %88 = comb.or %87, %86 {sv.namehint = "emptyOrComplete"} : i1
    %89 = comb.and %stAddr12_valid, %stData12_valid {sv.namehint = "writeValid"} : i1
    %90 = comb.mux %88, %89, %writeValidBuffer_11 : i1
    %91 = comb.extract %stAddr12 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%91] %stData12 wren %89 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_12 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %96, %clock reset %reset, %false : i1  
    %92 = comb.and %stDone13_ready, %writeValidBuffer_12 {sv.namehint = "storeCompleted"} : i1
    %93 = comb.xor %writeValidBuffer_12, %true : i1
    %94 = comb.or %93, %92 {sv.namehint = "emptyOrComplete"} : i1
    %95 = comb.and %stAddr13_valid, %stData13_valid {sv.namehint = "writeValid"} : i1
    %96 = comb.mux %94, %95, %writeValidBuffer_12 : i1
    %97 = comb.extract %stAddr13 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%97] %stData13 wren %95 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_13 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %102, %clock reset %reset, %false : i1  
    %98 = comb.and %stDone14_ready, %writeValidBuffer_13 {sv.namehint = "storeCompleted"} : i1
    %99 = comb.xor %writeValidBuffer_13, %true : i1
    %100 = comb.or %99, %98 {sv.namehint = "emptyOrComplete"} : i1
    %101 = comb.and %stAddr14_valid, %stData14_valid {sv.namehint = "writeValid"} : i1
    %102 = comb.mux %100, %101, %writeValidBuffer_13 : i1
    %103 = comb.extract %stAddr14 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%103] %stData14 wren %101 {latency = 1 : i64} : !seq.hlmem<16xi64>
    %writeValidBuffer_14 = seq.compreg sym @writeValidBuffer name "writeValidBuffer" %108, %clock reset %reset, %false : i1  
    %104 = comb.and %stDone15_ready, %writeValidBuffer_14 {sv.namehint = "storeCompleted"} : i1
    %105 = comb.xor %writeValidBuffer_14, %true : i1
    %106 = comb.or %105, %104 {sv.namehint = "emptyOrComplete"} : i1
    %107 = comb.and %stAddr15_valid, %stData15_valid {sv.namehint = "writeValid"} : i1
    %108 = comb.mux %106, %107, %writeValidBuffer_14 : i1
    %109 = comb.extract %stAddr15 from 0 : (i64) -> i4
    seq.write %_handshake_memory_0[%109] %stData15 wren %107 {latency = 1 : i64} : !seq.hlmem<16xi64>
    hw.output %16, %16, %22, %22, %28, %28, %34, %34, %40, %40, %46, %46, %52, %52, %58, %58, %64, %64, %70, %70, %76, %76, %82, %82, %88, %88, %94, %94, %100, %100, %106, %106, %13, %_handshake_memory_0_rdata, %4, %c0_i0, %writeValidBuffer, %c0_i0, %writeValidBuffer_0, %c0_i0, %writeValidBuffer_1, %c0_i0, %writeValidBuffer_2, %c0_i0, %writeValidBuffer_3, %c0_i0, %writeValidBuffer_4, %c0_i0, %writeValidBuffer_5, %c0_i0, %writeValidBuffer_6, %c0_i0, %writeValidBuffer_7, %c0_i0, %writeValidBuffer_8, %c0_i0, %writeValidBuffer_9, %c0_i0, %writeValidBuffer_10, %c0_i0, %writeValidBuffer_11, %c0_i0, %writeValidBuffer_12, %c0_i0, %writeValidBuffer_13, %c0_i0, %writeValidBuffer_14, %c0_i0, %10 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
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
  hw.module @handshake_fork_1ins_3outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    hw.output %18, %in0, %3, %in0, %9, %in0, %15 : i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_4outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1) {
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
    hw.output %24, %in0, %3, %in0, %9, %in0, %15, %in0, %21 : i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_5outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %30, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %30, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %30, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %30, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %30, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.and %5, %11, %17, %23, %29 {sv.namehint = "allDone"} : i1
    hw.output %30, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_6outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %36, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %36, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %36, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %36, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %36, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %36, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.and %5, %11, %17, %23, %29, %35 {sv.namehint = "allDone"} : i1
    hw.output %36, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_7outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %42, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %42, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %42, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %42, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %42, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %42, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %42, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.and %5, %11, %17, %23, %29, %35, %41 {sv.namehint = "allDone"} : i1
    hw.output %42, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_8outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %48, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %48, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %48, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %48, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %48, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %48, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %48, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %48, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.and %5, %11, %17, %23, %29, %35, %41, %47 {sv.namehint = "allDone"} : i1
    hw.output %48, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_9outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %54, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %54, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %54, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %54, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %54, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %54, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %54, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %54, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %54, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53 {sv.namehint = "allDone"} : i1
    hw.output %54, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_10outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %60, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %60, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %60, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %60, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %60, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %60, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %60, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %60, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %60, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %60, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59 {sv.namehint = "allDone"} : i1
    hw.output %60, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_11outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1, out out10 : i0, out out10_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %66, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %66, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %66, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %66, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %66, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %66, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %66, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %66, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %66, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %66, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %66, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65 {sv.namehint = "allDone"} : i1
    hw.output %66, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_12outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1, out out10 : i0, out out10_valid : i1, out out11 : i0, out out11_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %72, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %72, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %72, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %72, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %72, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %72, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %72, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %72, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %72, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %72, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %72, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %72, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71 {sv.namehint = "allDone"} : i1
    hw.output %72, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_13outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1, out out10 : i0, out out10_valid : i1, out out11 : i0, out out11_valid : i1, out out12 : i0, out out12_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %78, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %78, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %78, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %78, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %78, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %78, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %78, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %78, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %78, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %78, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %78, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %78, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %78, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77 {sv.namehint = "allDone"} : i1
    hw.output %78, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_14outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, in %out13_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1, out out10 : i0, out out10_valid : i1, out out11 : i0, out out11_valid : i1, out out12 : i0, out out12_valid : i1, out out13 : i0, out out13_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %84, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %84, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %84, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %84, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %84, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %84, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %84, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %84, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %84, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %84, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %84, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %84, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %84, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.xor %84, %true : i1
    %79 = comb.and %83, %78 : i1
    %emitted_13 = seq.compreg sym @emitted_13 %79, %clock reset %reset, %false : i1  
    %80 = comb.xor %emitted_13, %true : i1
    %81 = comb.and %80, %in0_valid : i1
    %82 = comb.and %out13_ready, %81 : i1
    %83 = comb.or %82, %emitted_13 {sv.namehint = "done13"} : i1
    %84 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77, %83 {sv.namehint = "allDone"} : i1
    hw.output %84, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75, %in0, %81 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_15outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, in %out13_ready : i1, in %out14_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1, out out10 : i0, out out10_valid : i1, out out11 : i0, out out11_valid : i1, out out12 : i0, out out12_valid : i1, out out13 : i0, out out13_valid : i1, out out14 : i0, out out14_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %90, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %90, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %90, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %90, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %90, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %90, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %90, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %90, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %90, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %90, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %90, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %90, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %90, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.xor %90, %true : i1
    %79 = comb.and %83, %78 : i1
    %emitted_13 = seq.compreg sym @emitted_13 %79, %clock reset %reset, %false : i1  
    %80 = comb.xor %emitted_13, %true : i1
    %81 = comb.and %80, %in0_valid : i1
    %82 = comb.and %out13_ready, %81 : i1
    %83 = comb.or %82, %emitted_13 {sv.namehint = "done13"} : i1
    %84 = comb.xor %90, %true : i1
    %85 = comb.and %89, %84 : i1
    %emitted_14 = seq.compreg sym @emitted_14 %85, %clock reset %reset, %false : i1  
    %86 = comb.xor %emitted_14, %true : i1
    %87 = comb.and %86, %in0_valid : i1
    %88 = comb.and %out14_ready, %87 : i1
    %89 = comb.or %88, %emitted_14 {sv.namehint = "done14"} : i1
    %90 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77, %83, %89 {sv.namehint = "allDone"} : i1
    hw.output %90, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75, %in0, %81, %in0, %87 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_fork_1ins_16outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, in %out13_ready : i1, in %out14_ready : i1, in %out15_ready : i1, out in0_ready : i1, out out0 : i0, out out0_valid : i1, out out1 : i0, out out1_valid : i1, out out2 : i0, out out2_valid : i1, out out3 : i0, out out3_valid : i1, out out4 : i0, out out4_valid : i1, out out5 : i0, out out5_valid : i1, out out6 : i0, out out6_valid : i1, out out7 : i0, out out7_valid : i1, out out8 : i0, out out8_valid : i1, out out9 : i0, out out9_valid : i1, out out10 : i0, out out10_valid : i1, out out11 : i0, out out11_valid : i1, out out12 : i0, out out12_valid : i1, out out13 : i0, out out13_valid : i1, out out14 : i0, out out14_valid : i1, out out15 : i0, out out15_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %96, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %96, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %96, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %96, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %96, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %96, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %96, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %96, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %96, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %96, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %96, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %96, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %96, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.xor %96, %true : i1
    %79 = comb.and %83, %78 : i1
    %emitted_13 = seq.compreg sym @emitted_13 %79, %clock reset %reset, %false : i1  
    %80 = comb.xor %emitted_13, %true : i1
    %81 = comb.and %80, %in0_valid : i1
    %82 = comb.and %out13_ready, %81 : i1
    %83 = comb.or %82, %emitted_13 {sv.namehint = "done13"} : i1
    %84 = comb.xor %96, %true : i1
    %85 = comb.and %89, %84 : i1
    %emitted_14 = seq.compreg sym @emitted_14 %85, %clock reset %reset, %false : i1  
    %86 = comb.xor %emitted_14, %true : i1
    %87 = comb.and %86, %in0_valid : i1
    %88 = comb.and %out14_ready, %87 : i1
    %89 = comb.or %88, %emitted_14 {sv.namehint = "done14"} : i1
    %90 = comb.xor %96, %true : i1
    %91 = comb.and %95, %90 : i1
    %emitted_15 = seq.compreg sym @emitted_15 %91, %clock reset %reset, %false : i1  
    %92 = comb.xor %emitted_15, %true : i1
    %93 = comb.and %92, %in0_valid : i1
    %94 = comb.and %out15_ready, %93 : i1
    %95 = comb.or %94, %emitted_15 {sv.namehint = "done15"} : i1
    %96 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77, %83, %89, %95 {sv.namehint = "allDone"} : i1
    hw.output %96, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75, %in0, %81, %in0, %87, %in0, %93 : i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1, i0, i1
  }
  hw.module @handshake_join_17ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %in10 : i0, in %in10_valid : i1, in %in11 : i0, in %in11_valid : i1, in %in12 : i0, in %in12_valid : i1, in %in13 : i0, in %in13_valid : i1, in %in14 : i0, in %in14_valid : i1, in %in15 : i0, in %in15_valid : i1, in %in16 : i0, in %in16_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out in10_ready : i1, out in11_ready : i1, out in12_ready : i1, out in13_ready : i1, out in14_ready : i1, out in15_ready : i1, out in16_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid, %in10_valid, %in11_valid, %in12_valid, %in13_valid, %in14_valid, %in15_valid, %in16_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_constant_c0_out_ui1(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i1, out out0_valid : i1) {
    %false = hw.constant false
    hw.output %out0_ready, %false, %ctrl_valid : i1, i1, i1
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
  hw.module @handshake_constant_c18446744073709551615_out_ui1(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i1, out out0_valid : i1) {
    %true = hw.constant true
    hw.output %out0_ready, %true, %ctrl_valid : i1, i1, i1
  }
  hw.module @handshake_constant_c10_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c10_i64 = hw.constant 10 : i64
    hw.output %out0_ready, %c10_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c18446744073708503040_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c-1048576_i64 = hw.constant -1048576 : i64
    hw.output %out0_ready, %c-1048576_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c1048576_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c1048576_i64 = hw.constant 1048576 : i64
    hw.output %out0_ready, %c1048576_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c0_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c0_i64 = hw.constant 0 : i64
    hw.output %out0_ready, %c0_i64, %ctrl_valid : i1, i64, i1
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
  hw.module @handshake_constant_c1_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c1_i64 = hw.constant 1 : i64
    hw.output %out0_ready, %c1_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_fork_in_ui64_out_ui64_ui64_ui64(in %in0 : i64, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out in0_ready : i1, out out0 : i64, out out0_valid : i1, out out1 : i64, out out1_valid : i1, out out2 : i64, out out2_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    hw.output %18, %in0, %3, %in0, %9, %in0, %15 : i1, i64, i1, i64, i1, i64, i1
  }
  hw.module @handshake_constant_c15_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c15_i64 = hw.constant 15 : i64
    hw.output %out0_ready, %c15_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c14_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c14_i64 = hw.constant 14 : i64
    hw.output %out0_ready, %c14_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c13_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c13_i64 = hw.constant 13 : i64
    hw.output %out0_ready, %c13_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c12_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c12_i64 = hw.constant 12 : i64
    hw.output %out0_ready, %c12_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c11_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c11_i64 = hw.constant 11 : i64
    hw.output %out0_ready, %c11_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c9_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c9_i64 = hw.constant 9 : i64
    hw.output %out0_ready, %c9_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c8_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c8_i64 = hw.constant 8 : i64
    hw.output %out0_ready, %c8_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c7_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c7_i64 = hw.constant 7 : i64
    hw.output %out0_ready, %c7_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c6_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c6_i64 = hw.constant 6 : i64
    hw.output %out0_ready, %c6_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c5_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c5_i64 = hw.constant 5 : i64
    hw.output %out0_ready, %c5_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c4_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c4_i64 = hw.constant 4 : i64
    hw.output %out0_ready, %c4_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c3_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c3_i64 = hw.constant 3 : i64
    hw.output %out0_ready, %c3_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c2_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c2_i64 = hw.constant 2 : i64
    hw.output %out0_ready, %c2_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_fork_in_ui64_out_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64(in %in0 : i64, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, in %out13_ready : i1, in %out14_ready : i1, in %out15_ready : i1, in %out16_ready : i1, out in0_ready : i1, out out0 : i64, out out0_valid : i1, out out1 : i64, out out1_valid : i1, out out2 : i64, out out2_valid : i1, out out3 : i64, out out3_valid : i1, out out4 : i64, out out4_valid : i1, out out5 : i64, out out5_valid : i1, out out6 : i64, out out6_valid : i1, out out7 : i64, out out7_valid : i1, out out8 : i64, out out8_valid : i1, out out9 : i64, out out9_valid : i1, out out10 : i64, out out10_valid : i1, out out11 : i64, out out11_valid : i1, out out12 : i64, out out12_valid : i1, out out13 : i64, out out13_valid : i1, out out14 : i64, out out14_valid : i1, out out15 : i64, out out15_valid : i1, out out16 : i64, out out16_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %102, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %102, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %102, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %102, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %102, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %102, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %102, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %102, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %102, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %102, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %102, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %102, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %102, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.xor %102, %true : i1
    %79 = comb.and %83, %78 : i1
    %emitted_13 = seq.compreg sym @emitted_13 %79, %clock reset %reset, %false : i1  
    %80 = comb.xor %emitted_13, %true : i1
    %81 = comb.and %80, %in0_valid : i1
    %82 = comb.and %out13_ready, %81 : i1
    %83 = comb.or %82, %emitted_13 {sv.namehint = "done13"} : i1
    %84 = comb.xor %102, %true : i1
    %85 = comb.and %89, %84 : i1
    %emitted_14 = seq.compreg sym @emitted_14 %85, %clock reset %reset, %false : i1  
    %86 = comb.xor %emitted_14, %true : i1
    %87 = comb.and %86, %in0_valid : i1
    %88 = comb.and %out14_ready, %87 : i1
    %89 = comb.or %88, %emitted_14 {sv.namehint = "done14"} : i1
    %90 = comb.xor %102, %true : i1
    %91 = comb.and %95, %90 : i1
    %emitted_15 = seq.compreg sym @emitted_15 %91, %clock reset %reset, %false : i1  
    %92 = comb.xor %emitted_15, %true : i1
    %93 = comb.and %92, %in0_valid : i1
    %94 = comb.and %out15_ready, %93 : i1
    %95 = comb.or %94, %emitted_15 {sv.namehint = "done15"} : i1
    %96 = comb.xor %102, %true : i1
    %97 = comb.and %101, %96 : i1
    %emitted_16 = seq.compreg sym @emitted_16 %97, %clock reset %reset, %false : i1  
    %98 = comb.xor %emitted_16, %true : i1
    %99 = comb.and %98, %in0_valid : i1
    %100 = comb.and %out16_ready, %99 : i1
    %101 = comb.or %100, %emitted_16 {sv.namehint = "done16"} : i1
    %102 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77, %83, %89, %95, %101 {sv.namehint = "allDone"} : i1
    hw.output %102, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75, %in0, %81, %in0, %87, %in0, %93, %in0, %99 : i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1, i64, i1
  }
  hw.module @handshake_constant_c823550_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c823550_i64 = hw.constant 823550 : i64
    hw.output %out0_ready, %c823550_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c486170_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c486170_i64 = hw.constant 486170 : i64
    hw.output %out0_ready, %c486170_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c256879_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c256879_i64 = hw.constant 256879 : i64
    hw.output %out0_ready, %c256879_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c130396_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c130396_i64 = hw.constant 130396 : i64
    hw.output %out0_ready, %c130396_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c65451_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c65451_i64 = hw.constant 65451 : i64
    hw.output %out0_ready, %c65451_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c32757_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c32757_i64 = hw.constant 32757 : i64
    hw.output %out0_ready, %c32757_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c16383_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c16383_i64 = hw.constant 16383 : i64
    hw.output %out0_ready, %c16383_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c8192_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c8192_i64 = hw.constant 8192 : i64
    hw.output %out0_ready, %c8192_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c4096_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c4096_i64 = hw.constant 4096 : i64
    hw.output %out0_ready, %c4096_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c2048_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c2048_i64 = hw.constant 2048 : i64
    hw.output %out0_ready, %c2048_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c1024_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c1024_i64 = hw.constant 1024 : i64
    hw.output %out0_ready, %c1024_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c512_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c512_i64 = hw.constant 512 : i64
    hw.output %out0_ready, %c512_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c256_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c256_i64 = hw.constant 256 : i64
    hw.output %out0_ready, %c256_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c128_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c128_i64 = hw.constant 128 : i64
    hw.output %out0_ready, %c128_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c64_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c64_i64 = hw.constant 64 : i64
    hw.output %out0_ready, %c64_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @handshake_constant_c32_out_ui64(in %ctrl : i0, in %ctrl_valid : i1, in %out0_ready : i1, out ctrl_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c32_i64 = hw.constant 32 : i64
    hw.output %out0_ready, %c32_i64, %ctrl_valid : i1, i64, i1
  }
  hw.module @arith_shli_in_ui64_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.shl %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i64, i1
  }
  hw.module @handshake_store_in_ui64_ui64_out_ui64_ui64(in %addrIn0 : i64, in %addrIn0_valid : i1, in %dataIn : i64, in %dataIn_valid : i1, in %ctrl : i0, in %ctrl_valid : i1, in %dataToMem_ready : i1, in %addrOut0_ready : i1, out addrIn0_ready : i1, out dataIn_ready : i1, out ctrl_ready : i1, out dataToMem : i64, out dataToMem_valid : i1, out addrOut0 : i64, out addrOut0_valid : i1) {
    %0 = comb.and %dataIn_valid, %addrIn0_valid, %ctrl_valid : i1
    %1 = comb.and %dataToMem_ready, %addrOut0_ready, %0 : i1
    hw.output %1, %1, %1, %dataIn, %0, %addrIn0, %0 : i1, i1, i1, i64, i1, i64, i1
  }
  hw.module @arith_addi_in_ui64_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.add %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i64, i1
  }
  hw.module @handshake_join_2ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %c0_i0, %0 : i1, i1, i0, i1
  }
  hw.module @handshake_join_3ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_4ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_5ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_6ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_7ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_8ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_9ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_10ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_11ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %in10 : i0, in %in10_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out in10_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid, %in10_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_12ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %in10 : i0, in %in10_valid : i1, in %in11 : i0, in %in11_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out in10_ready : i1, out in11_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid, %in10_valid, %in11_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_13ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %in10 : i0, in %in10_valid : i1, in %in11 : i0, in %in11_valid : i1, in %in12 : i0, in %in12_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out in10_ready : i1, out in11_ready : i1, out in12_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid, %in10_valid, %in11_valid, %in12_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_14ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %in10 : i0, in %in10_valid : i1, in %in11 : i0, in %in11_valid : i1, in %in12 : i0, in %in12_valid : i1, in %in13 : i0, in %in13_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out in10_ready : i1, out in11_ready : i1, out in12_ready : i1, out in13_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid, %in10_valid, %in11_valid, %in12_valid, %in13_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_15ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %in10 : i0, in %in10_valid : i1, in %in11 : i0, in %in11_valid : i1, in %in12 : i0, in %in12_valid : i1, in %in13 : i0, in %in13_valid : i1, in %in14 : i0, in %in14_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out in10_ready : i1, out in11_ready : i1, out in12_ready : i1, out in13_ready : i1, out in14_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid, %in10_valid, %in11_valid, %in12_valid, %in13_valid, %in14_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_join_16ins_1outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %in3 : i0, in %in3_valid : i1, in %in4 : i0, in %in4_valid : i1, in %in5 : i0, in %in5_valid : i1, in %in6 : i0, in %in6_valid : i1, in %in7 : i0, in %in7_valid : i1, in %in8 : i0, in %in8_valid : i1, in %in9 : i0, in %in9_valid : i1, in %in10 : i0, in %in10_valid : i1, in %in11 : i0, in %in11_valid : i1, in %in12 : i0, in %in12_valid : i1, in %in13 : i0, in %in13_valid : i1, in %in14 : i0, in %in14_valid : i1, in %in15 : i0, in %in15_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out in3_ready : i1, out in4_ready : i1, out in5_ready : i1, out in6_ready : i1, out in7_ready : i1, out in8_ready : i1, out in9_ready : i1, out in10_ready : i1, out in11_ready : i1, out in12_ready : i1, out in13_ready : i1, out in14_ready : i1, out in15_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c0_i0 = hw.constant 0 : i0
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid, %in3_valid, %in4_valid, %in5_valid, %in6_valid, %in7_valid, %in8_valid, %in9_valid, %in10_valid, %in11_valid, %in12_valid, %in13_valid, %in14_valid, %in15_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    hw.output %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %c0_i0, %0 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i0, i1
  }
  hw.module @handshake_buffer_in_ui1_out_ui1_1slots_seq_init_0(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %valid0_reg = seq.compreg sym @valid0_reg %2, %clock reset %reset, %true : i1  
    %0 = comb.xor %valid0_reg, %true : i1
    %1 = comb.or %0, %5 : i1
    %2 = comb.mux %1, %in0_valid, %valid0_reg : i1
    %3 = comb.mux %1, %in0, %data0_reg : i1
    %data0_reg = seq.compreg sym @data0_reg %3, %clock reset %reset, %false : i1  
    %ready0_reg = seq.compreg sym @ready0_reg %11, %clock reset %reset, %false : i1  
    %4 = comb.mux %ready0_reg, %ready0_reg, %valid0_reg : i1
    %5 = comb.xor %ready0_reg, %true : i1
    %6 = comb.xor %out0_ready, %true : i1
    %7 = comb.and %6, %5 : i1
    %8 = comb.mux %7, %valid0_reg, %ready0_reg : i1
    %9 = comb.and %out0_ready, %ready0_reg : i1
    %10 = comb.xor %9, %true : i1
    %11 = comb.and %10, %8 : i1
    %ctrl_data0_reg = seq.compreg sym @ctrl_data0_reg %15, %clock reset %reset, %false : i1  
    %12 = comb.mux %ready0_reg, %ctrl_data0_reg, %data0_reg : i1
    %13 = comb.mux %7, %data0_reg, %ctrl_data0_reg : i1
    %14 = comb.xor %9, %true : i1
    %15 = comb.and %14, %13 : i1
    hw.output %1, %12, %4 : i1, i1, i1
  }
  hw.module @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, in %out13_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1, out out1 : i1, out out1_valid : i1, out out2 : i1, out out2_valid : i1, out out3 : i1, out out3_valid : i1, out out4 : i1, out out4_valid : i1, out out5 : i1, out out5_valid : i1, out out6 : i1, out out6_valid : i1, out out7 : i1, out out7_valid : i1, out out8 : i1, out out8_valid : i1, out out9 : i1, out out9_valid : i1, out out10 : i1, out out10_valid : i1, out out11 : i1, out out11_valid : i1, out out12 : i1, out out12_valid : i1, out out13 : i1, out out13_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %84, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %84, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %84, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %84, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %84, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %84, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %84, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %84, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %84, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %84, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %84, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %84, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %84, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.xor %84, %true : i1
    %79 = comb.and %83, %78 : i1
    %emitted_13 = seq.compreg sym @emitted_13 %79, %clock reset %reset, %false : i1  
    %80 = comb.xor %emitted_13, %true : i1
    %81 = comb.and %80, %in0_valid : i1
    %82 = comb.and %out13_ready, %81 : i1
    %83 = comb.or %82, %emitted_13 {sv.namehint = "done13"} : i1
    %84 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77, %83 {sv.namehint = "allDone"} : i1
    hw.output %84, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75, %in0, %81 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
  }
  hw.module @handshake_mux_in_ui1_3ins_1outs_ctrl(in %select : i1, in %select_valid : i1, in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %out0_ready : i1, out select_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i0, out out0_valid : i1) {
    %c1_i2 = hw.constant 1 : i2
    %false = hw.constant false
    %0 = comb.concat %false, %select : i1, i1
    %1 = comb.shl %c1_i2, %0 : i2
    %2 = comb.mux %select, %in1_valid, %in0_valid : i1
    %3 = comb.and %2, %select_valid : i1
    %4 = comb.and %3, %out0_ready : i1
    %5 = comb.extract %1 from 0 : (i2) -> i1
    %6 = comb.and %5, %4 : i1
    %7 = comb.extract %1 from 1 : (i2) -> i1
    %8 = comb.and %7, %4 : i1
    %9 = comb.mux %select, %in1, %in0 : i0
    hw.output %4, %6, %8, %9, %3 : i1, i1, i1, i0, i1
  }
  hw.module @handshake_mux_in_ui1_ui64_ui64_out_ui64(in %select : i1, in %select_valid : i1, in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out select_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %c1_i2 = hw.constant 1 : i2
    %false = hw.constant false
    %0 = comb.concat %false, %select : i1, i1
    %1 = comb.shl %c1_i2, %0 : i2
    %2 = comb.mux %select, %in1_valid, %in0_valid : i1
    %3 = comb.and %2, %select_valid : i1
    %4 = comb.and %3, %out0_ready : i1
    %5 = comb.extract %1 from 0 : (i2) -> i1
    %6 = comb.and %5, %4 : i1
    %7 = comb.extract %1 from 1 : (i2) -> i1
    %8 = comb.and %7, %4 : i1
    %9 = comb.mux %select, %in1, %in0 : i64
    hw.output %4, %6, %8, %9, %3 : i1, i1, i1, i64, i1
  }
  hw.module @handshake_mux_in_ui1_ui1_ui1_out_ui1(in %select : i1, in %select_valid : i1, in %in0 : i1, in %in0_valid : i1, in %in1 : i1, in %in1_valid : i1, in %out0_ready : i1, out select_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i1, out out0_valid : i1) {
    %c1_i2 = hw.constant 1 : i2
    %false = hw.constant false
    %0 = comb.concat %false, %select : i1, i1
    %1 = comb.shl %c1_i2, %0 : i2
    %2 = comb.mux %select, %in1_valid, %in0_valid : i1
    %3 = comb.and %2, %select_valid : i1
    %4 = comb.and %3, %out0_ready : i1
    %5 = comb.extract %1 from 0 : (i2) -> i1
    %6 = comb.and %5, %4 : i1
    %7 = comb.extract %1 from 1 : (i2) -> i1
    %8 = comb.and %7, %4 : i1
    %9 = comb.mux %select, %in1, %in0 : i1
    hw.output %4, %6, %8, %9, %3 : i1, i1, i1, i1, i1
  }
  hw.module @handshake_fork_in_ui1_out_ui1_ui1(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1, out out1 : i1, out out1_valid : i1) {
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
    hw.output %12, %in0, %3, %in0, %9 : i1, i1, i1, i1, i1
  }
  hw.module @handshake_fork_in_ui1_out_ui1_ui1_ui1(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1, out out1 : i1, out out1_valid : i1, out out2 : i1, out out2_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %18, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %18, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %18, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.and %5, %11, %17 {sv.namehint = "allDone"} : i1
    hw.output %18, %in0, %3, %in0, %9, %in0, %15 : i1, i1, i1, i1, i1, i1, i1
  }
  hw.module @handshake_fork_in_ui64_out_ui64_ui64_ui64_ui64(in %in0 : i64, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, out in0_ready : i1, out out0 : i64, out out0_valid : i1, out out1 : i64, out out1_valid : i1, out out2 : i64, out out2_valid : i1, out out3 : i64, out out3_valid : i1) {
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
    hw.output %24, %in0, %3, %in0, %9, %in0, %15, %in0, %21 : i1, i64, i1, i64, i1, i64, i1, i64, i1
  }
  hw.module @arith_cmpi_in_ui64_ui64_out_ui1_sge(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i1, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.icmp sge %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i1, i1
  }
  hw.module @arith_select_in_ui1_ui64_ui64_out_ui64(in %in0 : i1, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %in2 : i64, in %in2_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid, %in2_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.mux %in0, %in1, %in2 : i64
    hw.output %1, %1, %1, %2, %0 : i1, i1, i1, i64, i1
  }
  hw.module @arith_subi_in_ui64_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.sub %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i64, i1
  }
  hw.module @arith_shrsi_in_ui64_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.shrs %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i64, i1
  }
  hw.module @arith_muli_in_ui64_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.mul %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i64, i1
  }
  hw.module @arith_index_cast_in_ui64_out_ui64(in %in0 : i64, in %in0_valid : i1, in %out0_ready : i1, out in0_ready : i1, out out0 : i64, out out0_valid : i1) {
    %0 = comb.and %out0_ready, %in0_valid : i1
    hw.output %0, %in0, %in0_valid : i1, i64, i1
  }
  hw.module @handshake_load_in_ui64_ui64_out_ui64_ui64(in %addrIn0 : i64, in %addrIn0_valid : i1, in %dataFromMem : i64, in %dataFromMem_valid : i1, in %ctrl : i0, in %ctrl_valid : i1, in %dataOut_ready : i1, in %addrOut0_ready : i1, out addrIn0_ready : i1, out dataFromMem_ready : i1, out ctrl_ready : i1, out dataOut : i64, out dataOut_valid : i1, out addrOut0 : i64, out addrOut0_valid : i1) {
    %0 = comb.and %addrIn0_valid, %ctrl_valid : i1
    %1 = comb.and %addrOut0_ready, %0 : i1
    hw.output %1, %dataOut_ready, %1, %dataFromMem, %dataFromMem_valid, %addrIn0, %0 : i1, i1, i1, i64, i1, i64, i1
  }
  hw.module @arith_cmpi_in_ui64_ui64_out_ui1_eq(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i1, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.icmp eq %in0, %in1 : i64
    hw.output %1, %1, %2, %0 : i1, i1, i1, i1
  }
  hw.module @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1_ui1_ui1_ui1(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1, out out1 : i1, out out1_valid : i1, out out2 : i1, out out2_valid : i1, out out3 : i1, out out3_valid : i1, out out4 : i1, out out4_valid : i1, out out5 : i1, out out5_valid : i1, out out6 : i1, out out6_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %42, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %42, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %42, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %42, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %42, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %42, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %42, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.and %5, %11, %17, %23, %29, %35, %41 {sv.namehint = "allDone"} : i1
    hw.output %42, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
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
  hw.module @handshake_cond_br_in_ui1_ui1_out_ui1_ui1(in %cond : i1, in %cond_valid : i1, in %data : i1, in %data_valid : i1, in %outTrue_ready : i1, in %outFalse_ready : i1, out cond_ready : i1, out data_ready : i1, out outTrue : i1, out outTrue_valid : i1, out outFalse : i1, out outFalse_valid : i1) {
    %true = hw.constant true
    %0 = comb.and %cond_valid, %data_valid : i1
    %1 = comb.and %cond, %0 : i1
    %2 = comb.xor %cond, %true : i1
    %3 = comb.and %2, %0 : i1
    %4 = comb.mux %cond, %outTrue_ready, %outFalse_ready : i1
    %5 = comb.and %4, %0 : i1
    hw.output %5, %5, %data, %1, %data, %3 : i1, i1, i1, i1, i1, i1
  }
  hw.module @handshake_sink_in_ui1(in %in0 : i1, in %in0_valid : i1, out in0_ready : i1) {
    %true = hw.constant true
    hw.output %true : i1
  }
  hw.module @handshake_cond_br_in_ui1_2ins_2outs_ctrl(in %cond : i1, in %cond_valid : i1, in %data : i0, in %data_valid : i1, in %outTrue_ready : i1, in %outFalse_ready : i1, out cond_ready : i1, out data_ready : i1, out outTrue : i0, out outTrue_valid : i1, out outFalse : i0, out outFalse_valid : i1) {
    %true = hw.constant true
    %0 = comb.and %cond_valid, %data_valid : i1
    %1 = comb.and %cond, %0 : i1
    %2 = comb.xor %cond, %true : i1
    %3 = comb.and %2, %0 : i1
    %4 = comb.mux %cond, %outTrue_ready, %outFalse_ready : i1
    %5 = comb.and %4, %0 : i1
    hw.output %5, %5, %data, %1, %data, %3 : i1, i1, i0, i1, i0, i1
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
  hw.module @handshake_mux_in_ui64_ui1_ui1_out_ui1(in %select : i64, in %select_valid : i1, in %in0 : i1, in %in0_valid : i1, in %in1 : i1, in %in1_valid : i1, in %out0_ready : i1, out select_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i1, out out0_valid : i1) {
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
    %10 = comb.mux %0, %in1, %in0 : i1
    hw.output %5, %7, %9, %10, %4 : i1, i1, i1, i1, i1
  }
  hw.module @handshake_control_merge_out_ui64_2ins_2outs_ctrl(in %in0 : i0, in %in0_valid : i1, in %in1 : i0, in %in1_valid : i1, in %clock : !seq.clock, in %reset : i1, in %dataOut_ready : i1, in %index_ready : i1, out in0_ready : i1, out in1_ready : i1, out dataOut : i0, out dataOut_valid : i1, out index : i64, out index_valid : i1) {
    %c0_i63 = hw.constant 0 : i63
    %c0_i0 = hw.constant 0 : i0
    %true = hw.constant true
    %c1_i2 = hw.constant 1 : i2
    %c-2_i2 = hw.constant -2 : i2
    %false = hw.constant false
    %c0_i2 = hw.constant 0 : i2
    %won_reg = seq.compreg sym @won_reg %13, %clock reset %reset, %c0_i2 : i2  
    %result_emitted_reg = seq.compreg sym @result_emitted_reg %20, %clock reset %reset, %false : i1  
    %index_emitted_reg = seq.compreg sym @index_emitted_reg %22, %clock reset %reset, %false : i1  
    %0 = comb.icmp ne %4, %c0_i2 : i2
    %1 = comb.icmp ne %won_reg, %c0_i2 : i2
    %2 = comb.concat %in1_valid, %false : i1, i1
    %3 = comb.mux %in0_valid, %c1_i2, %2 : i2
    %4 = comb.mux %1, %won_reg, %3 : i2
    %5 = comb.xor %result_emitted_reg, %true : i1
    %6 = comb.and %0, %5 : i1
    %7 = comb.extract %4 from 1 : (i2) -> i1
    %8 = comb.mux %7, %in1, %c0_i0 : i0
    %9 = comb.xor %index_emitted_reg, %true : i1
    %10 = comb.and %0, %9 : i1
    %11 = comb.extract %4 from 1 : (i2) -> i1
    %12 = comb.concat %c0_i63, %11 : i63, i1
    %13 = comb.mux %18, %c0_i2, %4 : i2
    %14 = comb.and %6, %dataOut_ready : i1
    %15 = comb.or %14, %result_emitted_reg : i1
    %16 = comb.and %10, %index_ready : i1
    %17 = comb.or %16, %index_emitted_reg : i1
    %18 = comb.and %15, %17 : i1
    %19 = comb.xor %18, %true : i1
    %20 = comb.and %19, %15 : i1
    %21 = comb.xor %18, %true : i1
    %22 = comb.and %21, %17 : i1
    %23 = comb.mux %18, %4, %c0_i2 : i2
    %24 = comb.icmp eq %23, %c1_i2 : i2
    %25 = comb.icmp eq %23, %c-2_i2 : i2
    hw.output %24, %25, %8, %6, %12, %10 : i1, i1, i0, i1, i64, i1
  }
  hw.module @arith_xori_in_ui1_ui1_out_ui1(in %in0 : i1, in %in0_valid : i1, in %in1 : i1, in %in1_valid : i1, in %out0_ready : i1, out in0_ready : i1, out in1_ready : i1, out out0 : i1, out out0_valid : i1) {
    %0 = comb.and %in0_valid, %in1_valid : i1
    %1 = comb.and %out0_ready, %0 : i1
    %2 = comb.xor %in0, %in1 : i1
    hw.output %1, %1, %2, %0 : i1, i1, i1, i1
  }
  hw.module @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1(in %in0 : i1, in %in0_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, in %out2_ready : i1, in %out3_ready : i1, in %out4_ready : i1, in %out5_ready : i1, in %out6_ready : i1, in %out7_ready : i1, in %out8_ready : i1, in %out9_ready : i1, in %out10_ready : i1, in %out11_ready : i1, in %out12_ready : i1, in %out13_ready : i1, in %out14_ready : i1, out in0_ready : i1, out out0 : i1, out out0_valid : i1, out out1 : i1, out out1_valid : i1, out out2 : i1, out out2_valid : i1, out out3 : i1, out out3_valid : i1, out out4 : i1, out out4_valid : i1, out out5 : i1, out out5_valid : i1, out out6 : i1, out out6_valid : i1, out out7 : i1, out out7_valid : i1, out out8 : i1, out out8_valid : i1, out out9 : i1, out out9_valid : i1, out out10 : i1, out out10_valid : i1, out out11 : i1, out out11_valid : i1, out out12 : i1, out out12_valid : i1, out out13 : i1, out out13_valid : i1, out out14 : i1, out out14_valid : i1) {
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.xor %90, %true : i1
    %1 = comb.and %5, %0 : i1
    %emitted_0 = seq.compreg sym @emitted_0 %1, %clock reset %reset, %false : i1  
    %2 = comb.xor %emitted_0, %true : i1
    %3 = comb.and %2, %in0_valid : i1
    %4 = comb.and %out0_ready, %3 : i1
    %5 = comb.or %4, %emitted_0 {sv.namehint = "done0"} : i1
    %6 = comb.xor %90, %true : i1
    %7 = comb.and %11, %6 : i1
    %emitted_1 = seq.compreg sym @emitted_1 %7, %clock reset %reset, %false : i1  
    %8 = comb.xor %emitted_1, %true : i1
    %9 = comb.and %8, %in0_valid : i1
    %10 = comb.and %out1_ready, %9 : i1
    %11 = comb.or %10, %emitted_1 {sv.namehint = "done1"} : i1
    %12 = comb.xor %90, %true : i1
    %13 = comb.and %17, %12 : i1
    %emitted_2 = seq.compreg sym @emitted_2 %13, %clock reset %reset, %false : i1  
    %14 = comb.xor %emitted_2, %true : i1
    %15 = comb.and %14, %in0_valid : i1
    %16 = comb.and %out2_ready, %15 : i1
    %17 = comb.or %16, %emitted_2 {sv.namehint = "done2"} : i1
    %18 = comb.xor %90, %true : i1
    %19 = comb.and %23, %18 : i1
    %emitted_3 = seq.compreg sym @emitted_3 %19, %clock reset %reset, %false : i1  
    %20 = comb.xor %emitted_3, %true : i1
    %21 = comb.and %20, %in0_valid : i1
    %22 = comb.and %out3_ready, %21 : i1
    %23 = comb.or %22, %emitted_3 {sv.namehint = "done3"} : i1
    %24 = comb.xor %90, %true : i1
    %25 = comb.and %29, %24 : i1
    %emitted_4 = seq.compreg sym @emitted_4 %25, %clock reset %reset, %false : i1  
    %26 = comb.xor %emitted_4, %true : i1
    %27 = comb.and %26, %in0_valid : i1
    %28 = comb.and %out4_ready, %27 : i1
    %29 = comb.or %28, %emitted_4 {sv.namehint = "done4"} : i1
    %30 = comb.xor %90, %true : i1
    %31 = comb.and %35, %30 : i1
    %emitted_5 = seq.compreg sym @emitted_5 %31, %clock reset %reset, %false : i1  
    %32 = comb.xor %emitted_5, %true : i1
    %33 = comb.and %32, %in0_valid : i1
    %34 = comb.and %out5_ready, %33 : i1
    %35 = comb.or %34, %emitted_5 {sv.namehint = "done5"} : i1
    %36 = comb.xor %90, %true : i1
    %37 = comb.and %41, %36 : i1
    %emitted_6 = seq.compreg sym @emitted_6 %37, %clock reset %reset, %false : i1  
    %38 = comb.xor %emitted_6, %true : i1
    %39 = comb.and %38, %in0_valid : i1
    %40 = comb.and %out6_ready, %39 : i1
    %41 = comb.or %40, %emitted_6 {sv.namehint = "done6"} : i1
    %42 = comb.xor %90, %true : i1
    %43 = comb.and %47, %42 : i1
    %emitted_7 = seq.compreg sym @emitted_7 %43, %clock reset %reset, %false : i1  
    %44 = comb.xor %emitted_7, %true : i1
    %45 = comb.and %44, %in0_valid : i1
    %46 = comb.and %out7_ready, %45 : i1
    %47 = comb.or %46, %emitted_7 {sv.namehint = "done7"} : i1
    %48 = comb.xor %90, %true : i1
    %49 = comb.and %53, %48 : i1
    %emitted_8 = seq.compreg sym @emitted_8 %49, %clock reset %reset, %false : i1  
    %50 = comb.xor %emitted_8, %true : i1
    %51 = comb.and %50, %in0_valid : i1
    %52 = comb.and %out8_ready, %51 : i1
    %53 = comb.or %52, %emitted_8 {sv.namehint = "done8"} : i1
    %54 = comb.xor %90, %true : i1
    %55 = comb.and %59, %54 : i1
    %emitted_9 = seq.compreg sym @emitted_9 %55, %clock reset %reset, %false : i1  
    %56 = comb.xor %emitted_9, %true : i1
    %57 = comb.and %56, %in0_valid : i1
    %58 = comb.and %out9_ready, %57 : i1
    %59 = comb.or %58, %emitted_9 {sv.namehint = "done9"} : i1
    %60 = comb.xor %90, %true : i1
    %61 = comb.and %65, %60 : i1
    %emitted_10 = seq.compreg sym @emitted_10 %61, %clock reset %reset, %false : i1  
    %62 = comb.xor %emitted_10, %true : i1
    %63 = comb.and %62, %in0_valid : i1
    %64 = comb.and %out10_ready, %63 : i1
    %65 = comb.or %64, %emitted_10 {sv.namehint = "done10"} : i1
    %66 = comb.xor %90, %true : i1
    %67 = comb.and %71, %66 : i1
    %emitted_11 = seq.compreg sym @emitted_11 %67, %clock reset %reset, %false : i1  
    %68 = comb.xor %emitted_11, %true : i1
    %69 = comb.and %68, %in0_valid : i1
    %70 = comb.and %out11_ready, %69 : i1
    %71 = comb.or %70, %emitted_11 {sv.namehint = "done11"} : i1
    %72 = comb.xor %90, %true : i1
    %73 = comb.and %77, %72 : i1
    %emitted_12 = seq.compreg sym @emitted_12 %73, %clock reset %reset, %false : i1  
    %74 = comb.xor %emitted_12, %true : i1
    %75 = comb.and %74, %in0_valid : i1
    %76 = comb.and %out12_ready, %75 : i1
    %77 = comb.or %76, %emitted_12 {sv.namehint = "done12"} : i1
    %78 = comb.xor %90, %true : i1
    %79 = comb.and %83, %78 : i1
    %emitted_13 = seq.compreg sym @emitted_13 %79, %clock reset %reset, %false : i1  
    %80 = comb.xor %emitted_13, %true : i1
    %81 = comb.and %80, %in0_valid : i1
    %82 = comb.and %out13_ready, %81 : i1
    %83 = comb.or %82, %emitted_13 {sv.namehint = "done13"} : i1
    %84 = comb.xor %90, %true : i1
    %85 = comb.and %89, %84 : i1
    %emitted_14 = seq.compreg sym @emitted_14 %85, %clock reset %reset, %false : i1  
    %86 = comb.xor %emitted_14, %true : i1
    %87 = comb.and %86, %in0_valid : i1
    %88 = comb.and %out14_ready, %87 : i1
    %89 = comb.or %88, %emitted_14 {sv.namehint = "done14"} : i1
    %90 = comb.and %5, %11, %17, %23, %29, %35, %41, %47, %53, %59, %65, %71, %77, %83, %89 {sv.namehint = "allDone"} : i1
    hw.output %90, %in0, %3, %in0, %9, %in0, %15, %in0, %21, %in0, %27, %in0, %33, %in0, %39, %in0, %45, %in0, %51, %in0, %57, %in0, %63, %in0, %69, %in0, %75, %in0, %81, %in0, %87 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
  }
  hw.module @cordic_int(in %in0 : i64, in %in0_valid : i1, in %in1 : i64, in %in1_valid : i1, in %in2 : i0, in %in2_valid : i1, in %clock : !seq.clock, in %reset : i1, in %out0_ready : i1, in %out1_ready : i1, out in0_ready : i1, out in1_ready : i1, out in2_ready : i1, out out0 : i64, out out0_valid : i1, out out1 : i0, out out1_valid : i1) {
    %handshake_buffer0.in0_ready, %handshake_buffer0.out0, %handshake_buffer0.out0_valid = hw.instance "handshake_buffer0" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %in2: i0, in0_valid: %in2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork0.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer1.in0_ready, %handshake_buffer1.out0, %handshake_buffer1.out0_valid = hw.instance "handshake_buffer1" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %in1: i64, in0_valid: %in1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux5.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer2.in0_ready, %handshake_buffer2.out0, %handshake_buffer2.out0_valid = hw.instance "handshake_buffer2" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %in0: i64, in0_valid: %in0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux3.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork0.in0_ready, %handshake_fork0.out0, %handshake_fork0.out0_valid, %handshake_fork0.out1, %handshake_fork0.out1_valid, %handshake_fork0.out2, %handshake_fork0.out2_valid, %handshake_fork0.out3, %handshake_fork0.out3_valid, %handshake_fork0.out4, %handshake_fork0.out4_valid, %handshake_fork0.out5, %handshake_fork0.out5_valid, %handshake_fork0.out6, %handshake_fork0.out6_valid, %handshake_fork0.out7, %handshake_fork0.out7_valid, %handshake_fork0.out8, %handshake_fork0.out8_valid, %handshake_fork0.out9, %handshake_fork0.out9_valid, %handshake_fork0.out10, %handshake_fork0.out10_valid, %handshake_fork0.out11, %handshake_fork0.out11_valid, %handshake_fork0.out12, %handshake_fork0.out12_valid, %handshake_fork0.out13, %handshake_fork0.out13_valid, %handshake_fork0.out14, %handshake_fork0.out14_valid, %handshake_fork0.out15, %handshake_fork0.out15_valid, %handshake_fork0.out16, %handshake_fork0.out16_valid, %handshake_fork0.out17, %handshake_fork0.out17_valid, %handshake_fork0.out18, %handshake_fork0.out18_valid, %handshake_fork0.out19, %handshake_fork0.out19_valid, %handshake_fork0.out20, %handshake_fork0.out20_valid, %handshake_fork0.out21, %handshake_fork0.out21_valid, %handshake_fork0.out22, %handshake_fork0.out22_valid, %handshake_fork0.out23, %handshake_fork0.out23_valid, %handshake_fork0.out24, %handshake_fork0.out24_valid, %handshake_fork0.out25, %handshake_fork0.out25_valid, %handshake_fork0.out26, %handshake_fork0.out26_valid, %handshake_fork0.out27, %handshake_fork0.out27_valid, %handshake_fork0.out28, %handshake_fork0.out28_valid, %handshake_fork0.out29, %handshake_fork0.out29_valid, %handshake_fork0.out30, %handshake_fork0.out30_valid, %handshake_fork0.out31, %handshake_fork0.out31_valid, %handshake_fork0.out32, %handshake_fork0.out32_valid, %handshake_fork0.out33, %handshake_fork0.out33_valid, %handshake_fork0.out34, %handshake_fork0.out34_valid, %handshake_fork0.out35, %handshake_fork0.out35_valid, %handshake_fork0.out36, %handshake_fork0.out36_valid, %handshake_fork0.out37, %handshake_fork0.out37_valid, %handshake_fork0.out38, %handshake_fork0.out38_valid, %handshake_fork0.out39, %handshake_fork0.out39_valid, %handshake_fork0.out40, %handshake_fork0.out40_valid, %handshake_fork0.out41, %handshake_fork0.out41_valid, %handshake_fork0.out42, %handshake_fork0.out42_valid, %handshake_fork0.out43, %handshake_fork0.out43_valid, %handshake_fork0.out44, %handshake_fork0.out44_valid, %handshake_fork0.out45, %handshake_fork0.out45_valid, %handshake_fork0.out46, %handshake_fork0.out46_valid, %handshake_fork0.out47, %handshake_fork0.out47_valid, %handshake_fork0.out48, %handshake_fork0.out48_valid, %handshake_fork0.out49, %handshake_fork0.out49_valid, %handshake_fork0.out50, %handshake_fork0.out50_valid, %handshake_fork0.out51, %handshake_fork0.out51_valid, %handshake_fork0.out52, %handshake_fork0.out52_valid, %handshake_fork0.out53, %handshake_fork0.out53_valid, %handshake_fork0.out54, %handshake_fork0.out54_valid, %handshake_fork0.out55, %handshake_fork0.out55_valid, %handshake_fork0.out56, %handshake_fork0.out56_valid, %handshake_fork0.out57, %handshake_fork0.out57_valid, %handshake_fork0.out58, %handshake_fork0.out58_valid, %handshake_fork0.out59, %handshake_fork0.out59_valid, %handshake_fork0.out60, %handshake_fork0.out60_valid, %handshake_fork0.out61, %handshake_fork0.out61_valid, %handshake_fork0.out62, %handshake_fork0.out62_valid, %handshake_fork0.out63, %handshake_fork0.out63_valid, %handshake_fork0.out64, %handshake_fork0.out64_valid, %handshake_fork0.out65, %handshake_fork0.out65_valid, %handshake_fork0.out66, %handshake_fork0.out66_valid, %handshake_fork0.out67, %handshake_fork0.out67_valid, %handshake_fork0.out68, %handshake_fork0.out68_valid, %handshake_fork0.out69, %handshake_fork0.out69_valid, %handshake_fork0.out70, %handshake_fork0.out70_valid, %handshake_fork0.out71, %handshake_fork0.out71_valid = hw.instance "handshake_fork0" @handshake_fork_1ins_72outs_ctrl(in0: %handshake_buffer0.out0: i0, in0_valid: %handshake_buffer0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer74.in0_ready: i1, out1_ready: %handshake_buffer73.in0_ready: i1, out2_ready: %handshake_buffer72.in0_ready: i1, out3_ready: %handshake_buffer71.in0_ready: i1, out4_ready: %handshake_buffer70.in0_ready: i1, out5_ready: %handshake_buffer69.in0_ready: i1, out6_ready: %handshake_buffer68.in0_ready: i1, out7_ready: %handshake_buffer67.in0_ready: i1, out8_ready: %handshake_buffer66.in0_ready: i1, out9_ready: %handshake_buffer65.in0_ready: i1, out10_ready: %handshake_buffer64.in0_ready: i1, out11_ready: %handshake_buffer63.in0_ready: i1, out12_ready: %handshake_buffer62.in0_ready: i1, out13_ready: %handshake_buffer61.in0_ready: i1, out14_ready: %handshake_buffer60.in0_ready: i1, out15_ready: %handshake_buffer59.in0_ready: i1, out16_ready: %handshake_buffer58.in0_ready: i1, out17_ready: %handshake_buffer57.in0_ready: i1, out18_ready: %handshake_buffer56.in0_ready: i1, out19_ready: %handshake_buffer55.in0_ready: i1, out20_ready: %handshake_buffer54.in0_ready: i1, out21_ready: %handshake_buffer53.in0_ready: i1, out22_ready: %handshake_buffer52.in0_ready: i1, out23_ready: %handshake_buffer51.in0_ready: i1, out24_ready: %handshake_buffer50.in0_ready: i1, out25_ready: %handshake_buffer49.in0_ready: i1, out26_ready: %handshake_buffer48.in0_ready: i1, out27_ready: %handshake_buffer47.in0_ready: i1, out28_ready: %handshake_buffer46.in0_ready: i1, out29_ready: %handshake_buffer45.in0_ready: i1, out30_ready: %handshake_buffer44.in0_ready: i1, out31_ready: %handshake_buffer43.in0_ready: i1, out32_ready: %handshake_buffer42.in0_ready: i1, out33_ready: %handshake_buffer41.in0_ready: i1, out34_ready: %handshake_buffer40.in0_ready: i1, out35_ready: %handshake_buffer39.in0_ready: i1, out36_ready: %handshake_buffer38.in0_ready: i1, out37_ready: %handshake_buffer37.in0_ready: i1, out38_ready: %handshake_buffer36.in0_ready: i1, out39_ready: %handshake_buffer35.in0_ready: i1, out40_ready: %handshake_buffer34.in0_ready: i1, out41_ready: %handshake_buffer33.in0_ready: i1, out42_ready: %handshake_buffer32.in0_ready: i1, out43_ready: %handshake_buffer31.in0_ready: i1, out44_ready: %handshake_buffer30.in0_ready: i1, out45_ready: %handshake_buffer29.in0_ready: i1, out46_ready: %handshake_buffer28.in0_ready: i1, out47_ready: %handshake_buffer27.in0_ready: i1, out48_ready: %handshake_buffer26.in0_ready: i1, out49_ready: %handshake_buffer25.in0_ready: i1, out50_ready: %handshake_buffer24.in0_ready: i1, out51_ready: %handshake_buffer23.in0_ready: i1, out52_ready: %handshake_buffer22.in0_ready: i1, out53_ready: %handshake_buffer21.in0_ready: i1, out54_ready: %handshake_buffer20.in0_ready: i1, out55_ready: %handshake_buffer19.in0_ready: i1, out56_ready: %handshake_buffer18.in0_ready: i1, out57_ready: %handshake_buffer17.in0_ready: i1, out58_ready: %handshake_buffer16.in0_ready: i1, out59_ready: %handshake_buffer15.in0_ready: i1, out60_ready: %handshake_buffer14.in0_ready: i1, out61_ready: %handshake_buffer13.in0_ready: i1, out62_ready: %handshake_buffer12.in0_ready: i1, out63_ready: %handshake_buffer11.in0_ready: i1, out64_ready: %handshake_buffer10.in0_ready: i1, out65_ready: %handshake_buffer9.in0_ready: i1, out66_ready: %handshake_buffer8.in0_ready: i1, out67_ready: %handshake_buffer7.in0_ready: i1, out68_ready: %handshake_buffer6.in0_ready: i1, out69_ready: %handshake_buffer5.in0_ready: i1, out70_ready: %handshake_buffer4.in0_ready: i1, out71_ready: %handshake_buffer3.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1, out10: i0, out10_valid: i1, out11: i0, out11_valid: i1, out12: i0, out12_valid: i1, out13: i0, out13_valid: i1, out14: i0, out14_valid: i1, out15: i0, out15_valid: i1, out16: i0, out16_valid: i1, out17: i0, out17_valid: i1, out18: i0, out18_valid: i1, out19: i0, out19_valid: i1, out20: i0, out20_valid: i1, out21: i0, out21_valid: i1, out22: i0, out22_valid: i1, out23: i0, out23_valid: i1, out24: i0, out24_valid: i1, out25: i0, out25_valid: i1, out26: i0, out26_valid: i1, out27: i0, out27_valid: i1, out28: i0, out28_valid: i1, out29: i0, out29_valid: i1, out30: i0, out30_valid: i1, out31: i0, out31_valid: i1, out32: i0, out32_valid: i1, out33: i0, out33_valid: i1, out34: i0, out34_valid: i1, out35: i0, out35_valid: i1, out36: i0, out36_valid: i1, out37: i0, out37_valid: i1, out38: i0, out38_valid: i1, out39: i0, out39_valid: i1, out40: i0, out40_valid: i1, out41: i0, out41_valid: i1, out42: i0, out42_valid: i1, out43: i0, out43_valid: i1, out44: i0, out44_valid: i1, out45: i0, out45_valid: i1, out46: i0, out46_valid: i1, out47: i0, out47_valid: i1, out48: i0, out48_valid: i1, out49: i0, out49_valid: i1, out50: i0, out50_valid: i1, out51: i0, out51_valid: i1, out52: i0, out52_valid: i1, out53: i0, out53_valid: i1, out54: i0, out54_valid: i1, out55: i0, out55_valid: i1, out56: i0, out56_valid: i1, out57: i0, out57_valid: i1, out58: i0, out58_valid: i1, out59: i0, out59_valid: i1, out60: i0, out60_valid: i1, out61: i0, out61_valid: i1, out62: i0, out62_valid: i1, out63: i0, out63_valid: i1, out64: i0, out64_valid: i1, out65: i0, out65_valid: i1, out66: i0, out66_valid: i1, out67: i0, out67_valid: i1, out68: i0, out68_valid: i1, out69: i0, out69_valid: i1, out70: i0, out70_valid: i1, out71: i0, out71_valid: i1)
    %handshake_buffer3.in0_ready, %handshake_buffer3.out0, %handshake_buffer3.out0_valid = hw.instance "handshake_buffer3" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out71: i0, in0_valid: %handshake_fork0.out71_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer4.in0_ready, %handshake_buffer4.out0, %handshake_buffer4.out0_valid = hw.instance "handshake_buffer4" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out70: i0, in0_valid: %handshake_fork0.out70_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer5.in0_ready, %handshake_buffer5.out0, %handshake_buffer5.out0_valid = hw.instance "handshake_buffer5" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out69: i0, in0_valid: %handshake_fork0.out69_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer6.in0_ready, %handshake_buffer6.out0, %handshake_buffer6.out0_valid = hw.instance "handshake_buffer6" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out68: i0, in0_valid: %handshake_fork0.out68_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer7.in0_ready, %handshake_buffer7.out0, %handshake_buffer7.out0_valid = hw.instance "handshake_buffer7" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out67: i0, in0_valid: %handshake_fork0.out67_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer8.in0_ready, %handshake_buffer8.out0, %handshake_buffer8.out0_valid = hw.instance "handshake_buffer8" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out66: i0, in0_valid: %handshake_fork0.out66_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer9.in0_ready, %handshake_buffer9.out0, %handshake_buffer9.out0_valid = hw.instance "handshake_buffer9" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out65: i0, in0_valid: %handshake_fork0.out65_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer10.in0_ready, %handshake_buffer10.out0, %handshake_buffer10.out0_valid = hw.instance "handshake_buffer10" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out64: i0, in0_valid: %handshake_fork0.out64_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer11.in0_ready, %handshake_buffer11.out0, %handshake_buffer11.out0_valid = hw.instance "handshake_buffer11" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out63: i0, in0_valid: %handshake_fork0.out63_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer12.in0_ready, %handshake_buffer12.out0, %handshake_buffer12.out0_valid = hw.instance "handshake_buffer12" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out62: i0, in0_valid: %handshake_fork0.out62_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join6.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer13.in0_ready, %handshake_buffer13.out0, %handshake_buffer13.out0_valid = hw.instance "handshake_buffer13" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out61: i0, in0_valid: %handshake_fork0.out61_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join5.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer14.in0_ready, %handshake_buffer14.out0, %handshake_buffer14.out0_valid = hw.instance "handshake_buffer14" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out60: i0, in0_valid: %handshake_fork0.out60_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join4.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer15.in0_ready, %handshake_buffer15.out0, %handshake_buffer15.out0_valid = hw.instance "handshake_buffer15" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out59: i0, in0_valid: %handshake_fork0.out59_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join3.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer16.in0_ready, %handshake_buffer16.out0, %handshake_buffer16.out0_valid = hw.instance "handshake_buffer16" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out58: i0, in0_valid: %handshake_fork0.out58_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join2.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer17.in0_ready, %handshake_buffer17.out0, %handshake_buffer17.out0_valid = hw.instance "handshake_buffer17" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out57: i0, in0_valid: %handshake_fork0.out57_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join1.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer18.in0_ready, %handshake_buffer18.out0, %handshake_buffer18.out0_valid = hw.instance "handshake_buffer18" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out56: i0, in0_valid: %handshake_fork0.out56_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store0.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer19.in0_ready, %handshake_buffer19.out0, %handshake_buffer19.out0_valid = hw.instance "handshake_buffer19" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out55: i0, in0_valid: %handshake_fork0.out55_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer20.in0_ready, %handshake_buffer20.out0, %handshake_buffer20.out0_valid = hw.instance "handshake_buffer20" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out54: i0, in0_valid: %handshake_fork0.out54_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant54.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer21.in0_ready, %handshake_buffer21.out0, %handshake_buffer21.out0_valid = hw.instance "handshake_buffer21" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out53: i0, in0_valid: %handshake_fork0.out53_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant53.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer22.in0_ready, %handshake_buffer22.out0, %handshake_buffer22.out0_valid = hw.instance "handshake_buffer22" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out52: i0, in0_valid: %handshake_fork0.out52_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant52.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer23.in0_ready, %handshake_buffer23.out0, %handshake_buffer23.out0_valid = hw.instance "handshake_buffer23" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out51: i0, in0_valid: %handshake_fork0.out51_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant51.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer24.in0_ready, %handshake_buffer24.out0, %handshake_buffer24.out0_valid = hw.instance "handshake_buffer24" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out50: i0, in0_valid: %handshake_fork0.out50_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant50.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer25.in0_ready, %handshake_buffer25.out0, %handshake_buffer25.out0_valid = hw.instance "handshake_buffer25" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out49: i0, in0_valid: %handshake_fork0.out49_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant49.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer26.in0_ready, %handshake_buffer26.out0, %handshake_buffer26.out0_valid = hw.instance "handshake_buffer26" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out48: i0, in0_valid: %handshake_fork0.out48_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant48.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer27.in0_ready, %handshake_buffer27.out0, %handshake_buffer27.out0_valid = hw.instance "handshake_buffer27" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out47: i0, in0_valid: %handshake_fork0.out47_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant47.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer28.in0_ready, %handshake_buffer28.out0, %handshake_buffer28.out0_valid = hw.instance "handshake_buffer28" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out46: i0, in0_valid: %handshake_fork0.out46_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant46.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer29.in0_ready, %handshake_buffer29.out0, %handshake_buffer29.out0_valid = hw.instance "handshake_buffer29" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out45: i0, in0_valid: %handshake_fork0.out45_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant45.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer30.in0_ready, %handshake_buffer30.out0, %handshake_buffer30.out0_valid = hw.instance "handshake_buffer30" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out44: i0, in0_valid: %handshake_fork0.out44_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant44.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer31.in0_ready, %handshake_buffer31.out0, %handshake_buffer31.out0_valid = hw.instance "handshake_buffer31" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out43: i0, in0_valid: %handshake_fork0.out43_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant43.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer32.in0_ready, %handshake_buffer32.out0, %handshake_buffer32.out0_valid = hw.instance "handshake_buffer32" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out42: i0, in0_valid: %handshake_fork0.out42_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant42.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer33.in0_ready, %handshake_buffer33.out0, %handshake_buffer33.out0_valid = hw.instance "handshake_buffer33" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out41: i0, in0_valid: %handshake_fork0.out41_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant41.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer34.in0_ready, %handshake_buffer34.out0, %handshake_buffer34.out0_valid = hw.instance "handshake_buffer34" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out40: i0, in0_valid: %handshake_fork0.out40_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant40.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer35.in0_ready, %handshake_buffer35.out0, %handshake_buffer35.out0_valid = hw.instance "handshake_buffer35" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out39: i0, in0_valid: %handshake_fork0.out39_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant39.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer36.in0_ready, %handshake_buffer36.out0, %handshake_buffer36.out0_valid = hw.instance "handshake_buffer36" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out38: i0, in0_valid: %handshake_fork0.out38_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant38.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer37.in0_ready, %handshake_buffer37.out0, %handshake_buffer37.out0_valid = hw.instance "handshake_buffer37" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out37: i0, in0_valid: %handshake_fork0.out37_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant37.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer38.in0_ready, %handshake_buffer38.out0, %handshake_buffer38.out0_valid = hw.instance "handshake_buffer38" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out36: i0, in0_valid: %handshake_fork0.out36_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant36.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer39.in0_ready, %handshake_buffer39.out0, %handshake_buffer39.out0_valid = hw.instance "handshake_buffer39" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out35: i0, in0_valid: %handshake_fork0.out35_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant35.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer40.in0_ready, %handshake_buffer40.out0, %handshake_buffer40.out0_valid = hw.instance "handshake_buffer40" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out34: i0, in0_valid: %handshake_fork0.out34_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant34.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer41.in0_ready, %handshake_buffer41.out0, %handshake_buffer41.out0_valid = hw.instance "handshake_buffer41" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out33: i0, in0_valid: %handshake_fork0.out33_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant33.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer42.in0_ready, %handshake_buffer42.out0, %handshake_buffer42.out0_valid = hw.instance "handshake_buffer42" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out32: i0, in0_valid: %handshake_fork0.out32_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant32.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer43.in0_ready, %handshake_buffer43.out0, %handshake_buffer43.out0_valid = hw.instance "handshake_buffer43" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out31: i0, in0_valid: %handshake_fork0.out31_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant31.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer44.in0_ready, %handshake_buffer44.out0, %handshake_buffer44.out0_valid = hw.instance "handshake_buffer44" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out30: i0, in0_valid: %handshake_fork0.out30_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant30.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer45.in0_ready, %handshake_buffer45.out0, %handshake_buffer45.out0_valid = hw.instance "handshake_buffer45" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out29: i0, in0_valid: %handshake_fork0.out29_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant29.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer46.in0_ready, %handshake_buffer46.out0, %handshake_buffer46.out0_valid = hw.instance "handshake_buffer46" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out28: i0, in0_valid: %handshake_fork0.out28_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant28.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer47.in0_ready, %handshake_buffer47.out0, %handshake_buffer47.out0_valid = hw.instance "handshake_buffer47" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out27: i0, in0_valid: %handshake_fork0.out27_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant27.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer48.in0_ready, %handshake_buffer48.out0, %handshake_buffer48.out0_valid = hw.instance "handshake_buffer48" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out26: i0, in0_valid: %handshake_fork0.out26_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant26.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer49.in0_ready, %handshake_buffer49.out0, %handshake_buffer49.out0_valid = hw.instance "handshake_buffer49" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out25: i0, in0_valid: %handshake_fork0.out25_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant25.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer50.in0_ready, %handshake_buffer50.out0, %handshake_buffer50.out0_valid = hw.instance "handshake_buffer50" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out24: i0, in0_valid: %handshake_fork0.out24_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant24.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer51.in0_ready, %handshake_buffer51.out0, %handshake_buffer51.out0_valid = hw.instance "handshake_buffer51" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out23: i0, in0_valid: %handshake_fork0.out23_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant23.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer52.in0_ready, %handshake_buffer52.out0, %handshake_buffer52.out0_valid = hw.instance "handshake_buffer52" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out22: i0, in0_valid: %handshake_fork0.out22_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant22.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer53.in0_ready, %handshake_buffer53.out0, %handshake_buffer53.out0_valid = hw.instance "handshake_buffer53" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out21: i0, in0_valid: %handshake_fork0.out21_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant21.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer54.in0_ready, %handshake_buffer54.out0, %handshake_buffer54.out0_valid = hw.instance "handshake_buffer54" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out20: i0, in0_valid: %handshake_fork0.out20_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant20.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer55.in0_ready, %handshake_buffer55.out0, %handshake_buffer55.out0_valid = hw.instance "handshake_buffer55" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out19: i0, in0_valid: %handshake_fork0.out19_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant19.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer56.in0_ready, %handshake_buffer56.out0, %handshake_buffer56.out0_valid = hw.instance "handshake_buffer56" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out18: i0, in0_valid: %handshake_fork0.out18_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant18.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer57.in0_ready, %handshake_buffer57.out0, %handshake_buffer57.out0_valid = hw.instance "handshake_buffer57" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out17: i0, in0_valid: %handshake_fork0.out17_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant17.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer58.in0_ready, %handshake_buffer58.out0, %handshake_buffer58.out0_valid = hw.instance "handshake_buffer58" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out16: i0, in0_valid: %handshake_fork0.out16_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant16.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer59.in0_ready, %handshake_buffer59.out0, %handshake_buffer59.out0_valid = hw.instance "handshake_buffer59" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out15: i0, in0_valid: %handshake_fork0.out15_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant15.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer60.in0_ready, %handshake_buffer60.out0, %handshake_buffer60.out0_valid = hw.instance "handshake_buffer60" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out14: i0, in0_valid: %handshake_fork0.out14_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant14.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer61.in0_ready, %handshake_buffer61.out0, %handshake_buffer61.out0_valid = hw.instance "handshake_buffer61" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out13: i0, in0_valid: %handshake_fork0.out13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant13.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer62.in0_ready, %handshake_buffer62.out0, %handshake_buffer62.out0_valid = hw.instance "handshake_buffer62" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out12: i0, in0_valid: %handshake_fork0.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant12.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer63.in0_ready, %handshake_buffer63.out0, %handshake_buffer63.out0_valid = hw.instance "handshake_buffer63" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out11: i0, in0_valid: %handshake_fork0.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant11.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer64.in0_ready, %handshake_buffer64.out0, %handshake_buffer64.out0_valid = hw.instance "handshake_buffer64" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out10: i0, in0_valid: %handshake_fork0.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant10.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer65.in0_ready, %handshake_buffer65.out0, %handshake_buffer65.out0_valid = hw.instance "handshake_buffer65" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out9: i0, in0_valid: %handshake_fork0.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant9.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer66.in0_ready, %handshake_buffer66.out0, %handshake_buffer66.out0_valid = hw.instance "handshake_buffer66" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out8: i0, in0_valid: %handshake_fork0.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant8.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer67.in0_ready, %handshake_buffer67.out0, %handshake_buffer67.out0_valid = hw.instance "handshake_buffer67" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out7: i0, in0_valid: %handshake_fork0.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant7.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer68.in0_ready, %handshake_buffer68.out0, %handshake_buffer68.out0_valid = hw.instance "handshake_buffer68" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out6: i0, in0_valid: %handshake_fork0.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant6.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer69.in0_ready, %handshake_buffer69.out0, %handshake_buffer69.out0_valid = hw.instance "handshake_buffer69" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out5: i0, in0_valid: %handshake_fork0.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant5.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer70.in0_ready, %handshake_buffer70.out0, %handshake_buffer70.out0_valid = hw.instance "handshake_buffer70" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out4: i0, in0_valid: %handshake_fork0.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant4.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer71.in0_ready, %handshake_buffer71.out0, %handshake_buffer71.out0_valid = hw.instance "handshake_buffer71" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out3: i0, in0_valid: %handshake_fork0.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant3.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer72.in0_ready, %handshake_buffer72.out0, %handshake_buffer72.out0_valid = hw.instance "handshake_buffer72" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out2: i0, in0_valid: %handshake_fork0.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant2.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer73.in0_ready, %handshake_buffer73.out0, %handshake_buffer73.out0_valid = hw.instance "handshake_buffer73" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out1: i0, in0_valid: %handshake_fork0.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant1.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer74.in0_ready, %handshake_buffer74.out0, %handshake_buffer74.out0_valid = hw.instance "handshake_buffer74" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork0.out0: i0, in0_valid: %handshake_fork0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant0.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_memory0.stData0_ready, %handshake_memory0.stAddr0_ready, %handshake_memory0.stData1_ready, %handshake_memory0.stAddr1_ready, %handshake_memory0.stData2_ready, %handshake_memory0.stAddr2_ready, %handshake_memory0.stData3_ready, %handshake_memory0.stAddr3_ready, %handshake_memory0.stData4_ready, %handshake_memory0.stAddr4_ready, %handshake_memory0.stData5_ready, %handshake_memory0.stAddr5_ready, %handshake_memory0.stData6_ready, %handshake_memory0.stAddr6_ready, %handshake_memory0.stData7_ready, %handshake_memory0.stAddr7_ready, %handshake_memory0.stData8_ready, %handshake_memory0.stAddr8_ready, %handshake_memory0.stData9_ready, %handshake_memory0.stAddr9_ready, %handshake_memory0.stData10_ready, %handshake_memory0.stAddr10_ready, %handshake_memory0.stData11_ready, %handshake_memory0.stAddr11_ready, %handshake_memory0.stData12_ready, %handshake_memory0.stAddr12_ready, %handshake_memory0.stData13_ready, %handshake_memory0.stAddr13_ready, %handshake_memory0.stData14_ready, %handshake_memory0.stAddr14_ready, %handshake_memory0.stData15_ready, %handshake_memory0.stAddr15_ready, %handshake_memory0.ldAddr0_ready, %handshake_memory0.ldData0, %handshake_memory0.ldData0_valid, %handshake_memory0.stDone0, %handshake_memory0.stDone0_valid, %handshake_memory0.stDone1, %handshake_memory0.stDone1_valid, %handshake_memory0.stDone2, %handshake_memory0.stDone2_valid, %handshake_memory0.stDone3, %handshake_memory0.stDone3_valid, %handshake_memory0.stDone4, %handshake_memory0.stDone4_valid, %handshake_memory0.stDone5, %handshake_memory0.stDone5_valid, %handshake_memory0.stDone6, %handshake_memory0.stDone6_valid, %handshake_memory0.stDone7, %handshake_memory0.stDone7_valid, %handshake_memory0.stDone8, %handshake_memory0.stDone8_valid, %handshake_memory0.stDone9, %handshake_memory0.stDone9_valid, %handshake_memory0.stDone10, %handshake_memory0.stDone10_valid, %handshake_memory0.stDone11, %handshake_memory0.stDone11_valid, %handshake_memory0.stDone12, %handshake_memory0.stDone12_valid, %handshake_memory0.stDone13, %handshake_memory0.stDone13_valid, %handshake_memory0.stDone14, %handshake_memory0.stDone14_valid, %handshake_memory0.stDone15, %handshake_memory0.stDone15_valid, %handshake_memory0.ldDone0, %handshake_memory0.ldDone0_valid = hw.instance "handshake_memory0" @handshake_memory_out_ui64_id0(stData0: %handshake_buffer293.out0: i64, stData0_valid: %handshake_buffer293.out0_valid: i1, stAddr0: %handshake_buffer292.out0: i64, stAddr0_valid: %handshake_buffer292.out0_valid: i1, stData1: %handshake_buffer299.out0: i64, stData1_valid: %handshake_buffer299.out0_valid: i1, stAddr1: %handshake_buffer298.out0: i64, stAddr1_valid: %handshake_buffer298.out0_valid: i1, stData2: %handshake_buffer305.out0: i64, stData2_valid: %handshake_buffer305.out0_valid: i1, stAddr2: %handshake_buffer304.out0: i64, stAddr2_valid: %handshake_buffer304.out0_valid: i1, stData3: %handshake_buffer311.out0: i64, stData3_valid: %handshake_buffer311.out0_valid: i1, stAddr3: %handshake_buffer310.out0: i64, stAddr3_valid: %handshake_buffer310.out0_valid: i1, stData4: %handshake_buffer317.out0: i64, stData4_valid: %handshake_buffer317.out0_valid: i1, stAddr4: %handshake_buffer316.out0: i64, stAddr4_valid: %handshake_buffer316.out0_valid: i1, stData5: %handshake_buffer323.out0: i64, stData5_valid: %handshake_buffer323.out0_valid: i1, stAddr5: %handshake_buffer322.out0: i64, stAddr5_valid: %handshake_buffer322.out0_valid: i1, stData6: %handshake_buffer329.out0: i64, stData6_valid: %handshake_buffer329.out0_valid: i1, stAddr6: %handshake_buffer328.out0: i64, stAddr6_valid: %handshake_buffer328.out0_valid: i1, stData7: %handshake_buffer335.out0: i64, stData7_valid: %handshake_buffer335.out0_valid: i1, stAddr7: %handshake_buffer334.out0: i64, stAddr7_valid: %handshake_buffer334.out0_valid: i1, stData8: %handshake_buffer341.out0: i64, stData8_valid: %handshake_buffer341.out0_valid: i1, stAddr8: %handshake_buffer340.out0: i64, stAddr8_valid: %handshake_buffer340.out0_valid: i1, stData9: %handshake_buffer347.out0: i64, stData9_valid: %handshake_buffer347.out0_valid: i1, stAddr9: %handshake_buffer346.out0: i64, stAddr9_valid: %handshake_buffer346.out0_valid: i1, stData10: %handshake_buffer353.out0: i64, stData10_valid: %handshake_buffer353.out0_valid: i1, stAddr10: %handshake_buffer352.out0: i64, stAddr10_valid: %handshake_buffer352.out0_valid: i1, stData11: %handshake_buffer359.out0: i64, stData11_valid: %handshake_buffer359.out0_valid: i1, stAddr11: %handshake_buffer358.out0: i64, stAddr11_valid: %handshake_buffer358.out0_valid: i1, stData12: %handshake_buffer365.out0: i64, stData12_valid: %handshake_buffer365.out0_valid: i1, stAddr12: %handshake_buffer364.out0: i64, stAddr12_valid: %handshake_buffer364.out0_valid: i1, stData13: %handshake_buffer371.out0: i64, stData13_valid: %handshake_buffer371.out0_valid: i1, stAddr13: %handshake_buffer370.out0: i64, stAddr13_valid: %handshake_buffer370.out0_valid: i1, stData14: %handshake_buffer377.out0: i64, stData14_valid: %handshake_buffer377.out0_valid: i1, stAddr14: %handshake_buffer376.out0: i64, stAddr14_valid: %handshake_buffer376.out0_valid: i1, stData15: %handshake_buffer383.out0: i64, stData15_valid: %handshake_buffer383.out0_valid: i1, stAddr15: %handshake_buffer382.out0: i64, stAddr15_valid: %handshake_buffer382.out0_valid: i1, ldAddr0: %handshake_buffer464.out0: i64, ldAddr0_valid: %handshake_buffer464.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, ldData0_ready: %handshake_buffer92.in0_ready: i1, stDone0_ready: %handshake_buffer91.in0_ready: i1, stDone1_ready: %handshake_buffer90.in0_ready: i1, stDone2_ready: %handshake_buffer89.in0_ready: i1, stDone3_ready: %handshake_buffer88.in0_ready: i1, stDone4_ready: %handshake_buffer87.in0_ready: i1, stDone5_ready: %handshake_buffer86.in0_ready: i1, stDone6_ready: %handshake_buffer85.in0_ready: i1, stDone7_ready: %handshake_buffer84.in0_ready: i1, stDone8_ready: %handshake_buffer83.in0_ready: i1, stDone9_ready: %handshake_buffer82.in0_ready: i1, stDone10_ready: %handshake_buffer81.in0_ready: i1, stDone11_ready: %handshake_buffer80.in0_ready: i1, stDone12_ready: %handshake_buffer79.in0_ready: i1, stDone13_ready: %handshake_buffer78.in0_ready: i1, stDone14_ready: %handshake_buffer77.in0_ready: i1, stDone15_ready: %handshake_buffer76.in0_ready: i1, ldDone0_ready: %handshake_buffer75.in0_ready: i1) -> (stData0_ready: i1, stAddr0_ready: i1, stData1_ready: i1, stAddr1_ready: i1, stData2_ready: i1, stAddr2_ready: i1, stData3_ready: i1, stAddr3_ready: i1, stData4_ready: i1, stAddr4_ready: i1, stData5_ready: i1, stAddr5_ready: i1, stData6_ready: i1, stAddr6_ready: i1, stData7_ready: i1, stAddr7_ready: i1, stData8_ready: i1, stAddr8_ready: i1, stData9_ready: i1, stAddr9_ready: i1, stData10_ready: i1, stAddr10_ready: i1, stData11_ready: i1, stAddr11_ready: i1, stData12_ready: i1, stAddr12_ready: i1, stData13_ready: i1, stAddr13_ready: i1, stData14_ready: i1, stAddr14_ready: i1, stData15_ready: i1, stAddr15_ready: i1, ldAddr0_ready: i1, ldData0: i64, ldData0_valid: i1, stDone0: i0, stDone0_valid: i1, stDone1: i0, stDone1_valid: i1, stDone2: i0, stDone2_valid: i1, stDone3: i0, stDone3_valid: i1, stDone4: i0, stDone4_valid: i1, stDone5: i0, stDone5_valid: i1, stDone6: i0, stDone6_valid: i1, stDone7: i0, stDone7_valid: i1, stDone8: i0, stDone8_valid: i1, stDone9: i0, stDone9_valid: i1, stDone10: i0, stDone10_valid: i1, stDone11: i0, stDone11_valid: i1, stDone12: i0, stDone12_valid: i1, stDone13: i0, stDone13_valid: i1, stDone14: i0, stDone14_valid: i1, stDone15: i0, stDone15_valid: i1, ldDone0: i0, ldDone0_valid: i1)
    %handshake_buffer75.in0_ready, %handshake_buffer75.out0, %handshake_buffer75.out0_valid = hw.instance "handshake_buffer75" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.ldDone0: i0, in0_valid: %handshake_memory0.ldDone0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join16.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer76.in0_ready, %handshake_buffer76.out0, %handshake_buffer76.out0_valid = hw.instance "handshake_buffer76" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone15: i0, in0_valid: %handshake_memory0.stDone15_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in16_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer77.in0_ready, %handshake_buffer77.out0, %handshake_buffer77.out0_valid = hw.instance "handshake_buffer77" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone14: i0, in0_valid: %handshake_memory0.stDone14_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork1.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer78.in0_ready, %handshake_buffer78.out0, %handshake_buffer78.out0_valid = hw.instance "handshake_buffer78" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone13: i0, in0_valid: %handshake_memory0.stDone13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork2.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer79.in0_ready, %handshake_buffer79.out0, %handshake_buffer79.out0_valid = hw.instance "handshake_buffer79" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone12: i0, in0_valid: %handshake_memory0.stDone12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork3.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer80.in0_ready, %handshake_buffer80.out0, %handshake_buffer80.out0_valid = hw.instance "handshake_buffer80" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone11: i0, in0_valid: %handshake_memory0.stDone11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork4.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer81.in0_ready, %handshake_buffer81.out0, %handshake_buffer81.out0_valid = hw.instance "handshake_buffer81" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone10: i0, in0_valid: %handshake_memory0.stDone10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork5.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer82.in0_ready, %handshake_buffer82.out0, %handshake_buffer82.out0_valid = hw.instance "handshake_buffer82" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone9: i0, in0_valid: %handshake_memory0.stDone9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork6.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer83.in0_ready, %handshake_buffer83.out0, %handshake_buffer83.out0_valid = hw.instance "handshake_buffer83" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone8: i0, in0_valid: %handshake_memory0.stDone8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork7.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer84.in0_ready, %handshake_buffer84.out0, %handshake_buffer84.out0_valid = hw.instance "handshake_buffer84" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone7: i0, in0_valid: %handshake_memory0.stDone7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork8.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer85.in0_ready, %handshake_buffer85.out0, %handshake_buffer85.out0_valid = hw.instance "handshake_buffer85" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone6: i0, in0_valid: %handshake_memory0.stDone6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork9.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer86.in0_ready, %handshake_buffer86.out0, %handshake_buffer86.out0_valid = hw.instance "handshake_buffer86" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone5: i0, in0_valid: %handshake_memory0.stDone5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork10.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer87.in0_ready, %handshake_buffer87.out0, %handshake_buffer87.out0_valid = hw.instance "handshake_buffer87" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone4: i0, in0_valid: %handshake_memory0.stDone4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork11.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer88.in0_ready, %handshake_buffer88.out0, %handshake_buffer88.out0_valid = hw.instance "handshake_buffer88" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone3: i0, in0_valid: %handshake_memory0.stDone3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork12.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer89.in0_ready, %handshake_buffer89.out0, %handshake_buffer89.out0_valid = hw.instance "handshake_buffer89" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone2: i0, in0_valid: %handshake_memory0.stDone2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork13.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer90.in0_ready, %handshake_buffer90.out0, %handshake_buffer90.out0_valid = hw.instance "handshake_buffer90" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone1: i0, in0_valid: %handshake_memory0.stDone1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork14.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer91.in0_ready, %handshake_buffer91.out0, %handshake_buffer91.out0_valid = hw.instance "handshake_buffer91" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_memory0.stDone0: i0, in0_valid: %handshake_memory0.stDone0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork15.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer92.in0_ready, %handshake_buffer92.out0, %handshake_buffer92.out0_valid = hw.instance "handshake_buffer92" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_memory0.ldData0: i64, in0_valid: %handshake_memory0.ldData0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_load0.dataFromMem_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork1.in0_ready, %handshake_fork1.out0, %handshake_fork1.out0_valid, %handshake_fork1.out1, %handshake_fork1.out1_valid = hw.instance "handshake_fork1" @handshake_fork_1ins_2outs_ctrl(in0: %handshake_buffer77.out0: i0, in0_valid: %handshake_buffer77.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer94.in0_ready: i1, out1_ready: %handshake_buffer93.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1)
    %handshake_buffer93.in0_ready, %handshake_buffer93.out0, %handshake_buffer93.out0_valid = hw.instance "handshake_buffer93" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork1.out1: i0, in0_valid: %handshake_fork1.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in15_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer94.in0_ready, %handshake_buffer94.out0, %handshake_buffer94.out0_valid = hw.instance "handshake_buffer94" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork1.out0: i0, in0_valid: %handshake_fork1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in15_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork2.in0_ready, %handshake_fork2.out0, %handshake_fork2.out0_valid, %handshake_fork2.out1, %handshake_fork2.out1_valid, %handshake_fork2.out2, %handshake_fork2.out2_valid = hw.instance "handshake_fork2" @handshake_fork_1ins_3outs_ctrl(in0: %handshake_buffer78.out0: i0, in0_valid: %handshake_buffer78.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer97.in0_ready: i1, out1_ready: %handshake_buffer96.in0_ready: i1, out2_ready: %handshake_buffer95.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1)
    %handshake_buffer95.in0_ready, %handshake_buffer95.out0, %handshake_buffer95.out0_valid = hw.instance "handshake_buffer95" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork2.out2: i0, in0_valid: %handshake_fork2.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in14_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer96.in0_ready, %handshake_buffer96.out0, %handshake_buffer96.out0_valid = hw.instance "handshake_buffer96" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork2.out1: i0, in0_valid: %handshake_fork2.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in14_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer97.in0_ready, %handshake_buffer97.out0, %handshake_buffer97.out0_valid = hw.instance "handshake_buffer97" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork2.out0: i0, in0_valid: %handshake_fork2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in14_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork3.in0_ready, %handshake_fork3.out0, %handshake_fork3.out0_valid, %handshake_fork3.out1, %handshake_fork3.out1_valid, %handshake_fork3.out2, %handshake_fork3.out2_valid, %handshake_fork3.out3, %handshake_fork3.out3_valid = hw.instance "handshake_fork3" @handshake_fork_1ins_4outs_ctrl(in0: %handshake_buffer79.out0: i0, in0_valid: %handshake_buffer79.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer101.in0_ready: i1, out1_ready: %handshake_buffer100.in0_ready: i1, out2_ready: %handshake_buffer99.in0_ready: i1, out3_ready: %handshake_buffer98.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1)
    %handshake_buffer98.in0_ready, %handshake_buffer98.out0, %handshake_buffer98.out0_valid = hw.instance "handshake_buffer98" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork3.out3: i0, in0_valid: %handshake_fork3.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in13_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer99.in0_ready, %handshake_buffer99.out0, %handshake_buffer99.out0_valid = hw.instance "handshake_buffer99" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork3.out2: i0, in0_valid: %handshake_fork3.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in13_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer100.in0_ready, %handshake_buffer100.out0, %handshake_buffer100.out0_valid = hw.instance "handshake_buffer100" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork3.out1: i0, in0_valid: %handshake_fork3.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in13_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer101.in0_ready, %handshake_buffer101.out0, %handshake_buffer101.out0_valid = hw.instance "handshake_buffer101" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork3.out0: i0, in0_valid: %handshake_fork3.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in13_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork4.in0_ready, %handshake_fork4.out0, %handshake_fork4.out0_valid, %handshake_fork4.out1, %handshake_fork4.out1_valid, %handshake_fork4.out2, %handshake_fork4.out2_valid, %handshake_fork4.out3, %handshake_fork4.out3_valid, %handshake_fork4.out4, %handshake_fork4.out4_valid = hw.instance "handshake_fork4" @handshake_fork_1ins_5outs_ctrl(in0: %handshake_buffer80.out0: i0, in0_valid: %handshake_buffer80.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer106.in0_ready: i1, out1_ready: %handshake_buffer105.in0_ready: i1, out2_ready: %handshake_buffer104.in0_ready: i1, out3_ready: %handshake_buffer103.in0_ready: i1, out4_ready: %handshake_buffer102.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1)
    %handshake_buffer102.in0_ready, %handshake_buffer102.out0, %handshake_buffer102.out0_valid = hw.instance "handshake_buffer102" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork4.out4: i0, in0_valid: %handshake_fork4.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in12_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer103.in0_ready, %handshake_buffer103.out0, %handshake_buffer103.out0_valid = hw.instance "handshake_buffer103" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork4.out3: i0, in0_valid: %handshake_fork4.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in12_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer104.in0_ready, %handshake_buffer104.out0, %handshake_buffer104.out0_valid = hw.instance "handshake_buffer104" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork4.out2: i0, in0_valid: %handshake_fork4.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in12_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer105.in0_ready, %handshake_buffer105.out0, %handshake_buffer105.out0_valid = hw.instance "handshake_buffer105" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork4.out1: i0, in0_valid: %handshake_fork4.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in12_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer106.in0_ready, %handshake_buffer106.out0, %handshake_buffer106.out0_valid = hw.instance "handshake_buffer106" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork4.out0: i0, in0_valid: %handshake_fork4.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in12_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork5.in0_ready, %handshake_fork5.out0, %handshake_fork5.out0_valid, %handshake_fork5.out1, %handshake_fork5.out1_valid, %handshake_fork5.out2, %handshake_fork5.out2_valid, %handshake_fork5.out3, %handshake_fork5.out3_valid, %handshake_fork5.out4, %handshake_fork5.out4_valid, %handshake_fork5.out5, %handshake_fork5.out5_valid = hw.instance "handshake_fork5" @handshake_fork_1ins_6outs_ctrl(in0: %handshake_buffer81.out0: i0, in0_valid: %handshake_buffer81.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer112.in0_ready: i1, out1_ready: %handshake_buffer111.in0_ready: i1, out2_ready: %handshake_buffer110.in0_ready: i1, out3_ready: %handshake_buffer109.in0_ready: i1, out4_ready: %handshake_buffer108.in0_ready: i1, out5_ready: %handshake_buffer107.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1)
    %handshake_buffer107.in0_ready, %handshake_buffer107.out0, %handshake_buffer107.out0_valid = hw.instance "handshake_buffer107" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork5.out5: i0, in0_valid: %handshake_fork5.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in11_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer108.in0_ready, %handshake_buffer108.out0, %handshake_buffer108.out0_valid = hw.instance "handshake_buffer108" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork5.out4: i0, in0_valid: %handshake_fork5.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in11_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer109.in0_ready, %handshake_buffer109.out0, %handshake_buffer109.out0_valid = hw.instance "handshake_buffer109" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork5.out3: i0, in0_valid: %handshake_fork5.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in11_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer110.in0_ready, %handshake_buffer110.out0, %handshake_buffer110.out0_valid = hw.instance "handshake_buffer110" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork5.out2: i0, in0_valid: %handshake_fork5.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in11_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer111.in0_ready, %handshake_buffer111.out0, %handshake_buffer111.out0_valid = hw.instance "handshake_buffer111" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork5.out1: i0, in0_valid: %handshake_fork5.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in11_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer112.in0_ready, %handshake_buffer112.out0, %handshake_buffer112.out0_valid = hw.instance "handshake_buffer112" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork5.out0: i0, in0_valid: %handshake_fork5.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in11_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork6.in0_ready, %handshake_fork6.out0, %handshake_fork6.out0_valid, %handshake_fork6.out1, %handshake_fork6.out1_valid, %handshake_fork6.out2, %handshake_fork6.out2_valid, %handshake_fork6.out3, %handshake_fork6.out3_valid, %handshake_fork6.out4, %handshake_fork6.out4_valid, %handshake_fork6.out5, %handshake_fork6.out5_valid, %handshake_fork6.out6, %handshake_fork6.out6_valid = hw.instance "handshake_fork6" @handshake_fork_1ins_7outs_ctrl(in0: %handshake_buffer82.out0: i0, in0_valid: %handshake_buffer82.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer119.in0_ready: i1, out1_ready: %handshake_buffer118.in0_ready: i1, out2_ready: %handshake_buffer117.in0_ready: i1, out3_ready: %handshake_buffer116.in0_ready: i1, out4_ready: %handshake_buffer115.in0_ready: i1, out5_ready: %handshake_buffer114.in0_ready: i1, out6_ready: %handshake_buffer113.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1)
    %handshake_buffer113.in0_ready, %handshake_buffer113.out0, %handshake_buffer113.out0_valid = hw.instance "handshake_buffer113" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork6.out6: i0, in0_valid: %handshake_fork6.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in10_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer114.in0_ready, %handshake_buffer114.out0, %handshake_buffer114.out0_valid = hw.instance "handshake_buffer114" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork6.out5: i0, in0_valid: %handshake_fork6.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in10_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer115.in0_ready, %handshake_buffer115.out0, %handshake_buffer115.out0_valid = hw.instance "handshake_buffer115" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork6.out4: i0, in0_valid: %handshake_fork6.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in10_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer116.in0_ready, %handshake_buffer116.out0, %handshake_buffer116.out0_valid = hw.instance "handshake_buffer116" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork6.out3: i0, in0_valid: %handshake_fork6.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in10_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer117.in0_ready, %handshake_buffer117.out0, %handshake_buffer117.out0_valid = hw.instance "handshake_buffer117" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork6.out2: i0, in0_valid: %handshake_fork6.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in10_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer118.in0_ready, %handshake_buffer118.out0, %handshake_buffer118.out0_valid = hw.instance "handshake_buffer118" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork6.out1: i0, in0_valid: %handshake_fork6.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in10_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer119.in0_ready, %handshake_buffer119.out0, %handshake_buffer119.out0_valid = hw.instance "handshake_buffer119" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork6.out0: i0, in0_valid: %handshake_fork6.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in10_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork7.in0_ready, %handshake_fork7.out0, %handshake_fork7.out0_valid, %handshake_fork7.out1, %handshake_fork7.out1_valid, %handshake_fork7.out2, %handshake_fork7.out2_valid, %handshake_fork7.out3, %handshake_fork7.out3_valid, %handshake_fork7.out4, %handshake_fork7.out4_valid, %handshake_fork7.out5, %handshake_fork7.out5_valid, %handshake_fork7.out6, %handshake_fork7.out6_valid, %handshake_fork7.out7, %handshake_fork7.out7_valid = hw.instance "handshake_fork7" @handshake_fork_1ins_8outs_ctrl(in0: %handshake_buffer83.out0: i0, in0_valid: %handshake_buffer83.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer127.in0_ready: i1, out1_ready: %handshake_buffer126.in0_ready: i1, out2_ready: %handshake_buffer125.in0_ready: i1, out3_ready: %handshake_buffer124.in0_ready: i1, out4_ready: %handshake_buffer123.in0_ready: i1, out5_ready: %handshake_buffer122.in0_ready: i1, out6_ready: %handshake_buffer121.in0_ready: i1, out7_ready: %handshake_buffer120.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1)
    %handshake_buffer120.in0_ready, %handshake_buffer120.out0, %handshake_buffer120.out0_valid = hw.instance "handshake_buffer120" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out7: i0, in0_valid: %handshake_fork7.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer121.in0_ready, %handshake_buffer121.out0, %handshake_buffer121.out0_valid = hw.instance "handshake_buffer121" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out6: i0, in0_valid: %handshake_fork7.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer122.in0_ready, %handshake_buffer122.out0, %handshake_buffer122.out0_valid = hw.instance "handshake_buffer122" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out5: i0, in0_valid: %handshake_fork7.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer123.in0_ready, %handshake_buffer123.out0, %handshake_buffer123.out0_valid = hw.instance "handshake_buffer123" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out4: i0, in0_valid: %handshake_fork7.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer124.in0_ready, %handshake_buffer124.out0, %handshake_buffer124.out0_valid = hw.instance "handshake_buffer124" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out3: i0, in0_valid: %handshake_fork7.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer125.in0_ready, %handshake_buffer125.out0, %handshake_buffer125.out0_valid = hw.instance "handshake_buffer125" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out2: i0, in0_valid: %handshake_fork7.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer126.in0_ready, %handshake_buffer126.out0, %handshake_buffer126.out0_valid = hw.instance "handshake_buffer126" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out1: i0, in0_valid: %handshake_fork7.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer127.in0_ready, %handshake_buffer127.out0, %handshake_buffer127.out0_valid = hw.instance "handshake_buffer127" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork7.out0: i0, in0_valid: %handshake_fork7.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in9_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork8.in0_ready, %handshake_fork8.out0, %handshake_fork8.out0_valid, %handshake_fork8.out1, %handshake_fork8.out1_valid, %handshake_fork8.out2, %handshake_fork8.out2_valid, %handshake_fork8.out3, %handshake_fork8.out3_valid, %handshake_fork8.out4, %handshake_fork8.out4_valid, %handshake_fork8.out5, %handshake_fork8.out5_valid, %handshake_fork8.out6, %handshake_fork8.out6_valid, %handshake_fork8.out7, %handshake_fork8.out7_valid, %handshake_fork8.out8, %handshake_fork8.out8_valid = hw.instance "handshake_fork8" @handshake_fork_1ins_9outs_ctrl(in0: %handshake_buffer84.out0: i0, in0_valid: %handshake_buffer84.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer136.in0_ready: i1, out1_ready: %handshake_buffer135.in0_ready: i1, out2_ready: %handshake_buffer134.in0_ready: i1, out3_ready: %handshake_buffer133.in0_ready: i1, out4_ready: %handshake_buffer132.in0_ready: i1, out5_ready: %handshake_buffer131.in0_ready: i1, out6_ready: %handshake_buffer130.in0_ready: i1, out7_ready: %handshake_buffer129.in0_ready: i1, out8_ready: %handshake_buffer128.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1)
    %handshake_buffer128.in0_ready, %handshake_buffer128.out0, %handshake_buffer128.out0_valid = hw.instance "handshake_buffer128" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out8: i0, in0_valid: %handshake_fork8.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer129.in0_ready, %handshake_buffer129.out0, %handshake_buffer129.out0_valid = hw.instance "handshake_buffer129" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out7: i0, in0_valid: %handshake_fork8.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer130.in0_ready, %handshake_buffer130.out0, %handshake_buffer130.out0_valid = hw.instance "handshake_buffer130" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out6: i0, in0_valid: %handshake_fork8.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer131.in0_ready, %handshake_buffer131.out0, %handshake_buffer131.out0_valid = hw.instance "handshake_buffer131" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out5: i0, in0_valid: %handshake_fork8.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer132.in0_ready, %handshake_buffer132.out0, %handshake_buffer132.out0_valid = hw.instance "handshake_buffer132" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out4: i0, in0_valid: %handshake_fork8.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer133.in0_ready, %handshake_buffer133.out0, %handshake_buffer133.out0_valid = hw.instance "handshake_buffer133" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out3: i0, in0_valid: %handshake_fork8.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer134.in0_ready, %handshake_buffer134.out0, %handshake_buffer134.out0_valid = hw.instance "handshake_buffer134" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out2: i0, in0_valid: %handshake_fork8.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer135.in0_ready, %handshake_buffer135.out0, %handshake_buffer135.out0_valid = hw.instance "handshake_buffer135" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out1: i0, in0_valid: %handshake_fork8.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer136.in0_ready, %handshake_buffer136.out0, %handshake_buffer136.out0_valid = hw.instance "handshake_buffer136" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork8.out0: i0, in0_valid: %handshake_fork8.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in8_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork9.in0_ready, %handshake_fork9.out0, %handshake_fork9.out0_valid, %handshake_fork9.out1, %handshake_fork9.out1_valid, %handshake_fork9.out2, %handshake_fork9.out2_valid, %handshake_fork9.out3, %handshake_fork9.out3_valid, %handshake_fork9.out4, %handshake_fork9.out4_valid, %handshake_fork9.out5, %handshake_fork9.out5_valid, %handshake_fork9.out6, %handshake_fork9.out6_valid, %handshake_fork9.out7, %handshake_fork9.out7_valid, %handshake_fork9.out8, %handshake_fork9.out8_valid, %handshake_fork9.out9, %handshake_fork9.out9_valid = hw.instance "handshake_fork9" @handshake_fork_1ins_10outs_ctrl(in0: %handshake_buffer85.out0: i0, in0_valid: %handshake_buffer85.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer146.in0_ready: i1, out1_ready: %handshake_buffer145.in0_ready: i1, out2_ready: %handshake_buffer144.in0_ready: i1, out3_ready: %handshake_buffer143.in0_ready: i1, out4_ready: %handshake_buffer142.in0_ready: i1, out5_ready: %handshake_buffer141.in0_ready: i1, out6_ready: %handshake_buffer140.in0_ready: i1, out7_ready: %handshake_buffer139.in0_ready: i1, out8_ready: %handshake_buffer138.in0_ready: i1, out9_ready: %handshake_buffer137.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1)
    %handshake_buffer137.in0_ready, %handshake_buffer137.out0, %handshake_buffer137.out0_valid = hw.instance "handshake_buffer137" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out9: i0, in0_valid: %handshake_fork9.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer138.in0_ready, %handshake_buffer138.out0, %handshake_buffer138.out0_valid = hw.instance "handshake_buffer138" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out8: i0, in0_valid: %handshake_fork9.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer139.in0_ready, %handshake_buffer139.out0, %handshake_buffer139.out0_valid = hw.instance "handshake_buffer139" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out7: i0, in0_valid: %handshake_fork9.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer140.in0_ready, %handshake_buffer140.out0, %handshake_buffer140.out0_valid = hw.instance "handshake_buffer140" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out6: i0, in0_valid: %handshake_fork9.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer141.in0_ready, %handshake_buffer141.out0, %handshake_buffer141.out0_valid = hw.instance "handshake_buffer141" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out5: i0, in0_valid: %handshake_fork9.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer142.in0_ready, %handshake_buffer142.out0, %handshake_buffer142.out0_valid = hw.instance "handshake_buffer142" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out4: i0, in0_valid: %handshake_fork9.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer143.in0_ready, %handshake_buffer143.out0, %handshake_buffer143.out0_valid = hw.instance "handshake_buffer143" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out3: i0, in0_valid: %handshake_fork9.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer144.in0_ready, %handshake_buffer144.out0, %handshake_buffer144.out0_valid = hw.instance "handshake_buffer144" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out2: i0, in0_valid: %handshake_fork9.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer145.in0_ready, %handshake_buffer145.out0, %handshake_buffer145.out0_valid = hw.instance "handshake_buffer145" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out1: i0, in0_valid: %handshake_fork9.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer146.in0_ready, %handshake_buffer146.out0, %handshake_buffer146.out0_valid = hw.instance "handshake_buffer146" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork9.out0: i0, in0_valid: %handshake_fork9.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in7_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork10.in0_ready, %handshake_fork10.out0, %handshake_fork10.out0_valid, %handshake_fork10.out1, %handshake_fork10.out1_valid, %handshake_fork10.out2, %handshake_fork10.out2_valid, %handshake_fork10.out3, %handshake_fork10.out3_valid, %handshake_fork10.out4, %handshake_fork10.out4_valid, %handshake_fork10.out5, %handshake_fork10.out5_valid, %handshake_fork10.out6, %handshake_fork10.out6_valid, %handshake_fork10.out7, %handshake_fork10.out7_valid, %handshake_fork10.out8, %handshake_fork10.out8_valid, %handshake_fork10.out9, %handshake_fork10.out9_valid, %handshake_fork10.out10, %handshake_fork10.out10_valid = hw.instance "handshake_fork10" @handshake_fork_1ins_11outs_ctrl(in0: %handshake_buffer86.out0: i0, in0_valid: %handshake_buffer86.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer157.in0_ready: i1, out1_ready: %handshake_buffer156.in0_ready: i1, out2_ready: %handshake_buffer155.in0_ready: i1, out3_ready: %handshake_buffer154.in0_ready: i1, out4_ready: %handshake_buffer153.in0_ready: i1, out5_ready: %handshake_buffer152.in0_ready: i1, out6_ready: %handshake_buffer151.in0_ready: i1, out7_ready: %handshake_buffer150.in0_ready: i1, out8_ready: %handshake_buffer149.in0_ready: i1, out9_ready: %handshake_buffer148.in0_ready: i1, out10_ready: %handshake_buffer147.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1, out10: i0, out10_valid: i1)
    %handshake_buffer147.in0_ready, %handshake_buffer147.out0, %handshake_buffer147.out0_valid = hw.instance "handshake_buffer147" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out10: i0, in0_valid: %handshake_fork10.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer148.in0_ready, %handshake_buffer148.out0, %handshake_buffer148.out0_valid = hw.instance "handshake_buffer148" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out9: i0, in0_valid: %handshake_fork10.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join6.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer149.in0_ready, %handshake_buffer149.out0, %handshake_buffer149.out0_valid = hw.instance "handshake_buffer149" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out8: i0, in0_valid: %handshake_fork10.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer150.in0_ready, %handshake_buffer150.out0, %handshake_buffer150.out0_valid = hw.instance "handshake_buffer150" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out7: i0, in0_valid: %handshake_fork10.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer151.in0_ready, %handshake_buffer151.out0, %handshake_buffer151.out0_valid = hw.instance "handshake_buffer151" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out6: i0, in0_valid: %handshake_fork10.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer152.in0_ready, %handshake_buffer152.out0, %handshake_buffer152.out0_valid = hw.instance "handshake_buffer152" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out5: i0, in0_valid: %handshake_fork10.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer153.in0_ready, %handshake_buffer153.out0, %handshake_buffer153.out0_valid = hw.instance "handshake_buffer153" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out4: i0, in0_valid: %handshake_fork10.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer154.in0_ready, %handshake_buffer154.out0, %handshake_buffer154.out0_valid = hw.instance "handshake_buffer154" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out3: i0, in0_valid: %handshake_fork10.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer155.in0_ready, %handshake_buffer155.out0, %handshake_buffer155.out0_valid = hw.instance "handshake_buffer155" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out2: i0, in0_valid: %handshake_fork10.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer156.in0_ready, %handshake_buffer156.out0, %handshake_buffer156.out0_valid = hw.instance "handshake_buffer156" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out1: i0, in0_valid: %handshake_fork10.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer157.in0_ready, %handshake_buffer157.out0, %handshake_buffer157.out0_valid = hw.instance "handshake_buffer157" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork10.out0: i0, in0_valid: %handshake_fork10.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in6_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork11.in0_ready, %handshake_fork11.out0, %handshake_fork11.out0_valid, %handshake_fork11.out1, %handshake_fork11.out1_valid, %handshake_fork11.out2, %handshake_fork11.out2_valid, %handshake_fork11.out3, %handshake_fork11.out3_valid, %handshake_fork11.out4, %handshake_fork11.out4_valid, %handshake_fork11.out5, %handshake_fork11.out5_valid, %handshake_fork11.out6, %handshake_fork11.out6_valid, %handshake_fork11.out7, %handshake_fork11.out7_valid, %handshake_fork11.out8, %handshake_fork11.out8_valid, %handshake_fork11.out9, %handshake_fork11.out9_valid, %handshake_fork11.out10, %handshake_fork11.out10_valid, %handshake_fork11.out11, %handshake_fork11.out11_valid = hw.instance "handshake_fork11" @handshake_fork_1ins_12outs_ctrl(in0: %handshake_buffer87.out0: i0, in0_valid: %handshake_buffer87.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer169.in0_ready: i1, out1_ready: %handshake_buffer168.in0_ready: i1, out2_ready: %handshake_buffer167.in0_ready: i1, out3_ready: %handshake_buffer166.in0_ready: i1, out4_ready: %handshake_buffer165.in0_ready: i1, out5_ready: %handshake_buffer164.in0_ready: i1, out6_ready: %handshake_buffer163.in0_ready: i1, out7_ready: %handshake_buffer162.in0_ready: i1, out8_ready: %handshake_buffer161.in0_ready: i1, out9_ready: %handshake_buffer160.in0_ready: i1, out10_ready: %handshake_buffer159.in0_ready: i1, out11_ready: %handshake_buffer158.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1, out10: i0, out10_valid: i1, out11: i0, out11_valid: i1)
    %handshake_buffer158.in0_ready, %handshake_buffer158.out0, %handshake_buffer158.out0_valid = hw.instance "handshake_buffer158" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out11: i0, in0_valid: %handshake_fork11.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer159.in0_ready, %handshake_buffer159.out0, %handshake_buffer159.out0_valid = hw.instance "handshake_buffer159" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out10: i0, in0_valid: %handshake_fork11.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join5.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer160.in0_ready, %handshake_buffer160.out0, %handshake_buffer160.out0_valid = hw.instance "handshake_buffer160" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out9: i0, in0_valid: %handshake_fork11.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join6.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer161.in0_ready, %handshake_buffer161.out0, %handshake_buffer161.out0_valid = hw.instance "handshake_buffer161" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out8: i0, in0_valid: %handshake_fork11.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer162.in0_ready, %handshake_buffer162.out0, %handshake_buffer162.out0_valid = hw.instance "handshake_buffer162" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out7: i0, in0_valid: %handshake_fork11.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer163.in0_ready, %handshake_buffer163.out0, %handshake_buffer163.out0_valid = hw.instance "handshake_buffer163" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out6: i0, in0_valid: %handshake_fork11.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer164.in0_ready, %handshake_buffer164.out0, %handshake_buffer164.out0_valid = hw.instance "handshake_buffer164" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out5: i0, in0_valid: %handshake_fork11.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer165.in0_ready, %handshake_buffer165.out0, %handshake_buffer165.out0_valid = hw.instance "handshake_buffer165" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out4: i0, in0_valid: %handshake_fork11.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer166.in0_ready, %handshake_buffer166.out0, %handshake_buffer166.out0_valid = hw.instance "handshake_buffer166" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out3: i0, in0_valid: %handshake_fork11.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer167.in0_ready, %handshake_buffer167.out0, %handshake_buffer167.out0_valid = hw.instance "handshake_buffer167" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out2: i0, in0_valid: %handshake_fork11.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer168.in0_ready, %handshake_buffer168.out0, %handshake_buffer168.out0_valid = hw.instance "handshake_buffer168" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out1: i0, in0_valid: %handshake_fork11.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer169.in0_ready, %handshake_buffer169.out0, %handshake_buffer169.out0_valid = hw.instance "handshake_buffer169" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork11.out0: i0, in0_valid: %handshake_fork11.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in5_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork12.in0_ready, %handshake_fork12.out0, %handshake_fork12.out0_valid, %handshake_fork12.out1, %handshake_fork12.out1_valid, %handshake_fork12.out2, %handshake_fork12.out2_valid, %handshake_fork12.out3, %handshake_fork12.out3_valid, %handshake_fork12.out4, %handshake_fork12.out4_valid, %handshake_fork12.out5, %handshake_fork12.out5_valid, %handshake_fork12.out6, %handshake_fork12.out6_valid, %handshake_fork12.out7, %handshake_fork12.out7_valid, %handshake_fork12.out8, %handshake_fork12.out8_valid, %handshake_fork12.out9, %handshake_fork12.out9_valid, %handshake_fork12.out10, %handshake_fork12.out10_valid, %handshake_fork12.out11, %handshake_fork12.out11_valid, %handshake_fork12.out12, %handshake_fork12.out12_valid = hw.instance "handshake_fork12" @handshake_fork_1ins_13outs_ctrl(in0: %handshake_buffer88.out0: i0, in0_valid: %handshake_buffer88.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer182.in0_ready: i1, out1_ready: %handshake_buffer181.in0_ready: i1, out2_ready: %handshake_buffer180.in0_ready: i1, out3_ready: %handshake_buffer179.in0_ready: i1, out4_ready: %handshake_buffer178.in0_ready: i1, out5_ready: %handshake_buffer177.in0_ready: i1, out6_ready: %handshake_buffer176.in0_ready: i1, out7_ready: %handshake_buffer175.in0_ready: i1, out8_ready: %handshake_buffer174.in0_ready: i1, out9_ready: %handshake_buffer173.in0_ready: i1, out10_ready: %handshake_buffer172.in0_ready: i1, out11_ready: %handshake_buffer171.in0_ready: i1, out12_ready: %handshake_buffer170.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1, out10: i0, out10_valid: i1, out11: i0, out11_valid: i1, out12: i0, out12_valid: i1)
    %handshake_buffer170.in0_ready, %handshake_buffer170.out0, %handshake_buffer170.out0_valid = hw.instance "handshake_buffer170" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out12: i0, in0_valid: %handshake_fork12.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer171.in0_ready, %handshake_buffer171.out0, %handshake_buffer171.out0_valid = hw.instance "handshake_buffer171" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out11: i0, in0_valid: %handshake_fork12.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join4.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer172.in0_ready, %handshake_buffer172.out0, %handshake_buffer172.out0_valid = hw.instance "handshake_buffer172" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out10: i0, in0_valid: %handshake_fork12.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join5.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer173.in0_ready, %handshake_buffer173.out0, %handshake_buffer173.out0_valid = hw.instance "handshake_buffer173" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out9: i0, in0_valid: %handshake_fork12.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join6.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer174.in0_ready, %handshake_buffer174.out0, %handshake_buffer174.out0_valid = hw.instance "handshake_buffer174" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out8: i0, in0_valid: %handshake_fork12.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer175.in0_ready, %handshake_buffer175.out0, %handshake_buffer175.out0_valid = hw.instance "handshake_buffer175" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out7: i0, in0_valid: %handshake_fork12.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer176.in0_ready, %handshake_buffer176.out0, %handshake_buffer176.out0_valid = hw.instance "handshake_buffer176" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out6: i0, in0_valid: %handshake_fork12.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer177.in0_ready, %handshake_buffer177.out0, %handshake_buffer177.out0_valid = hw.instance "handshake_buffer177" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out5: i0, in0_valid: %handshake_fork12.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer178.in0_ready, %handshake_buffer178.out0, %handshake_buffer178.out0_valid = hw.instance "handshake_buffer178" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out4: i0, in0_valid: %handshake_fork12.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer179.in0_ready, %handshake_buffer179.out0, %handshake_buffer179.out0_valid = hw.instance "handshake_buffer179" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out3: i0, in0_valid: %handshake_fork12.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer180.in0_ready, %handshake_buffer180.out0, %handshake_buffer180.out0_valid = hw.instance "handshake_buffer180" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out2: i0, in0_valid: %handshake_fork12.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer181.in0_ready, %handshake_buffer181.out0, %handshake_buffer181.out0_valid = hw.instance "handshake_buffer181" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out1: i0, in0_valid: %handshake_fork12.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer182.in0_ready, %handshake_buffer182.out0, %handshake_buffer182.out0_valid = hw.instance "handshake_buffer182" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork12.out0: i0, in0_valid: %handshake_fork12.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in4_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork13.in0_ready, %handshake_fork13.out0, %handshake_fork13.out0_valid, %handshake_fork13.out1, %handshake_fork13.out1_valid, %handshake_fork13.out2, %handshake_fork13.out2_valid, %handshake_fork13.out3, %handshake_fork13.out3_valid, %handshake_fork13.out4, %handshake_fork13.out4_valid, %handshake_fork13.out5, %handshake_fork13.out5_valid, %handshake_fork13.out6, %handshake_fork13.out6_valid, %handshake_fork13.out7, %handshake_fork13.out7_valid, %handshake_fork13.out8, %handshake_fork13.out8_valid, %handshake_fork13.out9, %handshake_fork13.out9_valid, %handshake_fork13.out10, %handshake_fork13.out10_valid, %handshake_fork13.out11, %handshake_fork13.out11_valid, %handshake_fork13.out12, %handshake_fork13.out12_valid, %handshake_fork13.out13, %handshake_fork13.out13_valid = hw.instance "handshake_fork13" @handshake_fork_1ins_14outs_ctrl(in0: %handshake_buffer89.out0: i0, in0_valid: %handshake_buffer89.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer196.in0_ready: i1, out1_ready: %handshake_buffer195.in0_ready: i1, out2_ready: %handshake_buffer194.in0_ready: i1, out3_ready: %handshake_buffer193.in0_ready: i1, out4_ready: %handshake_buffer192.in0_ready: i1, out5_ready: %handshake_buffer191.in0_ready: i1, out6_ready: %handshake_buffer190.in0_ready: i1, out7_ready: %handshake_buffer189.in0_ready: i1, out8_ready: %handshake_buffer188.in0_ready: i1, out9_ready: %handshake_buffer187.in0_ready: i1, out10_ready: %handshake_buffer186.in0_ready: i1, out11_ready: %handshake_buffer185.in0_ready: i1, out12_ready: %handshake_buffer184.in0_ready: i1, out13_ready: %handshake_buffer183.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1, out10: i0, out10_valid: i1, out11: i0, out11_valid: i1, out12: i0, out12_valid: i1, out13: i0, out13_valid: i1)
    %handshake_buffer183.in0_ready, %handshake_buffer183.out0, %handshake_buffer183.out0_valid = hw.instance "handshake_buffer183" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out13: i0, in0_valid: %handshake_fork13.out13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer184.in0_ready, %handshake_buffer184.out0, %handshake_buffer184.out0_valid = hw.instance "handshake_buffer184" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out12: i0, in0_valid: %handshake_fork13.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join3.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer185.in0_ready, %handshake_buffer185.out0, %handshake_buffer185.out0_valid = hw.instance "handshake_buffer185" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out11: i0, in0_valid: %handshake_fork13.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join4.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer186.in0_ready, %handshake_buffer186.out0, %handshake_buffer186.out0_valid = hw.instance "handshake_buffer186" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out10: i0, in0_valid: %handshake_fork13.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join5.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer187.in0_ready, %handshake_buffer187.out0, %handshake_buffer187.out0_valid = hw.instance "handshake_buffer187" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out9: i0, in0_valid: %handshake_fork13.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join6.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer188.in0_ready, %handshake_buffer188.out0, %handshake_buffer188.out0_valid = hw.instance "handshake_buffer188" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out8: i0, in0_valid: %handshake_fork13.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer189.in0_ready, %handshake_buffer189.out0, %handshake_buffer189.out0_valid = hw.instance "handshake_buffer189" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out7: i0, in0_valid: %handshake_fork13.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer190.in0_ready, %handshake_buffer190.out0, %handshake_buffer190.out0_valid = hw.instance "handshake_buffer190" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out6: i0, in0_valid: %handshake_fork13.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer191.in0_ready, %handshake_buffer191.out0, %handshake_buffer191.out0_valid = hw.instance "handshake_buffer191" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out5: i0, in0_valid: %handshake_fork13.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer192.in0_ready, %handshake_buffer192.out0, %handshake_buffer192.out0_valid = hw.instance "handshake_buffer192" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out4: i0, in0_valid: %handshake_fork13.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer193.in0_ready, %handshake_buffer193.out0, %handshake_buffer193.out0_valid = hw.instance "handshake_buffer193" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out3: i0, in0_valid: %handshake_fork13.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer194.in0_ready, %handshake_buffer194.out0, %handshake_buffer194.out0_valid = hw.instance "handshake_buffer194" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out2: i0, in0_valid: %handshake_fork13.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer195.in0_ready, %handshake_buffer195.out0, %handshake_buffer195.out0_valid = hw.instance "handshake_buffer195" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out1: i0, in0_valid: %handshake_fork13.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer196.in0_ready, %handshake_buffer196.out0, %handshake_buffer196.out0_valid = hw.instance "handshake_buffer196" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork13.out0: i0, in0_valid: %handshake_fork13.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in3_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork14.in0_ready, %handshake_fork14.out0, %handshake_fork14.out0_valid, %handshake_fork14.out1, %handshake_fork14.out1_valid, %handshake_fork14.out2, %handshake_fork14.out2_valid, %handshake_fork14.out3, %handshake_fork14.out3_valid, %handshake_fork14.out4, %handshake_fork14.out4_valid, %handshake_fork14.out5, %handshake_fork14.out5_valid, %handshake_fork14.out6, %handshake_fork14.out6_valid, %handshake_fork14.out7, %handshake_fork14.out7_valid, %handshake_fork14.out8, %handshake_fork14.out8_valid, %handshake_fork14.out9, %handshake_fork14.out9_valid, %handshake_fork14.out10, %handshake_fork14.out10_valid, %handshake_fork14.out11, %handshake_fork14.out11_valid, %handshake_fork14.out12, %handshake_fork14.out12_valid, %handshake_fork14.out13, %handshake_fork14.out13_valid, %handshake_fork14.out14, %handshake_fork14.out14_valid = hw.instance "handshake_fork14" @handshake_fork_1ins_15outs_ctrl(in0: %handshake_buffer90.out0: i0, in0_valid: %handshake_buffer90.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer211.in0_ready: i1, out1_ready: %handshake_buffer210.in0_ready: i1, out2_ready: %handshake_buffer209.in0_ready: i1, out3_ready: %handshake_buffer208.in0_ready: i1, out4_ready: %handshake_buffer207.in0_ready: i1, out5_ready: %handshake_buffer206.in0_ready: i1, out6_ready: %handshake_buffer205.in0_ready: i1, out7_ready: %handshake_buffer204.in0_ready: i1, out8_ready: %handshake_buffer203.in0_ready: i1, out9_ready: %handshake_buffer202.in0_ready: i1, out10_ready: %handshake_buffer201.in0_ready: i1, out11_ready: %handshake_buffer200.in0_ready: i1, out12_ready: %handshake_buffer199.in0_ready: i1, out13_ready: %handshake_buffer198.in0_ready: i1, out14_ready: %handshake_buffer197.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1, out10: i0, out10_valid: i1, out11: i0, out11_valid: i1, out12: i0, out12_valid: i1, out13: i0, out13_valid: i1, out14: i0, out14_valid: i1)
    %handshake_buffer197.in0_ready, %handshake_buffer197.out0, %handshake_buffer197.out0_valid = hw.instance "handshake_buffer197" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out14: i0, in0_valid: %handshake_fork14.out14_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer198.in0_ready, %handshake_buffer198.out0, %handshake_buffer198.out0_valid = hw.instance "handshake_buffer198" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out13: i0, in0_valid: %handshake_fork14.out13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join2.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer199.in0_ready, %handshake_buffer199.out0, %handshake_buffer199.out0_valid = hw.instance "handshake_buffer199" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out12: i0, in0_valid: %handshake_fork14.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join3.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer200.in0_ready, %handshake_buffer200.out0, %handshake_buffer200.out0_valid = hw.instance "handshake_buffer200" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out11: i0, in0_valid: %handshake_fork14.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join4.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer201.in0_ready, %handshake_buffer201.out0, %handshake_buffer201.out0_valid = hw.instance "handshake_buffer201" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out10: i0, in0_valid: %handshake_fork14.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join5.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer202.in0_ready, %handshake_buffer202.out0, %handshake_buffer202.out0_valid = hw.instance "handshake_buffer202" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out9: i0, in0_valid: %handshake_fork14.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join6.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer203.in0_ready, %handshake_buffer203.out0, %handshake_buffer203.out0_valid = hw.instance "handshake_buffer203" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out8: i0, in0_valid: %handshake_fork14.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer204.in0_ready, %handshake_buffer204.out0, %handshake_buffer204.out0_valid = hw.instance "handshake_buffer204" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out7: i0, in0_valid: %handshake_fork14.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer205.in0_ready, %handshake_buffer205.out0, %handshake_buffer205.out0_valid = hw.instance "handshake_buffer205" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out6: i0, in0_valid: %handshake_fork14.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer206.in0_ready, %handshake_buffer206.out0, %handshake_buffer206.out0_valid = hw.instance "handshake_buffer206" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out5: i0, in0_valid: %handshake_fork14.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer207.in0_ready, %handshake_buffer207.out0, %handshake_buffer207.out0_valid = hw.instance "handshake_buffer207" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out4: i0, in0_valid: %handshake_fork14.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer208.in0_ready, %handshake_buffer208.out0, %handshake_buffer208.out0_valid = hw.instance "handshake_buffer208" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out3: i0, in0_valid: %handshake_fork14.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer209.in0_ready, %handshake_buffer209.out0, %handshake_buffer209.out0_valid = hw.instance "handshake_buffer209" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out2: i0, in0_valid: %handshake_fork14.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer210.in0_ready, %handshake_buffer210.out0, %handshake_buffer210.out0_valid = hw.instance "handshake_buffer210" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out1: i0, in0_valid: %handshake_fork14.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer211.in0_ready, %handshake_buffer211.out0, %handshake_buffer211.out0_valid = hw.instance "handshake_buffer211" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork14.out0: i0, in0_valid: %handshake_fork14.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in2_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork15.in0_ready, %handshake_fork15.out0, %handshake_fork15.out0_valid, %handshake_fork15.out1, %handshake_fork15.out1_valid, %handshake_fork15.out2, %handshake_fork15.out2_valid, %handshake_fork15.out3, %handshake_fork15.out3_valid, %handshake_fork15.out4, %handshake_fork15.out4_valid, %handshake_fork15.out5, %handshake_fork15.out5_valid, %handshake_fork15.out6, %handshake_fork15.out6_valid, %handshake_fork15.out7, %handshake_fork15.out7_valid, %handshake_fork15.out8, %handshake_fork15.out8_valid, %handshake_fork15.out9, %handshake_fork15.out9_valid, %handshake_fork15.out10, %handshake_fork15.out10_valid, %handshake_fork15.out11, %handshake_fork15.out11_valid, %handshake_fork15.out12, %handshake_fork15.out12_valid, %handshake_fork15.out13, %handshake_fork15.out13_valid, %handshake_fork15.out14, %handshake_fork15.out14_valid, %handshake_fork15.out15, %handshake_fork15.out15_valid = hw.instance "handshake_fork15" @handshake_fork_1ins_16outs_ctrl(in0: %handshake_buffer91.out0: i0, in0_valid: %handshake_buffer91.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer227.in0_ready: i1, out1_ready: %handshake_buffer226.in0_ready: i1, out2_ready: %handshake_buffer225.in0_ready: i1, out3_ready: %handshake_buffer224.in0_ready: i1, out4_ready: %handshake_buffer223.in0_ready: i1, out5_ready: %handshake_buffer222.in0_ready: i1, out6_ready: %handshake_buffer221.in0_ready: i1, out7_ready: %handshake_buffer220.in0_ready: i1, out8_ready: %handshake_buffer219.in0_ready: i1, out9_ready: %handshake_buffer218.in0_ready: i1, out10_ready: %handshake_buffer217.in0_ready: i1, out11_ready: %handshake_buffer216.in0_ready: i1, out12_ready: %handshake_buffer215.in0_ready: i1, out13_ready: %handshake_buffer214.in0_ready: i1, out14_ready: %handshake_buffer213.in0_ready: i1, out15_ready: %handshake_buffer212.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1, out3: i0, out3_valid: i1, out4: i0, out4_valid: i1, out5: i0, out5_valid: i1, out6: i0, out6_valid: i1, out7: i0, out7_valid: i1, out8: i0, out8_valid: i1, out9: i0, out9_valid: i1, out10: i0, out10_valid: i1, out11: i0, out11_valid: i1, out12: i0, out12_valid: i1, out13: i0, out13_valid: i1, out14: i0, out14_valid: i1, out15: i0, out15_valid: i1)
    %handshake_buffer212.in0_ready, %handshake_buffer212.out0, %handshake_buffer212.out0_valid = hw.instance "handshake_buffer212" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out15: i0, in0_valid: %handshake_fork15.out15_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join0.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer213.in0_ready, %handshake_buffer213.out0, %handshake_buffer213.out0_valid = hw.instance "handshake_buffer213" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out14: i0, in0_valid: %handshake_fork15.out14_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join1.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer214.in0_ready, %handshake_buffer214.out0, %handshake_buffer214.out0_valid = hw.instance "handshake_buffer214" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out13: i0, in0_valid: %handshake_fork15.out13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join2.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer215.in0_ready, %handshake_buffer215.out0, %handshake_buffer215.out0_valid = hw.instance "handshake_buffer215" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out12: i0, in0_valid: %handshake_fork15.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join3.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer216.in0_ready, %handshake_buffer216.out0, %handshake_buffer216.out0_valid = hw.instance "handshake_buffer216" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out11: i0, in0_valid: %handshake_fork15.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join4.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer217.in0_ready, %handshake_buffer217.out0, %handshake_buffer217.out0_valid = hw.instance "handshake_buffer217" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out10: i0, in0_valid: %handshake_fork15.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join5.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer218.in0_ready, %handshake_buffer218.out0, %handshake_buffer218.out0_valid = hw.instance "handshake_buffer218" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out9: i0, in0_valid: %handshake_fork15.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join6.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer219.in0_ready, %handshake_buffer219.out0, %handshake_buffer219.out0_valid = hw.instance "handshake_buffer219" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out8: i0, in0_valid: %handshake_fork15.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join7.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer220.in0_ready, %handshake_buffer220.out0, %handshake_buffer220.out0_valid = hw.instance "handshake_buffer220" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out7: i0, in0_valid: %handshake_fork15.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join8.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer221.in0_ready, %handshake_buffer221.out0, %handshake_buffer221.out0_valid = hw.instance "handshake_buffer221" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out6: i0, in0_valid: %handshake_fork15.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join9.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer222.in0_ready, %handshake_buffer222.out0, %handshake_buffer222.out0_valid = hw.instance "handshake_buffer222" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out5: i0, in0_valid: %handshake_fork15.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join10.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer223.in0_ready, %handshake_buffer223.out0, %handshake_buffer223.out0_valid = hw.instance "handshake_buffer223" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out4: i0, in0_valid: %handshake_fork15.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join11.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer224.in0_ready, %handshake_buffer224.out0, %handshake_buffer224.out0_valid = hw.instance "handshake_buffer224" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out3: i0, in0_valid: %handshake_fork15.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join12.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer225.in0_ready, %handshake_buffer225.out0, %handshake_buffer225.out0_valid = hw.instance "handshake_buffer225" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out2: i0, in0_valid: %handshake_fork15.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join13.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer226.in0_ready, %handshake_buffer226.out0, %handshake_buffer226.out0_valid = hw.instance "handshake_buffer226" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out1: i0, in0_valid: %handshake_fork15.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join14.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer227.in0_ready, %handshake_buffer227.out0, %handshake_buffer227.out0_valid = hw.instance "handshake_buffer227" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork15.out0: i0, in0_valid: %handshake_fork15.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join15.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_join0.in0_ready, %handshake_join0.in1_ready, %handshake_join0.in2_ready, %handshake_join0.in3_ready, %handshake_join0.in4_ready, %handshake_join0.in5_ready, %handshake_join0.in6_ready, %handshake_join0.in7_ready, %handshake_join0.in8_ready, %handshake_join0.in9_ready, %handshake_join0.in10_ready, %handshake_join0.in11_ready, %handshake_join0.in12_ready, %handshake_join0.in13_ready, %handshake_join0.in14_ready, %handshake_join0.in15_ready, %handshake_join0.in16_ready, %handshake_join0.out0, %handshake_join0.out0_valid = hw.instance "handshake_join0" @handshake_join_17ins_1outs_ctrl(in0: %handshake_buffer19.out0: i0, in0_valid: %handshake_buffer19.out0_valid: i1, in1: %handshake_buffer212.out0: i0, in1_valid: %handshake_buffer212.out0_valid: i1, in2: %handshake_buffer197.out0: i0, in2_valid: %handshake_buffer197.out0_valid: i1, in3: %handshake_buffer183.out0: i0, in3_valid: %handshake_buffer183.out0_valid: i1, in4: %handshake_buffer170.out0: i0, in4_valid: %handshake_buffer170.out0_valid: i1, in5: %handshake_buffer158.out0: i0, in5_valid: %handshake_buffer158.out0_valid: i1, in6: %handshake_buffer147.out0: i0, in6_valid: %handshake_buffer147.out0_valid: i1, in7: %handshake_buffer137.out0: i0, in7_valid: %handshake_buffer137.out0_valid: i1, in8: %handshake_buffer128.out0: i0, in8_valid: %handshake_buffer128.out0_valid: i1, in9: %handshake_buffer120.out0: i0, in9_valid: %handshake_buffer120.out0_valid: i1, in10: %handshake_buffer113.out0: i0, in10_valid: %handshake_buffer113.out0_valid: i1, in11: %handshake_buffer107.out0: i0, in11_valid: %handshake_buffer107.out0_valid: i1, in12: %handshake_buffer102.out0: i0, in12_valid: %handshake_buffer102.out0_valid: i1, in13: %handshake_buffer98.out0: i0, in13_valid: %handshake_buffer98.out0_valid: i1, in14: %handshake_buffer95.out0: i0, in14_valid: %handshake_buffer95.out0_valid: i1, in15: %handshake_buffer93.out0: i0, in15_valid: %handshake_buffer93.out0_valid: i1, in16: %handshake_buffer76.out0: i0, in16_valid: %handshake_buffer76.out0_valid: i1, out0_ready: %handshake_buffer228.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, in10_ready: i1, in11_ready: i1, in12_ready: i1, in13_ready: i1, in14_ready: i1, in15_ready: i1, in16_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer228.in0_ready, %handshake_buffer228.out0, %handshake_buffer228.out0_valid = hw.instance "handshake_buffer228" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join0.out0: i0, in0_valid: %handshake_join0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux0.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_constant0.ctrl_ready, %handshake_constant0.out0, %handshake_constant0.out0_valid = hw.instance "handshake_constant0" @handshake_constant_c0_out_ui1(ctrl: %handshake_buffer74.out0: i0, ctrl_valid: %handshake_buffer74.out0_valid: i1, out0_ready: %handshake_buffer229.in0_ready: i1) -> (ctrl_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer229.in0_ready, %handshake_buffer229.out0, %handshake_buffer229.out0_valid = hw.instance "handshake_buffer229" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_constant0.out0: i1, in0_valid: %handshake_constant0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux6.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_constant1.ctrl_ready, %handshake_constant1.out0, %handshake_constant1.out0_valid = hw.instance "handshake_constant1" @handshake_constant_c18446744073709551615_out_ui1(ctrl: %handshake_buffer73.out0: i0, ctrl_valid: %handshake_buffer73.out0_valid: i1, out0_ready: %handshake_buffer230.in0_ready: i1) -> (ctrl_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer230.in0_ready, %handshake_buffer230.out0, %handshake_buffer230.out0_valid = hw.instance "handshake_buffer230" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_constant1.out0: i1, in0_valid: %handshake_constant1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux7.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_constant2.ctrl_ready, %handshake_constant2.out0, %handshake_constant2.out0_valid = hw.instance "handshake_constant2" @handshake_constant_c10_out_ui64(ctrl: %handshake_buffer72.out0: i0, ctrl_valid: %handshake_buffer72.out0_valid: i1, out0_ready: %handshake_buffer231.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer231.in0_ready, %handshake_buffer231.out0, %handshake_buffer231.out0_valid = hw.instance "handshake_buffer231" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant2.out0: i64, in0_valid: %handshake_constant2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux8.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant3.ctrl_ready, %handshake_constant3.out0, %handshake_constant3.out0_valid = hw.instance "handshake_constant3" @handshake_constant_c18446744073708503040_out_ui64(ctrl: %handshake_buffer71.out0: i0, ctrl_valid: %handshake_buffer71.out0_valid: i1, out0_ready: %handshake_buffer232.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer232.in0_ready, %handshake_buffer232.out0, %handshake_buffer232.out0_valid = hw.instance "handshake_buffer232" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant3.out0: i64, in0_valid: %handshake_constant3.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux9.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant4.ctrl_ready, %handshake_constant4.out0, %handshake_constant4.out0_valid = hw.instance "handshake_constant4" @handshake_constant_c1048576_out_ui64(ctrl: %handshake_buffer70.out0: i0, ctrl_valid: %handshake_buffer70.out0_valid: i1, out0_ready: %handshake_buffer233.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer233.in0_ready, %handshake_buffer233.out0, %handshake_buffer233.out0_valid = hw.instance "handshake_buffer233" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant4.out0: i64, in0_valid: %handshake_constant4.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux10.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant5.ctrl_ready, %handshake_constant5.out0, %handshake_constant5.out0_valid = hw.instance "handshake_constant5" @handshake_constant_c0_out_ui64(ctrl: %handshake_buffer69.out0: i0, ctrl_valid: %handshake_buffer69.out0_valid: i1, out0_ready: %handshake_buffer234.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer234.in0_ready, %handshake_buffer234.out0, %handshake_buffer234.out0_valid = hw.instance "handshake_buffer234" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant5.out0: i64, in0_valid: %handshake_constant5.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork16.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork16.in0_ready, %handshake_fork16.out0, %handshake_fork16.out0_valid, %handshake_fork16.out1, %handshake_fork16.out1_valid = hw.instance "handshake_fork16" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer234.out0: i64, in0_valid: %handshake_buffer234.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer236.in0_ready: i1, out1_ready: %handshake_buffer235.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer235.in0_ready, %handshake_buffer235.out0, %handshake_buffer235.out0_valid = hw.instance "handshake_buffer235" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork16.out1: i64, in0_valid: %handshake_fork16.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux4.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer236.in0_ready, %handshake_buffer236.out0, %handshake_buffer236.out0_valid = hw.instance "handshake_buffer236" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork16.out0: i64, in0_valid: %handshake_fork16.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux11.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant6.ctrl_ready, %handshake_constant6.out0, %handshake_constant6.out0_valid = hw.instance "handshake_constant6" @handshake_constant_c1_out_ui64(ctrl: %handshake_buffer68.out0: i0, ctrl_valid: %handshake_buffer68.out0_valid: i1, out0_ready: %handshake_buffer237.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer237.in0_ready, %handshake_buffer237.out0, %handshake_buffer237.out0_valid = hw.instance "handshake_buffer237" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant6.out0: i64, in0_valid: %handshake_constant6.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork17.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork17.in0_ready, %handshake_fork17.out0, %handshake_fork17.out0_valid, %handshake_fork17.out1, %handshake_fork17.out1_valid, %handshake_fork17.out2, %handshake_fork17.out2_valid = hw.instance "handshake_fork17" @handshake_fork_in_ui64_out_ui64_ui64_ui64(in0: %handshake_buffer237.out0: i64, in0_valid: %handshake_buffer237.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer240.in0_ready: i1, out1_ready: %handshake_buffer239.in0_ready: i1, out2_ready: %handshake_buffer238.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1, out2: i64, out2_valid: i1)
    %handshake_buffer238.in0_ready, %handshake_buffer238.out0, %handshake_buffer238.out0_valid = hw.instance "handshake_buffer238" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork17.out2: i64, in0_valid: %handshake_fork17.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer239.in0_ready, %handshake_buffer239.out0, %handshake_buffer239.out0_valid = hw.instance "handshake_buffer239" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork17.out1: i64, in0_valid: %handshake_fork17.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux2.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer240.in0_ready, %handshake_buffer240.out0, %handshake_buffer240.out0_valid = hw.instance "handshake_buffer240" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork17.out0: i64, in0_valid: %handshake_fork17.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux12.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant7.ctrl_ready, %handshake_constant7.out0, %handshake_constant7.out0_valid = hw.instance "handshake_constant7" @handshake_constant_c15_out_ui64(ctrl: %handshake_buffer67.out0: i0, ctrl_valid: %handshake_buffer67.out0_valid: i1, out0_ready: %handshake_buffer241.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer241.in0_ready, %handshake_buffer241.out0, %handshake_buffer241.out0_valid = hw.instance "handshake_buffer241" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant7.out0: i64, in0_valid: %handshake_constant7.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi14.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant8.ctrl_ready, %handshake_constant8.out0, %handshake_constant8.out0_valid = hw.instance "handshake_constant8" @handshake_constant_c14_out_ui64(ctrl: %handshake_buffer66.out0: i0, ctrl_valid: %handshake_buffer66.out0_valid: i1, out0_ready: %handshake_buffer242.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer242.in0_ready, %handshake_buffer242.out0, %handshake_buffer242.out0_valid = hw.instance "handshake_buffer242" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant8.out0: i64, in0_valid: %handshake_constant8.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi13.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant9.ctrl_ready, %handshake_constant9.out0, %handshake_constant9.out0_valid = hw.instance "handshake_constant9" @handshake_constant_c13_out_ui64(ctrl: %handshake_buffer65.out0: i0, ctrl_valid: %handshake_buffer65.out0_valid: i1, out0_ready: %handshake_buffer243.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer243.in0_ready, %handshake_buffer243.out0, %handshake_buffer243.out0_valid = hw.instance "handshake_buffer243" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant9.out0: i64, in0_valid: %handshake_constant9.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi12.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant10.ctrl_ready, %handshake_constant10.out0, %handshake_constant10.out0_valid = hw.instance "handshake_constant10" @handshake_constant_c12_out_ui64(ctrl: %handshake_buffer64.out0: i0, ctrl_valid: %handshake_buffer64.out0_valid: i1, out0_ready: %handshake_buffer244.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer244.in0_ready, %handshake_buffer244.out0, %handshake_buffer244.out0_valid = hw.instance "handshake_buffer244" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant10.out0: i64, in0_valid: %handshake_constant10.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi11.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant11.ctrl_ready, %handshake_constant11.out0, %handshake_constant11.out0_valid = hw.instance "handshake_constant11" @handshake_constant_c11_out_ui64(ctrl: %handshake_buffer63.out0: i0, ctrl_valid: %handshake_buffer63.out0_valid: i1, out0_ready: %handshake_buffer245.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer245.in0_ready, %handshake_buffer245.out0, %handshake_buffer245.out0_valid = hw.instance "handshake_buffer245" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant11.out0: i64, in0_valid: %handshake_constant11.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi10.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant12.ctrl_ready, %handshake_constant12.out0, %handshake_constant12.out0_valid = hw.instance "handshake_constant12" @handshake_constant_c10_out_ui64(ctrl: %handshake_buffer62.out0: i0, ctrl_valid: %handshake_buffer62.out0_valid: i1, out0_ready: %handshake_buffer246.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer246.in0_ready, %handshake_buffer246.out0, %handshake_buffer246.out0_valid = hw.instance "handshake_buffer246" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant12.out0: i64, in0_valid: %handshake_constant12.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi9.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant13.ctrl_ready, %handshake_constant13.out0, %handshake_constant13.out0_valid = hw.instance "handshake_constant13" @handshake_constant_c9_out_ui64(ctrl: %handshake_buffer61.out0: i0, ctrl_valid: %handshake_buffer61.out0_valid: i1, out0_ready: %handshake_buffer247.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer247.in0_ready, %handshake_buffer247.out0, %handshake_buffer247.out0_valid = hw.instance "handshake_buffer247" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant13.out0: i64, in0_valid: %handshake_constant13.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi8.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant14.ctrl_ready, %handshake_constant14.out0, %handshake_constant14.out0_valid = hw.instance "handshake_constant14" @handshake_constant_c8_out_ui64(ctrl: %handshake_buffer60.out0: i0, ctrl_valid: %handshake_buffer60.out0_valid: i1, out0_ready: %handshake_buffer248.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer248.in0_ready, %handshake_buffer248.out0, %handshake_buffer248.out0_valid = hw.instance "handshake_buffer248" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant14.out0: i64, in0_valid: %handshake_constant14.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi7.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant15.ctrl_ready, %handshake_constant15.out0, %handshake_constant15.out0_valid = hw.instance "handshake_constant15" @handshake_constant_c7_out_ui64(ctrl: %handshake_buffer59.out0: i0, ctrl_valid: %handshake_buffer59.out0_valid: i1, out0_ready: %handshake_buffer249.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer249.in0_ready, %handshake_buffer249.out0, %handshake_buffer249.out0_valid = hw.instance "handshake_buffer249" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant15.out0: i64, in0_valid: %handshake_constant15.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi6.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant16.ctrl_ready, %handshake_constant16.out0, %handshake_constant16.out0_valid = hw.instance "handshake_constant16" @handshake_constant_c6_out_ui64(ctrl: %handshake_buffer58.out0: i0, ctrl_valid: %handshake_buffer58.out0_valid: i1, out0_ready: %handshake_buffer250.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer250.in0_ready, %handshake_buffer250.out0, %handshake_buffer250.out0_valid = hw.instance "handshake_buffer250" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant16.out0: i64, in0_valid: %handshake_constant16.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi5.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant17.ctrl_ready, %handshake_constant17.out0, %handshake_constant17.out0_valid = hw.instance "handshake_constant17" @handshake_constant_c5_out_ui64(ctrl: %handshake_buffer57.out0: i0, ctrl_valid: %handshake_buffer57.out0_valid: i1, out0_ready: %handshake_buffer251.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer251.in0_ready, %handshake_buffer251.out0, %handshake_buffer251.out0_valid = hw.instance "handshake_buffer251" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant17.out0: i64, in0_valid: %handshake_constant17.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi4.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant18.ctrl_ready, %handshake_constant18.out0, %handshake_constant18.out0_valid = hw.instance "handshake_constant18" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer56.out0: i0, ctrl_valid: %handshake_buffer56.out0_valid: i1, out0_ready: %handshake_buffer252.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer252.in0_ready, %handshake_buffer252.out0, %handshake_buffer252.out0_valid = hw.instance "handshake_buffer252" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant18.out0: i64, in0_valid: %handshake_constant18.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi3.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant19.ctrl_ready, %handshake_constant19.out0, %handshake_constant19.out0_valid = hw.instance "handshake_constant19" @handshake_constant_c3_out_ui64(ctrl: %handshake_buffer55.out0: i0, ctrl_valid: %handshake_buffer55.out0_valid: i1, out0_ready: %handshake_buffer253.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer253.in0_ready, %handshake_buffer253.out0, %handshake_buffer253.out0_valid = hw.instance "handshake_buffer253" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant19.out0: i64, in0_valid: %handshake_constant19.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi2.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant20.ctrl_ready, %handshake_constant20.out0, %handshake_constant20.out0_valid = hw.instance "handshake_constant20" @handshake_constant_c2_out_ui64(ctrl: %handshake_buffer54.out0: i0, ctrl_valid: %handshake_buffer54.out0_valid: i1, out0_ready: %handshake_buffer254.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer254.in0_ready, %handshake_buffer254.out0, %handshake_buffer254.out0_valid = hw.instance "handshake_buffer254" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant20.out0: i64, in0_valid: %handshake_constant20.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant21.ctrl_ready, %handshake_constant21.out0, %handshake_constant21.out0_valid = hw.instance "handshake_constant21" @handshake_constant_c1_out_ui64(ctrl: %handshake_buffer53.out0: i0, ctrl_valid: %handshake_buffer53.out0_valid: i1, out0_ready: %handshake_buffer255.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer255.in0_ready, %handshake_buffer255.out0, %handshake_buffer255.out0_valid = hw.instance "handshake_buffer255" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant21.out0: i64, in0_valid: %handshake_constant21.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant22.ctrl_ready, %handshake_constant22.out0, %handshake_constant22.out0_valid = hw.instance "handshake_constant22" @handshake_constant_c0_out_ui64(ctrl: %handshake_buffer52.out0: i0, ctrl_valid: %handshake_buffer52.out0_valid: i1, out0_ready: %handshake_buffer256.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer256.in0_ready, %handshake_buffer256.out0, %handshake_buffer256.out0_valid = hw.instance "handshake_buffer256" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant22.out0: i64, in0_valid: %handshake_constant22.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork18.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork18.in0_ready, %handshake_fork18.out0, %handshake_fork18.out0_valid, %handshake_fork18.out1, %handshake_fork18.out1_valid, %handshake_fork18.out2, %handshake_fork18.out2_valid, %handshake_fork18.out3, %handshake_fork18.out3_valid, %handshake_fork18.out4, %handshake_fork18.out4_valid, %handshake_fork18.out5, %handshake_fork18.out5_valid, %handshake_fork18.out6, %handshake_fork18.out6_valid, %handshake_fork18.out7, %handshake_fork18.out7_valid, %handshake_fork18.out8, %handshake_fork18.out8_valid, %handshake_fork18.out9, %handshake_fork18.out9_valid, %handshake_fork18.out10, %handshake_fork18.out10_valid, %handshake_fork18.out11, %handshake_fork18.out11_valid, %handshake_fork18.out12, %handshake_fork18.out12_valid, %handshake_fork18.out13, %handshake_fork18.out13_valid, %handshake_fork18.out14, %handshake_fork18.out14_valid, %handshake_fork18.out15, %handshake_fork18.out15_valid, %handshake_fork18.out16, %handshake_fork18.out16_valid = hw.instance "handshake_fork18" @handshake_fork_in_ui64_out_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64_ui64(in0: %handshake_buffer256.out0: i64, in0_valid: %handshake_buffer256.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer273.in0_ready: i1, out1_ready: %handshake_buffer272.in0_ready: i1, out2_ready: %handshake_buffer271.in0_ready: i1, out3_ready: %handshake_buffer270.in0_ready: i1, out4_ready: %handshake_buffer269.in0_ready: i1, out5_ready: %handshake_buffer268.in0_ready: i1, out6_ready: %handshake_buffer267.in0_ready: i1, out7_ready: %handshake_buffer266.in0_ready: i1, out8_ready: %handshake_buffer265.in0_ready: i1, out9_ready: %handshake_buffer264.in0_ready: i1, out10_ready: %handshake_buffer263.in0_ready: i1, out11_ready: %handshake_buffer262.in0_ready: i1, out12_ready: %handshake_buffer261.in0_ready: i1, out13_ready: %handshake_buffer260.in0_ready: i1, out14_ready: %handshake_buffer259.in0_ready: i1, out15_ready: %handshake_buffer258.in0_ready: i1, out16_ready: %handshake_buffer257.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1, out2: i64, out2_valid: i1, out3: i64, out3_valid: i1, out4: i64, out4_valid: i1, out5: i64, out5_valid: i1, out6: i64, out6_valid: i1, out7: i64, out7_valid: i1, out8: i64, out8_valid: i1, out9: i64, out9_valid: i1, out10: i64, out10_valid: i1, out11: i64, out11_valid: i1, out12: i64, out12_valid: i1, out13: i64, out13_valid: i1, out14: i64, out14_valid: i1, out15: i64, out15_valid: i1, out16: i64, out16_valid: i1)
    %handshake_buffer257.in0_ready, %handshake_buffer257.out0, %handshake_buffer257.out0_valid = hw.instance "handshake_buffer257" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out16: i64, in0_valid: %handshake_fork18.out16_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli15.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer258.in0_ready, %handshake_buffer258.out0, %handshake_buffer258.out0_valid = hw.instance "handshake_buffer258" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out15: i64, in0_valid: %handshake_fork18.out15_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli14.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer259.in0_ready, %handshake_buffer259.out0, %handshake_buffer259.out0_valid = hw.instance "handshake_buffer259" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out14: i64, in0_valid: %handshake_fork18.out14_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli13.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer260.in0_ready, %handshake_buffer260.out0, %handshake_buffer260.out0_valid = hw.instance "handshake_buffer260" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out13: i64, in0_valid: %handshake_fork18.out13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli12.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer261.in0_ready, %handshake_buffer261.out0, %handshake_buffer261.out0_valid = hw.instance "handshake_buffer261" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out12: i64, in0_valid: %handshake_fork18.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli11.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer262.in0_ready, %handshake_buffer262.out0, %handshake_buffer262.out0_valid = hw.instance "handshake_buffer262" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out11: i64, in0_valid: %handshake_fork18.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli10.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer263.in0_ready, %handshake_buffer263.out0, %handshake_buffer263.out0_valid = hw.instance "handshake_buffer263" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out10: i64, in0_valid: %handshake_fork18.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli9.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer264.in0_ready, %handshake_buffer264.out0, %handshake_buffer264.out0_valid = hw.instance "handshake_buffer264" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out9: i64, in0_valid: %handshake_fork18.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli8.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer265.in0_ready, %handshake_buffer265.out0, %handshake_buffer265.out0_valid = hw.instance "handshake_buffer265" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out8: i64, in0_valid: %handshake_fork18.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli7.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer266.in0_ready, %handshake_buffer266.out0, %handshake_buffer266.out0_valid = hw.instance "handshake_buffer266" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out7: i64, in0_valid: %handshake_fork18.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli6.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer267.in0_ready, %handshake_buffer267.out0, %handshake_buffer267.out0_valid = hw.instance "handshake_buffer267" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out6: i64, in0_valid: %handshake_fork18.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli5.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer268.in0_ready, %handshake_buffer268.out0, %handshake_buffer268.out0_valid = hw.instance "handshake_buffer268" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out5: i64, in0_valid: %handshake_fork18.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli4.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer269.in0_ready, %handshake_buffer269.out0, %handshake_buffer269.out0_valid = hw.instance "handshake_buffer269" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out4: i64, in0_valid: %handshake_fork18.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli3.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer270.in0_ready, %handshake_buffer270.out0, %handshake_buffer270.out0_valid = hw.instance "handshake_buffer270" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out3: i64, in0_valid: %handshake_fork18.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli2.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer271.in0_ready, %handshake_buffer271.out0, %handshake_buffer271.out0_valid = hw.instance "handshake_buffer271" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out2: i64, in0_valid: %handshake_fork18.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer272.in0_ready, %handshake_buffer272.out0, %handshake_buffer272.out0_valid = hw.instance "handshake_buffer272" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out1: i64, in0_valid: %handshake_fork18.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer273.in0_ready, %handshake_buffer273.out0, %handshake_buffer273.out0_valid = hw.instance "handshake_buffer273" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork18.out0: i64, in0_valid: %handshake_fork18.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux13.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant23.ctrl_ready, %handshake_constant23.out0, %handshake_constant23.out0_valid = hw.instance "handshake_constant23" @handshake_constant_c823550_out_ui64(ctrl: %handshake_buffer51.out0: i0, ctrl_valid: %handshake_buffer51.out0_valid: i1, out0_ready: %handshake_buffer274.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer274.in0_ready, %handshake_buffer274.out0, %handshake_buffer274.out0_valid = hw.instance "handshake_buffer274" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant23.out0: i64, in0_valid: %handshake_constant23.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store0.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant24.ctrl_ready, %handshake_constant24.out0, %handshake_constant24.out0_valid = hw.instance "handshake_constant24" @handshake_constant_c486170_out_ui64(ctrl: %handshake_buffer50.out0: i0, ctrl_valid: %handshake_buffer50.out0_valid: i1, out0_ready: %handshake_buffer275.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer275.in0_ready, %handshake_buffer275.out0, %handshake_buffer275.out0_valid = hw.instance "handshake_buffer275" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant24.out0: i64, in0_valid: %handshake_constant24.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store1.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant25.ctrl_ready, %handshake_constant25.out0, %handshake_constant25.out0_valid = hw.instance "handshake_constant25" @handshake_constant_c256879_out_ui64(ctrl: %handshake_buffer49.out0: i0, ctrl_valid: %handshake_buffer49.out0_valid: i1, out0_ready: %handshake_buffer276.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer276.in0_ready, %handshake_buffer276.out0, %handshake_buffer276.out0_valid = hw.instance "handshake_buffer276" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant25.out0: i64, in0_valid: %handshake_constant25.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store2.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant26.ctrl_ready, %handshake_constant26.out0, %handshake_constant26.out0_valid = hw.instance "handshake_constant26" @handshake_constant_c130396_out_ui64(ctrl: %handshake_buffer48.out0: i0, ctrl_valid: %handshake_buffer48.out0_valid: i1, out0_ready: %handshake_buffer277.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer277.in0_ready, %handshake_buffer277.out0, %handshake_buffer277.out0_valid = hw.instance "handshake_buffer277" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant26.out0: i64, in0_valid: %handshake_constant26.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store3.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant27.ctrl_ready, %handshake_constant27.out0, %handshake_constant27.out0_valid = hw.instance "handshake_constant27" @handshake_constant_c65451_out_ui64(ctrl: %handshake_buffer47.out0: i0, ctrl_valid: %handshake_buffer47.out0_valid: i1, out0_ready: %handshake_buffer278.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer278.in0_ready, %handshake_buffer278.out0, %handshake_buffer278.out0_valid = hw.instance "handshake_buffer278" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant27.out0: i64, in0_valid: %handshake_constant27.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store4.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant28.ctrl_ready, %handshake_constant28.out0, %handshake_constant28.out0_valid = hw.instance "handshake_constant28" @handshake_constant_c32757_out_ui64(ctrl: %handshake_buffer46.out0: i0, ctrl_valid: %handshake_buffer46.out0_valid: i1, out0_ready: %handshake_buffer279.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer279.in0_ready, %handshake_buffer279.out0, %handshake_buffer279.out0_valid = hw.instance "handshake_buffer279" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant28.out0: i64, in0_valid: %handshake_constant28.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store5.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant29.ctrl_ready, %handshake_constant29.out0, %handshake_constant29.out0_valid = hw.instance "handshake_constant29" @handshake_constant_c16383_out_ui64(ctrl: %handshake_buffer45.out0: i0, ctrl_valid: %handshake_buffer45.out0_valid: i1, out0_ready: %handshake_buffer280.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer280.in0_ready, %handshake_buffer280.out0, %handshake_buffer280.out0_valid = hw.instance "handshake_buffer280" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant29.out0: i64, in0_valid: %handshake_constant29.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store6.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant30.ctrl_ready, %handshake_constant30.out0, %handshake_constant30.out0_valid = hw.instance "handshake_constant30" @handshake_constant_c8192_out_ui64(ctrl: %handshake_buffer44.out0: i0, ctrl_valid: %handshake_buffer44.out0_valid: i1, out0_ready: %handshake_buffer281.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer281.in0_ready, %handshake_buffer281.out0, %handshake_buffer281.out0_valid = hw.instance "handshake_buffer281" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant30.out0: i64, in0_valid: %handshake_constant30.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store7.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant31.ctrl_ready, %handshake_constant31.out0, %handshake_constant31.out0_valid = hw.instance "handshake_constant31" @handshake_constant_c4096_out_ui64(ctrl: %handshake_buffer43.out0: i0, ctrl_valid: %handshake_buffer43.out0_valid: i1, out0_ready: %handshake_buffer282.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer282.in0_ready, %handshake_buffer282.out0, %handshake_buffer282.out0_valid = hw.instance "handshake_buffer282" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant31.out0: i64, in0_valid: %handshake_constant31.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store8.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant32.ctrl_ready, %handshake_constant32.out0, %handshake_constant32.out0_valid = hw.instance "handshake_constant32" @handshake_constant_c2048_out_ui64(ctrl: %handshake_buffer42.out0: i0, ctrl_valid: %handshake_buffer42.out0_valid: i1, out0_ready: %handshake_buffer283.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer283.in0_ready, %handshake_buffer283.out0, %handshake_buffer283.out0_valid = hw.instance "handshake_buffer283" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant32.out0: i64, in0_valid: %handshake_constant32.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store9.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant33.ctrl_ready, %handshake_constant33.out0, %handshake_constant33.out0_valid = hw.instance "handshake_constant33" @handshake_constant_c1024_out_ui64(ctrl: %handshake_buffer41.out0: i0, ctrl_valid: %handshake_buffer41.out0_valid: i1, out0_ready: %handshake_buffer284.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer284.in0_ready, %handshake_buffer284.out0, %handshake_buffer284.out0_valid = hw.instance "handshake_buffer284" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant33.out0: i64, in0_valid: %handshake_constant33.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store10.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant34.ctrl_ready, %handshake_constant34.out0, %handshake_constant34.out0_valid = hw.instance "handshake_constant34" @handshake_constant_c512_out_ui64(ctrl: %handshake_buffer40.out0: i0, ctrl_valid: %handshake_buffer40.out0_valid: i1, out0_ready: %handshake_buffer285.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer285.in0_ready, %handshake_buffer285.out0, %handshake_buffer285.out0_valid = hw.instance "handshake_buffer285" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant34.out0: i64, in0_valid: %handshake_constant34.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store11.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant35.ctrl_ready, %handshake_constant35.out0, %handshake_constant35.out0_valid = hw.instance "handshake_constant35" @handshake_constant_c256_out_ui64(ctrl: %handshake_buffer39.out0: i0, ctrl_valid: %handshake_buffer39.out0_valid: i1, out0_ready: %handshake_buffer286.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer286.in0_ready, %handshake_buffer286.out0, %handshake_buffer286.out0_valid = hw.instance "handshake_buffer286" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant35.out0: i64, in0_valid: %handshake_constant35.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store12.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant36.ctrl_ready, %handshake_constant36.out0, %handshake_constant36.out0_valid = hw.instance "handshake_constant36" @handshake_constant_c128_out_ui64(ctrl: %handshake_buffer38.out0: i0, ctrl_valid: %handshake_buffer38.out0_valid: i1, out0_ready: %handshake_buffer287.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer287.in0_ready, %handshake_buffer287.out0, %handshake_buffer287.out0_valid = hw.instance "handshake_buffer287" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant36.out0: i64, in0_valid: %handshake_constant36.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store13.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant37.ctrl_ready, %handshake_constant37.out0, %handshake_constant37.out0_valid = hw.instance "handshake_constant37" @handshake_constant_c64_out_ui64(ctrl: %handshake_buffer37.out0: i0, ctrl_valid: %handshake_buffer37.out0_valid: i1, out0_ready: %handshake_buffer288.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer288.in0_ready, %handshake_buffer288.out0, %handshake_buffer288.out0_valid = hw.instance "handshake_buffer288" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant37.out0: i64, in0_valid: %handshake_constant37.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store14.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant38.ctrl_ready, %handshake_constant38.out0, %handshake_constant38.out0_valid = hw.instance "handshake_constant38" @handshake_constant_c32_out_ui64(ctrl: %handshake_buffer36.out0: i0, ctrl_valid: %handshake_buffer36.out0_valid: i1, out0_ready: %handshake_buffer289.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer289.in0_ready, %handshake_buffer289.out0, %handshake_buffer289.out0_valid = hw.instance "handshake_buffer289" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant38.out0: i64, in0_valid: %handshake_constant38.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store15.dataIn_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant39.ctrl_ready, %handshake_constant39.out0, %handshake_constant39.out0_valid = hw.instance "handshake_constant39" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer35.out0: i0, ctrl_valid: %handshake_buffer35.out0_valid: i1, out0_ready: %handshake_buffer290.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer290.in0_ready, %handshake_buffer290.out0, %handshake_buffer290.out0_valid = hw.instance "handshake_buffer290" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant39.out0: i64, in0_valid: %handshake_constant39.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli0.in0_ready, %arith_shli0.in1_ready, %arith_shli0.out0, %arith_shli0.out0_valid = hw.instance "arith_shli0" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer272.out0: i64, in0_valid: %handshake_buffer272.out0_valid: i1, in1: %handshake_buffer290.out0: i64, in1_valid: %handshake_buffer290.out0_valid: i1, out0_ready: %handshake_buffer291.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer291.in0_ready, %handshake_buffer291.out0, %handshake_buffer291.out0_valid = hw.instance "handshake_buffer291" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli0.out0: i64, in0_valid: %arith_shli0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store0.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_store0.addrIn0_ready, %handshake_store0.dataIn_ready, %handshake_store0.ctrl_ready, %handshake_store0.dataToMem, %handshake_store0.dataToMem_valid, %handshake_store0.addrOut0, %handshake_store0.addrOut0_valid = hw.instance "handshake_store0" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer291.out0: i64, addrIn0_valid: %handshake_buffer291.out0_valid: i1, dataIn: %handshake_buffer274.out0: i64, dataIn_valid: %handshake_buffer274.out0_valid: i1, ctrl: %handshake_buffer18.out0: i0, ctrl_valid: %handshake_buffer18.out0_valid: i1, dataToMem_ready: %handshake_buffer293.in0_ready: i1, addrOut0_ready: %handshake_buffer292.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer292.in0_ready, %handshake_buffer292.out0, %handshake_buffer292.out0_valid = hw.instance "handshake_buffer292" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store0.addrOut0: i64, in0_valid: %handshake_store0.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer293.in0_ready, %handshake_buffer293.out0, %handshake_buffer293.out0_valid = hw.instance "handshake_buffer293" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store0.dataToMem: i64, in0_valid: %handshake_store0.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant40.ctrl_ready, %handshake_constant40.out0, %handshake_constant40.out0_valid = hw.instance "handshake_constant40" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer34.out0: i0, ctrl_valid: %handshake_buffer34.out0_valid: i1, out0_ready: %handshake_buffer294.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer294.in0_ready, %handshake_buffer294.out0, %handshake_buffer294.out0_valid = hw.instance "handshake_buffer294" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant40.out0: i64, in0_valid: %handshake_constant40.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli1.in0_ready, %arith_shli1.in1_ready, %arith_shli1.out0, %arith_shli1.out0_valid = hw.instance "arith_shli1" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer271.out0: i64, in0_valid: %handshake_buffer271.out0_valid: i1, in1: %handshake_buffer294.out0: i64, in1_valid: %handshake_buffer294.out0_valid: i1, out0_ready: %handshake_buffer295.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer295.in0_ready, %handshake_buffer295.out0, %handshake_buffer295.out0_valid = hw.instance "handshake_buffer295" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli1.out0: i64, in0_valid: %arith_shli1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi0.in0_ready, %arith_addi0.in1_ready, %arith_addi0.out0, %arith_addi0.out0_valid = hw.instance "arith_addi0" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer295.out0: i64, in0_valid: %handshake_buffer295.out0_valid: i1, in1: %handshake_buffer255.out0: i64, in1_valid: %handshake_buffer255.out0_valid: i1, out0_ready: %handshake_buffer296.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer296.in0_ready, %handshake_buffer296.out0, %handshake_buffer296.out0_valid = hw.instance "handshake_buffer296" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi0.out0: i64, in0_valid: %arith_addi0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store1.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join1.in0_ready, %handshake_join1.in1_ready, %handshake_join1.out0, %handshake_join1.out0_valid = hw.instance "handshake_join1" @handshake_join_2ins_1outs_ctrl(in0: %handshake_buffer17.out0: i0, in0_valid: %handshake_buffer17.out0_valid: i1, in1: %handshake_buffer213.out0: i0, in1_valid: %handshake_buffer213.out0_valid: i1, out0_ready: %handshake_buffer297.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer297.in0_ready, %handshake_buffer297.out0, %handshake_buffer297.out0_valid = hw.instance "handshake_buffer297" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join1.out0: i0, in0_valid: %handshake_join1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store1.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store1.addrIn0_ready, %handshake_store1.dataIn_ready, %handshake_store1.ctrl_ready, %handshake_store1.dataToMem, %handshake_store1.dataToMem_valid, %handshake_store1.addrOut0, %handshake_store1.addrOut0_valid = hw.instance "handshake_store1" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer296.out0: i64, addrIn0_valid: %handshake_buffer296.out0_valid: i1, dataIn: %handshake_buffer275.out0: i64, dataIn_valid: %handshake_buffer275.out0_valid: i1, ctrl: %handshake_buffer297.out0: i0, ctrl_valid: %handshake_buffer297.out0_valid: i1, dataToMem_ready: %handshake_buffer299.in0_ready: i1, addrOut0_ready: %handshake_buffer298.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer298.in0_ready, %handshake_buffer298.out0, %handshake_buffer298.out0_valid = hw.instance "handshake_buffer298" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store1.addrOut0: i64, in0_valid: %handshake_store1.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer299.in0_ready, %handshake_buffer299.out0, %handshake_buffer299.out0_valid = hw.instance "handshake_buffer299" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store1.dataToMem: i64, in0_valid: %handshake_store1.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant41.ctrl_ready, %handshake_constant41.out0, %handshake_constant41.out0_valid = hw.instance "handshake_constant41" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer33.out0: i0, ctrl_valid: %handshake_buffer33.out0_valid: i1, out0_ready: %handshake_buffer300.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer300.in0_ready, %handshake_buffer300.out0, %handshake_buffer300.out0_valid = hw.instance "handshake_buffer300" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant41.out0: i64, in0_valid: %handshake_constant41.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli2.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli2.in0_ready, %arith_shli2.in1_ready, %arith_shli2.out0, %arith_shli2.out0_valid = hw.instance "arith_shli2" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer270.out0: i64, in0_valid: %handshake_buffer270.out0_valid: i1, in1: %handshake_buffer300.out0: i64, in1_valid: %handshake_buffer300.out0_valid: i1, out0_ready: %handshake_buffer301.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer301.in0_ready, %handshake_buffer301.out0, %handshake_buffer301.out0_valid = hw.instance "handshake_buffer301" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli2.out0: i64, in0_valid: %arith_shli2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi1.in0_ready, %arith_addi1.in1_ready, %arith_addi1.out0, %arith_addi1.out0_valid = hw.instance "arith_addi1" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer301.out0: i64, in0_valid: %handshake_buffer301.out0_valid: i1, in1: %handshake_buffer254.out0: i64, in1_valid: %handshake_buffer254.out0_valid: i1, out0_ready: %handshake_buffer302.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer302.in0_ready, %handshake_buffer302.out0, %handshake_buffer302.out0_valid = hw.instance "handshake_buffer302" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi1.out0: i64, in0_valid: %arith_addi1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store2.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join2.in0_ready, %handshake_join2.in1_ready, %handshake_join2.in2_ready, %handshake_join2.out0, %handshake_join2.out0_valid = hw.instance "handshake_join2" @handshake_join_3ins_1outs_ctrl(in0: %handshake_buffer16.out0: i0, in0_valid: %handshake_buffer16.out0_valid: i1, in1: %handshake_buffer214.out0: i0, in1_valid: %handshake_buffer214.out0_valid: i1, in2: %handshake_buffer198.out0: i0, in2_valid: %handshake_buffer198.out0_valid: i1, out0_ready: %handshake_buffer303.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer303.in0_ready, %handshake_buffer303.out0, %handshake_buffer303.out0_valid = hw.instance "handshake_buffer303" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join2.out0: i0, in0_valid: %handshake_join2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store2.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store2.addrIn0_ready, %handshake_store2.dataIn_ready, %handshake_store2.ctrl_ready, %handshake_store2.dataToMem, %handshake_store2.dataToMem_valid, %handshake_store2.addrOut0, %handshake_store2.addrOut0_valid = hw.instance "handshake_store2" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer302.out0: i64, addrIn0_valid: %handshake_buffer302.out0_valid: i1, dataIn: %handshake_buffer276.out0: i64, dataIn_valid: %handshake_buffer276.out0_valid: i1, ctrl: %handshake_buffer303.out0: i0, ctrl_valid: %handshake_buffer303.out0_valid: i1, dataToMem_ready: %handshake_buffer305.in0_ready: i1, addrOut0_ready: %handshake_buffer304.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer304.in0_ready, %handshake_buffer304.out0, %handshake_buffer304.out0_valid = hw.instance "handshake_buffer304" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store2.addrOut0: i64, in0_valid: %handshake_store2.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr2_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer305.in0_ready, %handshake_buffer305.out0, %handshake_buffer305.out0_valid = hw.instance "handshake_buffer305" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store2.dataToMem: i64, in0_valid: %handshake_store2.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData2_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant42.ctrl_ready, %handshake_constant42.out0, %handshake_constant42.out0_valid = hw.instance "handshake_constant42" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer32.out0: i0, ctrl_valid: %handshake_buffer32.out0_valid: i1, out0_ready: %handshake_buffer306.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer306.in0_ready, %handshake_buffer306.out0, %handshake_buffer306.out0_valid = hw.instance "handshake_buffer306" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant42.out0: i64, in0_valid: %handshake_constant42.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli3.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli3.in0_ready, %arith_shli3.in1_ready, %arith_shli3.out0, %arith_shli3.out0_valid = hw.instance "arith_shli3" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer269.out0: i64, in0_valid: %handshake_buffer269.out0_valid: i1, in1: %handshake_buffer306.out0: i64, in1_valid: %handshake_buffer306.out0_valid: i1, out0_ready: %handshake_buffer307.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer307.in0_ready, %handshake_buffer307.out0, %handshake_buffer307.out0_valid = hw.instance "handshake_buffer307" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli3.out0: i64, in0_valid: %arith_shli3.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi2.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi2.in0_ready, %arith_addi2.in1_ready, %arith_addi2.out0, %arith_addi2.out0_valid = hw.instance "arith_addi2" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer307.out0: i64, in0_valid: %handshake_buffer307.out0_valid: i1, in1: %handshake_buffer253.out0: i64, in1_valid: %handshake_buffer253.out0_valid: i1, out0_ready: %handshake_buffer308.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer308.in0_ready, %handshake_buffer308.out0, %handshake_buffer308.out0_valid = hw.instance "handshake_buffer308" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi2.out0: i64, in0_valid: %arith_addi2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store3.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join3.in0_ready, %handshake_join3.in1_ready, %handshake_join3.in2_ready, %handshake_join3.in3_ready, %handshake_join3.out0, %handshake_join3.out0_valid = hw.instance "handshake_join3" @handshake_join_4ins_1outs_ctrl(in0: %handshake_buffer15.out0: i0, in0_valid: %handshake_buffer15.out0_valid: i1, in1: %handshake_buffer215.out0: i0, in1_valid: %handshake_buffer215.out0_valid: i1, in2: %handshake_buffer199.out0: i0, in2_valid: %handshake_buffer199.out0_valid: i1, in3: %handshake_buffer184.out0: i0, in3_valid: %handshake_buffer184.out0_valid: i1, out0_ready: %handshake_buffer309.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer309.in0_ready, %handshake_buffer309.out0, %handshake_buffer309.out0_valid = hw.instance "handshake_buffer309" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join3.out0: i0, in0_valid: %handshake_join3.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store3.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store3.addrIn0_ready, %handshake_store3.dataIn_ready, %handshake_store3.ctrl_ready, %handshake_store3.dataToMem, %handshake_store3.dataToMem_valid, %handshake_store3.addrOut0, %handshake_store3.addrOut0_valid = hw.instance "handshake_store3" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer308.out0: i64, addrIn0_valid: %handshake_buffer308.out0_valid: i1, dataIn: %handshake_buffer277.out0: i64, dataIn_valid: %handshake_buffer277.out0_valid: i1, ctrl: %handshake_buffer309.out0: i0, ctrl_valid: %handshake_buffer309.out0_valid: i1, dataToMem_ready: %handshake_buffer311.in0_ready: i1, addrOut0_ready: %handshake_buffer310.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer310.in0_ready, %handshake_buffer310.out0, %handshake_buffer310.out0_valid = hw.instance "handshake_buffer310" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store3.addrOut0: i64, in0_valid: %handshake_store3.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr3_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer311.in0_ready, %handshake_buffer311.out0, %handshake_buffer311.out0_valid = hw.instance "handshake_buffer311" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store3.dataToMem: i64, in0_valid: %handshake_store3.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData3_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant43.ctrl_ready, %handshake_constant43.out0, %handshake_constant43.out0_valid = hw.instance "handshake_constant43" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer31.out0: i0, ctrl_valid: %handshake_buffer31.out0_valid: i1, out0_ready: %handshake_buffer312.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer312.in0_ready, %handshake_buffer312.out0, %handshake_buffer312.out0_valid = hw.instance "handshake_buffer312" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant43.out0: i64, in0_valid: %handshake_constant43.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli4.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli4.in0_ready, %arith_shli4.in1_ready, %arith_shli4.out0, %arith_shli4.out0_valid = hw.instance "arith_shli4" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer268.out0: i64, in0_valid: %handshake_buffer268.out0_valid: i1, in1: %handshake_buffer312.out0: i64, in1_valid: %handshake_buffer312.out0_valid: i1, out0_ready: %handshake_buffer313.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer313.in0_ready, %handshake_buffer313.out0, %handshake_buffer313.out0_valid = hw.instance "handshake_buffer313" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli4.out0: i64, in0_valid: %arith_shli4.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi3.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi3.in0_ready, %arith_addi3.in1_ready, %arith_addi3.out0, %arith_addi3.out0_valid = hw.instance "arith_addi3" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer313.out0: i64, in0_valid: %handshake_buffer313.out0_valid: i1, in1: %handshake_buffer252.out0: i64, in1_valid: %handshake_buffer252.out0_valid: i1, out0_ready: %handshake_buffer314.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer314.in0_ready, %handshake_buffer314.out0, %handshake_buffer314.out0_valid = hw.instance "handshake_buffer314" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi3.out0: i64, in0_valid: %arith_addi3.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store4.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join4.in0_ready, %handshake_join4.in1_ready, %handshake_join4.in2_ready, %handshake_join4.in3_ready, %handshake_join4.in4_ready, %handshake_join4.out0, %handshake_join4.out0_valid = hw.instance "handshake_join4" @handshake_join_5ins_1outs_ctrl(in0: %handshake_buffer14.out0: i0, in0_valid: %handshake_buffer14.out0_valid: i1, in1: %handshake_buffer216.out0: i0, in1_valid: %handshake_buffer216.out0_valid: i1, in2: %handshake_buffer200.out0: i0, in2_valid: %handshake_buffer200.out0_valid: i1, in3: %handshake_buffer185.out0: i0, in3_valid: %handshake_buffer185.out0_valid: i1, in4: %handshake_buffer171.out0: i0, in4_valid: %handshake_buffer171.out0_valid: i1, out0_ready: %handshake_buffer315.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer315.in0_ready, %handshake_buffer315.out0, %handshake_buffer315.out0_valid = hw.instance "handshake_buffer315" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join4.out0: i0, in0_valid: %handshake_join4.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store4.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store4.addrIn0_ready, %handshake_store4.dataIn_ready, %handshake_store4.ctrl_ready, %handshake_store4.dataToMem, %handshake_store4.dataToMem_valid, %handshake_store4.addrOut0, %handshake_store4.addrOut0_valid = hw.instance "handshake_store4" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer314.out0: i64, addrIn0_valid: %handshake_buffer314.out0_valid: i1, dataIn: %handshake_buffer278.out0: i64, dataIn_valid: %handshake_buffer278.out0_valid: i1, ctrl: %handshake_buffer315.out0: i0, ctrl_valid: %handshake_buffer315.out0_valid: i1, dataToMem_ready: %handshake_buffer317.in0_ready: i1, addrOut0_ready: %handshake_buffer316.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer316.in0_ready, %handshake_buffer316.out0, %handshake_buffer316.out0_valid = hw.instance "handshake_buffer316" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store4.addrOut0: i64, in0_valid: %handshake_store4.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr4_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer317.in0_ready, %handshake_buffer317.out0, %handshake_buffer317.out0_valid = hw.instance "handshake_buffer317" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store4.dataToMem: i64, in0_valid: %handshake_store4.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData4_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant44.ctrl_ready, %handshake_constant44.out0, %handshake_constant44.out0_valid = hw.instance "handshake_constant44" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer30.out0: i0, ctrl_valid: %handshake_buffer30.out0_valid: i1, out0_ready: %handshake_buffer318.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer318.in0_ready, %handshake_buffer318.out0, %handshake_buffer318.out0_valid = hw.instance "handshake_buffer318" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant44.out0: i64, in0_valid: %handshake_constant44.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli5.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli5.in0_ready, %arith_shli5.in1_ready, %arith_shli5.out0, %arith_shli5.out0_valid = hw.instance "arith_shli5" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer267.out0: i64, in0_valid: %handshake_buffer267.out0_valid: i1, in1: %handshake_buffer318.out0: i64, in1_valid: %handshake_buffer318.out0_valid: i1, out0_ready: %handshake_buffer319.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer319.in0_ready, %handshake_buffer319.out0, %handshake_buffer319.out0_valid = hw.instance "handshake_buffer319" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli5.out0: i64, in0_valid: %arith_shli5.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi4.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi4.in0_ready, %arith_addi4.in1_ready, %arith_addi4.out0, %arith_addi4.out0_valid = hw.instance "arith_addi4" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer319.out0: i64, in0_valid: %handshake_buffer319.out0_valid: i1, in1: %handshake_buffer251.out0: i64, in1_valid: %handshake_buffer251.out0_valid: i1, out0_ready: %handshake_buffer320.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer320.in0_ready, %handshake_buffer320.out0, %handshake_buffer320.out0_valid = hw.instance "handshake_buffer320" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi4.out0: i64, in0_valid: %arith_addi4.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store5.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join5.in0_ready, %handshake_join5.in1_ready, %handshake_join5.in2_ready, %handshake_join5.in3_ready, %handshake_join5.in4_ready, %handshake_join5.in5_ready, %handshake_join5.out0, %handshake_join5.out0_valid = hw.instance "handshake_join5" @handshake_join_6ins_1outs_ctrl(in0: %handshake_buffer13.out0: i0, in0_valid: %handshake_buffer13.out0_valid: i1, in1: %handshake_buffer217.out0: i0, in1_valid: %handshake_buffer217.out0_valid: i1, in2: %handshake_buffer201.out0: i0, in2_valid: %handshake_buffer201.out0_valid: i1, in3: %handshake_buffer186.out0: i0, in3_valid: %handshake_buffer186.out0_valid: i1, in4: %handshake_buffer172.out0: i0, in4_valid: %handshake_buffer172.out0_valid: i1, in5: %handshake_buffer159.out0: i0, in5_valid: %handshake_buffer159.out0_valid: i1, out0_ready: %handshake_buffer321.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer321.in0_ready, %handshake_buffer321.out0, %handshake_buffer321.out0_valid = hw.instance "handshake_buffer321" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join5.out0: i0, in0_valid: %handshake_join5.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store5.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store5.addrIn0_ready, %handshake_store5.dataIn_ready, %handshake_store5.ctrl_ready, %handshake_store5.dataToMem, %handshake_store5.dataToMem_valid, %handshake_store5.addrOut0, %handshake_store5.addrOut0_valid = hw.instance "handshake_store5" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer320.out0: i64, addrIn0_valid: %handshake_buffer320.out0_valid: i1, dataIn: %handshake_buffer279.out0: i64, dataIn_valid: %handshake_buffer279.out0_valid: i1, ctrl: %handshake_buffer321.out0: i0, ctrl_valid: %handshake_buffer321.out0_valid: i1, dataToMem_ready: %handshake_buffer323.in0_ready: i1, addrOut0_ready: %handshake_buffer322.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer322.in0_ready, %handshake_buffer322.out0, %handshake_buffer322.out0_valid = hw.instance "handshake_buffer322" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store5.addrOut0: i64, in0_valid: %handshake_store5.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr5_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer323.in0_ready, %handshake_buffer323.out0, %handshake_buffer323.out0_valid = hw.instance "handshake_buffer323" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store5.dataToMem: i64, in0_valid: %handshake_store5.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData5_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant45.ctrl_ready, %handshake_constant45.out0, %handshake_constant45.out0_valid = hw.instance "handshake_constant45" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer29.out0: i0, ctrl_valid: %handshake_buffer29.out0_valid: i1, out0_ready: %handshake_buffer324.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer324.in0_ready, %handshake_buffer324.out0, %handshake_buffer324.out0_valid = hw.instance "handshake_buffer324" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant45.out0: i64, in0_valid: %handshake_constant45.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli6.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli6.in0_ready, %arith_shli6.in1_ready, %arith_shli6.out0, %arith_shli6.out0_valid = hw.instance "arith_shli6" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer266.out0: i64, in0_valid: %handshake_buffer266.out0_valid: i1, in1: %handshake_buffer324.out0: i64, in1_valid: %handshake_buffer324.out0_valid: i1, out0_ready: %handshake_buffer325.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer325.in0_ready, %handshake_buffer325.out0, %handshake_buffer325.out0_valid = hw.instance "handshake_buffer325" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli6.out0: i64, in0_valid: %arith_shli6.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi5.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi5.in0_ready, %arith_addi5.in1_ready, %arith_addi5.out0, %arith_addi5.out0_valid = hw.instance "arith_addi5" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer325.out0: i64, in0_valid: %handshake_buffer325.out0_valid: i1, in1: %handshake_buffer250.out0: i64, in1_valid: %handshake_buffer250.out0_valid: i1, out0_ready: %handshake_buffer326.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer326.in0_ready, %handshake_buffer326.out0, %handshake_buffer326.out0_valid = hw.instance "handshake_buffer326" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi5.out0: i64, in0_valid: %arith_addi5.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store6.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join6.in0_ready, %handshake_join6.in1_ready, %handshake_join6.in2_ready, %handshake_join6.in3_ready, %handshake_join6.in4_ready, %handshake_join6.in5_ready, %handshake_join6.in6_ready, %handshake_join6.out0, %handshake_join6.out0_valid = hw.instance "handshake_join6" @handshake_join_7ins_1outs_ctrl(in0: %handshake_buffer12.out0: i0, in0_valid: %handshake_buffer12.out0_valid: i1, in1: %handshake_buffer218.out0: i0, in1_valid: %handshake_buffer218.out0_valid: i1, in2: %handshake_buffer202.out0: i0, in2_valid: %handshake_buffer202.out0_valid: i1, in3: %handshake_buffer187.out0: i0, in3_valid: %handshake_buffer187.out0_valid: i1, in4: %handshake_buffer173.out0: i0, in4_valid: %handshake_buffer173.out0_valid: i1, in5: %handshake_buffer160.out0: i0, in5_valid: %handshake_buffer160.out0_valid: i1, in6: %handshake_buffer148.out0: i0, in6_valid: %handshake_buffer148.out0_valid: i1, out0_ready: %handshake_buffer327.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer327.in0_ready, %handshake_buffer327.out0, %handshake_buffer327.out0_valid = hw.instance "handshake_buffer327" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join6.out0: i0, in0_valid: %handshake_join6.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store6.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store6.addrIn0_ready, %handshake_store6.dataIn_ready, %handshake_store6.ctrl_ready, %handshake_store6.dataToMem, %handshake_store6.dataToMem_valid, %handshake_store6.addrOut0, %handshake_store6.addrOut0_valid = hw.instance "handshake_store6" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer326.out0: i64, addrIn0_valid: %handshake_buffer326.out0_valid: i1, dataIn: %handshake_buffer280.out0: i64, dataIn_valid: %handshake_buffer280.out0_valid: i1, ctrl: %handshake_buffer327.out0: i0, ctrl_valid: %handshake_buffer327.out0_valid: i1, dataToMem_ready: %handshake_buffer329.in0_ready: i1, addrOut0_ready: %handshake_buffer328.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer328.in0_ready, %handshake_buffer328.out0, %handshake_buffer328.out0_valid = hw.instance "handshake_buffer328" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store6.addrOut0: i64, in0_valid: %handshake_store6.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr6_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer329.in0_ready, %handshake_buffer329.out0, %handshake_buffer329.out0_valid = hw.instance "handshake_buffer329" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store6.dataToMem: i64, in0_valid: %handshake_store6.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData6_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant46.ctrl_ready, %handshake_constant46.out0, %handshake_constant46.out0_valid = hw.instance "handshake_constant46" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer28.out0: i0, ctrl_valid: %handshake_buffer28.out0_valid: i1, out0_ready: %handshake_buffer330.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer330.in0_ready, %handshake_buffer330.out0, %handshake_buffer330.out0_valid = hw.instance "handshake_buffer330" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant46.out0: i64, in0_valid: %handshake_constant46.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli7.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli7.in0_ready, %arith_shli7.in1_ready, %arith_shli7.out0, %arith_shli7.out0_valid = hw.instance "arith_shli7" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer265.out0: i64, in0_valid: %handshake_buffer265.out0_valid: i1, in1: %handshake_buffer330.out0: i64, in1_valid: %handshake_buffer330.out0_valid: i1, out0_ready: %handshake_buffer331.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer331.in0_ready, %handshake_buffer331.out0, %handshake_buffer331.out0_valid = hw.instance "handshake_buffer331" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli7.out0: i64, in0_valid: %arith_shli7.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi6.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi6.in0_ready, %arith_addi6.in1_ready, %arith_addi6.out0, %arith_addi6.out0_valid = hw.instance "arith_addi6" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer331.out0: i64, in0_valid: %handshake_buffer331.out0_valid: i1, in1: %handshake_buffer249.out0: i64, in1_valid: %handshake_buffer249.out0_valid: i1, out0_ready: %handshake_buffer332.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer332.in0_ready, %handshake_buffer332.out0, %handshake_buffer332.out0_valid = hw.instance "handshake_buffer332" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi6.out0: i64, in0_valid: %arith_addi6.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store7.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join7.in0_ready, %handshake_join7.in1_ready, %handshake_join7.in2_ready, %handshake_join7.in3_ready, %handshake_join7.in4_ready, %handshake_join7.in5_ready, %handshake_join7.in6_ready, %handshake_join7.in7_ready, %handshake_join7.out0, %handshake_join7.out0_valid = hw.instance "handshake_join7" @handshake_join_8ins_1outs_ctrl(in0: %handshake_buffer11.out0: i0, in0_valid: %handshake_buffer11.out0_valid: i1, in1: %handshake_buffer219.out0: i0, in1_valid: %handshake_buffer219.out0_valid: i1, in2: %handshake_buffer203.out0: i0, in2_valid: %handshake_buffer203.out0_valid: i1, in3: %handshake_buffer188.out0: i0, in3_valid: %handshake_buffer188.out0_valid: i1, in4: %handshake_buffer174.out0: i0, in4_valid: %handshake_buffer174.out0_valid: i1, in5: %handshake_buffer161.out0: i0, in5_valid: %handshake_buffer161.out0_valid: i1, in6: %handshake_buffer149.out0: i0, in6_valid: %handshake_buffer149.out0_valid: i1, in7: %handshake_buffer138.out0: i0, in7_valid: %handshake_buffer138.out0_valid: i1, out0_ready: %handshake_buffer333.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer333.in0_ready, %handshake_buffer333.out0, %handshake_buffer333.out0_valid = hw.instance "handshake_buffer333" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join7.out0: i0, in0_valid: %handshake_join7.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store7.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store7.addrIn0_ready, %handshake_store7.dataIn_ready, %handshake_store7.ctrl_ready, %handshake_store7.dataToMem, %handshake_store7.dataToMem_valid, %handshake_store7.addrOut0, %handshake_store7.addrOut0_valid = hw.instance "handshake_store7" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer332.out0: i64, addrIn0_valid: %handshake_buffer332.out0_valid: i1, dataIn: %handshake_buffer281.out0: i64, dataIn_valid: %handshake_buffer281.out0_valid: i1, ctrl: %handshake_buffer333.out0: i0, ctrl_valid: %handshake_buffer333.out0_valid: i1, dataToMem_ready: %handshake_buffer335.in0_ready: i1, addrOut0_ready: %handshake_buffer334.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer334.in0_ready, %handshake_buffer334.out0, %handshake_buffer334.out0_valid = hw.instance "handshake_buffer334" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store7.addrOut0: i64, in0_valid: %handshake_store7.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr7_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer335.in0_ready, %handshake_buffer335.out0, %handshake_buffer335.out0_valid = hw.instance "handshake_buffer335" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store7.dataToMem: i64, in0_valid: %handshake_store7.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData7_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant47.ctrl_ready, %handshake_constant47.out0, %handshake_constant47.out0_valid = hw.instance "handshake_constant47" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer27.out0: i0, ctrl_valid: %handshake_buffer27.out0_valid: i1, out0_ready: %handshake_buffer336.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer336.in0_ready, %handshake_buffer336.out0, %handshake_buffer336.out0_valid = hw.instance "handshake_buffer336" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant47.out0: i64, in0_valid: %handshake_constant47.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli8.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli8.in0_ready, %arith_shli8.in1_ready, %arith_shli8.out0, %arith_shli8.out0_valid = hw.instance "arith_shli8" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer264.out0: i64, in0_valid: %handshake_buffer264.out0_valid: i1, in1: %handshake_buffer336.out0: i64, in1_valid: %handshake_buffer336.out0_valid: i1, out0_ready: %handshake_buffer337.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer337.in0_ready, %handshake_buffer337.out0, %handshake_buffer337.out0_valid = hw.instance "handshake_buffer337" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli8.out0: i64, in0_valid: %arith_shli8.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi7.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi7.in0_ready, %arith_addi7.in1_ready, %arith_addi7.out0, %arith_addi7.out0_valid = hw.instance "arith_addi7" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer337.out0: i64, in0_valid: %handshake_buffer337.out0_valid: i1, in1: %handshake_buffer248.out0: i64, in1_valid: %handshake_buffer248.out0_valid: i1, out0_ready: %handshake_buffer338.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer338.in0_ready, %handshake_buffer338.out0, %handshake_buffer338.out0_valid = hw.instance "handshake_buffer338" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi7.out0: i64, in0_valid: %arith_addi7.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store8.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join8.in0_ready, %handshake_join8.in1_ready, %handshake_join8.in2_ready, %handshake_join8.in3_ready, %handshake_join8.in4_ready, %handshake_join8.in5_ready, %handshake_join8.in6_ready, %handshake_join8.in7_ready, %handshake_join8.in8_ready, %handshake_join8.out0, %handshake_join8.out0_valid = hw.instance "handshake_join8" @handshake_join_9ins_1outs_ctrl(in0: %handshake_buffer10.out0: i0, in0_valid: %handshake_buffer10.out0_valid: i1, in1: %handshake_buffer220.out0: i0, in1_valid: %handshake_buffer220.out0_valid: i1, in2: %handshake_buffer204.out0: i0, in2_valid: %handshake_buffer204.out0_valid: i1, in3: %handshake_buffer189.out0: i0, in3_valid: %handshake_buffer189.out0_valid: i1, in4: %handshake_buffer175.out0: i0, in4_valid: %handshake_buffer175.out0_valid: i1, in5: %handshake_buffer162.out0: i0, in5_valid: %handshake_buffer162.out0_valid: i1, in6: %handshake_buffer150.out0: i0, in6_valid: %handshake_buffer150.out0_valid: i1, in7: %handshake_buffer139.out0: i0, in7_valid: %handshake_buffer139.out0_valid: i1, in8: %handshake_buffer129.out0: i0, in8_valid: %handshake_buffer129.out0_valid: i1, out0_ready: %handshake_buffer339.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer339.in0_ready, %handshake_buffer339.out0, %handshake_buffer339.out0_valid = hw.instance "handshake_buffer339" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join8.out0: i0, in0_valid: %handshake_join8.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store8.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store8.addrIn0_ready, %handshake_store8.dataIn_ready, %handshake_store8.ctrl_ready, %handshake_store8.dataToMem, %handshake_store8.dataToMem_valid, %handshake_store8.addrOut0, %handshake_store8.addrOut0_valid = hw.instance "handshake_store8" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer338.out0: i64, addrIn0_valid: %handshake_buffer338.out0_valid: i1, dataIn: %handshake_buffer282.out0: i64, dataIn_valid: %handshake_buffer282.out0_valid: i1, ctrl: %handshake_buffer339.out0: i0, ctrl_valid: %handshake_buffer339.out0_valid: i1, dataToMem_ready: %handshake_buffer341.in0_ready: i1, addrOut0_ready: %handshake_buffer340.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer340.in0_ready, %handshake_buffer340.out0, %handshake_buffer340.out0_valid = hw.instance "handshake_buffer340" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store8.addrOut0: i64, in0_valid: %handshake_store8.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr8_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer341.in0_ready, %handshake_buffer341.out0, %handshake_buffer341.out0_valid = hw.instance "handshake_buffer341" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store8.dataToMem: i64, in0_valid: %handshake_store8.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData8_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant48.ctrl_ready, %handshake_constant48.out0, %handshake_constant48.out0_valid = hw.instance "handshake_constant48" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer26.out0: i0, ctrl_valid: %handshake_buffer26.out0_valid: i1, out0_ready: %handshake_buffer342.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer342.in0_ready, %handshake_buffer342.out0, %handshake_buffer342.out0_valid = hw.instance "handshake_buffer342" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant48.out0: i64, in0_valid: %handshake_constant48.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli9.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli9.in0_ready, %arith_shli9.in1_ready, %arith_shli9.out0, %arith_shli9.out0_valid = hw.instance "arith_shli9" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer263.out0: i64, in0_valid: %handshake_buffer263.out0_valid: i1, in1: %handshake_buffer342.out0: i64, in1_valid: %handshake_buffer342.out0_valid: i1, out0_ready: %handshake_buffer343.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer343.in0_ready, %handshake_buffer343.out0, %handshake_buffer343.out0_valid = hw.instance "handshake_buffer343" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli9.out0: i64, in0_valid: %arith_shli9.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi8.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi8.in0_ready, %arith_addi8.in1_ready, %arith_addi8.out0, %arith_addi8.out0_valid = hw.instance "arith_addi8" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer343.out0: i64, in0_valid: %handshake_buffer343.out0_valid: i1, in1: %handshake_buffer247.out0: i64, in1_valid: %handshake_buffer247.out0_valid: i1, out0_ready: %handshake_buffer344.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer344.in0_ready, %handshake_buffer344.out0, %handshake_buffer344.out0_valid = hw.instance "handshake_buffer344" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi8.out0: i64, in0_valid: %arith_addi8.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store9.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join9.in0_ready, %handshake_join9.in1_ready, %handshake_join9.in2_ready, %handshake_join9.in3_ready, %handshake_join9.in4_ready, %handshake_join9.in5_ready, %handshake_join9.in6_ready, %handshake_join9.in7_ready, %handshake_join9.in8_ready, %handshake_join9.in9_ready, %handshake_join9.out0, %handshake_join9.out0_valid = hw.instance "handshake_join9" @handshake_join_10ins_1outs_ctrl(in0: %handshake_buffer9.out0: i0, in0_valid: %handshake_buffer9.out0_valid: i1, in1: %handshake_buffer221.out0: i0, in1_valid: %handshake_buffer221.out0_valid: i1, in2: %handshake_buffer205.out0: i0, in2_valid: %handshake_buffer205.out0_valid: i1, in3: %handshake_buffer190.out0: i0, in3_valid: %handshake_buffer190.out0_valid: i1, in4: %handshake_buffer176.out0: i0, in4_valid: %handshake_buffer176.out0_valid: i1, in5: %handshake_buffer163.out0: i0, in5_valid: %handshake_buffer163.out0_valid: i1, in6: %handshake_buffer151.out0: i0, in6_valid: %handshake_buffer151.out0_valid: i1, in7: %handshake_buffer140.out0: i0, in7_valid: %handshake_buffer140.out0_valid: i1, in8: %handshake_buffer130.out0: i0, in8_valid: %handshake_buffer130.out0_valid: i1, in9: %handshake_buffer121.out0: i0, in9_valid: %handshake_buffer121.out0_valid: i1, out0_ready: %handshake_buffer345.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer345.in0_ready, %handshake_buffer345.out0, %handshake_buffer345.out0_valid = hw.instance "handshake_buffer345" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join9.out0: i0, in0_valid: %handshake_join9.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store9.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store9.addrIn0_ready, %handshake_store9.dataIn_ready, %handshake_store9.ctrl_ready, %handshake_store9.dataToMem, %handshake_store9.dataToMem_valid, %handshake_store9.addrOut0, %handshake_store9.addrOut0_valid = hw.instance "handshake_store9" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer344.out0: i64, addrIn0_valid: %handshake_buffer344.out0_valid: i1, dataIn: %handshake_buffer283.out0: i64, dataIn_valid: %handshake_buffer283.out0_valid: i1, ctrl: %handshake_buffer345.out0: i0, ctrl_valid: %handshake_buffer345.out0_valid: i1, dataToMem_ready: %handshake_buffer347.in0_ready: i1, addrOut0_ready: %handshake_buffer346.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer346.in0_ready, %handshake_buffer346.out0, %handshake_buffer346.out0_valid = hw.instance "handshake_buffer346" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store9.addrOut0: i64, in0_valid: %handshake_store9.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr9_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer347.in0_ready, %handshake_buffer347.out0, %handshake_buffer347.out0_valid = hw.instance "handshake_buffer347" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store9.dataToMem: i64, in0_valid: %handshake_store9.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData9_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant49.ctrl_ready, %handshake_constant49.out0, %handshake_constant49.out0_valid = hw.instance "handshake_constant49" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer25.out0: i0, ctrl_valid: %handshake_buffer25.out0_valid: i1, out0_ready: %handshake_buffer348.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer348.in0_ready, %handshake_buffer348.out0, %handshake_buffer348.out0_valid = hw.instance "handshake_buffer348" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant49.out0: i64, in0_valid: %handshake_constant49.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli10.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli10.in0_ready, %arith_shli10.in1_ready, %arith_shli10.out0, %arith_shli10.out0_valid = hw.instance "arith_shli10" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer262.out0: i64, in0_valid: %handshake_buffer262.out0_valid: i1, in1: %handshake_buffer348.out0: i64, in1_valid: %handshake_buffer348.out0_valid: i1, out0_ready: %handshake_buffer349.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer349.in0_ready, %handshake_buffer349.out0, %handshake_buffer349.out0_valid = hw.instance "handshake_buffer349" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli10.out0: i64, in0_valid: %arith_shli10.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi9.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi9.in0_ready, %arith_addi9.in1_ready, %arith_addi9.out0, %arith_addi9.out0_valid = hw.instance "arith_addi9" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer349.out0: i64, in0_valid: %handshake_buffer349.out0_valid: i1, in1: %handshake_buffer246.out0: i64, in1_valid: %handshake_buffer246.out0_valid: i1, out0_ready: %handshake_buffer350.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer350.in0_ready, %handshake_buffer350.out0, %handshake_buffer350.out0_valid = hw.instance "handshake_buffer350" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi9.out0: i64, in0_valid: %arith_addi9.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store10.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join10.in0_ready, %handshake_join10.in1_ready, %handshake_join10.in2_ready, %handshake_join10.in3_ready, %handshake_join10.in4_ready, %handshake_join10.in5_ready, %handshake_join10.in6_ready, %handshake_join10.in7_ready, %handshake_join10.in8_ready, %handshake_join10.in9_ready, %handshake_join10.in10_ready, %handshake_join10.out0, %handshake_join10.out0_valid = hw.instance "handshake_join10" @handshake_join_11ins_1outs_ctrl(in0: %handshake_buffer8.out0: i0, in0_valid: %handshake_buffer8.out0_valid: i1, in1: %handshake_buffer222.out0: i0, in1_valid: %handshake_buffer222.out0_valid: i1, in2: %handshake_buffer206.out0: i0, in2_valid: %handshake_buffer206.out0_valid: i1, in3: %handshake_buffer191.out0: i0, in3_valid: %handshake_buffer191.out0_valid: i1, in4: %handshake_buffer177.out0: i0, in4_valid: %handshake_buffer177.out0_valid: i1, in5: %handshake_buffer164.out0: i0, in5_valid: %handshake_buffer164.out0_valid: i1, in6: %handshake_buffer152.out0: i0, in6_valid: %handshake_buffer152.out0_valid: i1, in7: %handshake_buffer141.out0: i0, in7_valid: %handshake_buffer141.out0_valid: i1, in8: %handshake_buffer131.out0: i0, in8_valid: %handshake_buffer131.out0_valid: i1, in9: %handshake_buffer122.out0: i0, in9_valid: %handshake_buffer122.out0_valid: i1, in10: %handshake_buffer114.out0: i0, in10_valid: %handshake_buffer114.out0_valid: i1, out0_ready: %handshake_buffer351.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, in10_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer351.in0_ready, %handshake_buffer351.out0, %handshake_buffer351.out0_valid = hw.instance "handshake_buffer351" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join10.out0: i0, in0_valid: %handshake_join10.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store10.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store10.addrIn0_ready, %handshake_store10.dataIn_ready, %handshake_store10.ctrl_ready, %handshake_store10.dataToMem, %handshake_store10.dataToMem_valid, %handshake_store10.addrOut0, %handshake_store10.addrOut0_valid = hw.instance "handshake_store10" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer350.out0: i64, addrIn0_valid: %handshake_buffer350.out0_valid: i1, dataIn: %handshake_buffer284.out0: i64, dataIn_valid: %handshake_buffer284.out0_valid: i1, ctrl: %handshake_buffer351.out0: i0, ctrl_valid: %handshake_buffer351.out0_valid: i1, dataToMem_ready: %handshake_buffer353.in0_ready: i1, addrOut0_ready: %handshake_buffer352.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer352.in0_ready, %handshake_buffer352.out0, %handshake_buffer352.out0_valid = hw.instance "handshake_buffer352" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store10.addrOut0: i64, in0_valid: %handshake_store10.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr10_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer353.in0_ready, %handshake_buffer353.out0, %handshake_buffer353.out0_valid = hw.instance "handshake_buffer353" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store10.dataToMem: i64, in0_valid: %handshake_store10.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData10_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant50.ctrl_ready, %handshake_constant50.out0, %handshake_constant50.out0_valid = hw.instance "handshake_constant50" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer24.out0: i0, ctrl_valid: %handshake_buffer24.out0_valid: i1, out0_ready: %handshake_buffer354.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer354.in0_ready, %handshake_buffer354.out0, %handshake_buffer354.out0_valid = hw.instance "handshake_buffer354" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant50.out0: i64, in0_valid: %handshake_constant50.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli11.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli11.in0_ready, %arith_shli11.in1_ready, %arith_shli11.out0, %arith_shli11.out0_valid = hw.instance "arith_shli11" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer261.out0: i64, in0_valid: %handshake_buffer261.out0_valid: i1, in1: %handshake_buffer354.out0: i64, in1_valid: %handshake_buffer354.out0_valid: i1, out0_ready: %handshake_buffer355.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer355.in0_ready, %handshake_buffer355.out0, %handshake_buffer355.out0_valid = hw.instance "handshake_buffer355" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli11.out0: i64, in0_valid: %arith_shli11.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi10.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi10.in0_ready, %arith_addi10.in1_ready, %arith_addi10.out0, %arith_addi10.out0_valid = hw.instance "arith_addi10" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer355.out0: i64, in0_valid: %handshake_buffer355.out0_valid: i1, in1: %handshake_buffer245.out0: i64, in1_valid: %handshake_buffer245.out0_valid: i1, out0_ready: %handshake_buffer356.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer356.in0_ready, %handshake_buffer356.out0, %handshake_buffer356.out0_valid = hw.instance "handshake_buffer356" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi10.out0: i64, in0_valid: %arith_addi10.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store11.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join11.in0_ready, %handshake_join11.in1_ready, %handshake_join11.in2_ready, %handshake_join11.in3_ready, %handshake_join11.in4_ready, %handshake_join11.in5_ready, %handshake_join11.in6_ready, %handshake_join11.in7_ready, %handshake_join11.in8_ready, %handshake_join11.in9_ready, %handshake_join11.in10_ready, %handshake_join11.in11_ready, %handshake_join11.out0, %handshake_join11.out0_valid = hw.instance "handshake_join11" @handshake_join_12ins_1outs_ctrl(in0: %handshake_buffer7.out0: i0, in0_valid: %handshake_buffer7.out0_valid: i1, in1: %handshake_buffer223.out0: i0, in1_valid: %handshake_buffer223.out0_valid: i1, in2: %handshake_buffer207.out0: i0, in2_valid: %handshake_buffer207.out0_valid: i1, in3: %handshake_buffer192.out0: i0, in3_valid: %handshake_buffer192.out0_valid: i1, in4: %handshake_buffer178.out0: i0, in4_valid: %handshake_buffer178.out0_valid: i1, in5: %handshake_buffer165.out0: i0, in5_valid: %handshake_buffer165.out0_valid: i1, in6: %handshake_buffer153.out0: i0, in6_valid: %handshake_buffer153.out0_valid: i1, in7: %handshake_buffer142.out0: i0, in7_valid: %handshake_buffer142.out0_valid: i1, in8: %handshake_buffer132.out0: i0, in8_valid: %handshake_buffer132.out0_valid: i1, in9: %handshake_buffer123.out0: i0, in9_valid: %handshake_buffer123.out0_valid: i1, in10: %handshake_buffer115.out0: i0, in10_valid: %handshake_buffer115.out0_valid: i1, in11: %handshake_buffer108.out0: i0, in11_valid: %handshake_buffer108.out0_valid: i1, out0_ready: %handshake_buffer357.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, in10_ready: i1, in11_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer357.in0_ready, %handshake_buffer357.out0, %handshake_buffer357.out0_valid = hw.instance "handshake_buffer357" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join11.out0: i0, in0_valid: %handshake_join11.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store11.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store11.addrIn0_ready, %handshake_store11.dataIn_ready, %handshake_store11.ctrl_ready, %handshake_store11.dataToMem, %handshake_store11.dataToMem_valid, %handshake_store11.addrOut0, %handshake_store11.addrOut0_valid = hw.instance "handshake_store11" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer356.out0: i64, addrIn0_valid: %handshake_buffer356.out0_valid: i1, dataIn: %handshake_buffer285.out0: i64, dataIn_valid: %handshake_buffer285.out0_valid: i1, ctrl: %handshake_buffer357.out0: i0, ctrl_valid: %handshake_buffer357.out0_valid: i1, dataToMem_ready: %handshake_buffer359.in0_ready: i1, addrOut0_ready: %handshake_buffer358.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer358.in0_ready, %handshake_buffer358.out0, %handshake_buffer358.out0_valid = hw.instance "handshake_buffer358" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store11.addrOut0: i64, in0_valid: %handshake_store11.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr11_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer359.in0_ready, %handshake_buffer359.out0, %handshake_buffer359.out0_valid = hw.instance "handshake_buffer359" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store11.dataToMem: i64, in0_valid: %handshake_store11.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData11_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant51.ctrl_ready, %handshake_constant51.out0, %handshake_constant51.out0_valid = hw.instance "handshake_constant51" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer23.out0: i0, ctrl_valid: %handshake_buffer23.out0_valid: i1, out0_ready: %handshake_buffer360.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer360.in0_ready, %handshake_buffer360.out0, %handshake_buffer360.out0_valid = hw.instance "handshake_buffer360" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant51.out0: i64, in0_valid: %handshake_constant51.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli12.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli12.in0_ready, %arith_shli12.in1_ready, %arith_shli12.out0, %arith_shli12.out0_valid = hw.instance "arith_shli12" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer260.out0: i64, in0_valid: %handshake_buffer260.out0_valid: i1, in1: %handshake_buffer360.out0: i64, in1_valid: %handshake_buffer360.out0_valid: i1, out0_ready: %handshake_buffer361.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer361.in0_ready, %handshake_buffer361.out0, %handshake_buffer361.out0_valid = hw.instance "handshake_buffer361" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli12.out0: i64, in0_valid: %arith_shli12.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi11.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi11.in0_ready, %arith_addi11.in1_ready, %arith_addi11.out0, %arith_addi11.out0_valid = hw.instance "arith_addi11" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer361.out0: i64, in0_valid: %handshake_buffer361.out0_valid: i1, in1: %handshake_buffer244.out0: i64, in1_valid: %handshake_buffer244.out0_valid: i1, out0_ready: %handshake_buffer362.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer362.in0_ready, %handshake_buffer362.out0, %handshake_buffer362.out0_valid = hw.instance "handshake_buffer362" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi11.out0: i64, in0_valid: %arith_addi11.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store12.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join12.in0_ready, %handshake_join12.in1_ready, %handshake_join12.in2_ready, %handshake_join12.in3_ready, %handshake_join12.in4_ready, %handshake_join12.in5_ready, %handshake_join12.in6_ready, %handshake_join12.in7_ready, %handshake_join12.in8_ready, %handshake_join12.in9_ready, %handshake_join12.in10_ready, %handshake_join12.in11_ready, %handshake_join12.in12_ready, %handshake_join12.out0, %handshake_join12.out0_valid = hw.instance "handshake_join12" @handshake_join_13ins_1outs_ctrl(in0: %handshake_buffer6.out0: i0, in0_valid: %handshake_buffer6.out0_valid: i1, in1: %handshake_buffer224.out0: i0, in1_valid: %handshake_buffer224.out0_valid: i1, in2: %handshake_buffer208.out0: i0, in2_valid: %handshake_buffer208.out0_valid: i1, in3: %handshake_buffer193.out0: i0, in3_valid: %handshake_buffer193.out0_valid: i1, in4: %handshake_buffer179.out0: i0, in4_valid: %handshake_buffer179.out0_valid: i1, in5: %handshake_buffer166.out0: i0, in5_valid: %handshake_buffer166.out0_valid: i1, in6: %handshake_buffer154.out0: i0, in6_valid: %handshake_buffer154.out0_valid: i1, in7: %handshake_buffer143.out0: i0, in7_valid: %handshake_buffer143.out0_valid: i1, in8: %handshake_buffer133.out0: i0, in8_valid: %handshake_buffer133.out0_valid: i1, in9: %handshake_buffer124.out0: i0, in9_valid: %handshake_buffer124.out0_valid: i1, in10: %handshake_buffer116.out0: i0, in10_valid: %handshake_buffer116.out0_valid: i1, in11: %handshake_buffer109.out0: i0, in11_valid: %handshake_buffer109.out0_valid: i1, in12: %handshake_buffer103.out0: i0, in12_valid: %handshake_buffer103.out0_valid: i1, out0_ready: %handshake_buffer363.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, in10_ready: i1, in11_ready: i1, in12_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer363.in0_ready, %handshake_buffer363.out0, %handshake_buffer363.out0_valid = hw.instance "handshake_buffer363" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join12.out0: i0, in0_valid: %handshake_join12.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store12.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store12.addrIn0_ready, %handshake_store12.dataIn_ready, %handshake_store12.ctrl_ready, %handshake_store12.dataToMem, %handshake_store12.dataToMem_valid, %handshake_store12.addrOut0, %handshake_store12.addrOut0_valid = hw.instance "handshake_store12" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer362.out0: i64, addrIn0_valid: %handshake_buffer362.out0_valid: i1, dataIn: %handshake_buffer286.out0: i64, dataIn_valid: %handshake_buffer286.out0_valid: i1, ctrl: %handshake_buffer363.out0: i0, ctrl_valid: %handshake_buffer363.out0_valid: i1, dataToMem_ready: %handshake_buffer365.in0_ready: i1, addrOut0_ready: %handshake_buffer364.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer364.in0_ready, %handshake_buffer364.out0, %handshake_buffer364.out0_valid = hw.instance "handshake_buffer364" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store12.addrOut0: i64, in0_valid: %handshake_store12.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr12_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer365.in0_ready, %handshake_buffer365.out0, %handshake_buffer365.out0_valid = hw.instance "handshake_buffer365" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store12.dataToMem: i64, in0_valid: %handshake_store12.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData12_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant52.ctrl_ready, %handshake_constant52.out0, %handshake_constant52.out0_valid = hw.instance "handshake_constant52" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer22.out0: i0, ctrl_valid: %handshake_buffer22.out0_valid: i1, out0_ready: %handshake_buffer366.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer366.in0_ready, %handshake_buffer366.out0, %handshake_buffer366.out0_valid = hw.instance "handshake_buffer366" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant52.out0: i64, in0_valid: %handshake_constant52.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli13.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli13.in0_ready, %arith_shli13.in1_ready, %arith_shli13.out0, %arith_shli13.out0_valid = hw.instance "arith_shli13" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer259.out0: i64, in0_valid: %handshake_buffer259.out0_valid: i1, in1: %handshake_buffer366.out0: i64, in1_valid: %handshake_buffer366.out0_valid: i1, out0_ready: %handshake_buffer367.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer367.in0_ready, %handshake_buffer367.out0, %handshake_buffer367.out0_valid = hw.instance "handshake_buffer367" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli13.out0: i64, in0_valid: %arith_shli13.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi12.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi12.in0_ready, %arith_addi12.in1_ready, %arith_addi12.out0, %arith_addi12.out0_valid = hw.instance "arith_addi12" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer367.out0: i64, in0_valid: %handshake_buffer367.out0_valid: i1, in1: %handshake_buffer243.out0: i64, in1_valid: %handshake_buffer243.out0_valid: i1, out0_ready: %handshake_buffer368.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer368.in0_ready, %handshake_buffer368.out0, %handshake_buffer368.out0_valid = hw.instance "handshake_buffer368" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi12.out0: i64, in0_valid: %arith_addi12.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store13.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join13.in0_ready, %handshake_join13.in1_ready, %handshake_join13.in2_ready, %handshake_join13.in3_ready, %handshake_join13.in4_ready, %handshake_join13.in5_ready, %handshake_join13.in6_ready, %handshake_join13.in7_ready, %handshake_join13.in8_ready, %handshake_join13.in9_ready, %handshake_join13.in10_ready, %handshake_join13.in11_ready, %handshake_join13.in12_ready, %handshake_join13.in13_ready, %handshake_join13.out0, %handshake_join13.out0_valid = hw.instance "handshake_join13" @handshake_join_14ins_1outs_ctrl(in0: %handshake_buffer5.out0: i0, in0_valid: %handshake_buffer5.out0_valid: i1, in1: %handshake_buffer225.out0: i0, in1_valid: %handshake_buffer225.out0_valid: i1, in2: %handshake_buffer209.out0: i0, in2_valid: %handshake_buffer209.out0_valid: i1, in3: %handshake_buffer194.out0: i0, in3_valid: %handshake_buffer194.out0_valid: i1, in4: %handshake_buffer180.out0: i0, in4_valid: %handshake_buffer180.out0_valid: i1, in5: %handshake_buffer167.out0: i0, in5_valid: %handshake_buffer167.out0_valid: i1, in6: %handshake_buffer155.out0: i0, in6_valid: %handshake_buffer155.out0_valid: i1, in7: %handshake_buffer144.out0: i0, in7_valid: %handshake_buffer144.out0_valid: i1, in8: %handshake_buffer134.out0: i0, in8_valid: %handshake_buffer134.out0_valid: i1, in9: %handshake_buffer125.out0: i0, in9_valid: %handshake_buffer125.out0_valid: i1, in10: %handshake_buffer117.out0: i0, in10_valid: %handshake_buffer117.out0_valid: i1, in11: %handshake_buffer110.out0: i0, in11_valid: %handshake_buffer110.out0_valid: i1, in12: %handshake_buffer104.out0: i0, in12_valid: %handshake_buffer104.out0_valid: i1, in13: %handshake_buffer99.out0: i0, in13_valid: %handshake_buffer99.out0_valid: i1, out0_ready: %handshake_buffer369.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, in10_ready: i1, in11_ready: i1, in12_ready: i1, in13_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer369.in0_ready, %handshake_buffer369.out0, %handshake_buffer369.out0_valid = hw.instance "handshake_buffer369" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join13.out0: i0, in0_valid: %handshake_join13.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store13.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store13.addrIn0_ready, %handshake_store13.dataIn_ready, %handshake_store13.ctrl_ready, %handshake_store13.dataToMem, %handshake_store13.dataToMem_valid, %handshake_store13.addrOut0, %handshake_store13.addrOut0_valid = hw.instance "handshake_store13" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer368.out0: i64, addrIn0_valid: %handshake_buffer368.out0_valid: i1, dataIn: %handshake_buffer287.out0: i64, dataIn_valid: %handshake_buffer287.out0_valid: i1, ctrl: %handshake_buffer369.out0: i0, ctrl_valid: %handshake_buffer369.out0_valid: i1, dataToMem_ready: %handshake_buffer371.in0_ready: i1, addrOut0_ready: %handshake_buffer370.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer370.in0_ready, %handshake_buffer370.out0, %handshake_buffer370.out0_valid = hw.instance "handshake_buffer370" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store13.addrOut0: i64, in0_valid: %handshake_store13.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr13_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer371.in0_ready, %handshake_buffer371.out0, %handshake_buffer371.out0_valid = hw.instance "handshake_buffer371" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store13.dataToMem: i64, in0_valid: %handshake_store13.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData13_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant53.ctrl_ready, %handshake_constant53.out0, %handshake_constant53.out0_valid = hw.instance "handshake_constant53" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer21.out0: i0, ctrl_valid: %handshake_buffer21.out0_valid: i1, out0_ready: %handshake_buffer372.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer372.in0_ready, %handshake_buffer372.out0, %handshake_buffer372.out0_valid = hw.instance "handshake_buffer372" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant53.out0: i64, in0_valid: %handshake_constant53.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli14.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli14.in0_ready, %arith_shli14.in1_ready, %arith_shli14.out0, %arith_shli14.out0_valid = hw.instance "arith_shli14" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer258.out0: i64, in0_valid: %handshake_buffer258.out0_valid: i1, in1: %handshake_buffer372.out0: i64, in1_valid: %handshake_buffer372.out0_valid: i1, out0_ready: %handshake_buffer373.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer373.in0_ready, %handshake_buffer373.out0, %handshake_buffer373.out0_valid = hw.instance "handshake_buffer373" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli14.out0: i64, in0_valid: %arith_shli14.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi13.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi13.in0_ready, %arith_addi13.in1_ready, %arith_addi13.out0, %arith_addi13.out0_valid = hw.instance "arith_addi13" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer373.out0: i64, in0_valid: %handshake_buffer373.out0_valid: i1, in1: %handshake_buffer242.out0: i64, in1_valid: %handshake_buffer242.out0_valid: i1, out0_ready: %handshake_buffer374.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer374.in0_ready, %handshake_buffer374.out0, %handshake_buffer374.out0_valid = hw.instance "handshake_buffer374" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi13.out0: i64, in0_valid: %arith_addi13.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store14.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join14.in0_ready, %handshake_join14.in1_ready, %handshake_join14.in2_ready, %handshake_join14.in3_ready, %handshake_join14.in4_ready, %handshake_join14.in5_ready, %handshake_join14.in6_ready, %handshake_join14.in7_ready, %handshake_join14.in8_ready, %handshake_join14.in9_ready, %handshake_join14.in10_ready, %handshake_join14.in11_ready, %handshake_join14.in12_ready, %handshake_join14.in13_ready, %handshake_join14.in14_ready, %handshake_join14.out0, %handshake_join14.out0_valid = hw.instance "handshake_join14" @handshake_join_15ins_1outs_ctrl(in0: %handshake_buffer4.out0: i0, in0_valid: %handshake_buffer4.out0_valid: i1, in1: %handshake_buffer226.out0: i0, in1_valid: %handshake_buffer226.out0_valid: i1, in2: %handshake_buffer210.out0: i0, in2_valid: %handshake_buffer210.out0_valid: i1, in3: %handshake_buffer195.out0: i0, in3_valid: %handshake_buffer195.out0_valid: i1, in4: %handshake_buffer181.out0: i0, in4_valid: %handshake_buffer181.out0_valid: i1, in5: %handshake_buffer168.out0: i0, in5_valid: %handshake_buffer168.out0_valid: i1, in6: %handshake_buffer156.out0: i0, in6_valid: %handshake_buffer156.out0_valid: i1, in7: %handshake_buffer145.out0: i0, in7_valid: %handshake_buffer145.out0_valid: i1, in8: %handshake_buffer135.out0: i0, in8_valid: %handshake_buffer135.out0_valid: i1, in9: %handshake_buffer126.out0: i0, in9_valid: %handshake_buffer126.out0_valid: i1, in10: %handshake_buffer118.out0: i0, in10_valid: %handshake_buffer118.out0_valid: i1, in11: %handshake_buffer111.out0: i0, in11_valid: %handshake_buffer111.out0_valid: i1, in12: %handshake_buffer105.out0: i0, in12_valid: %handshake_buffer105.out0_valid: i1, in13: %handshake_buffer100.out0: i0, in13_valid: %handshake_buffer100.out0_valid: i1, in14: %handshake_buffer96.out0: i0, in14_valid: %handshake_buffer96.out0_valid: i1, out0_ready: %handshake_buffer375.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, in10_ready: i1, in11_ready: i1, in12_ready: i1, in13_ready: i1, in14_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer375.in0_ready, %handshake_buffer375.out0, %handshake_buffer375.out0_valid = hw.instance "handshake_buffer375" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join14.out0: i0, in0_valid: %handshake_join14.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store14.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store14.addrIn0_ready, %handshake_store14.dataIn_ready, %handshake_store14.ctrl_ready, %handshake_store14.dataToMem, %handshake_store14.dataToMem_valid, %handshake_store14.addrOut0, %handshake_store14.addrOut0_valid = hw.instance "handshake_store14" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer374.out0: i64, addrIn0_valid: %handshake_buffer374.out0_valid: i1, dataIn: %handshake_buffer288.out0: i64, dataIn_valid: %handshake_buffer288.out0_valid: i1, ctrl: %handshake_buffer375.out0: i0, ctrl_valid: %handshake_buffer375.out0_valid: i1, dataToMem_ready: %handshake_buffer377.in0_ready: i1, addrOut0_ready: %handshake_buffer376.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer376.in0_ready, %handshake_buffer376.out0, %handshake_buffer376.out0_valid = hw.instance "handshake_buffer376" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store14.addrOut0: i64, in0_valid: %handshake_store14.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr14_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer377.in0_ready, %handshake_buffer377.out0, %handshake_buffer377.out0_valid = hw.instance "handshake_buffer377" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store14.dataToMem: i64, in0_valid: %handshake_store14.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData14_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant54.ctrl_ready, %handshake_constant54.out0, %handshake_constant54.out0_valid = hw.instance "handshake_constant54" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer20.out0: i0, ctrl_valid: %handshake_buffer20.out0_valid: i1, out0_ready: %handshake_buffer378.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer378.in0_ready, %handshake_buffer378.out0, %handshake_buffer378.out0_valid = hw.instance "handshake_buffer378" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant54.out0: i64, in0_valid: %handshake_constant54.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli15.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli15.in0_ready, %arith_shli15.in1_ready, %arith_shli15.out0, %arith_shli15.out0_valid = hw.instance "arith_shli15" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer257.out0: i64, in0_valid: %handshake_buffer257.out0_valid: i1, in1: %handshake_buffer378.out0: i64, in1_valid: %handshake_buffer378.out0_valid: i1, out0_ready: %handshake_buffer379.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer379.in0_ready, %handshake_buffer379.out0, %handshake_buffer379.out0_valid = hw.instance "handshake_buffer379" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli15.out0: i64, in0_valid: %arith_shli15.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi14.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi14.in0_ready, %arith_addi14.in1_ready, %arith_addi14.out0, %arith_addi14.out0_valid = hw.instance "arith_addi14" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer379.out0: i64, in0_valid: %handshake_buffer379.out0_valid: i1, in1: %handshake_buffer241.out0: i64, in1_valid: %handshake_buffer241.out0_valid: i1, out0_ready: %handshake_buffer380.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer380.in0_ready, %handshake_buffer380.out0, %handshake_buffer380.out0_valid = hw.instance "handshake_buffer380" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi14.out0: i64, in0_valid: %arith_addi14.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store15.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_join15.in0_ready, %handshake_join15.in1_ready, %handshake_join15.in2_ready, %handshake_join15.in3_ready, %handshake_join15.in4_ready, %handshake_join15.in5_ready, %handshake_join15.in6_ready, %handshake_join15.in7_ready, %handshake_join15.in8_ready, %handshake_join15.in9_ready, %handshake_join15.in10_ready, %handshake_join15.in11_ready, %handshake_join15.in12_ready, %handshake_join15.in13_ready, %handshake_join15.in14_ready, %handshake_join15.in15_ready, %handshake_join15.out0, %handshake_join15.out0_valid = hw.instance "handshake_join15" @handshake_join_16ins_1outs_ctrl(in0: %handshake_buffer3.out0: i0, in0_valid: %handshake_buffer3.out0_valid: i1, in1: %handshake_buffer227.out0: i0, in1_valid: %handshake_buffer227.out0_valid: i1, in2: %handshake_buffer211.out0: i0, in2_valid: %handshake_buffer211.out0_valid: i1, in3: %handshake_buffer196.out0: i0, in3_valid: %handshake_buffer196.out0_valid: i1, in4: %handshake_buffer182.out0: i0, in4_valid: %handshake_buffer182.out0_valid: i1, in5: %handshake_buffer169.out0: i0, in5_valid: %handshake_buffer169.out0_valid: i1, in6: %handshake_buffer157.out0: i0, in6_valid: %handshake_buffer157.out0_valid: i1, in7: %handshake_buffer146.out0: i0, in7_valid: %handshake_buffer146.out0_valid: i1, in8: %handshake_buffer136.out0: i0, in8_valid: %handshake_buffer136.out0_valid: i1, in9: %handshake_buffer127.out0: i0, in9_valid: %handshake_buffer127.out0_valid: i1, in10: %handshake_buffer119.out0: i0, in10_valid: %handshake_buffer119.out0_valid: i1, in11: %handshake_buffer112.out0: i0, in11_valid: %handshake_buffer112.out0_valid: i1, in12: %handshake_buffer106.out0: i0, in12_valid: %handshake_buffer106.out0_valid: i1, in13: %handshake_buffer101.out0: i0, in13_valid: %handshake_buffer101.out0_valid: i1, in14: %handshake_buffer97.out0: i0, in14_valid: %handshake_buffer97.out0_valid: i1, in15: %handshake_buffer94.out0: i0, in15_valid: %handshake_buffer94.out0_valid: i1, out0_ready: %handshake_buffer381.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, in3_ready: i1, in4_ready: i1, in5_ready: i1, in6_ready: i1, in7_ready: i1, in8_ready: i1, in9_ready: i1, in10_ready: i1, in11_ready: i1, in12_ready: i1, in13_ready: i1, in14_ready: i1, in15_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer381.in0_ready, %handshake_buffer381.out0, %handshake_buffer381.out0_valid = hw.instance "handshake_buffer381" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join15.out0: i0, in0_valid: %handshake_join15.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_store15.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_store15.addrIn0_ready, %handshake_store15.dataIn_ready, %handshake_store15.ctrl_ready, %handshake_store15.dataToMem, %handshake_store15.dataToMem_valid, %handshake_store15.addrOut0, %handshake_store15.addrOut0_valid = hw.instance "handshake_store15" @handshake_store_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer380.out0: i64, addrIn0_valid: %handshake_buffer380.out0_valid: i1, dataIn: %handshake_buffer289.out0: i64, dataIn_valid: %handshake_buffer289.out0_valid: i1, ctrl: %handshake_buffer381.out0: i0, ctrl_valid: %handshake_buffer381.out0_valid: i1, dataToMem_ready: %handshake_buffer383.in0_ready: i1, addrOut0_ready: %handshake_buffer382.in0_ready: i1) -> (addrIn0_ready: i1, dataIn_ready: i1, ctrl_ready: i1, dataToMem: i64, dataToMem_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer382.in0_ready, %handshake_buffer382.out0, %handshake_buffer382.out0_valid = hw.instance "handshake_buffer382" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store15.addrOut0: i64, in0_valid: %handshake_store15.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stAddr15_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer383.in0_ready, %handshake_buffer383.out0, %handshake_buffer383.out0_valid = hw.instance "handshake_buffer383" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_store15.dataToMem: i64, in0_valid: %handshake_store15.dataToMem_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.stData15_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer384.in0_ready, %handshake_buffer384.out0, %handshake_buffer384.out0_valid = hw.instance "handshake_buffer384" @handshake_buffer_in_ui1_out_ui1_1slots_seq_init_0(in0: %handshake_fork38.out0: i1, in0_valid: %handshake_fork38.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork19.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_fork19.in0_ready, %handshake_fork19.out0, %handshake_fork19.out0_valid, %handshake_fork19.out1, %handshake_fork19.out1_valid, %handshake_fork19.out2, %handshake_fork19.out2_valid, %handshake_fork19.out3, %handshake_fork19.out3_valid, %handshake_fork19.out4, %handshake_fork19.out4_valid, %handshake_fork19.out5, %handshake_fork19.out5_valid, %handshake_fork19.out6, %handshake_fork19.out6_valid, %handshake_fork19.out7, %handshake_fork19.out7_valid, %handshake_fork19.out8, %handshake_fork19.out8_valid, %handshake_fork19.out9, %handshake_fork19.out9_valid, %handshake_fork19.out10, %handshake_fork19.out10_valid, %handshake_fork19.out11, %handshake_fork19.out11_valid, %handshake_fork19.out12, %handshake_fork19.out12_valid, %handshake_fork19.out13, %handshake_fork19.out13_valid = hw.instance "handshake_fork19" @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1(in0: %handshake_buffer384.out0: i1, in0_valid: %handshake_buffer384.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer398.in0_ready: i1, out1_ready: %handshake_buffer397.in0_ready: i1, out2_ready: %handshake_buffer396.in0_ready: i1, out3_ready: %handshake_buffer395.in0_ready: i1, out4_ready: %handshake_buffer394.in0_ready: i1, out5_ready: %handshake_buffer393.in0_ready: i1, out6_ready: %handshake_buffer392.in0_ready: i1, out7_ready: %handshake_buffer391.in0_ready: i1, out8_ready: %handshake_buffer390.in0_ready: i1, out9_ready: %handshake_buffer389.in0_ready: i1, out10_ready: %handshake_buffer388.in0_ready: i1, out11_ready: %handshake_buffer387.in0_ready: i1, out12_ready: %handshake_buffer386.in0_ready: i1, out13_ready: %handshake_buffer385.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1, out1: i1, out1_valid: i1, out2: i1, out2_valid: i1, out3: i1, out3_valid: i1, out4: i1, out4_valid: i1, out5: i1, out5_valid: i1, out6: i1, out6_valid: i1, out7: i1, out7_valid: i1, out8: i1, out8_valid: i1, out9: i1, out9_valid: i1, out10: i1, out10_valid: i1, out11: i1, out11_valid: i1, out12: i1, out12_valid: i1, out13: i1, out13_valid: i1)
    %handshake_buffer385.in0_ready, %handshake_buffer385.out0, %handshake_buffer385.out0_valid = hw.instance "handshake_buffer385" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out13: i1, in0_valid: %handshake_fork19.out13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux0.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer386.in0_ready, %handshake_buffer386.out0, %handshake_buffer386.out0_valid = hw.instance "handshake_buffer386" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out12: i1, in0_valid: %handshake_fork19.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux1.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer387.in0_ready, %handshake_buffer387.out0, %handshake_buffer387.out0_valid = hw.instance "handshake_buffer387" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out11: i1, in0_valid: %handshake_fork19.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux2.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer388.in0_ready, %handshake_buffer388.out0, %handshake_buffer388.out0_valid = hw.instance "handshake_buffer388" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out10: i1, in0_valid: %handshake_fork19.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux3.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer389.in0_ready, %handshake_buffer389.out0, %handshake_buffer389.out0_valid = hw.instance "handshake_buffer389" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out9: i1, in0_valid: %handshake_fork19.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux4.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer390.in0_ready, %handshake_buffer390.out0, %handshake_buffer390.out0_valid = hw.instance "handshake_buffer390" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out8: i1, in0_valid: %handshake_fork19.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux5.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer391.in0_ready, %handshake_buffer391.out0, %handshake_buffer391.out0_valid = hw.instance "handshake_buffer391" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out7: i1, in0_valid: %handshake_fork19.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux6.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer392.in0_ready, %handshake_buffer392.out0, %handshake_buffer392.out0_valid = hw.instance "handshake_buffer392" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out6: i1, in0_valid: %handshake_fork19.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux7.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer393.in0_ready, %handshake_buffer393.out0, %handshake_buffer393.out0_valid = hw.instance "handshake_buffer393" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out5: i1, in0_valid: %handshake_fork19.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux8.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer394.in0_ready, %handshake_buffer394.out0, %handshake_buffer394.out0_valid = hw.instance "handshake_buffer394" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out4: i1, in0_valid: %handshake_fork19.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux9.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer395.in0_ready, %handshake_buffer395.out0, %handshake_buffer395.out0_valid = hw.instance "handshake_buffer395" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out3: i1, in0_valid: %handshake_fork19.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux10.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer396.in0_ready, %handshake_buffer396.out0, %handshake_buffer396.out0_valid = hw.instance "handshake_buffer396" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out2: i1, in0_valid: %handshake_fork19.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux11.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer397.in0_ready, %handshake_buffer397.out0, %handshake_buffer397.out0_valid = hw.instance "handshake_buffer397" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out1: i1, in0_valid: %handshake_fork19.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux12.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer398.in0_ready, %handshake_buffer398.out0, %handshake_buffer398.out0_valid = hw.instance "handshake_buffer398" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork19.out0: i1, in0_valid: %handshake_fork19.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux13.select_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_mux0.select_ready, %handshake_mux0.in0_ready, %handshake_mux0.in1_ready, %handshake_mux0.out0, %handshake_mux0.out0_valid = hw.instance "handshake_mux0" @handshake_mux_in_ui1_3ins_1outs_ctrl(select: %handshake_buffer385.out0: i1, select_valid: %handshake_buffer385.out0_valid: i1, in0: %handshake_buffer228.out0: i0, in0_valid: %handshake_buffer228.out0_valid: i1, in1: %handshake_buffer525.out0: i0, in1_valid: %handshake_buffer525.out0_valid: i1, out0_ready: %handshake_buffer399.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer399.in0_ready, %handshake_buffer399.out0, %handshake_buffer399.out0_valid = hw.instance "handshake_buffer399" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_mux0.out0: i0, in0_valid: %handshake_mux0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork20.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork20.in0_ready, %handshake_fork20.out0, %handshake_fork20.out0_valid, %handshake_fork20.out1, %handshake_fork20.out1_valid, %handshake_fork20.out2, %handshake_fork20.out2_valid = hw.instance "handshake_fork20" @handshake_fork_1ins_3outs_ctrl(in0: %handshake_buffer399.out0: i0, in0_valid: %handshake_buffer399.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer402.in0_ready: i1, out1_ready: %handshake_buffer401.in0_ready: i1, out2_ready: %handshake_buffer400.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1, out1: i0, out1_valid: i1, out2: i0, out2_valid: i1)
    %handshake_buffer400.in0_ready, %handshake_buffer400.out0, %handshake_buffer400.out0_valid = hw.instance "handshake_buffer400" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork20.out2: i0, in0_valid: %handshake_fork20.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_constant55.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer401.in0_ready, %handshake_buffer401.out0, %handshake_buffer401.out0_valid = hw.instance "handshake_buffer401" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork20.out1: i0, in0_valid: %handshake_fork20.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_join16.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer402.in0_ready, %handshake_buffer402.out0, %handshake_buffer402.out0_valid = hw.instance "handshake_buffer402" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_fork20.out0: i0, in0_valid: %handshake_fork20.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_load0.ctrl_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_join16.in0_ready, %handshake_join16.in1_ready, %handshake_join16.out0, %handshake_join16.out0_valid = hw.instance "handshake_join16" @handshake_join_2ins_1outs_ctrl(in0: %handshake_buffer401.out0: i0, in0_valid: %handshake_buffer401.out0_valid: i1, in1: %handshake_buffer75.out0: i0, in1_valid: %handshake_buffer75.out0_valid: i1, out0_ready: %handshake_buffer403.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer403.in0_ready, %handshake_buffer403.out0, %handshake_buffer403.out0_valid = hw.instance "handshake_buffer403" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_join16.out0: i0, in0_valid: %handshake_join16.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br6.data_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_mux1.select_ready, %handshake_mux1.in0_ready, %handshake_mux1.in1_ready, %handshake_mux1.out0, %handshake_mux1.out0_valid = hw.instance "handshake_mux1" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer386.out0: i1, select_valid: %handshake_buffer386.out0_valid: i1, in0: %handshake_buffer238.out0: i64, in0_valid: %handshake_buffer238.out0_valid: i1, in1: %handshake_buffer510.out0: i64, in1_valid: %handshake_buffer510.out0_valid: i1, out0_ready: %handshake_buffer404.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer404.in0_ready, %handshake_buffer404.out0, %handshake_buffer404.out0_valid = hw.instance "handshake_buffer404" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux1.out0: i64, in0_valid: %handshake_mux1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux2.select_ready, %handshake_mux2.in0_ready, %handshake_mux2.in1_ready, %handshake_mux2.out0, %handshake_mux2.out0_valid = hw.instance "handshake_mux2" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer387.out0: i1, select_valid: %handshake_buffer387.out0_valid: i1, in0: %handshake_buffer239.out0: i64, in0_valid: %handshake_buffer239.out0_valid: i1, in1: %handshake_buffer511.out0: i64, in1_valid: %handshake_buffer511.out0_valid: i1, out0_ready: %handshake_buffer405.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer405.in0_ready, %handshake_buffer405.out0, %handshake_buffer405.out0_valid = hw.instance "handshake_buffer405" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux2.out0: i64, in0_valid: %handshake_mux2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork21.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork21.in0_ready, %handshake_fork21.out0, %handshake_fork21.out0_valid, %handshake_fork21.out1, %handshake_fork21.out1_valid = hw.instance "handshake_fork21" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer405.out0: i64, in0_valid: %handshake_buffer405.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer407.in0_ready: i1, out1_ready: %handshake_buffer406.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer406.in0_ready, %handshake_buffer406.out0, %handshake_buffer406.out0_valid = hw.instance "handshake_buffer406" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork21.out1: i64, in0_valid: %handshake_fork21.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br0.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer407.in0_ready, %handshake_buffer407.out0, %handshake_buffer407.out0_valid = hw.instance "handshake_buffer407" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork21.out0: i64, in0_valid: %handshake_fork21.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux3.select_ready, %handshake_mux3.in0_ready, %handshake_mux3.in1_ready, %handshake_mux3.out0, %handshake_mux3.out0_valid = hw.instance "handshake_mux3" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer388.out0: i1, select_valid: %handshake_buffer388.out0_valid: i1, in0: %handshake_buffer2.out0: i64, in0_valid: %handshake_buffer2.out0_valid: i1, in1: %handshake_buffer523.out0: i64, in1_valid: %handshake_buffer523.out0_valid: i1, out0_ready: %handshake_buffer408.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer408.in0_ready, %handshake_buffer408.out0, %handshake_buffer408.out0_valid = hw.instance "handshake_buffer408" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux3.out0: i64, in0_valid: %handshake_mux3.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork22.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork22.in0_ready, %handshake_fork22.out0, %handshake_fork22.out0_valid, %handshake_fork22.out1, %handshake_fork22.out1_valid = hw.instance "handshake_fork22" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer408.out0: i64, in0_valid: %handshake_buffer408.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer410.in0_ready: i1, out1_ready: %handshake_buffer409.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer409.in0_ready, %handshake_buffer409.out0, %handshake_buffer409.out0_valid = hw.instance "handshake_buffer409" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork22.out1: i64, in0_valid: %handshake_fork22.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi2.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer410.in0_ready, %handshake_buffer410.out0, %handshake_buffer410.out0_valid = hw.instance "handshake_buffer410" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork22.out0: i64, in0_valid: %handshake_fork22.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux4.select_ready, %handshake_mux4.in0_ready, %handshake_mux4.in1_ready, %handshake_mux4.out0, %handshake_mux4.out0_valid = hw.instance "handshake_mux4" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer389.out0: i1, select_valid: %handshake_buffer389.out0_valid: i1, in0: %handshake_buffer235.out0: i64, in0_valid: %handshake_buffer235.out0_valid: i1, in1: %handshake_buffer522.out0: i64, in1_valid: %handshake_buffer522.out0_valid: i1, out0_ready: %handshake_buffer411.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer411.in0_ready, %handshake_buffer411.out0, %handshake_buffer411.out0_valid = hw.instance "handshake_buffer411" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux4.out0: i64, in0_valid: %handshake_mux4.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork23.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork23.in0_ready, %handshake_fork23.out0, %handshake_fork23.out0_valid, %handshake_fork23.out1, %handshake_fork23.out1_valid = hw.instance "handshake_fork23" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer411.out0: i64, in0_valid: %handshake_buffer411.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer413.in0_ready: i1, out1_ready: %handshake_buffer412.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer412.in0_ready, %handshake_buffer412.out0, %handshake_buffer412.out0_valid = hw.instance "handshake_buffer412" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork23.out1: i64, in0_valid: %handshake_fork23.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi15.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer413.in0_ready, %handshake_buffer413.out0, %handshake_buffer413.out0_valid = hw.instance "handshake_buffer413" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork23.out0: i64, in0_valid: %handshake_fork23.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shrsi0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux5.select_ready, %handshake_mux5.in0_ready, %handshake_mux5.in1_ready, %handshake_mux5.out0, %handshake_mux5.out0_valid = hw.instance "handshake_mux5" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer390.out0: i1, select_valid: %handshake_buffer390.out0_valid: i1, in0: %handshake_buffer1.out0: i64, in0_valid: %handshake_buffer1.out0_valid: i1, in1: %handshake_buffer521.out0: i64, in1_valid: %handshake_buffer521.out0_valid: i1, out0_ready: %handshake_buffer414.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer414.in0_ready, %handshake_buffer414.out0, %handshake_buffer414.out0_valid = hw.instance "handshake_buffer414" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux5.out0: i64, in0_valid: %handshake_mux5.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork24.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork24.in0_ready, %handshake_fork24.out0, %handshake_fork24.out0_valid, %handshake_fork24.out1, %handshake_fork24.out1_valid = hw.instance "handshake_fork24" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer414.out0: i64, in0_valid: %handshake_buffer414.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer416.in0_ready: i1, out1_ready: %handshake_buffer415.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer415.in0_ready, %handshake_buffer415.out0, %handshake_buffer415.out0_valid = hw.instance "handshake_buffer415" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork24.out1: i64, in0_valid: %handshake_fork24.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shrsi1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer416.in0_ready, %handshake_buffer416.out0, %handshake_buffer416.out0_valid = hw.instance "handshake_buffer416" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork24.out0: i64, in0_valid: %handshake_fork24.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux6.select_ready, %handshake_mux6.in0_ready, %handshake_mux6.in1_ready, %handshake_mux6.out0, %handshake_mux6.out0_valid = hw.instance "handshake_mux6" @handshake_mux_in_ui1_ui1_ui1_out_ui1(select: %handshake_buffer391.out0: i1, select_valid: %handshake_buffer391.out0_valid: i1, in0: %handshake_buffer229.out0: i1, in0_valid: %handshake_buffer229.out0_valid: i1, in1: %handshake_buffer512.out0: i1, in1_valid: %handshake_buffer512.out0_valid: i1, out0_ready: %handshake_buffer417.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer417.in0_ready, %handshake_buffer417.out0, %handshake_buffer417.out0_valid = hw.instance "handshake_buffer417" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_mux6.out0: i1, in0_valid: %handshake_mux6.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork25.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_fork25.in0_ready, %handshake_fork25.out0, %handshake_fork25.out0_valid, %handshake_fork25.out1, %handshake_fork25.out1_valid = hw.instance "handshake_fork25" @handshake_fork_in_ui1_out_ui1_ui1(in0: %handshake_buffer417.out0: i1, in0_valid: %handshake_buffer417.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer419.in0_ready: i1, out1_ready: %handshake_buffer418.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1, out1: i1, out1_valid: i1)
    %handshake_buffer418.in0_ready, %handshake_buffer418.out0, %handshake_buffer418.out0_valid = hw.instance "handshake_buffer418" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork25.out1: i1, in0_valid: %handshake_fork25.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br1.data_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer419.in0_ready, %handshake_buffer419.out0, %handshake_buffer419.out0_valid = hw.instance "handshake_buffer419" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork25.out0: i1, in0_valid: %handshake_fork25.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br9.data_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_mux7.select_ready, %handshake_mux7.in0_ready, %handshake_mux7.in1_ready, %handshake_mux7.out0, %handshake_mux7.out0_valid = hw.instance "handshake_mux7" @handshake_mux_in_ui1_ui1_ui1_out_ui1(select: %handshake_buffer392.out0: i1, select_valid: %handshake_buffer392.out0_valid: i1, in0: %handshake_buffer230.out0: i1, in0_valid: %handshake_buffer230.out0_valid: i1, in1: %handshake_buffer513.out0: i1, in1_valid: %handshake_buffer513.out0_valid: i1, out0_ready: %handshake_buffer420.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer420.in0_ready, %handshake_buffer420.out0, %handshake_buffer420.out0_valid = hw.instance "handshake_buffer420" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_mux7.out0: i1, in0_valid: %handshake_mux7.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork26.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_fork26.in0_ready, %handshake_fork26.out0, %handshake_fork26.out0_valid, %handshake_fork26.out1, %handshake_fork26.out1_valid, %handshake_fork26.out2, %handshake_fork26.out2_valid = hw.instance "handshake_fork26" @handshake_fork_in_ui1_out_ui1_ui1_ui1(in0: %handshake_buffer420.out0: i1, in0_valid: %handshake_buffer420.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer423.in0_ready: i1, out1_ready: %handshake_buffer422.in0_ready: i1, out2_ready: %handshake_buffer421.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1, out1: i1, out1_valid: i1, out2: i1, out2_valid: i1)
    %handshake_buffer421.in0_ready, %handshake_buffer421.out0, %handshake_buffer421.out0_valid = hw.instance "handshake_buffer421" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork26.out2: i1, in0_valid: %handshake_fork26.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br2.data_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer422.in0_ready, %handshake_buffer422.out0, %handshake_buffer422.out0_valid = hw.instance "handshake_buffer422" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork26.out1: i1, in0_valid: %handshake_fork26.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br10.data_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer423.in0_ready, %handshake_buffer423.out0, %handshake_buffer423.out0_valid = hw.instance "handshake_buffer423" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork26.out0: i1, in0_valid: %handshake_fork26.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_xori0.in1_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_mux8.select_ready, %handshake_mux8.in0_ready, %handshake_mux8.in1_ready, %handshake_mux8.out0, %handshake_mux8.out0_valid = hw.instance "handshake_mux8" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer393.out0: i1, select_valid: %handshake_buffer393.out0_valid: i1, in0: %handshake_buffer231.out0: i64, in0_valid: %handshake_buffer231.out0_valid: i1, in1: %handshake_buffer514.out0: i64, in1_valid: %handshake_buffer514.out0_valid: i1, out0_ready: %handshake_buffer424.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer424.in0_ready, %handshake_buffer424.out0, %handshake_buffer424.out0_valid = hw.instance "handshake_buffer424" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux8.out0: i64, in0_valid: %handshake_mux8.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork27.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork27.in0_ready, %handshake_fork27.out0, %handshake_fork27.out0_valid, %handshake_fork27.out1, %handshake_fork27.out1_valid = hw.instance "handshake_fork27" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer424.out0: i64, in0_valid: %handshake_buffer424.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer426.in0_ready: i1, out1_ready: %handshake_buffer425.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer425.in0_ready, %handshake_buffer425.out0, %handshake_buffer425.out0_valid = hw.instance "handshake_buffer425" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork27.out1: i64, in0_valid: %handshake_fork27.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer426.in0_ready, %handshake_buffer426.out0, %handshake_buffer426.out0_valid = hw.instance "handshake_buffer426" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork27.out0: i64, in0_valid: %handshake_fork27.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br11.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux9.select_ready, %handshake_mux9.in0_ready, %handshake_mux9.in1_ready, %handshake_mux9.out0, %handshake_mux9.out0_valid = hw.instance "handshake_mux9" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer394.out0: i1, select_valid: %handshake_buffer394.out0_valid: i1, in0: %handshake_buffer232.out0: i64, in0_valid: %handshake_buffer232.out0_valid: i1, in1: %handshake_buffer515.out0: i64, in1_valid: %handshake_buffer515.out0_valid: i1, out0_ready: %handshake_buffer427.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer427.in0_ready, %handshake_buffer427.out0, %handshake_buffer427.out0_valid = hw.instance "handshake_buffer427" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux9.out0: i64, in0_valid: %handshake_mux9.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork28.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork28.in0_ready, %handshake_fork28.out0, %handshake_fork28.out0_valid, %handshake_fork28.out1, %handshake_fork28.out1_valid = hw.instance "handshake_fork28" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer427.out0: i64, in0_valid: %handshake_buffer427.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer429.in0_ready: i1, out1_ready: %handshake_buffer428.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer428.in0_ready, %handshake_buffer428.out0, %handshake_buffer428.out0_valid = hw.instance "handshake_buffer428" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork28.out1: i64, in0_valid: %handshake_fork28.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_select0.in2_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer429.in0_ready, %handshake_buffer429.out0, %handshake_buffer429.out0_valid = hw.instance "handshake_buffer429" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork28.out0: i64, in0_valid: %handshake_fork28.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br12.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux10.select_ready, %handshake_mux10.in0_ready, %handshake_mux10.in1_ready, %handshake_mux10.out0, %handshake_mux10.out0_valid = hw.instance "handshake_mux10" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer395.out0: i1, select_valid: %handshake_buffer395.out0_valid: i1, in0: %handshake_buffer233.out0: i64, in0_valid: %handshake_buffer233.out0_valid: i1, in1: %handshake_buffer516.out0: i64, in1_valid: %handshake_buffer516.out0_valid: i1, out0_ready: %handshake_buffer430.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer430.in0_ready, %handshake_buffer430.out0, %handshake_buffer430.out0_valid = hw.instance "handshake_buffer430" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux10.out0: i64, in0_valid: %handshake_mux10.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork29.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork29.in0_ready, %handshake_fork29.out0, %handshake_fork29.out0_valid, %handshake_fork29.out1, %handshake_fork29.out1_valid = hw.instance "handshake_fork29" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer430.out0: i64, in0_valid: %handshake_buffer430.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer432.in0_ready: i1, out1_ready: %handshake_buffer431.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer431.in0_ready, %handshake_buffer431.out0, %handshake_buffer431.out0_valid = hw.instance "handshake_buffer431" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork29.out1: i64, in0_valid: %handshake_fork29.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_select0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer432.in0_ready, %handshake_buffer432.out0, %handshake_buffer432.out0_valid = hw.instance "handshake_buffer432" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork29.out0: i64, in0_valid: %handshake_fork29.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br13.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux11.select_ready, %handshake_mux11.in0_ready, %handshake_mux11.in1_ready, %handshake_mux11.out0, %handshake_mux11.out0_valid = hw.instance "handshake_mux11" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer396.out0: i1, select_valid: %handshake_buffer396.out0_valid: i1, in0: %handshake_buffer236.out0: i64, in0_valid: %handshake_buffer236.out0_valid: i1, in1: %handshake_buffer517.out0: i64, in1_valid: %handshake_buffer517.out0_valid: i1, out0_ready: %handshake_buffer433.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer433.in0_ready, %handshake_buffer433.out0, %handshake_buffer433.out0_valid = hw.instance "handshake_buffer433" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux11.out0: i64, in0_valid: %handshake_mux11.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork30.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork30.in0_ready, %handshake_fork30.out0, %handshake_fork30.out0_valid, %handshake_fork30.out1, %handshake_fork30.out1_valid, %handshake_fork30.out2, %handshake_fork30.out2_valid, %handshake_fork30.out3, %handshake_fork30.out3_valid = hw.instance "handshake_fork30" @handshake_fork_in_ui64_out_ui64_ui64_ui64_ui64(in0: %handshake_buffer433.out0: i64, in0_valid: %handshake_buffer433.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer437.in0_ready: i1, out1_ready: %handshake_buffer436.in0_ready: i1, out2_ready: %handshake_buffer435.in0_ready: i1, out3_ready: %handshake_buffer434.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1, out2: i64, out2_valid: i1, out3: i64, out3_valid: i1)
    %handshake_buffer434.in0_ready, %handshake_buffer434.out0, %handshake_buffer434.out0_valid = hw.instance "handshake_buffer434" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork30.out3: i64, in0_valid: %handshake_fork30.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br4.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer435.in0_ready, %handshake_buffer435.out0, %handshake_buffer435.out0_valid = hw.instance "handshake_buffer435" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork30.out2: i64, in0_valid: %handshake_fork30.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br3.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer436.in0_ready, %handshake_buffer436.out0, %handshake_buffer436.out0_valid = hw.instance "handshake_buffer436" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork30.out1: i64, in0_valid: %handshake_fork30.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_cmpi0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer437.in0_ready, %handshake_buffer437.out0, %handshake_buffer437.out0_valid = hw.instance "handshake_buffer437" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork30.out0: i64, in0_valid: %handshake_fork30.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br14.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux12.select_ready, %handshake_mux12.in0_ready, %handshake_mux12.in1_ready, %handshake_mux12.out0, %handshake_mux12.out0_valid = hw.instance "handshake_mux12" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer397.out0: i1, select_valid: %handshake_buffer397.out0_valid: i1, in0: %handshake_buffer240.out0: i64, in0_valid: %handshake_buffer240.out0_valid: i1, in1: %handshake_buffer518.out0: i64, in1_valid: %handshake_buffer518.out0_valid: i1, out0_ready: %handshake_buffer438.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer438.in0_ready, %handshake_buffer438.out0, %handshake_buffer438.out0_valid = hw.instance "handshake_buffer438" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux12.out0: i64, in0_valid: %handshake_mux12.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork31.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork31.in0_ready, %handshake_fork31.out0, %handshake_fork31.out0_valid, %handshake_fork31.out1, %handshake_fork31.out1_valid, %handshake_fork31.out2, %handshake_fork31.out2_valid = hw.instance "handshake_fork31" @handshake_fork_in_ui64_out_ui64_ui64_ui64(in0: %handshake_buffer438.out0: i64, in0_valid: %handshake_buffer438.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer441.in0_ready: i1, out1_ready: %handshake_buffer440.in0_ready: i1, out2_ready: %handshake_buffer439.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1, out2: i64, out2_valid: i1)
    %handshake_buffer439.in0_ready, %handshake_buffer439.out0, %handshake_buffer439.out0_valid = hw.instance "handshake_buffer439" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork31.out2: i64, in0_valid: %handshake_fork31.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br5.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer440.in0_ready, %handshake_buffer440.out0, %handshake_buffer440.out0_valid = hw.instance "handshake_buffer440" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork31.out1: i64, in0_valid: %handshake_fork31.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer441.in0_ready, %handshake_buffer441.out0, %handshake_buffer441.out0_valid = hw.instance "handshake_buffer441" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork31.out0: i64, in0_valid: %handshake_fork31.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br15.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux13.select_ready, %handshake_mux13.in0_ready, %handshake_mux13.in1_ready, %handshake_mux13.out0, %handshake_mux13.out0_valid = hw.instance "handshake_mux13" @handshake_mux_in_ui1_ui64_ui64_out_ui64(select: %handshake_buffer398.out0: i1, select_valid: %handshake_buffer398.out0_valid: i1, in0: %handshake_buffer273.out0: i64, in0_valid: %handshake_buffer273.out0_valid: i1, in1: %handshake_buffer519.out0: i64, in1_valid: %handshake_buffer519.out0_valid: i1, out0_ready: %handshake_buffer442.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer442.in0_ready, %handshake_buffer442.out0, %handshake_buffer442.out0_valid = hw.instance "handshake_buffer442" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux13.out0: i64, in0_valid: %handshake_mux13.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork32.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork32.in0_ready, %handshake_fork32.out0, %handshake_fork32.out0_valid, %handshake_fork32.out1, %handshake_fork32.out1_valid = hw.instance "handshake_fork32" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer442.out0: i64, in0_valid: %handshake_buffer442.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer444.in0_ready: i1, out1_ready: %handshake_buffer443.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer443.in0_ready, %handshake_buffer443.out0, %handshake_buffer443.out0_valid = hw.instance "handshake_buffer443" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork32.out1: i64, in0_valid: %handshake_fork32.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli16.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer444.in0_ready, %handshake_buffer444.out0, %handshake_buffer444.out0_valid = hw.instance "handshake_buffer444" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork32.out0: i64, in0_valid: %handshake_fork32.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br16.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_cmpi0.in0_ready, %arith_cmpi0.in1_ready, %arith_cmpi0.out0, %arith_cmpi0.out0_valid = hw.instance "arith_cmpi0" @arith_cmpi_in_ui64_ui64_out_ui1_sge(in0: %handshake_buffer410.out0: i64, in0_valid: %handshake_buffer410.out0_valid: i1, in1: %handshake_buffer436.out0: i64, in1_valid: %handshake_buffer436.out0_valid: i1, out0_ready: %handshake_buffer445.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer445.in0_ready, %handshake_buffer445.out0, %handshake_buffer445.out0_valid = hw.instance "handshake_buffer445" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %arith_cmpi0.out0: i1, in0_valid: %arith_cmpi0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_select0.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %arith_select0.in0_ready, %arith_select0.in1_ready, %arith_select0.in2_ready, %arith_select0.out0, %arith_select0.out0_valid = hw.instance "arith_select0" @arith_select_in_ui1_ui64_ui64_out_ui64(in0: %handshake_buffer445.out0: i1, in0_valid: %handshake_buffer445.out0_valid: i1, in1: %handshake_buffer431.out0: i64, in1_valid: %handshake_buffer431.out0_valid: i1, in2: %handshake_buffer428.out0: i64, in2_valid: %handshake_buffer428.out0_valid: i1, out0_ready: %handshake_buffer446.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, in2_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer446.in0_ready, %handshake_buffer446.out0, %handshake_buffer446.out0_valid = hw.instance "handshake_buffer446" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_select0.out0: i64, in0_valid: %arith_select0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork33.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork33.in0_ready, %handshake_fork33.out0, %handshake_fork33.out0_valid, %handshake_fork33.out1, %handshake_fork33.out1_valid, %handshake_fork33.out2, %handshake_fork33.out2_valid = hw.instance "handshake_fork33" @handshake_fork_in_ui64_out_ui64_ui64_ui64(in0: %handshake_buffer446.out0: i64, in0_valid: %handshake_buffer446.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer449.in0_ready: i1, out1_ready: %handshake_buffer448.in0_ready: i1, out2_ready: %handshake_buffer447.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1, out2: i64, out2_valid: i1)
    %handshake_buffer447.in0_ready, %handshake_buffer447.out0, %handshake_buffer447.out0_valid = hw.instance "handshake_buffer447" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork33.out2: i64, in0_valid: %handshake_fork33.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_muli2.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer448.in0_ready, %handshake_buffer448.out0, %handshake_buffer448.out0_valid = hw.instance "handshake_buffer448" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork33.out1: i64, in0_valid: %handshake_fork33.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_muli1.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer449.in0_ready, %handshake_buffer449.out0, %handshake_buffer449.out0_valid = hw.instance "handshake_buffer449" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork33.out0: i64, in0_valid: %handshake_fork33.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_muli0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_subi0.in0_ready, %arith_subi0.in1_ready, %arith_subi0.out0, %arith_subi0.out0_valid = hw.instance "arith_subi0" @arith_subi_in_ui64_ui64_out_ui64(in0: %handshake_buffer404.out0: i64, in0_valid: %handshake_buffer404.out0_valid: i1, in1: %handshake_buffer440.out0: i64, in1_valid: %handshake_buffer440.out0_valid: i1, out0_ready: %handshake_buffer450.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer450.in0_ready, %handshake_buffer450.out0, %handshake_buffer450.out0_valid = hw.instance "handshake_buffer450" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_subi0.out0: i64, in0_valid: %arith_subi0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork34.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork34.in0_ready, %handshake_fork34.out0, %handshake_fork34.out0_valid, %handshake_fork34.out1, %handshake_fork34.out1_valid, %handshake_fork34.out2, %handshake_fork34.out2_valid = hw.instance "handshake_fork34" @handshake_fork_in_ui64_out_ui64_ui64_ui64(in0: %handshake_buffer450.out0: i64, in0_valid: %handshake_buffer450.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer453.in0_ready: i1, out1_ready: %handshake_buffer452.in0_ready: i1, out2_ready: %handshake_buffer451.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1, out2: i64, out2_valid: i1)
    %handshake_buffer451.in0_ready, %handshake_buffer451.out0, %handshake_buffer451.out0_valid = hw.instance "handshake_buffer451" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork34.out2: i64, in0_valid: %handshake_fork34.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shrsi0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer452.in0_ready, %handshake_buffer452.out0, %handshake_buffer452.out0_valid = hw.instance "handshake_buffer452" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork34.out1: i64, in0_valid: %handshake_fork34.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shrsi1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer453.in0_ready, %handshake_buffer453.out0, %handshake_buffer453.out0_valid = hw.instance "handshake_buffer453" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork34.out0: i64, in0_valid: %handshake_fork34.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_index_cast0.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shrsi0.in0_ready, %arith_shrsi0.in1_ready, %arith_shrsi0.out0, %arith_shrsi0.out0_valid = hw.instance "arith_shrsi0" @arith_shrsi_in_ui64_ui64_out_ui64(in0: %handshake_buffer413.out0: i64, in0_valid: %handshake_buffer413.out0_valid: i1, in1: %handshake_buffer451.out0: i64, in1_valid: %handshake_buffer451.out0_valid: i1, out0_ready: %handshake_buffer454.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer454.in0_ready, %handshake_buffer454.out0, %handshake_buffer454.out0_valid = hw.instance "handshake_buffer454" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shrsi0.out0: i64, in0_valid: %arith_shrsi0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_muli0.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_muli0.in0_ready, %arith_muli0.in1_ready, %arith_muli0.out0, %arith_muli0.out0_valid = hw.instance "arith_muli0" @arith_muli_in_ui64_ui64_out_ui64(in0: %handshake_buffer449.out0: i64, in0_valid: %handshake_buffer449.out0_valid: i1, in1: %handshake_buffer454.out0: i64, in1_valid: %handshake_buffer454.out0_valid: i1, out0_ready: %handshake_buffer455.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer455.in0_ready, %handshake_buffer455.out0, %handshake_buffer455.out0_valid = hw.instance "handshake_buffer455" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_muli0.out0: i64, in0_valid: %arith_muli0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_subi1.in0_ready, %arith_subi1.in1_ready, %arith_subi1.out0, %arith_subi1.out0_valid = hw.instance "arith_subi1" @arith_subi_in_ui64_ui64_out_ui64(in0: %handshake_buffer416.out0: i64, in0_valid: %handshake_buffer416.out0_valid: i1, in1: %handshake_buffer455.out0: i64, in1_valid: %handshake_buffer455.out0_valid: i1, out0_ready: %handshake_buffer456.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer456.in0_ready, %handshake_buffer456.out0, %handshake_buffer456.out0_valid = hw.instance "handshake_buffer456" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_subi1.out0: i64, in0_valid: %arith_subi1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br17.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shrsi1.in0_ready, %arith_shrsi1.in1_ready, %arith_shrsi1.out0, %arith_shrsi1.out0_valid = hw.instance "arith_shrsi1" @arith_shrsi_in_ui64_ui64_out_ui64(in0: %handshake_buffer415.out0: i64, in0_valid: %handshake_buffer415.out0_valid: i1, in1: %handshake_buffer452.out0: i64, in1_valid: %handshake_buffer452.out0_valid: i1, out0_ready: %handshake_buffer457.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer457.in0_ready, %handshake_buffer457.out0, %handshake_buffer457.out0_valid = hw.instance "handshake_buffer457" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shrsi1.out0: i64, in0_valid: %arith_shrsi1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_muli1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_muli1.in0_ready, %arith_muli1.in1_ready, %arith_muli1.out0, %arith_muli1.out0_valid = hw.instance "arith_muli1" @arith_muli_in_ui64_ui64_out_ui64(in0: %handshake_buffer448.out0: i64, in0_valid: %handshake_buffer448.out0_valid: i1, in1: %handshake_buffer457.out0: i64, in1_valid: %handshake_buffer457.out0_valid: i1, out0_ready: %handshake_buffer458.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer458.in0_ready, %handshake_buffer458.out0, %handshake_buffer458.out0_valid = hw.instance "handshake_buffer458" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_muli1.out0: i64, in0_valid: %arith_muli1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi15.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi15.in0_ready, %arith_addi15.in1_ready, %arith_addi15.out0, %arith_addi15.out0_valid = hw.instance "arith_addi15" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer412.out0: i64, in0_valid: %handshake_buffer412.out0_valid: i1, in1: %handshake_buffer458.out0: i64, in1_valid: %handshake_buffer458.out0_valid: i1, out0_ready: %handshake_buffer459.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer459.in0_ready, %handshake_buffer459.out0, %handshake_buffer459.out0_valid = hw.instance "handshake_buffer459" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi15.out0: i64, in0_valid: %arith_addi15.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br18.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_index_cast0.in0_ready, %arith_index_cast0.out0, %arith_index_cast0.out0_valid = hw.instance "arith_index_cast0" @arith_index_cast_in_ui64_out_ui64(in0: %handshake_buffer453.out0: i64, in0_valid: %handshake_buffer453.out0_valid: i1, out0_ready: %handshake_buffer460.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer460.in0_ready, %handshake_buffer460.out0, %handshake_buffer460.out0_valid = hw.instance "handshake_buffer460" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_index_cast0.out0: i64, in0_valid: %arith_index_cast0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi16.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_constant55.ctrl_ready, %handshake_constant55.out0, %handshake_constant55.out0_valid = hw.instance "handshake_constant55" @handshake_constant_c4_out_ui64(ctrl: %handshake_buffer400.out0: i0, ctrl_valid: %handshake_buffer400.out0_valid: i1, out0_ready: %handshake_buffer461.in0_ready: i1) -> (ctrl_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer461.in0_ready, %handshake_buffer461.out0, %handshake_buffer461.out0_valid = hw.instance "handshake_buffer461" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_constant55.out0: i64, in0_valid: %handshake_constant55.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_shli16.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_shli16.in0_ready, %arith_shli16.in1_ready, %arith_shli16.out0, %arith_shli16.out0_valid = hw.instance "arith_shli16" @arith_shli_in_ui64_ui64_out_ui64(in0: %handshake_buffer443.out0: i64, in0_valid: %handshake_buffer443.out0_valid: i1, in1: %handshake_buffer461.out0: i64, in1_valid: %handshake_buffer461.out0_valid: i1, out0_ready: %handshake_buffer462.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer462.in0_ready, %handshake_buffer462.out0, %handshake_buffer462.out0_valid = hw.instance "handshake_buffer462" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_shli16.out0: i64, in0_valid: %arith_shli16.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi16.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_addi16.in0_ready, %arith_addi16.in1_ready, %arith_addi16.out0, %arith_addi16.out0_valid = hw.instance "arith_addi16" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer462.out0: i64, in0_valid: %handshake_buffer462.out0_valid: i1, in1: %handshake_buffer460.out0: i64, in1_valid: %handshake_buffer460.out0_valid: i1, out0_ready: %handshake_buffer463.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer463.in0_ready, %handshake_buffer463.out0, %handshake_buffer463.out0_valid = hw.instance "handshake_buffer463" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi16.out0: i64, in0_valid: %arith_addi16.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_load0.addrIn0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_load0.addrIn0_ready, %handshake_load0.dataFromMem_ready, %handshake_load0.ctrl_ready, %handshake_load0.dataOut, %handshake_load0.dataOut_valid, %handshake_load0.addrOut0, %handshake_load0.addrOut0_valid = hw.instance "handshake_load0" @handshake_load_in_ui64_ui64_out_ui64_ui64(addrIn0: %handshake_buffer463.out0: i64, addrIn0_valid: %handshake_buffer463.out0_valid: i1, dataFromMem: %handshake_buffer92.out0: i64, dataFromMem_valid: %handshake_buffer92.out0_valid: i1, ctrl: %handshake_buffer402.out0: i0, ctrl_valid: %handshake_buffer402.out0_valid: i1, dataOut_ready: %handshake_buffer465.in0_ready: i1, addrOut0_ready: %handshake_buffer464.in0_ready: i1) -> (addrIn0_ready: i1, dataFromMem_ready: i1, ctrl_ready: i1, dataOut: i64, dataOut_valid: i1, addrOut0: i64, addrOut0_valid: i1)
    %handshake_buffer464.in0_ready, %handshake_buffer464.out0, %handshake_buffer464.out0_valid = hw.instance "handshake_buffer464" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_load0.addrOut0: i64, in0_valid: %handshake_load0.addrOut0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_memory0.ldAddr0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer465.in0_ready, %handshake_buffer465.out0, %handshake_buffer465.out0_valid = hw.instance "handshake_buffer465" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_load0.dataOut: i64, in0_valid: %handshake_load0.dataOut_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_muli2.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_muli2.in0_ready, %arith_muli2.in1_ready, %arith_muli2.out0, %arith_muli2.out0_valid = hw.instance "arith_muli2" @arith_muli_in_ui64_ui64_out_ui64(in0: %handshake_buffer447.out0: i64, in0_valid: %handshake_buffer447.out0_valid: i1, in1: %handshake_buffer465.out0: i64, in1_valid: %handshake_buffer465.out0_valid: i1, out0_ready: %handshake_buffer466.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer466.in0_ready, %handshake_buffer466.out0, %handshake_buffer466.out0_valid = hw.instance "handshake_buffer466" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_muli2.out0: i64, in0_valid: %arith_muli2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_subi2.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_subi2.in0_ready, %arith_subi2.in1_ready, %arith_subi2.out0, %arith_subi2.out0_valid = hw.instance "arith_subi2" @arith_subi_in_ui64_ui64_out_ui64(in0: %handshake_buffer409.out0: i64, in0_valid: %handshake_buffer409.out0_valid: i1, in1: %handshake_buffer466.out0: i64, in1_valid: %handshake_buffer466.out0_valid: i1, out0_ready: %handshake_buffer467.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer467.in0_ready, %handshake_buffer467.out0, %handshake_buffer467.out0_valid = hw.instance "handshake_buffer467" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_subi2.out0: i64, in0_valid: %arith_subi2.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br19.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_cmpi1.in0_ready, %arith_cmpi1.in1_ready, %arith_cmpi1.out0, %arith_cmpi1.out0_valid = hw.instance "arith_cmpi1" @arith_cmpi_in_ui64_ui64_out_ui1_eq(in0: %handshake_buffer407.out0: i64, in0_valid: %handshake_buffer407.out0_valid: i1, in1: %handshake_buffer425.out0: i64, in1_valid: %handshake_buffer425.out0_valid: i1, out0_ready: %handshake_buffer468.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer468.in0_ready, %handshake_buffer468.out0, %handshake_buffer468.out0_valid = hw.instance "handshake_buffer468" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %arith_cmpi1.out0: i1, in0_valid: %arith_cmpi1.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork35.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_fork35.in0_ready, %handshake_fork35.out0, %handshake_fork35.out0_valid, %handshake_fork35.out1, %handshake_fork35.out1_valid, %handshake_fork35.out2, %handshake_fork35.out2_valid, %handshake_fork35.out3, %handshake_fork35.out3_valid, %handshake_fork35.out4, %handshake_fork35.out4_valid, %handshake_fork35.out5, %handshake_fork35.out5_valid, %handshake_fork35.out6, %handshake_fork35.out6_valid = hw.instance "handshake_fork35" @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1_ui1_ui1_ui1(in0: %handshake_buffer468.out0: i1, in0_valid: %handshake_buffer468.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer475.in0_ready: i1, out1_ready: %handshake_buffer474.in0_ready: i1, out2_ready: %handshake_buffer473.in0_ready: i1, out3_ready: %handshake_buffer472.in0_ready: i1, out4_ready: %handshake_buffer471.in0_ready: i1, out5_ready: %handshake_buffer470.in0_ready: i1, out6_ready: %handshake_buffer469.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1, out1: i1, out1_valid: i1, out2: i1, out2_valid: i1, out3: i1, out3_valid: i1, out4: i1, out4_valid: i1, out5: i1, out5_valid: i1, out6: i1, out6_valid: i1)
    %handshake_buffer469.in0_ready, %handshake_buffer469.out0, %handshake_buffer469.out0_valid = hw.instance "handshake_buffer469" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork35.out6: i1, in0_valid: %handshake_fork35.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br0.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer470.in0_ready, %handshake_buffer470.out0, %handshake_buffer470.out0_valid = hw.instance "handshake_buffer470" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork35.out5: i1, in0_valid: %handshake_fork35.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br1.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer471.in0_ready, %handshake_buffer471.out0, %handshake_buffer471.out0_valid = hw.instance "handshake_buffer471" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork35.out4: i1, in0_valid: %handshake_fork35.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br2.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer472.in0_ready, %handshake_buffer472.out0, %handshake_buffer472.out0_valid = hw.instance "handshake_buffer472" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork35.out3: i1, in0_valid: %handshake_fork35.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br3.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer473.in0_ready, %handshake_buffer473.out0, %handshake_buffer473.out0_valid = hw.instance "handshake_buffer473" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork35.out2: i1, in0_valid: %handshake_fork35.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br4.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer474.in0_ready, %handshake_buffer474.out0, %handshake_buffer474.out0_valid = hw.instance "handshake_buffer474" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork35.out1: i1, in0_valid: %handshake_fork35.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br5.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer475.in0_ready, %handshake_buffer475.out0, %handshake_buffer475.out0_valid = hw.instance "handshake_buffer475" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork35.out0: i1, in0_valid: %handshake_fork35.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br6.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_cond_br0.cond_ready, %handshake_cond_br0.data_ready, %handshake_cond_br0.outTrue, %handshake_cond_br0.outTrue_valid, %handshake_cond_br0.outFalse, %handshake_cond_br0.outFalse_valid = hw.instance "handshake_cond_br0" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer469.out0: i1, cond_valid: %handshake_buffer469.out0_valid: i1, data: %handshake_buffer406.out0: i64, data_valid: %handshake_buffer406.out0_valid: i1, outTrue_ready: %handshake_sink0.in0_ready: i1, outFalse_ready: %handshake_buffer476.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer476.in0_ready, %handshake_buffer476.out0, %handshake_buffer476.out0_valid = hw.instance "handshake_buffer476" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br0.outFalse: i64, in0_valid: %handshake_cond_br0.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi17.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink0.in0_ready = hw.instance "handshake_sink0" @handshake_sink_in_ui64(in0: %handshake_cond_br0.outTrue: i64, in0_valid: %handshake_cond_br0.outTrue_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br1.cond_ready, %handshake_cond_br1.data_ready, %handshake_cond_br1.outTrue, %handshake_cond_br1.outTrue_valid, %handshake_cond_br1.outFalse, %handshake_cond_br1.outFalse_valid = hw.instance "handshake_cond_br1" @handshake_cond_br_in_ui1_ui1_out_ui1_ui1(cond: %handshake_buffer470.out0: i1, cond_valid: %handshake_buffer470.out0_valid: i1, data: %handshake_buffer418.out0: i1, data_valid: %handshake_buffer418.out0_valid: i1, outTrue_ready: %handshake_sink1.in0_ready: i1, outFalse_ready: %handshake_buffer477.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i1, outTrue_valid: i1, outFalse: i1, outFalse_valid: i1)
    %handshake_buffer477.in0_ready, %handshake_buffer477.out0, %handshake_buffer477.out0_valid = hw.instance "handshake_buffer477" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_cond_br1.outFalse: i1, in0_valid: %handshake_cond_br1.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux16.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_sink1.in0_ready = hw.instance "handshake_sink1" @handshake_sink_in_ui1(in0: %handshake_cond_br1.outTrue: i1, in0_valid: %handshake_cond_br1.outTrue_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br2.cond_ready, %handshake_cond_br2.data_ready, %handshake_cond_br2.outTrue, %handshake_cond_br2.outTrue_valid, %handshake_cond_br2.outFalse, %handshake_cond_br2.outFalse_valid = hw.instance "handshake_cond_br2" @handshake_cond_br_in_ui1_ui1_out_ui1_ui1(cond: %handshake_buffer471.out0: i1, cond_valid: %handshake_buffer471.out0_valid: i1, data: %handshake_buffer421.out0: i1, data_valid: %handshake_buffer421.out0_valid: i1, outTrue_ready: %handshake_buffer478.in0_ready: i1, outFalse_ready: %handshake_sink2.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i1, outTrue_valid: i1, outFalse: i1, outFalse_valid: i1)
    %handshake_buffer478.in0_ready, %handshake_buffer478.out0, %handshake_buffer478.out0_valid = hw.instance "handshake_buffer478" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_cond_br2.outTrue: i1, in0_valid: %handshake_cond_br2.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux16.in1_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_sink2.in0_ready = hw.instance "handshake_sink2" @handshake_sink_in_ui1(in0: %handshake_cond_br2.outFalse: i1, in0_valid: %handshake_cond_br2.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br3.cond_ready, %handshake_cond_br3.data_ready, %handshake_cond_br3.outTrue, %handshake_cond_br3.outTrue_valid, %handshake_cond_br3.outFalse, %handshake_cond_br3.outFalse_valid = hw.instance "handshake_cond_br3" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer472.out0: i1, cond_valid: %handshake_buffer472.out0_valid: i1, data: %handshake_buffer435.out0: i64, data_valid: %handshake_buffer435.out0_valid: i1, outTrue_ready: %handshake_buffer479.in0_ready: i1, outFalse_ready: %handshake_sink3.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer479.in0_ready, %handshake_buffer479.out0, %handshake_buffer479.out0_valid = hw.instance "handshake_buffer479" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br3.outTrue: i64, in0_valid: %handshake_cond_br3.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux15.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink3.in0_ready = hw.instance "handshake_sink3" @handshake_sink_in_ui64(in0: %handshake_cond_br3.outFalse: i64, in0_valid: %handshake_cond_br3.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br4.cond_ready, %handshake_cond_br4.data_ready, %handshake_cond_br4.outTrue, %handshake_cond_br4.outTrue_valid, %handshake_cond_br4.outFalse, %handshake_cond_br4.outFalse_valid = hw.instance "handshake_cond_br4" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer473.out0: i1, cond_valid: %handshake_buffer473.out0_valid: i1, data: %handshake_buffer434.out0: i64, data_valid: %handshake_buffer434.out0_valid: i1, outTrue_ready: %handshake_buffer480.in0_ready: i1, outFalse_ready: %handshake_sink4.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer480.in0_ready, %handshake_buffer480.out0, %handshake_buffer480.out0_valid = hw.instance "handshake_buffer480" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br4.outTrue: i64, in0_valid: %handshake_cond_br4.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux14.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink4.in0_ready = hw.instance "handshake_sink4" @handshake_sink_in_ui64(in0: %handshake_cond_br4.outFalse: i64, in0_valid: %handshake_cond_br4.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br5.cond_ready, %handshake_cond_br5.data_ready, %handshake_cond_br5.outTrue, %handshake_cond_br5.outTrue_valid, %handshake_cond_br5.outFalse, %handshake_cond_br5.outFalse_valid = hw.instance "handshake_cond_br5" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer474.out0: i1, cond_valid: %handshake_buffer474.out0_valid: i1, data: %handshake_buffer439.out0: i64, data_valid: %handshake_buffer439.out0_valid: i1, outTrue_ready: %handshake_sink5.in0_ready: i1, outFalse_ready: %handshake_buffer481.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer481.in0_ready, %handshake_buffer481.out0, %handshake_buffer481.out0_valid = hw.instance "handshake_buffer481" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br5.outFalse: i64, in0_valid: %handshake_cond_br5.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_addi17.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink5.in0_ready = hw.instance "handshake_sink5" @handshake_sink_in_ui64(in0: %handshake_cond_br5.outTrue: i64, in0_valid: %handshake_cond_br5.outTrue_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br6.cond_ready, %handshake_cond_br6.data_ready, %handshake_cond_br6.outTrue, %handshake_cond_br6.outTrue_valid, %handshake_cond_br6.outFalse, %handshake_cond_br6.outFalse_valid = hw.instance "handshake_cond_br6" @handshake_cond_br_in_ui1_2ins_2outs_ctrl(cond: %handshake_buffer475.out0: i1, cond_valid: %handshake_buffer475.out0_valid: i1, data: %handshake_buffer403.out0: i0, data_valid: %handshake_buffer403.out0_valid: i1, outTrue_ready: %handshake_buffer483.in0_ready: i1, outFalse_ready: %handshake_buffer482.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i0, outTrue_valid: i1, outFalse: i0, outFalse_valid: i1)
    %handshake_buffer482.in0_ready, %handshake_buffer482.out0, %handshake_buffer482.out0_valid = hw.instance "handshake_buffer482" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_cond_br6.outFalse: i0, in0_valid: %handshake_cond_br6.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_control_merge0.in0_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer483.in0_ready, %handshake_buffer483.out0, %handshake_buffer483.out0_valid = hw.instance "handshake_buffer483" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_cond_br6.outTrue: i0, in0_valid: %handshake_cond_br6.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_control_merge0.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %arith_addi17.in0_ready, %arith_addi17.in1_ready, %arith_addi17.out0, %arith_addi17.out0_valid = hw.instance "arith_addi17" @arith_addi_in_ui64_ui64_out_ui64(in0: %handshake_buffer476.out0: i64, in0_valid: %handshake_buffer476.out0_valid: i1, in1: %handshake_buffer481.out0: i64, in1_valid: %handshake_buffer481.out0_valid: i1, out0_ready: %handshake_buffer484.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer484.in0_ready, %handshake_buffer484.out0, %handshake_buffer484.out0_valid = hw.instance "handshake_buffer484" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %arith_addi17.out0: i64, in0_valid: %arith_addi17.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork36.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_fork36.in0_ready, %handshake_fork36.out0, %handshake_fork36.out0_valid, %handshake_fork36.out1, %handshake_fork36.out1_valid = hw.instance "handshake_fork36" @handshake_fork_in_ui64_out_ui64_ui64(in0: %handshake_buffer484.out0: i64, in0_valid: %handshake_buffer484.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer486.in0_ready: i1, out1_ready: %handshake_buffer485.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1)
    %handshake_buffer485.in0_ready, %handshake_buffer485.out0, %handshake_buffer485.out0_valid = hw.instance "handshake_buffer485" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork36.out1: i64, in0_valid: %handshake_fork36.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux15.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer486.in0_ready, %handshake_buffer486.out0, %handshake_buffer486.out0_valid = hw.instance "handshake_buffer486" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork36.out0: i64, in0_valid: %handshake_fork36.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux14.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux14.select_ready, %handshake_mux14.in0_ready, %handshake_mux14.in1_ready, %handshake_mux14.out0, %handshake_mux14.out0_valid = hw.instance "handshake_mux14" @handshake_mux_in_ui64_ui64_ui64_out_ui64(select: %handshake_buffer492.out0: i64, select_valid: %handshake_buffer492.out0_valid: i1, in0: %handshake_buffer486.out0: i64, in0_valid: %handshake_buffer486.out0_valid: i1, in1: %handshake_buffer480.out0: i64, in1_valid: %handshake_buffer480.out0_valid: i1, out0_ready: %handshake_buffer487.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer487.in0_ready, %handshake_buffer487.out0, %handshake_buffer487.out0_valid = hw.instance "handshake_buffer487" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux14.out0: i64, in0_valid: %handshake_mux14.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br7.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux15.select_ready, %handshake_mux15.in0_ready, %handshake_mux15.in1_ready, %handshake_mux15.out0, %handshake_mux15.out0_valid = hw.instance "handshake_mux15" @handshake_mux_in_ui64_ui64_ui64_out_ui64(select: %handshake_buffer493.out0: i64, select_valid: %handshake_buffer493.out0_valid: i1, in0: %handshake_buffer485.out0: i64, in0_valid: %handshake_buffer485.out0_valid: i1, in1: %handshake_buffer479.out0: i64, in1_valid: %handshake_buffer479.out0_valid: i1, out0_ready: %handshake_buffer488.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer488.in0_ready, %handshake_buffer488.out0, %handshake_buffer488.out0_valid = hw.instance "handshake_buffer488" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_mux15.out0: i64, in0_valid: %handshake_mux15.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br8.data_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_mux16.select_ready, %handshake_mux16.in0_ready, %handshake_mux16.in1_ready, %handshake_mux16.out0, %handshake_mux16.out0_valid = hw.instance "handshake_mux16" @handshake_mux_in_ui64_ui1_ui1_out_ui1(select: %handshake_buffer494.out0: i64, select_valid: %handshake_buffer494.out0_valid: i1, in0: %handshake_buffer477.out0: i1, in0_valid: %handshake_buffer477.out0_valid: i1, in1: %handshake_buffer478.out0: i1, in1_valid: %handshake_buffer478.out0_valid: i1, out0_ready: %handshake_buffer489.in0_ready: i1) -> (select_ready: i1, in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer489.in0_ready, %handshake_buffer489.out0, %handshake_buffer489.out0_valid = hw.instance "handshake_buffer489" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_mux16.out0: i1, in0_valid: %handshake_mux16.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %arith_xori0.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_control_merge0.in0_ready, %handshake_control_merge0.in1_ready, %handshake_control_merge0.dataOut, %handshake_control_merge0.dataOut_valid, %handshake_control_merge0.index, %handshake_control_merge0.index_valid = hw.instance "handshake_control_merge0" @handshake_control_merge_out_ui64_2ins_2outs_ctrl(in0: %handshake_buffer482.out0: i0, in0_valid: %handshake_buffer482.out0_valid: i1, in1: %handshake_buffer483.out0: i0, in1_valid: %handshake_buffer483.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, dataOut_ready: %handshake_buffer491.in0_ready: i1, index_ready: %handshake_buffer490.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, dataOut: i0, dataOut_valid: i1, index: i64, index_valid: i1)
    %handshake_buffer490.in0_ready, %handshake_buffer490.out0, %handshake_buffer490.out0_valid = hw.instance "handshake_buffer490" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_control_merge0.index: i64, in0_valid: %handshake_control_merge0.index_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork37.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer491.in0_ready, %handshake_buffer491.out0, %handshake_buffer491.out0_valid = hw.instance "handshake_buffer491" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_control_merge0.dataOut: i0, in0_valid: %handshake_control_merge0.dataOut_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br20.data_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_fork37.in0_ready, %handshake_fork37.out0, %handshake_fork37.out0_valid, %handshake_fork37.out1, %handshake_fork37.out1_valid, %handshake_fork37.out2, %handshake_fork37.out2_valid = hw.instance "handshake_fork37" @handshake_fork_in_ui64_out_ui64_ui64_ui64(in0: %handshake_buffer490.out0: i64, in0_valid: %handshake_buffer490.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer494.in0_ready: i1, out1_ready: %handshake_buffer493.in0_ready: i1, out2_ready: %handshake_buffer492.in0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1, out1: i64, out1_valid: i1, out2: i64, out2_valid: i1)
    %handshake_buffer492.in0_ready, %handshake_buffer492.out0, %handshake_buffer492.out0_valid = hw.instance "handshake_buffer492" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork37.out2: i64, in0_valid: %handshake_fork37.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux14.select_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer493.in0_ready, %handshake_buffer493.out0, %handshake_buffer493.out0_valid = hw.instance "handshake_buffer493" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork37.out1: i64, in0_valid: %handshake_fork37.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux15.select_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer494.in0_ready, %handshake_buffer494.out0, %handshake_buffer494.out0_valid = hw.instance "handshake_buffer494" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_fork37.out0: i64, in0_valid: %handshake_fork37.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux16.select_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %arith_xori0.in0_ready, %arith_xori0.in1_ready, %arith_xori0.out0, %arith_xori0.out0_valid = hw.instance "arith_xori0" @arith_xori_in_ui1_ui1_out_ui1(in0: %handshake_buffer489.out0: i1, in0_valid: %handshake_buffer489.out0_valid: i1, in1: %handshake_buffer423.out0: i1, in1_valid: %handshake_buffer423.out0_valid: i1, out0_ready: %handshake_buffer495.in0_ready: i1) -> (in0_ready: i1, in1_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer495.in0_ready, %handshake_buffer495.out0, %handshake_buffer495.out0_valid = hw.instance "handshake_buffer495" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %arith_xori0.out0: i1, in0_valid: %arith_xori0.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_fork38.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_fork38.in0_ready, %handshake_fork38.out0, %handshake_fork38.out0_valid, %handshake_fork38.out1, %handshake_fork38.out1_valid, %handshake_fork38.out2, %handshake_fork38.out2_valid, %handshake_fork38.out3, %handshake_fork38.out3_valid, %handshake_fork38.out4, %handshake_fork38.out4_valid, %handshake_fork38.out5, %handshake_fork38.out5_valid, %handshake_fork38.out6, %handshake_fork38.out6_valid, %handshake_fork38.out7, %handshake_fork38.out7_valid, %handshake_fork38.out8, %handshake_fork38.out8_valid, %handshake_fork38.out9, %handshake_fork38.out9_valid, %handshake_fork38.out10, %handshake_fork38.out10_valid, %handshake_fork38.out11, %handshake_fork38.out11_valid, %handshake_fork38.out12, %handshake_fork38.out12_valid, %handshake_fork38.out13, %handshake_fork38.out13_valid, %handshake_fork38.out14, %handshake_fork38.out14_valid = hw.instance "handshake_fork38" @handshake_fork_in_ui1_out_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1_ui1(in0: %handshake_buffer495.out0: i1, in0_valid: %handshake_buffer495.out0_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_buffer384.in0_ready: i1, out1_ready: %handshake_buffer509.in0_ready: i1, out2_ready: %handshake_buffer508.in0_ready: i1, out3_ready: %handshake_buffer507.in0_ready: i1, out4_ready: %handshake_buffer506.in0_ready: i1, out5_ready: %handshake_buffer505.in0_ready: i1, out6_ready: %handshake_buffer504.in0_ready: i1, out7_ready: %handshake_buffer503.in0_ready: i1, out8_ready: %handshake_buffer502.in0_ready: i1, out9_ready: %handshake_buffer501.in0_ready: i1, out10_ready: %handshake_buffer500.in0_ready: i1, out11_ready: %handshake_buffer499.in0_ready: i1, out12_ready: %handshake_buffer498.in0_ready: i1, out13_ready: %handshake_buffer497.in0_ready: i1, out14_ready: %handshake_buffer496.in0_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1, out1: i1, out1_valid: i1, out2: i1, out2_valid: i1, out3: i1, out3_valid: i1, out4: i1, out4_valid: i1, out5: i1, out5_valid: i1, out6: i1, out6_valid: i1, out7: i1, out7_valid: i1, out8: i1, out8_valid: i1, out9: i1, out9_valid: i1, out10: i1, out10_valid: i1, out11: i1, out11_valid: i1, out12: i1, out12_valid: i1, out13: i1, out13_valid: i1, out14: i1, out14_valid: i1)
    %handshake_buffer496.in0_ready, %handshake_buffer496.out0, %handshake_buffer496.out0_valid = hw.instance "handshake_buffer496" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out14: i1, in0_valid: %handshake_fork38.out14_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br7.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer497.in0_ready, %handshake_buffer497.out0, %handshake_buffer497.out0_valid = hw.instance "handshake_buffer497" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out13: i1, in0_valid: %handshake_fork38.out13_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br8.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer498.in0_ready, %handshake_buffer498.out0, %handshake_buffer498.out0_valid = hw.instance "handshake_buffer498" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out12: i1, in0_valid: %handshake_fork38.out12_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br9.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer499.in0_ready, %handshake_buffer499.out0, %handshake_buffer499.out0_valid = hw.instance "handshake_buffer499" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out11: i1, in0_valid: %handshake_fork38.out11_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br10.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer500.in0_ready, %handshake_buffer500.out0, %handshake_buffer500.out0_valid = hw.instance "handshake_buffer500" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out10: i1, in0_valid: %handshake_fork38.out10_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br11.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer501.in0_ready, %handshake_buffer501.out0, %handshake_buffer501.out0_valid = hw.instance "handshake_buffer501" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out9: i1, in0_valid: %handshake_fork38.out9_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br12.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer502.in0_ready, %handshake_buffer502.out0, %handshake_buffer502.out0_valid = hw.instance "handshake_buffer502" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out8: i1, in0_valid: %handshake_fork38.out8_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br13.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer503.in0_ready, %handshake_buffer503.out0, %handshake_buffer503.out0_valid = hw.instance "handshake_buffer503" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out7: i1, in0_valid: %handshake_fork38.out7_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br14.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer504.in0_ready, %handshake_buffer504.out0, %handshake_buffer504.out0_valid = hw.instance "handshake_buffer504" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out6: i1, in0_valid: %handshake_fork38.out6_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br15.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer505.in0_ready, %handshake_buffer505.out0, %handshake_buffer505.out0_valid = hw.instance "handshake_buffer505" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out5: i1, in0_valid: %handshake_fork38.out5_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br16.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer506.in0_ready, %handshake_buffer506.out0, %handshake_buffer506.out0_valid = hw.instance "handshake_buffer506" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out4: i1, in0_valid: %handshake_fork38.out4_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br17.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer507.in0_ready, %handshake_buffer507.out0, %handshake_buffer507.out0_valid = hw.instance "handshake_buffer507" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out3: i1, in0_valid: %handshake_fork38.out3_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br18.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer508.in0_ready, %handshake_buffer508.out0, %handshake_buffer508.out0_valid = hw.instance "handshake_buffer508" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out2: i1, in0_valid: %handshake_fork38.out2_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br19.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_buffer509.in0_ready, %handshake_buffer509.out0, %handshake_buffer509.out0_valid = hw.instance "handshake_buffer509" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_fork38.out1: i1, in0_valid: %handshake_fork38.out1_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_cond_br20.cond_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_cond_br7.cond_ready, %handshake_cond_br7.data_ready, %handshake_cond_br7.outTrue, %handshake_cond_br7.outTrue_valid, %handshake_cond_br7.outFalse, %handshake_cond_br7.outFalse_valid = hw.instance "handshake_cond_br7" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer496.out0: i1, cond_valid: %handshake_buffer496.out0_valid: i1, data: %handshake_buffer487.out0: i64, data_valid: %handshake_buffer487.out0_valid: i1, outTrue_ready: %handshake_buffer510.in0_ready: i1, outFalse_ready: %handshake_sink6.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer510.in0_ready, %handshake_buffer510.out0, %handshake_buffer510.out0_valid = hw.instance "handshake_buffer510" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br7.outTrue: i64, in0_valid: %handshake_cond_br7.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux1.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink6.in0_ready = hw.instance "handshake_sink6" @handshake_sink_in_ui64(in0: %handshake_cond_br7.outFalse: i64, in0_valid: %handshake_cond_br7.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br8.cond_ready, %handshake_cond_br8.data_ready, %handshake_cond_br8.outTrue, %handshake_cond_br8.outTrue_valid, %handshake_cond_br8.outFalse, %handshake_cond_br8.outFalse_valid = hw.instance "handshake_cond_br8" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer497.out0: i1, cond_valid: %handshake_buffer497.out0_valid: i1, data: %handshake_buffer488.out0: i64, data_valid: %handshake_buffer488.out0_valid: i1, outTrue_ready: %handshake_buffer511.in0_ready: i1, outFalse_ready: %handshake_sink7.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer511.in0_ready, %handshake_buffer511.out0, %handshake_buffer511.out0_valid = hw.instance "handshake_buffer511" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br8.outTrue: i64, in0_valid: %handshake_cond_br8.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux2.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink7.in0_ready = hw.instance "handshake_sink7" @handshake_sink_in_ui64(in0: %handshake_cond_br8.outFalse: i64, in0_valid: %handshake_cond_br8.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br9.cond_ready, %handshake_cond_br9.data_ready, %handshake_cond_br9.outTrue, %handshake_cond_br9.outTrue_valid, %handshake_cond_br9.outFalse, %handshake_cond_br9.outFalse_valid = hw.instance "handshake_cond_br9" @handshake_cond_br_in_ui1_ui1_out_ui1_ui1(cond: %handshake_buffer498.out0: i1, cond_valid: %handshake_buffer498.out0_valid: i1, data: %handshake_buffer419.out0: i1, data_valid: %handshake_buffer419.out0_valid: i1, outTrue_ready: %handshake_buffer512.in0_ready: i1, outFalse_ready: %handshake_sink8.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i1, outTrue_valid: i1, outFalse: i1, outFalse_valid: i1)
    %handshake_buffer512.in0_ready, %handshake_buffer512.out0, %handshake_buffer512.out0_valid = hw.instance "handshake_buffer512" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_cond_br9.outTrue: i1, in0_valid: %handshake_cond_br9.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux6.in1_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_sink8.in0_ready = hw.instance "handshake_sink8" @handshake_sink_in_ui1(in0: %handshake_cond_br9.outFalse: i1, in0_valid: %handshake_cond_br9.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br10.cond_ready, %handshake_cond_br10.data_ready, %handshake_cond_br10.outTrue, %handshake_cond_br10.outTrue_valid, %handshake_cond_br10.outFalse, %handshake_cond_br10.outFalse_valid = hw.instance "handshake_cond_br10" @handshake_cond_br_in_ui1_ui1_out_ui1_ui1(cond: %handshake_buffer499.out0: i1, cond_valid: %handshake_buffer499.out0_valid: i1, data: %handshake_buffer422.out0: i1, data_valid: %handshake_buffer422.out0_valid: i1, outTrue_ready: %handshake_buffer513.in0_ready: i1, outFalse_ready: %handshake_sink9.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i1, outTrue_valid: i1, outFalse: i1, outFalse_valid: i1)
    %handshake_buffer513.in0_ready, %handshake_buffer513.out0, %handshake_buffer513.out0_valid = hw.instance "handshake_buffer513" @handshake_buffer_in_ui1_out_ui1_2slots_seq(in0: %handshake_cond_br10.outTrue: i1, in0_valid: %handshake_cond_br10.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux7.in1_ready: i1) -> (in0_ready: i1, out0: i1, out0_valid: i1)
    %handshake_sink9.in0_ready = hw.instance "handshake_sink9" @handshake_sink_in_ui1(in0: %handshake_cond_br10.outFalse: i1, in0_valid: %handshake_cond_br10.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br11.cond_ready, %handshake_cond_br11.data_ready, %handshake_cond_br11.outTrue, %handshake_cond_br11.outTrue_valid, %handshake_cond_br11.outFalse, %handshake_cond_br11.outFalse_valid = hw.instance "handshake_cond_br11" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer500.out0: i1, cond_valid: %handshake_buffer500.out0_valid: i1, data: %handshake_buffer426.out0: i64, data_valid: %handshake_buffer426.out0_valid: i1, outTrue_ready: %handshake_buffer514.in0_ready: i1, outFalse_ready: %handshake_sink10.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer514.in0_ready, %handshake_buffer514.out0, %handshake_buffer514.out0_valid = hw.instance "handshake_buffer514" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br11.outTrue: i64, in0_valid: %handshake_cond_br11.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux8.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink10.in0_ready = hw.instance "handshake_sink10" @handshake_sink_in_ui64(in0: %handshake_cond_br11.outFalse: i64, in0_valid: %handshake_cond_br11.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br12.cond_ready, %handshake_cond_br12.data_ready, %handshake_cond_br12.outTrue, %handshake_cond_br12.outTrue_valid, %handshake_cond_br12.outFalse, %handshake_cond_br12.outFalse_valid = hw.instance "handshake_cond_br12" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer501.out0: i1, cond_valid: %handshake_buffer501.out0_valid: i1, data: %handshake_buffer429.out0: i64, data_valid: %handshake_buffer429.out0_valid: i1, outTrue_ready: %handshake_buffer515.in0_ready: i1, outFalse_ready: %handshake_sink11.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer515.in0_ready, %handshake_buffer515.out0, %handshake_buffer515.out0_valid = hw.instance "handshake_buffer515" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br12.outTrue: i64, in0_valid: %handshake_cond_br12.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux9.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink11.in0_ready = hw.instance "handshake_sink11" @handshake_sink_in_ui64(in0: %handshake_cond_br12.outFalse: i64, in0_valid: %handshake_cond_br12.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br13.cond_ready, %handshake_cond_br13.data_ready, %handshake_cond_br13.outTrue, %handshake_cond_br13.outTrue_valid, %handshake_cond_br13.outFalse, %handshake_cond_br13.outFalse_valid = hw.instance "handshake_cond_br13" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer502.out0: i1, cond_valid: %handshake_buffer502.out0_valid: i1, data: %handshake_buffer432.out0: i64, data_valid: %handshake_buffer432.out0_valid: i1, outTrue_ready: %handshake_buffer516.in0_ready: i1, outFalse_ready: %handshake_sink12.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer516.in0_ready, %handshake_buffer516.out0, %handshake_buffer516.out0_valid = hw.instance "handshake_buffer516" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br13.outTrue: i64, in0_valid: %handshake_cond_br13.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux10.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink12.in0_ready = hw.instance "handshake_sink12" @handshake_sink_in_ui64(in0: %handshake_cond_br13.outFalse: i64, in0_valid: %handshake_cond_br13.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br14.cond_ready, %handshake_cond_br14.data_ready, %handshake_cond_br14.outTrue, %handshake_cond_br14.outTrue_valid, %handshake_cond_br14.outFalse, %handshake_cond_br14.outFalse_valid = hw.instance "handshake_cond_br14" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer503.out0: i1, cond_valid: %handshake_buffer503.out0_valid: i1, data: %handshake_buffer437.out0: i64, data_valid: %handshake_buffer437.out0_valid: i1, outTrue_ready: %handshake_buffer517.in0_ready: i1, outFalse_ready: %handshake_sink13.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer517.in0_ready, %handshake_buffer517.out0, %handshake_buffer517.out0_valid = hw.instance "handshake_buffer517" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br14.outTrue: i64, in0_valid: %handshake_cond_br14.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux11.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink13.in0_ready = hw.instance "handshake_sink13" @handshake_sink_in_ui64(in0: %handshake_cond_br14.outFalse: i64, in0_valid: %handshake_cond_br14.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br15.cond_ready, %handshake_cond_br15.data_ready, %handshake_cond_br15.outTrue, %handshake_cond_br15.outTrue_valid, %handshake_cond_br15.outFalse, %handshake_cond_br15.outFalse_valid = hw.instance "handshake_cond_br15" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer504.out0: i1, cond_valid: %handshake_buffer504.out0_valid: i1, data: %handshake_buffer441.out0: i64, data_valid: %handshake_buffer441.out0_valid: i1, outTrue_ready: %handshake_buffer518.in0_ready: i1, outFalse_ready: %handshake_sink14.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer518.in0_ready, %handshake_buffer518.out0, %handshake_buffer518.out0_valid = hw.instance "handshake_buffer518" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br15.outTrue: i64, in0_valid: %handshake_cond_br15.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux12.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink14.in0_ready = hw.instance "handshake_sink14" @handshake_sink_in_ui64(in0: %handshake_cond_br15.outFalse: i64, in0_valid: %handshake_cond_br15.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br16.cond_ready, %handshake_cond_br16.data_ready, %handshake_cond_br16.outTrue, %handshake_cond_br16.outTrue_valid, %handshake_cond_br16.outFalse, %handshake_cond_br16.outFalse_valid = hw.instance "handshake_cond_br16" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer505.out0: i1, cond_valid: %handshake_buffer505.out0_valid: i1, data: %handshake_buffer444.out0: i64, data_valid: %handshake_buffer444.out0_valid: i1, outTrue_ready: %handshake_buffer519.in0_ready: i1, outFalse_ready: %handshake_sink15.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer519.in0_ready, %handshake_buffer519.out0, %handshake_buffer519.out0_valid = hw.instance "handshake_buffer519" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br16.outTrue: i64, in0_valid: %handshake_cond_br16.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux13.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink15.in0_ready = hw.instance "handshake_sink15" @handshake_sink_in_ui64(in0: %handshake_cond_br16.outFalse: i64, in0_valid: %handshake_cond_br16.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br17.cond_ready, %handshake_cond_br17.data_ready, %handshake_cond_br17.outTrue, %handshake_cond_br17.outTrue_valid, %handshake_cond_br17.outFalse, %handshake_cond_br17.outFalse_valid = hw.instance "handshake_cond_br17" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer506.out0: i1, cond_valid: %handshake_buffer506.out0_valid: i1, data: %handshake_buffer456.out0: i64, data_valid: %handshake_buffer456.out0_valid: i1, outTrue_ready: %handshake_buffer521.in0_ready: i1, outFalse_ready: %handshake_buffer520.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer520.in0_ready, %handshake_buffer520.out0, %handshake_buffer520.out0_valid = hw.instance "handshake_buffer520" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br17.outFalse: i64, in0_valid: %handshake_cond_br17.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %out0_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_buffer521.in0_ready, %handshake_buffer521.out0, %handshake_buffer521.out0_valid = hw.instance "handshake_buffer521" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br17.outTrue: i64, in0_valid: %handshake_cond_br17.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux5.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_cond_br18.cond_ready, %handshake_cond_br18.data_ready, %handshake_cond_br18.outTrue, %handshake_cond_br18.outTrue_valid, %handshake_cond_br18.outFalse, %handshake_cond_br18.outFalse_valid = hw.instance "handshake_cond_br18" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer507.out0: i1, cond_valid: %handshake_buffer507.out0_valid: i1, data: %handshake_buffer459.out0: i64, data_valid: %handshake_buffer459.out0_valid: i1, outTrue_ready: %handshake_buffer522.in0_ready: i1, outFalse_ready: %handshake_sink16.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer522.in0_ready, %handshake_buffer522.out0, %handshake_buffer522.out0_valid = hw.instance "handshake_buffer522" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br18.outTrue: i64, in0_valid: %handshake_cond_br18.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux4.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink16.in0_ready = hw.instance "handshake_sink16" @handshake_sink_in_ui64(in0: %handshake_cond_br18.outFalse: i64, in0_valid: %handshake_cond_br18.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br19.cond_ready, %handshake_cond_br19.data_ready, %handshake_cond_br19.outTrue, %handshake_cond_br19.outTrue_valid, %handshake_cond_br19.outFalse, %handshake_cond_br19.outFalse_valid = hw.instance "handshake_cond_br19" @handshake_cond_br_in_ui1_ui64_out_ui64_ui64(cond: %handshake_buffer508.out0: i1, cond_valid: %handshake_buffer508.out0_valid: i1, data: %handshake_buffer467.out0: i64, data_valid: %handshake_buffer467.out0_valid: i1, outTrue_ready: %handshake_buffer523.in0_ready: i1, outFalse_ready: %handshake_sink17.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i64, outTrue_valid: i1, outFalse: i64, outFalse_valid: i1)
    %handshake_buffer523.in0_ready, %handshake_buffer523.out0, %handshake_buffer523.out0_valid = hw.instance "handshake_buffer523" @handshake_buffer_in_ui64_out_ui64_2slots_seq(in0: %handshake_cond_br19.outTrue: i64, in0_valid: %handshake_cond_br19.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux3.in1_ready: i1) -> (in0_ready: i1, out0: i64, out0_valid: i1)
    %handshake_sink17.in0_ready = hw.instance "handshake_sink17" @handshake_sink_in_ui64(in0: %handshake_cond_br19.outFalse: i64, in0_valid: %handshake_cond_br19.outFalse_valid: i1) -> (in0_ready: i1)
    %handshake_cond_br20.cond_ready, %handshake_cond_br20.data_ready, %handshake_cond_br20.outTrue, %handshake_cond_br20.outTrue_valid, %handshake_cond_br20.outFalse, %handshake_cond_br20.outFalse_valid = hw.instance "handshake_cond_br20" @handshake_cond_br_in_ui1_2ins_2outs_ctrl(cond: %handshake_buffer509.out0: i1, cond_valid: %handshake_buffer509.out0_valid: i1, data: %handshake_buffer491.out0: i0, data_valid: %handshake_buffer491.out0_valid: i1, outTrue_ready: %handshake_buffer525.in0_ready: i1, outFalse_ready: %handshake_buffer524.in0_ready: i1) -> (cond_ready: i1, data_ready: i1, outTrue: i0, outTrue_valid: i1, outFalse: i0, outFalse_valid: i1)
    %handshake_buffer524.in0_ready, %handshake_buffer524.out0, %handshake_buffer524.out0_valid = hw.instance "handshake_buffer524" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_cond_br20.outFalse: i0, in0_valid: %handshake_cond_br20.outFalse_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %out1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    %handshake_buffer525.in0_ready, %handshake_buffer525.out0, %handshake_buffer525.out0_valid = hw.instance "handshake_buffer525" @handshake_buffer_2slots_seq_1ins_1outs_ctrl(in0: %handshake_cond_br20.outTrue: i0, in0_valid: %handshake_cond_br20.outTrue_valid: i1, clock: %clock: !seq.clock, reset: %reset: i1, out0_ready: %handshake_mux0.in1_ready: i1) -> (in0_ready: i1, out0: i0, out0_valid: i1)
    hw.output %handshake_buffer2.in0_ready, %handshake_buffer1.in0_ready, %handshake_buffer0.in0_ready, %handshake_buffer520.out0, %handshake_buffer520.out0_valid, %handshake_buffer524.out0, %handshake_buffer524.out0_valid : i1, i1, i1, i64, i1, i0, i1
  }
}
