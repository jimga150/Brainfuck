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
    Port ( addr : in STD_LOGIC_VECTOR (15 downto 0);
           we, ce, oe, clk : in STD_LOGIC := '1';
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end ram;

ARCHITECTURE Behavioral OF ram IS 

   -----------------------------------------------------------------------------
   -- Here all private types are defined                                      --
   -----------------------------------------------------------------------------
   TYPE MEMORY_ARRAY IS ARRAY (65535 DOWNTO 0) OF std_logic_vector(7 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_oe                               : std_logic;
   SIGNAL s_ram_data_out                     : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_we                               : std_logic;
   SIGNAL s_Address_reg                      : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_DataInReg                        : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_DataOutReg                       : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_OEReg                            : std_logic;
   SIGNAL s_TickDelayLine                    : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_WEReg                            : std_logic;
   SIGNAL s_mem_contents                     : MEMORY_ARRAY;

BEGIN
   -----------------------------------------------------------------------------
   -- Here the control signals are defined                                    --
   -----------------------------------------------------------------------------
   s_oe <= s_TickDelayLine(2) AND s_OEReg;
   s_we <= s_TickDelayLine(0) AND s_WEReg;

   -----------------------------------------------------------------------------
   -- Here the input registers are defined                                    --
   -----------------------------------------------------------------------------
   InputRegs : PROCESS (clk)
   BEGIN
      IF (rising_edge(clk) and ce = '1') THEN
        s_DataInReg        <= data_in;
             s_Address_reg      <= addr;
             s_WEReg            <= WE;
             s_OEReg            <= OE;
      END IF;
   END PROCESS InputRegs;

   TickPipeReg : PROCESS(clk)
   BEGIN
      IF (rising_edge(clk) and ce = '1') THEN
          s_TickDelayLine(0)          <= '1';
          s_TickDelayLine(2 DOWNTO 1) <= s_TickDelayLine(1 DOWNTO 0);
      END IF;
   END PROCESS TickPipeReg;

   -----------------------------------------------------------------------------
   -- Here the actual memorie(s) is(are) defined                              --
   -----------------------------------------------------------------------------
   Mem : PROCESS(clk)
   BEGIN
      IF (rising_edge(clk) and ce = '1') THEN
            IF (s_we = '1') THEN
               s_mem_contents(to_integer(unsigned(s_Address_reg))) <= s_DataInReg;
            END IF;
            s_ram_data_out <= s_mem_contents(to_integer(unsigned(s_Address_reg)));
      END IF;
   END PROCESS Mem;

   -----------------------------------------------------------------------------
   -- Here the output register is defined                                     --
   -----------------------------------------------------------------------------
   Res : PROCESS(clk)
   BEGIN
      IF (rising_edge(clk) and ce = '1') THEN
         IF (s_oe = '1') THEN
           data_out <= s_ram_data_out;
         END IF;
      END IF;
   END PROCESS Res;

END Behavioral;
