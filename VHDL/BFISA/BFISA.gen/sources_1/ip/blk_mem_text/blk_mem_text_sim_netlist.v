// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jun 24 16:14:45 2021
// Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_text -prefix
//               blk_mem_text_ blk_mem_text_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47216)
`pragma protect data_block
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
LR9mTKLfP39E7P3ZdcPkeQya+T8=
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
