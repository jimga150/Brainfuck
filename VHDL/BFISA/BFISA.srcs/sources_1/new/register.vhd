----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 04:58:08 PM
-- Design Name: 
-- Module Name: register - Behavioral
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

entity register_16b is
    Port ( D : in STD_LOGIC_VECTOR (15 downto 0);
           clk, rst, ce : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (15 downto 0));
end register_16b;

architecture Behavioral of register_16b is

    signal qsig : std_logic_vector(15 downto 0) := (others => '0');

begin

    sync_proc: process(clk) is begin
        if rising_edge(clk) then
            if rst = '1' then
                qsig <= (others => '0');
            elsif ce = '1' then
                qsig <= D;
            end if;
        end if;
    end process sync_proc;
    
    Q <= qsig;

end Behavioral;
