----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 04:03:59 PM
-- Design Name: 
-- Module Name: rom - Behavioral
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

entity rom is
    Port ( addr : in STD_LOGIC_VECTOR (15 downto 0);
           data_out : out STD_LOGIC_VECTOR (15 downto 0));
end rom;

architecture Behavioral of rom is

begin

	rom_proc : process (addr)
	begin
		case (addr) is
			when "0000000000000001" => data_out <= "0000000000000001";
			when "0000000000000010" => data_out <= "0000000000000010";
			when "0000000000000011" => data_out <= "0000000000000010";
			when "0000000000000100" => data_out <= "0000000000000010";
			when "0000000000000101" => data_out <= "0000000000000010";
			when "0000000000000110" => data_out <= "0000000000000010";
			when "0000000000000111" => data_out <= "0000000000000010";
			when "0000000000001000" => data_out <= "0000000000000010";
			when "0000000000001001" => data_out <= "0000000000000010";
			when "0000000000001010" => data_out <= "0000000110011100";
			when "0000000000001100" => data_out <= "0000000000000010";
			when "0000000000001101" => data_out <= "0000000000000010";
			when "0000000000001110" => data_out <= "0000000000000010";
			when "0000000000001111" => data_out <= "0000000000000010";
			when "0000000000010000" => data_out <= "0000000100100100";
			when "0000000000010010" => data_out <= "0000000000000010";
			when "0000000000010011" => data_out <= "0000000000000010";
			when "0000000000010101" => data_out <= "0000000000000010";
			when "0000000000010110" => data_out <= "0000000000000010";
			when "0000000000010111" => data_out <= "0000000000000010";
			when "0000000000011001" => data_out <= "0000000000000010";
			when "0000000000011010" => data_out <= "0000000000000010";
			when "0000000000011011" => data_out <= "0000000000000010";
			when "0000000000011101" => data_out <= "0000000000000010";
			when "0000000000011110" => data_out <= "0000000000000001";
			when "0000000000011111" => data_out <= "0000000000000001";
			when "0000000000100000" => data_out <= "0000000000000001";
			when "0000000000100001" => data_out <= "0000000000000001";
			when "0000000000100010" => data_out <= "0000000000000011";
			when "0000000000100011" => data_out <= "0000000010000101";
			when "0000000000100101" => data_out <= "0000000000000010";
			when "0000000000100111" => data_out <= "0000000000000011";
			when "0000000000101001" => data_out <= "0000000000000010";
			when "0000000000101100" => data_out <= "0000000000000010";
			when "0000000000101101" => data_out <= "0000000110000100";
			when "0000000000101110" => data_out <= "0000000000000001";
			when "0000000000101111" => data_out <= "0000000101101101";
			when "0000000000110000" => data_out <= "0000000000000001";
			when "0000000000110001" => data_out <= "0000000000000011";
			when "0000000000110010" => data_out <= "0000000001010101";
			when "0000000000110101" => data_out <= "0000000000000110";
			when "0000000000111000" => data_out <= "0000000000000011";
			when "0000000000111001" => data_out <= "0000000000000011";
			when "0000000000111010" => data_out <= "0000000000000011";
			when "0000000000111011" => data_out <= "0000000000000110";
			when "0000000000111100" => data_out <= "0000000000000010";
			when "0000000000111101" => data_out <= "0000000000000010";
			when "0000000000111110" => data_out <= "0000000000000010";
			when "0000000000111111" => data_out <= "0000000000000010";
			when "0000000001000000" => data_out <= "0000000000000010";
			when "0000000001000001" => data_out <= "0000000000000010";
			when "0000000001000010" => data_out <= "0000000000000010";
			when "0000000001000011" => data_out <= "0000000000000110";
			when "0000000001000100" => data_out <= "0000000000000110";
			when "0000000001000101" => data_out <= "0000000000000010";
			when "0000000001000110" => data_out <= "0000000000000010";
			when "0000000001000111" => data_out <= "0000000000000010";
			when "0000000001001000" => data_out <= "0000000000000110";
			when "0000000001001010" => data_out <= "0000000000000110";
			when "0000000001001011" => data_out <= "0000000000000001";
			when "0000000001001100" => data_out <= "0000000000000001";
			when "0000000001001101" => data_out <= "0000000000000011";
			when "0000000001001110" => data_out <= "0000000000000110";
			when "0000000001010000" => data_out <= "0000000000000110";
			when "0000000001010001" => data_out <= "0000000000000010";
			when "0000000001010010" => data_out <= "0000000000000010";
			when "0000000001010011" => data_out <= "0000000000000010";
			when "0000000001010100" => data_out <= "0000000000000110";
			when "0000000001010101" => data_out <= "0000000000000011";
			when "0000000001010110" => data_out <= "0000000000000011";
			when "0000000001010111" => data_out <= "0000000000000011";
			when "0000000001011000" => data_out <= "0000000000000011";
			when "0000000001011001" => data_out <= "0000000000000011";
			when "0000000001011010" => data_out <= "0000000000000011";
			when "0000000001011011" => data_out <= "0000000000000110";
			when "0000000001011100" => data_out <= "0000000000000011";
			when "0000000001011101" => data_out <= "0000000000000011";
			when "0000000001011110" => data_out <= "0000000000000011";
			when "0000000001011111" => data_out <= "0000000000000011";
			when "0000000001100000" => data_out <= "0000000000000011";
			when "0000000001100001" => data_out <= "0000000000000011";
			when "0000000001100010" => data_out <= "0000000000000011";
			when "0000000001100011" => data_out <= "0000000000000011";
			when "0000000001100100" => data_out <= "0000000000000110";
			when "0000000001100110" => data_out <= "0000000000000010";
			when "0000000001100111" => data_out <= "0000000000000110";
			when "0000000001101001" => data_out <= "0000000000000010";
			when "0000000001101010" => data_out <= "1111111111111111";
			when others => data_out <= (others => '0');
		end case;
	end process rom_proc;
	
end Behavioral;