TOP_MODULE = cordic_int
SV_DIR = src
CPP_TB = sim_main.cpp
OBJ_DIR = obj_dir
EXE = $(OBJ_DIR)/V$(TOP_MODULE)

VERILATOR_FLAGS = \
    --cc \
    -f $(SV_DIR)/filelist.f \
    --exe $(CPP_TB) \
    -I$(SV_DIR) \
    --build \
    --top-module $(TOP_MODULE) \
    --Wno-fatal \
    --trace


NUM_CORES = 32 # Change this to the number of cores you want to use

.PHONY: build clean run

build:
	verilator -j $(NUM_CORES) $(VERILATOR_FLAGS)
	# $(MAKE) -C $(OBJ_DIR) -j $(NUM_CORES)

run: build
	$(EXE)

clean:
	rm -rf $(OBJ_DIR) simv


