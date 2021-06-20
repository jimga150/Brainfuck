// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jun 20 00:28:09 2021
// Host        : Geb running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jim/Desktop/Code/BrainFuck/VHDL/BFISA/BFISA.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 83000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
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
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "10" *) 
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
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1015" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1014" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "83" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "50" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
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
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53472)
`pragma protect data_block
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
N85gDEQN
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
