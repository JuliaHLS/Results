TOP_MODULE = top
SV_DIR = src
CPP_TB = sim_main.cpp
OBJ_DIR = obj_dir
EXE = $(OBJ_DIR)/V$(TOP_MODULE)

VERILATOR_FLAGS = --cc --exe \
	--build \
	-f $(SV_DIR)/filelist.f \
	$(CPP_TB) \
	-I$(SV_DIR) \
	--top-module $(TOP_MODULE) \
	--Wno-fatal \
	--trace \
	--threads 4


NUM_CORES = 32 # Change this to the number of cores you want to use

.PHONY: build clean run

build:
	verilator -j $(NUM_CORES) $(VERILATOR_FLAGS)
	# $(MAKE) -C $(OBJ_DIR) -j $(NUM_CORES)

run: build
	$(EXE)

clean:
	rm -rf $(OBJ_DIR) simv


