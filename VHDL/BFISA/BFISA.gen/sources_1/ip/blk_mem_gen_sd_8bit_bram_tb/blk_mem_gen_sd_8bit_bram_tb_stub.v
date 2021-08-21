// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Aug 21 15:36:34 2021
// Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Jim/Desktop/Code/Brainfuck/VHDL/BFISA/BFISA.gen/sources_1/ip/blk_mem_gen_sd_8bit_bram_tb/blk_mem_gen_sd_8bit_bram_tb_stub.v
// Design      : blk_mem_gen_sd_8bit_bram_tb
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module blk_mem_gen_sd_8bit_bram_tb(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[12:0],dina[7:0],douta[7:0]" */;
  input clka;
  input [0:0]wea;
  input [12:0]addra;
  input [7:0]dina;
  output [7:0]douta;
endmodule
