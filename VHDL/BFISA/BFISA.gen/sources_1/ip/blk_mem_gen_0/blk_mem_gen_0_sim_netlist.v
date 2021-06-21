// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun 18 20:50:57 2021
// Host        : Geb running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jim/Desktop/Code/BrainFuck/VHDL/BFISA/BFISA.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20880)
`pragma protect data_block
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
Tft4QB5LC83wO32ounjxBTMJ
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
