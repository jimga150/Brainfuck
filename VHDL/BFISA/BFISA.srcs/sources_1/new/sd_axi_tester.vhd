----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/23/2021 06:23:02 PM
-- Design Name: 
-- Module Name: sd_axi_tester - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sd_axi_tester is
    port(
        clk, rst : in std_logic;
        sd_ready, sd_err : out std_logic;
        start_btn, continue_btn : in std_logic;
        byte_disp : out std_logic_vector(7 downto 0);
        
        sd_clk : out std_logic;
        sd_cmd : inout std_logic;
        sd_dat : inout std_logic_vector(3 downto 0)
    );
end sd_axi_tester;

architecture Structural of sd_axi_tester is

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


    signal start_btn_dbcd, cont_btn_dbcd, rstn, sd_ready_sig : std_logic;
    
    signal axi_ar_ready_sd : std_logic;
	signal axi_rd_data_sd : std_logic_vector(31 downto 0);
	signal axi_rd_resp_sd : std_logic_vector(1 downto 0);
	signal axi_rd_valid_sd : std_logic;
	signal axi_aw_ready_sd : std_logic;
	signal axi_wd_ready_sd : std_logic;
	signal axi_wr_resp_sd : std_logic_vector(1 downto 0);
	signal axi_wr_valid_sd : std_logic;
	signal axi_ar_addr_sd : std_logic_vector(31 downto 0);
	signal axi_ar_prot_sd : std_logic_vector(2 downto 0);
	signal axi_ar_valid_sd : std_logic;
	signal axi_rd_ready_sd : std_logic;
	signal axi_aw_addr_sd : std_logic_vector(31 downto 0);
	signal axi_aw_prot_sd : std_logic_vector(2 downto 0);
	signal axi_aw_valid_sd : std_logic;
	signal axi_wd_data_sd : std_logic_vector(31 downto 0);
	signal axi_wd_strb_sd : std_logic_vector(3 downto 0);
	signal axi_wd_valid_sd : std_logic;
	signal axi_wr_ready_sd : std_logic;
	
	signal axi_ar_ready_tester : std_logic;
	signal axi_rd_data_tester : std_logic_vector(31 downto 0);
	signal axi_rd_resp_tester : std_logic_vector(1 downto 0);
	signal axi_rd_valid_tester : std_logic;
	signal axi_ar_addr_tester : std_logic_vector(31 downto 0);
	signal axi_ar_prot_tester : std_logic_vector(2 downto 0);
	signal axi_ar_valid_tester : std_logic;
	signal axi_rd_ready_tester : std_logic;

begin

    rstn <= not rst;
    
    strt_dbcr: entity work.debounce_pulse_gen
    port map(
        clk => clk,
        rst => rst,
        btn_in => start_btn,
        count => open,
        pulse => start_btn_dbcd,
        dbcd_btn => open
    );
    
    cont_dbcr: entity work.debounce_pulse_gen
    port map(
        clk => clk,
        rst => rst,
        btn_in => continue_btn,
        count => open,
        pulse => cont_btn_dbcd,
        dbcd_btn => open
    );

    sd_axi_cont: entity work.sdc_controller_axi
    port map(
        clk => clk,
        rst => rst,
        error => sd_err,
        sd_ready => sd_ready_sig,
        write_valid => '0',
        read_valid => start_btn_dbcd,
        buffer_addr => (others => '0'),
        sd_block_addr => (others => '0'),
        sd_clk => sd_clk,
        sd_cmd => sd_cmd,
        sd_dat => sd_dat,
        axi_ar_addr => axi_ar_addr_sd,
        axi_ar_prot => axi_ar_prot_sd,
        axi_ar_valid => axi_ar_valid_sd,
        axi_ar_ready => axi_ar_ready_sd,
        axi_rd_data => axi_rd_data_sd,
        axi_rd_resp => axi_rd_resp_sd,
        axi_rd_valid => axi_rd_valid_sd,
        axi_rd_ready => axi_rd_ready_sd,
        axi_aw_addr => axi_aw_addr_sd,
        axi_aw_prot => axi_aw_prot_sd,
        axi_aw_valid => axi_aw_valid_sd,
        axi_aw_ready => axi_aw_ready_sd,
        axi_wd_data => axi_wd_data_sd,
        axi_wd_strb => axi_wd_strb_sd,
        axi_wd_valid => axi_wd_valid_sd,
        axi_wd_ready => axi_wd_ready_sd,
        axi_wr_resp => axi_wr_resp_sd,
        axi_wr_valid => axi_wr_valid_sd,
        axi_wr_ready => axi_wr_ready_sd
    );
    
    sd_buffer_inst: sd_buffer
    port map(
        reset_0 => rstn,
        clk_100MHz => clk,
        
        S_AXI_0_araddr => axi_ar_addr_sd(12 downto 0),
        S_AXI_0_arprot => axi_ar_prot_sd,
        S_AXI_0_arready => axi_ar_ready_sd,
        S_AXI_0_arvalid => axi_ar_valid_sd,
        S_AXI_0_awaddr => axi_aw_addr_sd(12 downto 0),
        S_AXI_0_awprot => axi_aw_prot_sd,
        S_AXI_0_awready => axi_aw_ready_sd,
        S_AXI_0_awvalid => axi_aw_valid_sd,
        S_AXI_0_bready => axi_wr_ready_sd,
        S_AXI_0_bresp => axi_wr_resp_sd,
        S_AXI_0_bvalid => axi_wr_valid_sd,
        S_AXI_0_rdata => axi_rd_data_sd,
        S_AXI_0_rready => axi_rd_ready_sd,
        S_AXI_0_rresp => axi_rd_resp_sd,
        S_AXI_0_rvalid => axi_rd_valid_sd,
        S_AXI_0_wdata => axi_wd_data_sd,
        S_AXI_0_wready => axi_wd_ready_sd,
        S_AXI_0_wstrb => axi_wd_strb_sd,
        S_AXI_0_wvalid => axi_wd_valid_sd,
        
        S_AXI_1_araddr => axi_ar_addr_tester(12 downto 0),
        S_AXI_1_arprot => axi_ar_prot_tester,
        S_AXI_1_arready => axi_ar_ready_tester,
        S_AXI_1_arvalid => axi_ar_valid_tester,
        S_AXI_1_awaddr => (others => '0'),
        S_AXI_1_awprot => (others => '0'),
        S_AXI_1_awready => open,
        S_AXI_1_awvalid => '0',
        S_AXI_1_bready => '0',
        S_AXI_1_bresp => open,
        S_AXI_1_bvalid => open,
        S_AXI_1_rdata => axi_rd_data_tester,
        S_AXI_1_rready => axi_rd_ready_tester,
        S_AXI_1_rresp => axi_rd_resp_tester,
        S_AXI_1_rvalid => axi_rd_valid_tester,
        S_AXI_1_wdata => (others => '0'),
        S_AXI_1_wready => open,
        S_AXI_1_wstrb => (others => '0'),
        S_AXI_1_wvalid => '0'
    );
    
    test_sm : entity work.sd_axi_tester_sm
    port map(
        clk => clk,
        rst => rst,
        start => start_btn_dbcd,
        continue => cont_btn_dbcd,
        byte_out => byte_disp,
        sd_ready => sd_ready_sig,
        axi_ar_addr => axi_ar_addr_tester,
        axi_ar_prot => axi_ar_prot_tester,
        axi_ar_valid => axi_ar_valid_tester,
        axi_ar_ready => axi_ar_ready_tester,
        axi_rd_data => axi_rd_data_tester,
        axi_rd_resp => axi_rd_resp_tester,
        axi_rd_valid => axi_rd_valid_tester,
        axi_rd_ready => axi_rd_ready_tester
    );
    
    sd_ready <= sd_ready_sig;

end Structural;
