--------------------------------------------------------------------------------
--
--   FileName:         debounce.vhd
--   Dependencies:     none
--   Design Software:  Quartus Prime Version 17.0.0 Build 595 SJ Lite Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 2.0 6/28/2019 Scott Larson
--     Added asynchronous active-low reset
--     Made stable time higher resolution and simpler to specify
--   Version 1.0 3/26/2012 Scott Larson
--     Initial Public Release
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

use IEEE.NUMERIC_STD.ALL;

ENTITY debounce IS
  GENERIC(
    clk_freq    : INTEGER := 100_000_000;  --system clock frequency in Hz
    stable_time : INTEGER := 1);         --time button must remain stable in ms
  PORT(
    clk     : IN  STD_LOGIC;  --input clock
    reset_n : IN  STD_LOGIC;  --asynchronous active low reset
    button  : IN  STD_LOGIC;  --input signal to be debounced
    count_out : out std_logic_vector(7 downto 0);
    result  : OUT STD_LOGIC); --debounced signal
END debounce;

ARCHITECTURE logic OF debounce IS

  constant time_unit : integer := 1_000;
  constant max_count : integer := clk_freq*stable_time/time_unit;

  SIGNAL flipflops   : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00"; --input flip flops
  SIGNAL counter_set : STD_LOGIC;                    --sync reset to zero
  
  signal count :  INTEGER RANGE 0 TO max_count := 0;  --counter for timing
BEGIN

  counter_set <= flipflops(0) xor flipflops(1);  --determine when to start/reset counter
  
  PROCESS(clk, reset_n)
    --VARIABLE count :  INTEGER RANGE 0 TO max_count := 0;  --counter for timing
  BEGIN
    
    count_out <= std_logic_vector(to_unsigned(count, 8));
  
    IF(reset_n = '0') THEN                        --reset
      flipflops(1 DOWNTO 0) <= "00";                 --clear input flipflops
      result <= '0'; 
      count <= 0;                                --clear result register
    ELSIF rising_edge(clk) THEN           --rising clock edge
      flipflops(0) <= button;                        --store button value in 1st flipflop
      flipflops(1) <= flipflops(0);                  --store 1st flipflop value in 2nd flipflop
      If(counter_set = '1') THEN                     --reset counter because input is changing
        count <= 0;                                    --clear the counter
      ELSIF(count /= max_count) THEN  --stable input time is not yet met
        count <= count + 1;                            --increment counter
      ELSE                                           --stable input time is met
        result <= flipflops(1);                        --output the stable value
      END IF;    
    END IF;
  END PROCESS;
  
END logic;
