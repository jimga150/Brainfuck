// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jun 22 00:46:20 2021
// Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dist_mem_rom -prefix
//               dist_mem_rom_ dist_mem_rom_sim_netlist.v
// Design      : dist_mem_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_rom
   (a,
    spo);
  input [13:0]a;
  output [16:0]spo;

  wire [13:0]a;
  wire [16:0]spo;
  wire [16:0]NLW_U0_dpo_UNCONNECTED;
  wire [16:0]NLW_U0_qdpo_UNCONNECTED;
  wire [16:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "17" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_rom_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[16:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[16:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[16:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12976)
`pragma protect data_block
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
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
