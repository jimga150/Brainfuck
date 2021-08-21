// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Aug 21 15:36:34 2021
// Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jim/Desktop/Code/Brainfuck/VHDL/BFISA/BFISA.gen/sources_1/ip/blk_mem_gen_sd_8bit_bram_tb/blk_mem_gen_sd_8bit_bram_tb_sim_netlist.v
// Design      : blk_mem_gen_sd_8bit_bram_tb
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_sd_8bit_bram_tb,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_sd_8bit_bram_tb
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.20835 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_sd_8bit_bram_tb.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_sd_8bit_bram_tb_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46800)
`pragma protect data_block
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
v5Pj
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
