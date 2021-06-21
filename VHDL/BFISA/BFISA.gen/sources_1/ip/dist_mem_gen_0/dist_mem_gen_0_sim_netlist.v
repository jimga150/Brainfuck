// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun 18 20:21:54 2021
// Host        : Geb running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jim/Desktop/Code/BrainFuck/VHDL/BFISA/BFISA.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    d,
    clk,
    we,
    spo);
  input [7:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;

  wire [7:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]spo;
  wire we;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9008)
`pragma protect data_block
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
8U8=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
