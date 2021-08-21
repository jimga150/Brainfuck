----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2021 01:21:18
-- Design Name: sdc_controller_axi_tb
-- Module Name: sdc_controller_axi_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Created with VHDL Test Bench Template Generator
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sdc_controller_axi_tb is
end sdc_controller_axi_tb;

architecture Behavioral of sdc_controller_axi_tb is

    component sdModel is
        port(
            sdClk : in std_logic;
            cmd : inout std_logic;
            dat : inout std_logic_vector(3 downto 0)
        );
    end component;
    
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
	
	--Clocks
	signal clk : std_logic := '0';
	
	--Resets
	signal rst : std_logic := '1';
	signal rstn : std_logic;
	
	--General inputs
	signal axi_ar_ready : std_logic;
	signal axi_rd_data : std_logic_vector(31 downto 0);
	signal axi_rd_resp : std_logic_vector(1 downto 0);
	signal axi_rd_valid : std_logic;
	signal axi_aw_ready : std_logic;
	signal axi_wd_ready : std_logic;
	signal axi_wr_resp : std_logic_vector(1 downto 0);
	signal axi_wr_valid : std_logic;
	
	signal write_valid, read_valid : std_logic := '0';
    signal buffer_addr, sd_block_addr : std_logic_vector(31 downto 0) := (others => '0');
	
	--In-Outs
	signal sd_cmd : std_logic := '0';
	signal sd_dat : std_logic_vector(3 downto 0) := (others => '0');
	
	--Outputs
	signal error : std_logic;
	signal sd_ready : std_logic;
	signal sd_clk : std_logic;
	signal axi_ar_addr : std_logic_vector(31 downto 0);
	signal axi_ar_prot : std_logic_vector(2 downto 0);
	signal axi_ar_valid : std_logic;
	signal axi_rd_ready : std_logic;
	signal axi_aw_addr : std_logic_vector(31 downto 0);
	signal axi_aw_prot : std_logic_vector(2 downto 0);
	signal axi_aw_valid : std_logic;
	signal axi_wd_data : std_logic_vector(31 downto 0);
	signal axi_wd_strb : std_logic_vector(3 downto 0);
	signal axi_wd_valid : std_logic;
	signal axi_wr_ready : std_logic;
	
	--Clock Periods
	constant clk_period : time := 20 ns;
	
begin

    rstn <= not rst;
	
	UUT: entity work.sdc_controller_axi
	port map(
		clk => clk,
		rst => rst,
		error => error,
		sd_ready => sd_ready,
        write_valid => write_valid,
        read_valid => read_valid,
        buffer_addr => buffer_addr,
        sd_block_addr => sd_block_addr,
		sd_clk => sd_clk,
		sd_cmd => sd_cmd,
		sd_dat => sd_dat,
		axi_ar_addr => axi_ar_addr,
		axi_ar_prot => axi_ar_prot,
		axi_ar_valid => axi_ar_valid,
		axi_ar_ready => axi_ar_ready,
		axi_rd_data => axi_rd_data,
		axi_rd_resp => axi_rd_resp,
		axi_rd_valid => axi_rd_valid,
		axi_rd_ready => axi_rd_ready,
		axi_aw_addr => axi_aw_addr,
		axi_aw_prot => axi_aw_prot,
		axi_aw_valid => axi_aw_valid,
		axi_aw_ready => axi_aw_ready,
		axi_wd_data => axi_wd_data,
		axi_wd_strb => axi_wd_strb,
		axi_wd_valid => axi_wd_valid,
		axi_wd_ready => axi_wd_ready,
		axi_wr_resp => axi_wr_resp,
		axi_wr_valid => axi_wr_valid,
		axi_wr_ready => axi_wr_ready
	);
	
	sd_buffer_inst: sd_buffer
    port map(
        reset_0 => rstn,
        clk_100MHz => clk,
        S_AXI_0_araddr => axi_ar_addr(12 downto 0),
        S_AXI_0_arprot => axi_ar_prot,
        S_AXI_0_arready => axi_ar_ready,
        S_AXI_0_arvalid => axi_ar_valid,
        S_AXI_0_awaddr => axi_aw_addr(12 downto 0),
        S_AXI_0_awprot => axi_aw_prot,
        S_AXI_0_awready => axi_aw_ready,
        S_AXI_0_awvalid => axi_aw_valid,
        S_AXI_0_bready => axi_wr_ready,
        S_AXI_0_bresp => axi_wr_resp,
        S_AXI_0_bvalid => axi_wr_valid,
        S_AXI_0_rdata => axi_rd_data,
        S_AXI_0_rready => axi_rd_ready,
        S_AXI_0_rresp => axi_rd_resp,
        S_AXI_0_rvalid => axi_rd_valid,
        S_AXI_0_wdata => axi_wd_data,
        S_AXI_0_wready => axi_wd_ready,
        S_AXI_0_wstrb => axi_wd_strb,
        S_AXI_0_wvalid => axi_wd_valid,
        S_AXI_1_araddr => (others => '0'),
        S_AXI_1_arprot => (others => '0'),
        S_AXI_1_arready => open,
        S_AXI_1_arvalid => '0',
        S_AXI_1_awaddr => (others => '0'),
        S_AXI_1_awprot => (others => '0'),
        S_AXI_1_awready => open,
        S_AXI_1_awvalid => '0',
        S_AXI_1_bready => '0',
        S_AXI_1_bresp => open,
        S_AXI_1_bvalid => open,
        S_AXI_1_rdata => open,
        S_AXI_1_rready => '0',
        S_AXI_1_rresp => open,
        S_AXI_1_rvalid => open,
        S_AXI_1_wdata => (others => '0'),
        S_AXI_1_wready => open,
        S_AXI_1_wstrb => (others => '0'),
        S_AXI_1_wvalid => '0'
    );
	
	sd_model : sdModel
	port map(
	   sdClk => sd_clk,
	   cmd => sd_cmd,
	   dat => sd_dat
	);
	
	--Clock Drivers
	clk <= not clk after clk_period/2;
	
	stim_proc: process is begin
		
		wait for clk_period;
		
		rst <= '0';
		
		wait for clk_period;
		
		--Insert stimuli here
		wait until sd_ready = '1' or error = '1' for 10 ms;
		wait for clk_period/2;
		assert sd_ready = '1' report "Init error" severity failure;
		wait for clk_period*3;
		
		read_valid <= '1';
		wait for clk_period;
		read_valid <= '0';
		
		wait for 3ms;
		assert false report "Ending early..." severity failure;
		
		wait until sd_ready = '1' or error = '1' for 10 ms;
		wait for clk_period/2;
		assert sd_ready = '1' report "Read error" severity failure;
		wait for clk_period*3;
		
		write_valid <= '1';
		wait for clk_period;
		write_valid <= '0';
		
		wait until sd_ready = '1' or error = '1' for 10 ms;
		wait for clk_period/2;
		assert sd_ready = '1' report "Write error" severity failure;
		wait for clk_period*3;
		
		assert false report "End Simulation" severity failure;
		
		-- Not strictly necessary, but prevents process from looping 
		-- if the above assert statement is removed
		wait;
		
	end process;

end Behavioral;
