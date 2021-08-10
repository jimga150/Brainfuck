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
        
        error, sd_ready : out std_logic;
        
        write_valid, read_valid : in std_logic;
        buffer_addr, sd_block_addr : in std_logic_vector(31 downto 0);
        
        sd_clk : out std_logic;
        sd_cmd : inout std_logic;
        sd_dat : inout std_logic_vector(3 downto 0);
        
        axi_ar_addr : out std_logic_vector(31 downto 0);
        axi_ar_prot : out std_logic_vector(2 downto 0);
        axi_ar_valid : out std_logic;
        axi_ar_ready : in std_logic;
        
        axi_rd_data : in std_logic_vector(31 downto 0);
        axi_rd_resp : in std_logic_vector(1 downto 0);
        axi_rd_valid : in std_logic;
        axi_rd_ready : out std_logic; 
        
        axi_aw_addr : out std_logic_vector(31 downto 0);
        axi_aw_prot : out std_logic_vector(2 downto 0);
        axi_aw_valid : out std_logic;
        axi_aw_ready : in std_logic;
        
        axi_wd_data : out std_logic_vector(31 downto 0);
        axi_wd_strb : out std_logic_vector(3 downto 0);
        axi_wd_valid : out std_logic;
        axi_wd_ready : in std_logic; 
        
        axi_wr_resp : in std_logic_vector(1 downto 0);
        axi_wr_valid : in std_logic;
        axi_wr_ready : out std_logic
        
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
    
    component wbm2axilite is
        port(
            i_clk : in std_logic;
            i_reset : in std_logic;
            i_wb_cyc : in std_logic;
            i_wb_stb : in std_logic;
            i_wb_we : in std_logic;
            i_wb_addr : in std_logic_vector(29 downto 0);
            i_wb_data : in std_logic_vector(31 downto 0);
            i_wb_sel : in std_logic_vector(3 downto 0);
            o_wb_stall : out std_logic;
            o_wb_ack : out std_logic;
            o_wb_data : out std_logic_vector(31 downto 0);
            o_wb_err : out std_logic;
            o_axi_awvalid : out std_logic;
            i_axi_awready : in std_logic;
            o_axi_awaddr : out std_logic_vector(31 downto 0);
            o_axi_awprot : out std_logic_vector(2 downto 0);
            o_axi_wvalid : out std_logic;
            i_axi_wready : in std_logic;
            o_axi_wdata : out std_logic_vector(31 downto 0);
            o_axi_wstrb : out std_logic_vector(3 downto 0);
            i_axi_bvalid : in std_logic;
            o_axi_bready : out std_logic;
            i_axi_bresp : in std_logic_vector(1 downto 0);
            o_axi_arvalid : out std_logic;
            i_axi_arready : in std_logic;
            o_axi_araddr : out std_logic_vector(31 downto 0);
            o_axi_arprot : out std_logic_vector(2 downto 0);
            i_axi_rvalid : in std_logic;
            o_axi_rready : out std_logic;
            i_axi_rdata : in std_logic_vector(31 downto 0);
            i_axi_rresp : in std_logic_vector(1 downto 0)
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
    
    --wishbone master signals
    --(between the wishbone master interface of the controller 
    --and the wishbone to axi converter unit)
    signal wb_m_cyc, wb_m_strb, wb_m_we, wb_m_stall, wb_m_ack, wb_m_err : std_logic;
    signal wb_m_dat_m_conv, wb_m_dat_conv_m, wb_m_addr_byte : std_logic_vector(31 downto 0);
    signal wb_m_addr_word : std_logic_vector(29 downto 0);
    signal wb_m_sel : std_logic_vector(3 downto 0);

begin

    wb_to_axi: wbm2axilite
    port map(
        i_clk => clk,
        i_reset => rst,
        i_wb_cyc => wb_m_cyc,
        i_wb_stb => wb_m_strb,
        i_wb_we => wb_m_we,
        i_wb_addr => wb_m_addr_word,
        i_wb_data => wb_m_dat_m_conv,
        i_wb_sel => wb_m_sel,
        o_wb_stall => wb_m_stall,
        o_wb_ack => wb_m_ack,
        o_wb_data => wb_m_dat_conv_m,
        o_wb_err => wb_m_err,
        o_axi_awvalid => axi_aw_valid,
        i_axi_awready => axi_aw_ready,
        o_axi_awaddr => axi_aw_addr,
        o_axi_awprot => axi_aw_prot,
        o_axi_wvalid => axi_wd_valid,
        i_axi_wready => axi_wd_ready,
        o_axi_wdata => axi_wd_data,
        o_axi_wstrb => axi_wd_strb,
        i_axi_bvalid => axi_wr_valid,
        o_axi_bready=> axi_wr_ready,
        i_axi_bresp => axi_wr_resp,
        o_axi_arvalid => axi_ar_valid,
        i_axi_arready => axi_ar_ready,
        o_axi_araddr => axi_ar_addr,
        o_axi_arprot => axi_ar_prot,
        i_axi_rvalid => axi_rd_valid,
        o_axi_rready => axi_rd_ready,
        i_axi_rdata => axi_rd_data,
        i_axi_rresp => axi_rd_resp
    );

    wb_m_addr_word <= wb_m_addr_byte(31 downto 2);

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
        m_wb_adr_o => wb_m_addr_byte,
        m_wb_sel_o => wb_m_sel,
        m_wb_we_o => wb_m_we,
        m_wb_dat_o => wb_m_dat_m_conv,
        m_wb_dat_i => wb_m_dat_conv_m,
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
    
    axi_convert: entity work.sdc_cont_axi_converter
    port map(
        clk => clk,
        rst => rst,
        error => error,
        sd_ready => sd_ready,
        write_valid => write_valid,
        read_valid => read_valid,
        buffer_addr => buffer_addr,
        sd_block_addr => sd_block_addr,
        wb_data_to_wb => wb_s_dat_axi_wb,
        wb_data_from_wb => wb_s_dat_wb_axi,
        wb_addr => wb_s_addr_axi_wb,
        wb_cyc_stb => wb_s_cyc_stb_axi_wb,
        wb_wr_en => wb_s_we_axi_wb,
        wb_ack => wb_s_ack_wb_axi
    );

end Structural;
