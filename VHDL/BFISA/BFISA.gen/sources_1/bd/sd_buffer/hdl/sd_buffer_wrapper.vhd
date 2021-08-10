--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Mon Aug  9 23:01:12 2021
--Host        : DESKTOP-F1LS71S running 64-bit major release  (build 9200)
--Command     : generate_target sd_buffer_wrapper.bd
--Design      : sd_buffer_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sd_buffer_wrapper is
  port (
    S_AXI_0_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_arready : out STD_LOGIC;
    S_AXI_0_arvalid : in STD_LOGIC;
    S_AXI_0_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_awready : out STD_LOGIC;
    S_AXI_0_awvalid : in STD_LOGIC;
    S_AXI_0_bready : in STD_LOGIC;
    S_AXI_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_bvalid : out STD_LOGIC;
    S_AXI_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_rready : in STD_LOGIC;
    S_AXI_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_rvalid : out STD_LOGIC;
    S_AXI_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_wready : out STD_LOGIC;
    S_AXI_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_0_wvalid : in STD_LOGIC;
    S_AXI_1_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_1_arready : out STD_LOGIC;
    S_AXI_1_arvalid : in STD_LOGIC;
    S_AXI_1_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_1_awready : out STD_LOGIC;
    S_AXI_1_awvalid : in STD_LOGIC;
    S_AXI_1_bready : in STD_LOGIC;
    S_AXI_1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_1_bvalid : out STD_LOGIC;
    S_AXI_1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_1_rready : in STD_LOGIC;
    S_AXI_1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_1_rvalid : out STD_LOGIC;
    S_AXI_1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_1_wready : out STD_LOGIC;
    S_AXI_1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_1_wvalid : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
end sd_buffer_wrapper;

architecture STRUCTURE of sd_buffer_wrapper is
  component sd_buffer is
  port (
    reset_0 : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    S_AXI_0_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_arready : out STD_LOGIC;
    S_AXI_0_arvalid : in STD_LOGIC;
    S_AXI_0_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_awready : out STD_LOGIC;
    S_AXI_0_awvalid : in STD_LOGIC;
    S_AXI_0_bready : in STD_LOGIC;
    S_AXI_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_bvalid : out STD_LOGIC;
    S_AXI_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_rready : in STD_LOGIC;
    S_AXI_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_rvalid : out STD_LOGIC;
    S_AXI_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_wready : out STD_LOGIC;
    S_AXI_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_0_wvalid : in STD_LOGIC;
    S_AXI_1_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_1_arready : out STD_LOGIC;
    S_AXI_1_arvalid : in STD_LOGIC;
    S_AXI_1_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    S_AXI_1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_1_awready : out STD_LOGIC;
    S_AXI_1_awvalid : in STD_LOGIC;
    S_AXI_1_bready : in STD_LOGIC;
    S_AXI_1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_1_bvalid : out STD_LOGIC;
    S_AXI_1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_1_rready : in STD_LOGIC;
    S_AXI_1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_1_rvalid : out STD_LOGIC;
    S_AXI_1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_1_wready : out STD_LOGIC;
    S_AXI_1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_1_wvalid : in STD_LOGIC
  );
  end component sd_buffer;
begin
sd_buffer_i: component sd_buffer
     port map (
      S_AXI_0_araddr(12 downto 0) => S_AXI_0_araddr(12 downto 0),
      S_AXI_0_arprot(2 downto 0) => S_AXI_0_arprot(2 downto 0),
      S_AXI_0_arready => S_AXI_0_arready,
      S_AXI_0_arvalid => S_AXI_0_arvalid,
      S_AXI_0_awaddr(12 downto 0) => S_AXI_0_awaddr(12 downto 0),
      S_AXI_0_awprot(2 downto 0) => S_AXI_0_awprot(2 downto 0),
      S_AXI_0_awready => S_AXI_0_awready,
      S_AXI_0_awvalid => S_AXI_0_awvalid,
      S_AXI_0_bready => S_AXI_0_bready,
      S_AXI_0_bresp(1 downto 0) => S_AXI_0_bresp(1 downto 0),
      S_AXI_0_bvalid => S_AXI_0_bvalid,
      S_AXI_0_rdata(31 downto 0) => S_AXI_0_rdata(31 downto 0),
      S_AXI_0_rready => S_AXI_0_rready,
      S_AXI_0_rresp(1 downto 0) => S_AXI_0_rresp(1 downto 0),
      S_AXI_0_rvalid => S_AXI_0_rvalid,
      S_AXI_0_wdata(31 downto 0) => S_AXI_0_wdata(31 downto 0),
      S_AXI_0_wready => S_AXI_0_wready,
      S_AXI_0_wstrb(3 downto 0) => S_AXI_0_wstrb(3 downto 0),
      S_AXI_0_wvalid => S_AXI_0_wvalid,
      S_AXI_1_araddr(12 downto 0) => S_AXI_1_araddr(12 downto 0),
      S_AXI_1_arprot(2 downto 0) => S_AXI_1_arprot(2 downto 0),
      S_AXI_1_arready => S_AXI_1_arready,
      S_AXI_1_arvalid => S_AXI_1_arvalid,
      S_AXI_1_awaddr(12 downto 0) => S_AXI_1_awaddr(12 downto 0),
      S_AXI_1_awprot(2 downto 0) => S_AXI_1_awprot(2 downto 0),
      S_AXI_1_awready => S_AXI_1_awready,
      S_AXI_1_awvalid => S_AXI_1_awvalid,
      S_AXI_1_bready => S_AXI_1_bready,
      S_AXI_1_bresp(1 downto 0) => S_AXI_1_bresp(1 downto 0),
      S_AXI_1_bvalid => S_AXI_1_bvalid,
      S_AXI_1_rdata(31 downto 0) => S_AXI_1_rdata(31 downto 0),
      S_AXI_1_rready => S_AXI_1_rready,
      S_AXI_1_rresp(1 downto 0) => S_AXI_1_rresp(1 downto 0),
      S_AXI_1_rvalid => S_AXI_1_rvalid,
      S_AXI_1_wdata(31 downto 0) => S_AXI_1_wdata(31 downto 0),
      S_AXI_1_wready => S_AXI_1_wready,
      S_AXI_1_wstrb(3 downto 0) => S_AXI_1_wstrb(3 downto 0),
      S_AXI_1_wvalid => S_AXI_1_wvalid,
      clk_100MHz => clk_100MHz,
      reset_0 => reset_0
    );
end STRUCTURE;
