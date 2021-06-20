----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 03:55:23 PM
-- Design Name: 
-- Module Name: ISA_top - Structural
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

entity ISA_top is
    Port ( clk, rst, input_valid, ce : in STD_LOGIC;
           key : in std_logic_vector(7 downto 0) := (others => '0');
           out_enable : out STD_LOGIC;
           char_out : out STD_LOGIC_VECTOR (7 downto 0));
end ISA_top;

architecture Structural of ISA_top is

    COMPONENT dist_mem_gen_0
      PORT (
        a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;
    
    COMPONENT blk_mem_gen_0
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;

    --control signals
    signal ptrop, memop, loopback, memsrc, modptr, jump, outp, modmem, hold : std_logic;

    signal PC_clock_en, PC_jump_sel, RAM_addr_switch, cell_zero, ptr_ce, RAM_ce : std_logic;
    signal new_PC_addr, PC_out, PC_jump_addr, ROM_out, ptr_out, ptr_next, ptr_signed_one, RAM_addr : std_logic_vector(15 downto 0);
    signal RAM_data_in, RAM_data_out, mem_signed_one : std_logic_vector(7 downto 0);
    
    signal bram_we : std_logic_vector(0 downto 0);

begin

    --getting this out of the way up here
    d_code: entity work.decoder
    port map(
        opcode => ROM_out(2 downto 0),
        ptrop => ptrop,
        memop => memop,
        loopback => loopback,
        memsrc => memsrc,
        modptr => modptr,
        jump => jump,
        outp => outp,
        modmem => modmem,
        hold => hold
    );
    
    
    PC_clock_en <= ce and (input_valid or (not hold));

    PC: entity work.register_16b
    port map(
        clk => clk,
        rst => rst,
        ce => PC_clock_en,
        D => new_PC_addr,
        Q => PC_out
    );
    
    PC_jump_addr <= "000" & ROM_out(15 downto 3);
    
    PC_jump_sel <= jump and (loopback xor cell_zero);
    
    new_PC_addr <= PC_jump_addr when PC_jump_sel = '1' else std_logic_vector(unsigned(PC_out) + to_unsigned(1, 16));
    
    prog_mem: entity work.rom
    port map(
        addr => PC_out,
        data_out => ROM_out
    );
    
    ptr_ce <= ce and modptr;
    
    Pointer: entity work.register_16b
    port map(
        clk => clk,
        rst => rst,
        ce => ptr_ce,
        D => ptr_next,
        Q => ptr_out
    );
    
    ptr_signed_one(0) <= '1';
    gen_ptr_signed_one: for i in 1 to 15 generate
        ptr_signed_one(i) <= ptrop;
    end generate gen_ptr_signed_one;
    
    ptr_next <= std_logic_vector(unsigned(ptr_out) + unsigned(ptr_signed_one));
    
    RAM_addr_switch <= (not modptr) or clk;
    
    --on instructions where the pointer is NOT modified (ie. the result of the last cycle's pointer modification matters)
    --we have to advance the pointer result by a cycle in order to jump a pipeline stage in the RAM
    --so when the clock is low, you bypass the pointer register
    RAM_addr <= ptr_out when RAM_addr_switch = '1' else ptr_next;
    
    mem_signed_one(0) <= '1';
    gen_mem_signed_one: for i in 1 to 7 generate
        mem_signed_one(i) <= memop;
    end generate gen_mem_signed_one;
    
    RAM_data_in <= key when memsrc = '1' else std_logic_vector(unsigned(RAM_data_out) + unsigned(mem_signed_one));
    
--    work_mem: entity work.ram
--    port map(
--        addr => RAM_addr,
--        clk => clk,
--        rst => rst,
--        ce => ce,
--        we => modmem,
--        data_in => RAM_data_in,
--        data_out => RAM_data_out
--    );

    RAM_ce <= modmem and ce;

    work_mem : dist_mem_gen_0
    port map(
        a => RAM_addr(7 downto 0),
        clk => clk,
        we => RAM_ce,
        d => RAM_data_in,
        spo => RAM_data_out
    );

--    bram_we(0) <= modmem;

--    work_mem : blk_mem_gen_0 
--      PORT MAP (
--        clka => clk,
--        ena => ce,
--        wea => bram_we,
--        addra => RAM_addr(7 downto 0),
--        dina => RAM_data_in,
--        douta => RAM_data_out
--      );
    
    cell_zero <= '1' when RAM_data_out = x"00" else '0';
    
    char_out <= RAM_data_out;
    
    out_enable <= outp;

end Structural;
