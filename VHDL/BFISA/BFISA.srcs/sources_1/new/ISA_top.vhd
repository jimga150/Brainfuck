----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 03:55:23 PM
-- Design Name: 
-- Module Name: ISA_top - Structural
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

entity ISA_top is
    Port ( clk, rst, input_valid : in STD_LOGIC;
           out_enable : out STD_LOGIC;
           char_out : out STD_LOGIC_VECTOR (7 downto 0));
end ISA_top;

architecture Structural of ISA_top is

begin


end Structural;
