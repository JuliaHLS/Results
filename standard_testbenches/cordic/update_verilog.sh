#!/bin/bash
echo "Copying over Verilog source code"
cp ../../verilog_designs/cordic/no_opt/cordic.sv ./no_opt/coordic/src/cordic.sv
cp ../../verilog_designs/cordic/full_opt/cordic.sv ./full_opt/coordic/src/cordic.sv
