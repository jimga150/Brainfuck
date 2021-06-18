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
           we, ce, oe, clk, rst : in STD_LOGIC := '1';
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0) := (others => '0'));
end ram;

ARCHITECTURE Behavioral OF ram IS 

   -----------------------------------------------------------------------------
   -- Here all private types are defined                                      --
   -----------------------------------------------------------------------------
   TYPE MEMORY_ARRAY IS ARRAY (65535 DOWNTO 0) OF std_logic_vector(7 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_oe                               : std_logic := '0';
   SIGNAL s_ram_data_out                     : std_logic_vector( 7 DOWNTO 0 ) := (others => '0');
   SIGNAL s_we                               : std_logic := '0';
   SIGNAL s_Address_reg                      : std_logic_vector( 15 DOWNTO 0 ) := (others => '0');
   SIGNAL s_DataInReg                        : std_logic_vector( 7 DOWNTO 0 ) := (others => '0');
   SIGNAL s_DataOutReg                       : std_logic_vector( 7 DOWNTO 0 ) := (others => '0');
   SIGNAL s_OEReg                            : std_logic := '0';
   SIGNAL s_TickDelayLine                    : std_logic_vector( 2 DOWNTO 0 ) := (others => '0');
   SIGNAL s_WEReg                            : std_logic := '0';
   SIGNAL s_mem_contents                     : MEMORY_ARRAY := (others => (others => '0'));

BEGIN
   -----------------------------------------------------------------------------
   -- Here the control signals are defined                                    --
   -----------------------------------------------------------------------------
   s_oe <= s_TickDelayLine(2) AND s_OEReg;
   s_we <= s_TickDelayLine(0) AND s_WEReg;

   -----------------------------------------------------------------------------
   -- Here the input registers are defined                                    --
   -----------------------------------------------------------------------------
    sync_proc : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
        
            if rst = '1' then
            
--                s_DataInReg        <= (others => '0');
--                s_Address_reg      <= (others => '0');
--                s_WEReg            <= '0';
--                s_OEReg            <= '0';
                
--                s_TickDelayLine <= (others => '0');
                
--                s_mem_contents <= (others => (others => '0'));
--                s_ram_data_out <= (others => '0');
                
--                data_out <= (others => '0');
                
            elsif ce = '1' then
            
--                s_DataInReg        <= data_in;
--                s_Address_reg      <= addr;
--                s_WEReg            <= WE;
--                s_OEReg            <= OE;
                
--                s_TickDelayLine(0)          <= '1';
--                s_TickDelayLine(2 DOWNTO 1) <= s_TickDelayLine(1 DOWNTO 0);
                
                IF (WE = '1') THEN
                    s_mem_contents(to_integer(unsigned(addr))) <= data_in;
                END IF;
--                s_ram_data_out <= s_mem_contents(to_integer(unsigned(addr)));
                
--                IF (OE = '1') THEN
--                    data_out <= s_ram_data_out;
--                END IF;
            
            end if;
        
            
            
        END IF;
    END PROCESS sync_proc;
    
    data_out <= s_mem_contents(to_integer(unsigned(addr)));

END Behavioral;
