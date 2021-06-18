----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 11:48:31 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( clk, rst, input_valid, ce : in STD_LOGIC;
           key : in std_logic_vector(7 downto 0) := (others => '0');
           out_enable : out STD_LOGIC;
           char_out : out STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Structural of top is

    signal dbcd_ce, dbcd_input_valid : std_logic;

begin

    ISA: entity work.ISA_top
    port map(
        clk => clk,
        rst => rst, 
        input_valid => dbcd_input_valid,
        ce => dbcd_ce,
        key => key,
        out_enable => out_enable,
        char_out => char_out
    );
    
    iv_dbcr: entity work.debounce_pulse_gen
    port map(
        clk => clk,
        rst => rst,
        btn_in => input_valid,
        pulse => dbcd_input_valid
    );
    
    ce_dbcr: entity work.debounce_pulse_gen
    port map(
        clk => clk,
        rst => rst,
        btn_in => ce,
        pulse => dbcd_ce
    );

end Structural;
