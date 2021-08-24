----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/24/2021 01:23:55
-- Design Name: sd_axi_tester_tb
-- Module Name: sd_axi_tester_tb - Behavioral
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

entity sd_axi_tester_tb is
end sd_axi_tester_tb;

architecture Behavioral of sd_axi_tester_tb is

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
	
	--General inputs
	signal start_btn : std_logic := '0';
	signal continue_btn : std_logic := '0';
	
	--In-Outs
	signal sd_cmd : std_logic;
	signal sd_dat : std_logic_vector(3 downto 0);
	
	--Outputs
	signal sd_ready : std_logic;
	signal sd_err : std_logic;
	signal byte_disp : std_logic_vector(7 downto 0);
	signal sd_clk : std_logic;
	
	--Clock Periods
	constant clk_period : time := 10 ns;
	
begin
	
	UUT: entity work.sd_axi_tester
	port map(
		clk => clk,
		rst => rst,
		sd_ready => sd_ready,
		sd_err => sd_err,
		start_btn => start_btn,
		continue_btn => continue_btn,
		byte_disp => byte_disp,
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
		start_btn <= '1';
		wait for 1200 us;
		start_btn <= '0';
		wait for 1200 us;
		
		for i in 0 to 16 loop
            continue_btn <= '1';
            wait for 1200 us;
            continue_btn <= '0';
            wait for 1200 us;
		end loop;
		
		assert false report "End Simulation" severity failure;
		
		-- Not strictly necessary, but prevents process from looping 
		-- if the above assert statement is removed
		wait;
		
	end process;

end Behavioral;
