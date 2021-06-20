----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2021 09:27:51
-- Design Name: top_tb
-- Module Name: top_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Created with VHDL Test Bench Template Generator
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity top_tb is
end top_tb;

architecture Behavioral of top_tb is
	
	--Clocks
	signal clk : STD_LOGIC := '0';
	
	--Resets
	signal rst : STD_LOGIC := '1';
	
	--General inputs
	signal input_valid : STD_LOGIC := '0';
	signal ce : STD_LOGIC := '0';
	signal key : std_logic_vector(7 downto 0) := ( others => '0');
	
	--Outputs
	signal out_enable, h_sync, v_sync : STD_LOGIC;
	signal char_out : STD_LOGIC_VECTOR(7 downto 0);
	--signal ce_count, iv_count : std_logic_vector(7 downto 0);
	signal pixel : std_logic_vector(11 downto 0);
	
	--Clock Periods
	constant clk_period : time := 10 ns;
	constant clk_logic_period : time := 20 ns;
	
	constant button_hold_time : time := 1.1 ms;
	
begin
	
	UUT: entity work.top
	port map(
		clk => clk,
		rst => rst,
		input_valid => input_valid,
		ce => ce,
		key => key,
		out_enable => out_enable,
		--ce_count => ce_count,
		--iv_count => iv_count,
		char_out => char_out,
		h_sync => h_sync,
		v_sync => v_sync,
		pixel => pixel
	);
	
	--Clock Drivers
	clk <= not clk after clk_period/2;
	
	stim_proc: process is begin
		
		wait for clk_logic_period;
		
		rst <= '0';
		
		wait for clk_logic_period;
		
		--Insert stimuli here
		
--		for i in 0 to 1000 loop
		
--		  ce <= '1';
--		  wait for button_hold_time;
--		  ce <= '0';
--		  wait for button_hold_time;
		  
--		end loop;
        
        wait for 5 us;
        ce <= '1';
        wait for clk_logic_period*1000;
		
		assert false report "End Simulation" severity failure;
		
		-- Not strictly necessary, but prevents process from looping 
		-- if the above assert statement is removed
		wait;
		
	end process;

end Behavioral;
