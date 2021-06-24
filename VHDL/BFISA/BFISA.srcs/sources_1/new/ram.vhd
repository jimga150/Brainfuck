----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 04:03:59 PM
-- Design Name: 
-- Module Name: ram - Behavioral
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

entity ram is
    generic (addr_bits : integer := 8);
    Port ( addr : in STD_LOGIC_VECTOR (addr_bits-1 downto 0);
           we, clk, rst : in STD_LOGIC := '1';
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end ram;

architecture Behavioral of ram is 

   type memory_array_type is array ((2**addr_bits)-1 downto 0) of std_logic_vector(7 downto 0);
   signal memory_array : memory_array_type := (others => (others => '0'));
   
   attribute dont_touch : string;
   attribute dont_touch of memory_array : signal is "true";
   

begin

    sync_proc : process (clk) is begin
        if rising_edge(clk) THEN
            if rst = '1' then
                memory_array <= (others => (others => '0'));
            elsif (WE = '1') then
                memory_array(to_integer(unsigned(addr))) <= data_in;
            end if;
        end if;
    end process sync_proc;
    
    data_out <= memory_array(to_integer(unsigned(addr)));

end Behavioral;
