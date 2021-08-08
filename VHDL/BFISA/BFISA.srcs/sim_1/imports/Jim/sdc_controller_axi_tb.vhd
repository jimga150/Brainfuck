----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/07/2021 01:21:18
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

entity sdc_controller_axi_tb is
end sdc_controller_axi_tb;

architecture Behavioral of sdc_controller_axi_tb is

    component sdModel is
        port(
            sdClk : in std_logic;
            cmd : inout std_logic;
            dat : inout std_logic_vector(3 downto 0)
        );
    end component;
	
	--Clocks
	signal clk : std_logic := '0';
	
	--Resets
	signal rst : std_logic := '1';
	
	
	--In-Outs
	signal sd_cmd : std_logic;
	signal sd_dat : std_logic_vector(3 downto 0);
	
	--Outputs
	signal error : std_logic;
	signal axi_ready : std_logic;
	signal sd_clk : std_logic;
	
	--Clock Periods
	constant clk_period : time := 10 ns;
	
begin
	
	UUT: entity work.sdc_controller_axi
	port map(
		clk => clk,
		rst => rst,
		error => error,
		axi_ready => axi_ready,
		sd_clk => sd_clk,
		sd_cmd => sd_cmd,
		sd_dat => sd_dat
	);
	
	sd_model : sdModel
	port map(
	   sdClk => sd_clk,
	   cmd => sd_cmd,
	   dat => sd_dat
	);
	
	--Clock Drivers
	clk <= not clk after clk_period/2;
	
	stim_proc: process is begin
		
		wait for clk_period;
		
		rst <= '0';
		
		wait for clk_period;
		
		--Insert stimuli here
		wait until axi_ready = '1' or error = '1' for 10 ms;
		wait for clk_period;
		
		assert false report "End Simulation" severity failure;
		
		-- Not strictly necessary, but prevents process from looping 
		-- if the above assert statement is removed
		wait;
		
	end process;

end Behavioral;
