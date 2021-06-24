// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jun 24 16:14:46 2021
// Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jim/Desktop/Code/Brainfuck/VHDL/BFISA/BFISA.gen/sources_1/ip/blk_mem_text/blk_mem_text_sim_netlist.v
// Design      : blk_mem_text
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_text,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_text
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
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
  (* C_COMMON_CLK = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.7179 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_text.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
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
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_text_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47536)
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
