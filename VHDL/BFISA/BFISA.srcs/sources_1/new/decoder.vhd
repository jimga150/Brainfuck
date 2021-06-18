----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 04:03:59 PM
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
    Port ( opcode : in STD_LOGIC_VECTOR (2 downto 0);
           ptrop : out STD_LOGIC;
           memop : out STD_LOGIC;
           loopback : out STD_LOGIC;
           memsrc : out STD_LOGIC;
           modptr : out STD_LOGIC;
           jump : out STD_LOGIC;
           outp : out STD_LOGIC;
           modmem : out STD_LOGIC;
           hold : out STD_LOGIC);
end decoder;

architecture Behavioral of decoder is

begin

    ptrop <= opcode(0);
    
    memop <= opcode(0);
    
    loopback <= opcode(0);
    
    memsrc <= opcode(2);
    
    modptr <= not (opcode(1) or opcode(2));
    
    jump <= (not opcode(1)) and opcode(2);
    
    outp <= opcode(1) and opcode(2) and (not opcode(0));
    
    modmem <= (opcode(1) and (not opcode(2))) or (opcode(0) and opcode(1));
    
    hold <= opcode(0) and opcode(1) and opcode(2);

end Behavioral;
