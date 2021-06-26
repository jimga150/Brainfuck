// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun 25 23:58:55 2021
// Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Jim/Desktop/Code/Brainfuck/VHDL/BFISA/BFISA.gen/sources_1/ip/clk_wiz_1/clk_wiz_1_stub.v
// Design      : clk_wiz_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_1(clk_logic, clk_vga, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_logic,clk_vga,reset,locked,clk_in1" */;
  output clk_logic;
  output clk_vga;
  input reset;
  output locked;
  input clk_in1;
endmodule
