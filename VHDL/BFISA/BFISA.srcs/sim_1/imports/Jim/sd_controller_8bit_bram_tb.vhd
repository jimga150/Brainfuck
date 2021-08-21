----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/18/2021 16:53:21
-- Design Name: sd_controller_8bit_bram_tb
-- Module Name: sd_controller_8bit_bram_tb - Behavioral
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
library work;
use work.sd_host_pack.all;
use work.dds_pack.all;
use work.fifo_pack.all;
use work.convert_pack.all;
use work.signal_conditioning_pack.all;

entity sd_controller_8bit_bram_tb is
end sd_controller_8bit_bram_tb;

architecture Behavioral of sd_controller_8bit_bram_tb is

    COMPONENT blk_mem_gen_sd_8bit_bram_tb
      PORT (
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;
    
    component sdModel is
        port(
            sdClk : in std_logic;
            cmd : inout std_logic;
            dat : inout std_logic_vector(3 downto 0)
        );
    end component;
	
	--Clocks
	signal wb_clk_i : std_logic := '0';
	
	--Resets
	signal wb_rst_i : std_logic := '1';
	
	--General inputs
	signal wb_dat_i : unsigned(31 downto 0) := (others => '0');
	signal wb_adr_i : unsigned(3 downto 0) := (others => '0');
	signal wb_we_i : std_logic := '0';
	signal wb_cyc_i : std_logic := '0';
	signal bram_dat_i : unsigned(7 downto 0);
	signal bram_dat_i_slv : std_logic_vector(7 downto 0);
	signal sd_cmd_i : std_logic;
	signal sd_dat_i : unsigned(7 downto 0);
	
	--inouts
	signal sd_cmd : std_logic;
	signal sd_data : std_logic_vector(3 downto 0);
	
	
	--Outputs
	signal wb_dat_o : unsigned(31 downto 0);
	signal wb_ack_o : std_logic;
	signal bram_clk_o : std_logic;
	signal bram_dat_o : unsigned(7 downto 0);
	signal bram_adr_o : unsigned(31 downto 0);
	signal bram_we_o : std_logic;
	signal bram_we_o_vect : std_logic_vector(0 downto 0);
	signal bram_cyc_o : std_logic;
	signal sd_cmd_o : std_logic;
	signal sd_cmd_oe_o : std_logic;
	signal sd_dat_o : unsigned(7 downto 0);
	signal sd_dat_oe_o : std_logic;
	signal sd_dat_siz_o : unsigned(1 downto 0);
	signal sd_clk_o_pad : std_logic;
	signal int_cmd_o : std_logic;
	signal int_data_o : std_logic;
	
	--Clock Periods
	constant wb_clk_i_period : time := 10 ns;
	
	function to_hstring(slv: std_logic_vector) return string is
        constant hexlen : integer := (slv'length+3)/4;
        variable longslv : std_logic_vector(slv'length+3 downto 0) := (others => '0');
        variable hex : string(1 to hexlen);
        variable fourbit : std_logic_vector(3 downto 0);
    begin
        longslv(slv'length-1 downto 0) := slv;
        for i in hexlen-1 downto 0 loop
            fourbit := longslv(i*4+3 downto i*4);
            case fourbit is
                when "0000" => hex(hexlen-i) := '0';
                when "0001" => hex(hexlen-i) := '1';
                when "0010" => hex(hexlen-i) := '2';
                when "0011" => hex(hexlen-i) := '3';
                when "0100" => hex(hexlen-i) := '4';
                when "0101" => hex(hexlen-i) := '5';
                when "0110" => hex(hexlen-i) := '6';
                when "0111" => hex(hexlen-i) := '7';
                when "1000" => hex(hexlen-i) := '8';
                when "1001" => hex(hexlen-i) := '9';
                when "1010" => hex(hexlen-i) := 'A';
                when "1011" => hex(hexlen-i) := 'B';
                when "1100" => hex(hexlen-i) := 'C';
                when "1101" => hex(hexlen-i) := 'D';
                when "1110" => hex(hexlen-i) := 'E';
                when "1111" => hex(hexlen-i) := 'F';
                when "ZZZZ" => hex(hexlen-i) := 'Z';
                when "UUUU" => hex(hexlen-i) := 'U';
                when "XXXX" => hex(hexlen-i) := 'X';
                when others => hex(hexlen-i) := '?';
            end case;
        end loop;
        return "0x" & hex;
    end function to_hstring;
	
	procedure write_reg (addr : in std_logic_vector(3 downto 0);
	                     val : in std_logic_vector(31 downto 0);
	                     signal wb_ack : in std_logic;
	                     signal wb_addr : out unsigned(3 downto 0);
	                     signal wb_dat_input : out unsigned(31 downto 0);
	                     signal wb_we, wb_cyc : out std_logic;
                         ok : out boolean
                         ) is
        variable ok_reg : boolean := False;
    begin
    
        if (wb_clk_i = '1') then
            wait until falling_edge(wb_clk_i);
        end if;
        
        --first cycle: no activity.
        wb_addr <= (others => '0');
        wb_dat_input <= (others => '0');
        wb_we <= '0';
        wb_cyc <= '0';
        
        wait until rising_edge(wb_clk_i);
        wait for wb_clk_i_period/2;
        
        --second cycle: pulse cyc
        wb_cyc <= '1';
        
        wait until rising_edge(wb_clk_i);
        wait for wb_clk_i_period/2;
        
        --third cycle: pulse write en and place arguments on bus
        wb_addr <= unsigned(addr);
        wb_dat_input <= unsigned(val);
        wb_we <= '1';
        wb_cyc <= '0';
        
        ok_reg := wb_ack = '1';
        
        wait until rising_edge(wb_clk_i);
        wait for wb_clk_i_period/2;
        
        wb_addr <= (others => '0');
        wb_dat_input <= (others => '0');
        wb_we <= '0';
        
        ok := ok_reg;
        report "Wrote at " & to_hstring(addr) & " data " & to_hstring(val);
        assert ok_reg report "Write failed" severity error;
       
    end write_reg;
    
    procedure read_reg (addr : in std_logic_vector(3 downto 0);
	                     val : out std_logic_vector(31 downto 0);
	                     signal wb_addr : out unsigned(3 downto 0);
	                     signal wb_dat_rxed : in unsigned(31 downto 0)
	                     ) is
       -- subprogram_declarative_items (constant declarations, variable declarations, etc.)
    begin
       if (wb_clk_i = '1') then
            wait until falling_edge(wb_clk_i);
        end if;
        
        wb_addr <= unsigned(addr);
        
        wait until rising_edge(wb_clk_i);
        wait for wb_clk_i_period/2;
        
        val := std_logic_vector(wb_dat_rxed);        
        wb_addr <= (others => '0');
        
        report "Read at " & to_hstring(addr) & " was " & to_hstring(std_logic_vector(wb_dat_rxed));

    end read_reg;
	
begin
	
	UUT: entity work.sd_controller_8bit_bram
	port map(
		wb_clk_i => wb_clk_i,
		wb_rst_i => wb_rst_i,
		wb_dat_i => wb_dat_i,
		wb_dat_o => wb_dat_o,
		wb_adr_i => wb_adr_i,
		wb_we_i => wb_we_i,
		wb_cyc_i => wb_cyc_i,
		wb_ack_o => wb_ack_o,
		bram_clk_o => bram_clk_o,
		bram_dat_o => bram_dat_o,
		bram_dat_i => bram_dat_i,
		bram_adr_o => bram_adr_o,
		bram_we_o => bram_we_o,
		bram_cyc_o => bram_cyc_o,
		sd_cmd_i => sd_cmd_i,
		sd_cmd_o => sd_cmd_o,
		sd_cmd_oe_o => sd_cmd_oe_o,
		sd_dat_i => sd_dat_i,
		sd_dat_o => sd_dat_o,
		sd_dat_oe_o => sd_dat_oe_o,
		sd_dat_siz_o => sd_dat_siz_o,
		sd_clk_o_pad => sd_clk_o_pad,
		int_cmd_o => int_cmd_o,
		int_data_o => int_data_o
	);
	
	bram_we_o_vect(0) <= bram_we_o;
	bram_dat_i <= unsigned(bram_dat_i_slv);
	
	bram_inst : blk_mem_gen_sd_8bit_bram_tb
      PORT MAP (
        clka => bram_clk_o,
        wea => bram_we_o_vect,
        addra => std_logic_vector(bram_adr_o(12 downto 0)),
        dina => std_logic_vector(bram_dat_o),
        douta => bram_dat_i_slv
      );
      
      sd_cmd <= sd_cmd_o when sd_cmd_oe_o = '1' else 'Z';
      sd_cmd_i <= sd_cmd;
      
      sd_data <= std_logic_vector(sd_dat_o(3 downto 0)) when sd_dat_oe_o = '1' else (others => 'Z');
      sd_dat_i <= "0000" & unsigned(sd_data);
      
        sd_model : sdModel
        port map(
           sdClk => sd_clk_o_pad,
           cmd => sd_cmd,
           dat => sd_data
        );
	
	--Clock Drivers
	wb_clk_i <= not wb_clk_i after wb_clk_i_period/2;
	
	stim_proc: process is
	   variable ok : boolean := False;
	   variable read_val : std_logic_vector(31 downto 0) := (others => '0');
	begin
		
		wait for wb_clk_i_period;
		
		wb_rst_i <= '0';
		
		wait for wb_clk_i_period;
		
		--Insert stimuli here
		
		write_reg(X"8", X"00000010", wb_ack_o, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, ok);
		
		read_reg(X"8", read_val, wb_adr_i, wb_dat_o);
		
		write_reg(X"8", X"03e80011", wb_ack_o, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, ok);
		
		write_reg(X"9", X"40000000", wb_ack_o, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, ok);
		
		write_reg(X"8", X"03e80001", wb_ack_o, wb_adr_i, wb_dat_i, wb_we_i, wb_cyc_i, ok);
		
		assert false report "End Simulation" severity failure;
		
		-- Not strictly necessary, but prevents process from looping 
		-- if the above assert statement is removed
		wait;
		
	end process;

end Behavioral;
