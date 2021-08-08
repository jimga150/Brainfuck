----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/06/2021 11:42:52
-- Design Name: sdc_controller_axi_tb
-- Module Name: sdc_controller_axi_tb - Behavioral
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

entity sdc_cont_axi_converter_tb is
end sdc_cont_axi_converter_tb;

architecture Behavioral of sdc_cont_axi_converter_tb is
	
	--Clocks
	signal clk : std_logic := '0';
	
	--Resets
	signal rst : std_logic := '1';
	
	--General inputs
	signal wb_data_from_wb : std_logic_vector(31 downto 0) := X"12345678";
	signal wb_ack : std_logic := '0';
	
	--Outputs
	signal error, axi_ready : std_logic;
	signal wb_data_to_wb : std_logic_vector(31 downto 0);
	signal wb_addr : std_logic_vector(7 downto 0);
	signal wb_cyc_stb : std_logic;
	signal wb_wr_en : std_logic;
	
	--Clock Periods
	constant clk_period : time := 10 ns;
	
begin
	
	UUT: entity work.sdc_cont_axi_converter
	port map(
		clk => clk,
		rst => rst,
		error => error,
		axi_ready => axi_ready,
		wb_data_to_wb => wb_data_to_wb,
		wb_data_from_wb => wb_data_from_wb,
		wb_addr => wb_addr,
		wb_cyc_stb => wb_cyc_stb,
		wb_wr_en => wb_wr_en,
		wb_ack => wb_ack
	);
	
	--Clock Drivers
	clk <= not clk after clk_period/2;
	
	stim_proc: process is begin
		
		wait for clk_period;
		
		rst <= '0';
		
		wait for clk_period;
		
		--Insert stimuli here
		while axi_ready = '0' loop
		  if wb_cyc_stb = '0' then
		      wait until wb_cyc_stb = '1';
		  end if;
		  wait for clk_period;
		  wb_ack <= '1';
		  wait for clk_period;
		  wb_ack <= '0';
		end loop;
		
		assert false report "End Simulation" severity failure;
		
		-- Not strictly necessary, but prevents process from looping 
		-- if the above assert statement is removed
		wait;
		
	end process;

end Behavioral;
