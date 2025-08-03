#!/bin/bash
echo "Copying over Verilog source code"
cp ../../verilog_designs/convolution/full_opt/conv2d_im2col.sv ./full_opt/src/conv2d_im2col.sv
cp ../../verilog_designs/convolution/no_opt/conv2d_im2col.sv ./no_opt/src/conv2d_im2col.sv
