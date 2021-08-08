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

entity sdc_cont_axi_converter is
    port(
        clk, rst : in std_logic;
        
        error, axi_ready : out std_logic;
        
--        axi_ra_addr : in std_logic_vector(31 downto 0);
--        axi_ra_valid : in std_logic;
--        axi_ra_ready : out std_logic;
        
--        axi_rd_data : out std_logic_vector(31 downto 0);
--        axi_rd_valid : out std_logic;
--        axi_rd_ready : in std_logic;
        
--        axi_wa_addr : in std_logic_vector(31 downto 0);
--        axi_wa_valid : in std_logic;
--        axi_wa_ready : out std_logic;
        
--        axi_wd_data : in std_logic_vector(31 downto 0);
--        axi_wd_valid : in std_logic;
--        axi_wd_ready : out std_logic;
        
--        axi_wr_resp : out std_logic_vector(1 downto 0);
--        axi_wr_valid : out std_logic;
--        axi_wr_ready : in std_logic;
        
        wb_data_to_wb : out std_logic_vector(31 downto 0);
        wb_data_from_wb : in std_logic_vector(31 downto 0);
        wb_addr : out std_logic_vector(7 downto 0);
        wb_cyc_stb : out std_logic;
        wb_wr_en : out std_logic;
        
        wb_ack : in std_logic
    );
end sdc_cont_axi_converter;

architecture Behavioral of sdc_cont_axi_converter is

    type state_type is (
        IDLE, 
        
        ASSERT_SW_RST, 
        WAIT_ACK, 
        SET_TIMEOUT, 
        SET_CLK_DIV, 
        DEASSERT_SW_RST, 
        
        SET_CMD, 
        SET_ARGS, 
        READ_INT_REG, 
        CHECK_INT, 
        CLEAR_INT_REG, 
        ERR, 
        REQ_RESP, 
        READ_RESP,
         
        AXI_RDY
    );
    
    
    constant cmdi_len : integer := 6;
    constant cmdw_len : integer := 2;
    
    constant rts_no_resp : std_logic_vector(1 downto 0) := "00";
    constant rts_len_136 : std_logic_vector(1 downto 0) := "01";
    constant rts_len_48 : std_logic_vector(1 downto 0) := "10";
    
    type cmd_type is record
        cmd_index : std_logic_vector(cmdi_len-1 downto 0);
        cmd_word : std_logic_vector(cmdw_len-1 downto 0);
        cmd_index_chk : std_logic;
        cmd_crc_chk : std_logic;
        cmd_rts : std_logic_vector(1 downto 0);
        stall_on_err : boolean;
        response_expected : boolean;
    end record cmd_type;
    
    constant num_cmds : integer := 9;
    
    type cmd_arr_type is array(num_cmds-1 downto 0) of cmd_type;
    
    
    constant cmds : cmd_arr_type := (
        0 => (
            cmd_index => (others => '0'), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '0', 
            cmd_crc_chk => '0', 
            cmd_rts => rts_no_resp, 
            stall_on_err => true, 
            response_expected => false),
        1 => (
            cmd_index => std_logic_vector(to_unsigned(8, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '0', 
            cmd_crc_chk => '0', 
            cmd_rts => rts_len_48, 
            stall_on_err => false, 
            response_expected => false),
        2 => (
            cmd_index => std_logic_vector(to_unsigned(55, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '1', 
            cmd_crc_chk => '1', 
            cmd_rts => rts_len_48, 
            stall_on_err => true, 
            response_expected => false),
        3 => (
            cmd_index => std_logic_vector(to_unsigned(41, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '0', 
            cmd_crc_chk => '0', 
            cmd_rts => rts_len_48, 
            stall_on_err => true, 
            response_expected => false),
        4 => (
            cmd_index => std_logic_vector(to_unsigned(2, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '0', 
            cmd_crc_chk => '1', 
            cmd_rts => rts_len_136, 
            stall_on_err => true, 
            response_expected => true),
        5 => (
            cmd_index => std_logic_vector(to_unsigned(3, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '0', 
            cmd_crc_chk => '1', 
            cmd_rts => rts_len_48, 
            stall_on_err => true, 
            response_expected => true),
        6 => (
            cmd_index => std_logic_vector(to_unsigned(7, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '0', 
            cmd_crc_chk => '1', 
            cmd_rts => rts_len_48, 
            stall_on_err => true, 
            response_expected => false),
        7 => (
            cmd_index => std_logic_vector(to_unsigned(55, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '1', 
            cmd_crc_chk => '1', 
            cmd_rts => rts_len_48, 
            stall_on_err => true, 
            response_expected => false),
        8 => (
            cmd_index => std_logic_vector(to_unsigned(6, cmdi_len)), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '1', 
            cmd_crc_chk => '1', 
            cmd_rts => rts_len_48, 
            stall_on_err => true, 
            response_expected => true),
        others => (
            cmd_index => (others => '0'), 
            cmd_word => (others => '0'), 
            cmd_index_chk => '0', 
            cmd_crc_chk => '0', 
            cmd_rts => (others => '0'), 
            stall_on_err => true, 
            response_expected => false)
    );
    
    constant default_cmd_step : unsigned(4 downto 0) := (others => '1');
    signal current_cmd_step : unsigned(4 downto 0) := default_cmd_step;
    
    constant rst_state : state_type := IDLE;
    signal state, saved_state : state_type := rst_state;
    signal next_state : state_type;

    signal RCA : std_logic_vector(15 downto 0) := (others => '0');

begin

    sync_proc: process(clk) is begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= rst_state;
                saved_state <= rst_state;
                current_cmd_step <= default_cmd_step;
                RCA <= (others => '0');
            else
                
                state <= next_state;
                
                if next_state = SET_CMD then
                    current_cmd_step <= to_unsigned(to_integer(current_cmd_step) + 1, current_cmd_step'length);
                end if;
                
                if state = READ_RESP and 
                        cmds(to_integer(current_cmd_step)).cmd_index = std_logic_vector(to_unsigned(3, cmdi_len)) then
                    RCA <= wb_data_from_wb(31 downto 16);
                end if;
                
                --save next wishbone action when going into WAIT_ACK state
                case state is 
                    when ASSERT_SW_RST => saved_state <= SET_TIMEOUT;
                    when SET_TIMEOUT => saved_state <= SET_CLK_DIV;
                    when SET_CLK_DIV => saved_state <= DEASSERT_SW_RST;
                    when DEASSERT_SW_RST => saved_state <= SET_CMD;
                    when SET_CMD => saved_state <= SET_ARGS;
                    when SET_ARGS => saved_state <= READ_INT_REG;
                    when READ_INT_REG => saved_state <= CHECK_INT;
                    when CLEAR_INT_REG => 
                        if cmds(to_integer(current_cmd_step)).response_expected then
                            saved_state <= REQ_RESP;
                        elsif to_integer(current_cmd_step) = num_cmds - 1 then
                            saved_state <= AXI_RDY;
                        else
                            saved_state <= SET_CMD;
                        end if;
                    when REQ_RESP => saved_state <= READ_RESP;
                    when others => saved_state <= saved_state;
                end case;
                
            end if;
        end if;
    end process sync_proc;
    
    ns_proc: process(state, saved_state, current_cmd_step,
--            axi_ra_addr, axi_ra_valid, axi_rd_ready, axi_wa_addr, 
--            axi_wa_valid, axi_wd_data, axi_wd_valid, axi_wr_ready, 
            wb_data_from_wb, wb_ack) is begin
        case state is
            when IDLE => next_state <= ASSERT_SW_RST;
            when ASSERT_SW_RST => next_state <= WAIT_ACK;
            when WAIT_ACK => 
                if wb_ack = '1' then
                    next_state <= saved_state;
                else
                    next_state <= WAIT_ACK;
                end if;
            when SET_TIMEOUT => next_state <= WAIT_ACK;
            when SET_CLK_DIV => next_state <= WAIT_ACK;
            when DEASSERT_SW_RST => next_state <= WAIT_ACK;
            when SET_CMD => next_state <= WAIT_ACK;
            when SET_ARGS => next_state <= WAIT_ACK;
            when READ_INT_REG => next_state <= WAIT_ACK;
            when CHECK_INT => 
                if wb_data_from_wb(15) = '1' then
                    if cmds(to_integer(current_cmd_step)).stall_on_err then
                        next_state <= ERR;
                    else
                        next_state <= CLEAR_INT_REG;
                    end if;
                elsif wb_data_from_wb(0) = '1' then
                    next_state <= CLEAR_INT_REG;
                else
                    next_state <= READ_INT_REG;
                end if;
            when CLEAR_INT_REG => next_state <= WAIT_ACK;
            when ERR => next_state <= ERR;
            when REQ_RESP => next_state <= WAIT_ACK;
            when READ_RESP => 
                if to_integer(current_cmd_step) = num_cmds - 1 then
                    next_state <= AXI_RDY;
                else
                    next_state <= SET_CMD;
                end if;
            when AXI_RDY => next_state <= AXI_RDY;
        end case;
    end process ns_proc;
    
    wb_addr_proc: process(state) is begin
        case state is 
            when ASSERT_SW_RST => wb_addr <= X"28";
            when SET_TIMEOUT => wb_addr <= X"2c";
            when SET_CLK_DIV => wb_addr <= X"4c";
            when DEASSERT_SW_RST => wb_addr <= X"28";
            when SET_CMD => wb_addr <= X"04";
            when SET_ARGS => wb_addr <= X"00";
            when READ_INT_REG | CLEAR_INT_REG => wb_addr <= X"30";
            when REQ_RESP => wb_addr <= X"0c";
            when others => wb_addr <= (others => '0');
        end case;
    end process wb_addr_proc;
    
    data_to_wb_proc: process (state) is begin
        case state is
            when ASSERT_SW_RST => wb_data_to_wb <= X"00000001";
            when SET_TIMEOUT => wb_data_to_wb <= X"000002ff";
            when SET_CMD => 
                wb_data_to_wb <= 
                    X"0000" & 
                    "00" &
                    cmds(to_integer(current_cmd_step)).cmd_index &
                    cmds(to_integer(current_cmd_step)).cmd_word &
                    "0" &
                    cmds(to_integer(current_cmd_step)).cmd_index_chk &
                    cmds(to_integer(current_cmd_step)).cmd_crc_chk & 
                    "0" &
                    cmds(to_integer(current_cmd_step)).cmd_rts;
            when SET_ARGS => 
                if cmds(to_integer(current_cmd_step)).cmd_index = 
                        std_logic_vector(to_unsigned(7, cmdi_len)) then
                        
                    wb_data_to_wb <= RCA & X"0000";
                    
                elsif cmds(to_integer(current_cmd_step)).cmd_index = 
                        std_logic_vector(to_unsigned(6, cmdi_len)) then
                        
                    wb_data_to_wb <= X"00000002";
                    
                else
                    wb_data_to_wb <= X"00000000";
                end if;
            when others => wb_data_to_wb <= (others => '0');
        end case;
    end process data_to_wb_proc;
    
    wb_cyc_stb_proc: process(state) is begin
        case state is
            when IDLE | WAIT_ACK | CHECK_INT | ERR | 
                    READ_RESP | AXI_RDY => 
                
                wb_cyc_stb <= '0';
                
            when others => wb_cyc_stb <= '1';
        end case;
    end process wb_cyc_stb_proc;
    
    wb_wr_en_proc: process(state) is begin
        case state is 
            when ASSERT_SW_RST | SET_TIMEOUT | CLEAR_INT_REG | 
                    SET_CLK_DIV | DEASSERT_SW_RST | 
                    SET_CMD | SET_ARGS =>
                
                wb_wr_en <= '1';
            
            when others => wb_wr_en <= '0';
        end case;
    end process wb_wr_en_proc;
    
    error_proc: process(state) is begin
        case state is
            when ERR => error <= '1';
            when others => error <= '0';
        end case;   
    end process error_proc;
    
    axi_ready_proc: process(state) is begin
        case state is
            when AXI_RDY => axi_ready <= '1';
            when others => axi_ready <= '0';
        end case;
    end process axi_ready_proc;

end Behavioral;
