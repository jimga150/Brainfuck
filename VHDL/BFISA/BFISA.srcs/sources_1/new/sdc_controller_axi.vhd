----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/04/2021 10:41:10 PM
-- Design Name: 
-- Module Name: sdc_controller_axi - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sdc_controller_axi is
    port(
        clk, rst : in std_logic;
        
        error, axi_ready : out std_logic;
        
        sd_clk : out std_logic;
        sd_cmd : inout std_logic;
        sd_dat : inout std_logic_vector(3 downto 0)
    );
end sdc_controller_axi;

architecture Structural of sdc_controller_axi is

    --have to make a component like a plebian because VHDL 
    --doesnt know how to infer types from verilog modules apparently
    component sdc_controller is
        port(
            wb_clk_i : in std_logic;
            wb_rst_i : in std_logic;
            wb_dat_i : in std_logic_vector(31 downto 0);
            wb_dat_o : out std_logic_vector(31 downto 0);
            wb_adr_i : in std_logic_vector(7 downto 0);
            wb_sel_i : in std_logic_vector(3 downto 0);
            wb_we_i : in std_logic;
            wb_cyc_i : in std_logic;
            wb_stb_i : in std_logic;
            wb_ack_o : out std_logic;
            m_wb_adr_o : out std_logic_vector(31 downto 0);
            m_wb_sel_o : out std_logic_vector(3 downto 0);
            m_wb_we_o : out std_logic;
            m_wb_dat_o : out std_logic_vector(31 downto 0);
            m_wb_dat_i : in std_logic_vector(31 downto 0);
            m_wb_cyc_o : out std_logic;
            m_wb_stb_o : out std_logic;
            m_wb_ack_i : in std_logic;
            m_wb_cti_o : out std_logic_vector(2 downto 0);
            m_wb_bte_o : out std_logic_vector(1 downto 0);
            sd_cmd_dat_i : in std_logic;
            sd_cmd_out_o : out std_logic;
            sd_cmd_oe_o : out std_logic;
            card_detect : in std_logic;
            sd_dat_dat_i : in std_logic_vector(3 downto 0);
            sd_dat_out_o : out std_logic_vector(3 downto 0);
            sd_dat_oe_o : out std_logic;
            sd_clk_o_pad : out std_logic
        );
    end component;

    --wishbone slave signals 
    --(between the axi to wishbone converter 
    --and the wishbone slave interface on the sdc controller)
    signal wb_s_dat_axi_wb, wb_s_dat_wb_axi : std_logic_vector(31 downto 0);
    signal wb_s_addr_axi_wb : std_logic_vector(7 downto 0);
    signal wb_s_cyc_stb_axi_wb, wb_s_we_axi_wb, wb_s_ack_wb_axi : std_logic;
    
    --sd signals
    signal sd_cmd_out, sd_cmd_in, sd_cmd_oe : std_logic;
    signal sd_dat_oe : std_logic;
    signal sd_dat_out, sd_dat_in : std_logic_vector(3 downto 0);

begin

    sdc_cont_wb: sdc_controller
    port map(
        wb_clk_i => clk,
        wb_rst_i => rst,
        wb_dat_i => wb_s_dat_axi_wb,
        wb_dat_o => wb_s_dat_wb_axi,
        wb_adr_i => wb_s_addr_axi_wb,
        wb_sel_i => (others => '0'),
        wb_we_i => wb_s_we_axi_wb,
        wb_cyc_i => wb_s_cyc_stb_axi_wb,
        wb_stb_i => wb_s_cyc_stb_axi_wb,
        wb_ack_o => wb_s_ack_wb_axi,
        m_wb_adr_o => open,
        m_wb_sel_o => open,
        m_wb_we_o => open,
        m_wb_dat_o => open,
        m_wb_dat_i => (others => '0'),
        m_wb_cyc_o => open,
        m_wb_stb_o => open,
        m_wb_ack_i => '0',
        m_wb_cti_o => open,
        m_wb_bte_o => open,
        sd_cmd_dat_i => sd_cmd_in,
        sd_cmd_out_o => sd_cmd_out,
        sd_cmd_oe_o => sd_cmd_oe,
        card_detect => '1',
        sd_dat_dat_i => sd_dat_in,
        sd_dat_out_o => sd_dat_out,
        sd_dat_oe_o => sd_dat_oe,
        sd_clk_o_pad => sd_clk
    );
    
    sd_cmd <= sd_cmd_out when sd_cmd_oe = '1' else 'Z';
    sd_cmd_in <= sd_cmd;
    
    sd_dat <= sd_dat_out when sd_dat_oe = '1' else (others => 'Z');
    sd_dat_in <= sd_dat;
    
    axi_convert: entity work.sdc_cont_axi_converter
    port map(
        clk => clk,
        rst => rst,
        error => error,
        axi_ready => axi_ready,
        wb_data_to_wb => wb_s_dat_axi_wb,
        wb_data_from_wb => wb_s_dat_wb_axi,
        wb_addr => wb_s_addr_axi_wb,
        wb_cyc_stb => wb_s_cyc_stb_axi_wb,
        wb_wr_en => wb_s_we_axi_wb,
        wb_ack => wb_s_ack_wb_axi
    );

end Structural;
