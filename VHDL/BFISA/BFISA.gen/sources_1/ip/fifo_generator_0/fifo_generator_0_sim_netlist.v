// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jun 21 03:09:25 2021
// Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jim/Desktop/Code/Brainfuck/VHDL/BFISA/BFISA.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_generator_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_generator_0_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "3" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[2] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [0]),
        .Q(\dest_graysync_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [1]),
        .Q(\dest_graysync_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [2]),
        .Q(\dest_graysync_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [3]),
        .Q(\dest_graysync_ff[2] [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[2] [0]),
        .I1(\dest_graysync_ff[2] [2]),
        .I2(\dest_graysync_ff[2] [3]),
        .I3(\dest_graysync_ff[2] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[2] [1]),
        .I1(\dest_graysync_ff[2] [3]),
        .I2(\dest_graysync_ff[2] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[2] [2]),
        .I1(\dest_graysync_ff[2] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[2] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 69712)
`pragma protect data_block
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
EQ==
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
