// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun 25 01:40:58 2021
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
  (* C_DEFAULT_DATA = "5F" *) 
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
C2u43lgYQHWzf06wEZr62scx5ko=
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
