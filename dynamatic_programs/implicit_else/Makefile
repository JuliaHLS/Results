TOP_MODULE = implicit_else
SV_DIR     = src
CPP_TB     = sim_main.cpp
OBJ_DIR    = obj_dir
EXE        = $(OBJ_DIR)/V$(TOP_MODULE)

# List all your generated Verilog sources here:
SV_SRCS = \
  $(SV_DIR)/addi.v \
  $(SV_DIR)/cond_br_dataless.v \
  $(SV_DIR)/cond_br.v \
  $(SV_DIR)/control_merge_dataless.v \
  $(SV_DIR)/eager_fork_register_block.v \
  $(SV_DIR)/extsi.v \
  $(SV_DIR)/fork_dataless.v \
  $(SV_DIR)/fork_type.v \
  $(SV_DIR)/handshake_cmpi_0.v \
  $(SV_DIR)/handshake_cmpi_1.v \
  $(SV_DIR)/handshake_constant_0.v \
  $(SV_DIR)/implicit_else.v \
  $(SV_DIR)/implicit_else_wrapper.v \
  $(SV_DIR)/join_type.v \
  $(SV_DIR)/logic.v \
  $(SV_DIR)/merge_dataless.v \
  $(SV_DIR)/mux.v \
  $(SV_DIR)/oehb_dataless.v \
  $(SV_DIR)/oehb.v \
  $(SV_DIR)/selector.v \
  $(SV_DIR)/sink_dataless.v \
  $(SV_DIR)/source.v \
  $(SV_DIR)/subi.v \
  $(SV_DIR)/tehb_dataless.v \
  $(SV_DIR)/tehb.v

VERILATOR_FLAGS = \
    --cc \
    $(SV_SRCS) \
    --exe $(CPP_TB) \
    -I$(SV_DIR) \
    --build \
    --top-module $(TOP_MODULE) \
    --Wno-fatal \
    --trace

NUM_CORES = 32 # number of parallel jobs

.PHONY: build clean run

build:
	verilator -j $(NUM_CORES) $(VERILATOR_FLAGS)

run: build
	$(EXE)

clean:
	rm -rf $(OBJ_DIR) simv

