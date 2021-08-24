----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/23/2021 06:38:20 PM
-- Design Name: 
-- Module Name: sd_axi_tester_tb - Behavioral
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

entity sd_axi_tester_sm is
    port(
        clk, rst : in std_logic;
        start, continue : in std_logic;
        trigger_sd_read : out std_logic;
        sd_ready : in std_logic;
        byte_out : out std_logic_vector(7 downto 0);
        
        axi_ar_addr : out std_logic_vector(31 downto 0);
        axi_ar_prot : out std_logic_vector(2 downto 0);
        axi_ar_valid : out std_logic;
        axi_ar_ready : in std_logic;
        
        axi_rd_data : in std_logic_vector(31 downto 0);
        axi_rd_resp : in std_logic_vector(1 downto 0);
        axi_rd_valid : in std_logic;
        axi_rd_ready : out std_logic
    );
end sd_axi_tester_sm;

architecture Behavioral of sd_axi_tester_sm is

    type state_type is (
        IDLE,
        TRIG_READ,
        WAIT_READ,
        WAIT_AR_RDY,
        WAIT_RD_DATA,
        DISP_BYTE
    );
    
    constant default_state : state_type := IDLE;
    
    signal state : state_type := default_state;
    signal next_state : state_type;
    
    signal curr_byte : unsigned(1 downto 0) := (others => '0');
    signal curr_bram_addr, word : std_logic_vector(31 downto 0) := (others => '0');

begin

    sync_proc: process(clk) is begin
        if rising_edge(clk) then
            if (rst = '1') then
                state <= default_state;
                curr_byte <= (others => '0');
                curr_bram_addr <= (others => '0');
                word <= (others => '0');
            else
                state <= next_state;
                
                if (state = DISP_BYTE and continue = '1') then
                    curr_byte <= to_unsigned(to_integer(curr_byte) + 1, curr_byte'length);
                end if;
                
                if (state = WAIT_RD_DATA) then
                    word <= axi_rd_data;
                end if;
                
                if (state = WAIT_AR_RDY and next_state = WAIT_RD_DATA) then
                    --NOTE:
                    --BRAM buffer ignores last two bits of address, to address words
                    curr_bram_addr <= std_logic_vector(to_unsigned(to_integer(unsigned(curr_bram_addr)) + 4, curr_bram_addr'length));
                end if;
                
            end if;
        end if;
    end process sync_proc;
    
    ns_proc: process(state, start, continue, sd_ready, axi_ar_ready, axi_rd_valid) is begin
        case state is
            when IDLE => 
                if start = '1' then
                    next_state <= TRIG_READ;
                else
                    next_state <= IDLE;
                end if;
            when TRIG_READ => next_state <= WAIT_READ;
            when WAIT_READ => 
                if sd_ready = '1' then
                    next_state <= WAIT_AR_RDY;
                else
                    next_state <= WAIT_READ;
                end if;
            when WAIT_AR_RDY => 
                if axi_ar_ready = '1' then
                    next_state <= WAIT_RD_DATA;
                else
                    next_state <= WAIT_AR_RDY;
                end if;
            when WAIT_RD_DATA => 
                if axi_rd_valid = '1' then
                    next_state <= DISP_BYTE;
                else
                    next_state <= WAIT_RD_DATA;
                end if;
            when DISP_BYTE => 
                if continue = '1' and curr_byte = "11" then
                    next_state <= WAIT_AR_RDY;
                else
                    next_state <= DISP_BYTE;
                end if;
        end case;
    end process ns_proc;
    
    byte_out <= word(((3 - to_integer(curr_byte)) + 1)*8 - 1 downto (3 - to_integer(curr_byte))*8);
    
    trigger_sd_read <= '1' when state = TRIG_READ else '0';
    
    axi_ar_addr <= curr_bram_addr;
    
    axi_ar_prot <= (others => '0');
    
    axi_ar_valid <= '1' when state = WAIT_AR_RDY else '0';
    
    axi_rd_ready <= '1' when state = WAIT_RD_DATA else '0';

end Behavioral;
