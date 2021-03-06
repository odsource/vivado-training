// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Sep 16 00:11:52 2017
// Host        : Wimucs running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/gpio_adapter_design/gpio_adapter_design.srcs/sources_1/bd/gpio_adapter_design/ip/gpio_adapter_design_gpio_adapter_0_18/gpio_adapter_design_gpio_adapter_0_18_stub.v
// Design      : gpio_adapter_design_gpio_adapter_0_18
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gpio_adapter,Vivado 2017.2" *)
module gpio_adapter_design_gpio_adapter_0_18(gpio_in_i, gpio_in_o, gpio_in_t, gpio_out_i, 
  gpio_out_o, gpio_out_t)
/* synthesis syn_black_box black_box_pad_pin="gpio_in_i[3:0],gpio_in_o[3:0],gpio_in_t[3:0],gpio_out_i[3:0],gpio_out_o[3:0],gpio_out_t[3:0]" */;
  output [3:0]gpio_in_i;
  input [3:0]gpio_in_o;
  input [3:0]gpio_in_t;
  input [3:0]gpio_out_i;
  output [3:0]gpio_out_o;
  output [3:0]gpio_out_t;
endmodule
