----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2021 09:26:41
-- Design Name: ISA_top_tb
-- Module Name: ISA_top_tb - Behavioral
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

entity ISA_top_tb is
end ISA_top_tb;

architecture Behavioral of ISA_top_tb is
	
	--Clocks
	signal clk : STD_LOGIC := '0';
	
	--Resets
	signal rst : STD_LOGIC := '1';
	
	--General inputs
	signal input_valid : STD_LOGIC := '0';
	signal ce : STD_LOGIC := '0';
	signal key : std_logic_vector(7 downto 0) := ( others => '0');
	
	--Outputs
	signal out_enable : STD_LOGIC;
	signal char_out : STD_LOGIC_VECTOR(7 downto 0);
	
	--Clock Periods
	constant clk_period : time := 10 ns;
	
begin
	
	UUT: entity work.ISA_top
	port map(
		clk => clk,
		rst => rst,
		input_valid => input_valid,
		ce => ce,
		key => key,
		out_enable => out_enable,
		char_out => char_out
	);
	
	--Clock Drivers
	clk <= not clk after clk_period/2;
	
	stim_proc: process is begin
		
		wait for clk_period;
		
		rst <= '0';
		
		wait for clk_period;
		
		--Insert stimuli here
		
		assert false report "End Simulation" severity failure;
		
		-- Not strictly necessary, but prevents process from looping 
		-- if the above assert statement is removed
		wait;
		
	end process;

end Behavioral;
