----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 05:02:20 PM
-- Design Name: 
-- Module Name: debounce_pulse_gen - Structural
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

entity debounce_pulse_gen is
    Port ( btn_in, clk, rst : in STD_LOGIC;
           pulse : out STD_LOGIC);
end debounce_pulse_gen;

architecture Structural of debounce_pulse_gen is

    signal rstn, dbc_result : std_logic;
    signal pulse_reg : std_logic := '0';

begin

    rstn <= not rst;

    dbcr: entity work.debounce
    port map(
        clk => clk,
        reset_n => rstn,
        button => btn_in,
        result => dbc_result
    );

    pulse_proc: process (clk, rst) is
    begin
        if rst = '1' then
            pulse_reg <= '0';
        elsif rising_edge(clk) then
            pulse_reg <= dbc_result;
        end if;
    end process pulse_proc;
    
    pulse <= dbc_result and (not pulse_reg);

end Structural;
