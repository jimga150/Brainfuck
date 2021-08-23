----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/23/2021 12:42:53 PM
-- Design Name: 
-- Module Name: sd_controller_top_tb_vhdl - Behavioral
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

entity sd_controller_top_tb_vhdl is
--  Port ( );
end sd_controller_top_tb_vhdl;

architecture Behavioral of sd_controller_top_tb_vhdl is

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
    
    component sdModel is
        port(
            sdClk : in std_logic;
            cmd : inout std_logic;
            dat : inout std_logic_vector(3 downto 0)
        );
    end component;
    
    component wb_slave_behavioral is
        port(
            CLK_I : in std_logic;
            RST_I : in std_logic;
            ACK_O : out std_logic;
            ADR_I : in std_logic_vector(31 downto 0);
            CYC_I : in std_logic;
            DAT_O : out std_logic_vector(31 downto 0);
            DAT_I : in std_logic_vector(31 downto 0);
            ERR_O : out std_logic;
            RTY_O : out std_logic;
            SEL_I : in std_logic_vector(3 downto 0);
            STB_I : in std_logic;
            WE_I : in std_logic;
            CAB_I : in std_logic
        );
    end component;
    
    constant clk_period : time := 10ns;
    
    --sd signals
    signal sd_cmd_out, sd_cmd_in, sd_cmd_oe, sd_cmd, sd_clk : std_logic;
    signal sd_dat_oe : std_logic;
    signal sd_dat_out, sd_dat_in, sd_dat : std_logic_vector(3 downto 0);
    
    signal clk : std_logic := '0';
    
    signal rst : std_logic := '1';
    
    signal wb_s_we_i, wb_s_cyc_stb_i : std_logic := '0';
    signal wb_s_dat_i : std_logic_vector(31 downto 0) := (others => '0');
    signal wb_s_addr_i : std_logic_vector(7 downto 0) := (others => '0');
    
    signal wb_m_ack : std_logic;
    signal wb_m_dat_i : std_logic_vector(31 downto 0);
    
    signal wb_s_ack_o, wb_m_we, wb_m_cyc, wb_m_strb : std_logic;
    signal wb_s_dat_o, wb_m_dat_o : std_logic_vector(31 downto 0);
    signal wb_m_addr_byte : std_logic_vector(31 downto 0);
    signal wb_m_sel : std_logic_vector(3 downto 0);

begin

    sdc_cont_wb: sdc_controller
    port map(
        wb_clk_i => clk,
        wb_rst_i => rst,
        wb_dat_i => wb_s_dat_i,
        wb_dat_o => wb_s_dat_o,
        wb_adr_i => wb_s_addr_i,
        wb_sel_i => (others => '0'),
        wb_we_i => wb_s_we_i,
        wb_cyc_i => wb_s_cyc_stb_i,
        wb_stb_i => wb_s_cyc_stb_i,
        wb_ack_o => wb_s_ack_o,
        m_wb_adr_o => wb_m_addr_byte,
        m_wb_sel_o => wb_m_sel,
        m_wb_we_o => wb_m_we,
        m_wb_dat_o => wb_m_dat_o,
        m_wb_dat_i => wb_m_dat_i,
        m_wb_cyc_o => wb_m_cyc,
        m_wb_stb_o => wb_m_strb,
        m_wb_ack_i => wb_m_ack,
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
    
    sd_model : sdModel
	port map(
	   sdClk => sd_clk,
	   cmd => sd_cmd,
	   dat => sd_dat
	);
	
	wb_bram: wb_slave_behavioral
	port map(
        CLK_I => clk,
        RST_I => rst,
        ACK_O => wb_m_ack,
        ADR_I => wb_m_addr_byte,
        CYC_I => wb_m_cyc,
        DAT_O => wb_m_dat_i,
        DAT_I => wb_m_dat_o,
        ERR_O => open,
        RTY_O => open,
        SEL_I => wb_m_sel,
        STB_I => wb_m_strb,
        WE_I => wb_m_we,
        CAB_I => '0'
	);
	
	clk <= not clk after clk_period/2;
	
	stim_proc: process is begin
	   
	   wait for clk_period;
	   
	   rst <= '0';
	   
	   wait for clk_period;
	   
	   
	   
	   assert false report "End Simulation" severity failure;
	   
	end process stim_proc;
	

end Behavioral;
