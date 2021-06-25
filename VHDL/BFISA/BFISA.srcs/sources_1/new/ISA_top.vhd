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

    constant RAM_bits : integer := 16;

    COMPONENT dist_mem_gen_0
      PORT (
        a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;
    
    COMPONENT blk_mem_gen_0
      PORT (
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(RAM_bits-1 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;
    
    COMPONENT dist_mem_rom
      PORT (
        a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        spo : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
      );
    END COMPONENT;
    
    COMPONENT blk_mem_rom
      PORT (
        clka, rsta : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
        rsta_busy : OUT STD_LOGIC
      );
    END COMPONENT;
    
    constant ROM_bus_width : integer := 17;
    constant jump_addr_width : integer := ROM_bus_width - 3;
    constant jump_zero_padding : std_logic_vector(16-jump_addr_width-1 downto 0) := (others => '0');

    --control signals
    signal ptrop, memop, loopback, memsrc, modptr, jump, outp, modmem, hold : std_logic;
    signal rom_rst_busy : std_logic;

    signal PC_clock_en, PC_jump_sel, cell_zero, ptr_ce, RAM_ce : std_logic;
    --signal RAM_addr_switch : std_logic;
    signal new_PC_addr, new_ROM_addr, PC_out, PC_jump_addr, ptr_out, ptr_in, ptr_signed_one, RAM_addr : std_logic_vector(15 downto 0);
    signal ROM_out : std_logic_vector(ROM_bus_width-1 downto 0);
    signal RAM_data_in, RAM_data_out, mem_signed_one : std_logic_vector(7 downto 0);
    
    signal bram_we : std_logic_vector(0 downto 0);
    
    signal next_ptr_q, next_ptr_d : std_logic_vector(15 downto 0);
    signal pointer_is_new_val, next_ptr_ce : std_logic;
    signal RAM_s : std_logic_vector(1 downto 0);
    
    signal out_en_reg, modptr_reg : std_logic := '0';
    signal pause_pc, pause_ram : std_logic;

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
    
    process(clk) is begin
        if rising_edge(clk) then
            if rst = '1' or rom_rst_busy = '1' then
            
            elsif ce = '1' then
                out_en_reg <= outp;
                modptr_reg <= modptr;
            end if;
        end if;
    end process;
    
    pause_pc <= pause_ram or (modptr_reg and jump);
    
    -- only when CE is on, and either:
    --      input is valid, or
    --      the HOLD signal is low and the ROM is not busy resetting (usual operation)
    PC_clock_en <= ce and (not pause_pc) and (input_valid or (not (hold or rom_rst_busy)));

    PC: entity work.register_16b
    port map(
        clk => clk,
        rst => rst,
        ce => PC_clock_en,
        D => new_PC_addr,
        Q => PC_out
    );
    
    PC_jump_addr <= jump_zero_padding & ROM_out(ROM_bus_width-1 downto 3);
    
    PC_jump_sel <= jump and (loopback xor cell_zero);
    
    new_PC_addr <= PC_jump_addr when PC_jump_sel = '1' else std_logic_vector(unsigned(PC_out) + to_unsigned(1, 16));
    
--    prog_mem: entity work.rom
--    port map(
--        addr => PC_out,
--        data_out => ROM_out
--    );

--    prog_mem : dist_mem_rom
--      port map (
--        a => PC_out(13 downto 0),
--        spo => ROM_out
--      );

    new_ROM_addr <= new_PC_addr when rom_rst_busy = '0' else (others => '0');

    prog_mem : blk_mem_rom
      PORT MAP (
        clka => clk,
        rsta => rst, --this only resets the input register, not the ROM configuration.
        ena => PC_clock_en,
        addra => new_ROM_addr,
        douta => ROM_out,
        rsta_busy => rom_rst_busy
      );
    
    ptr_ce <= (not rom_rst_busy) and ce and modptr;
    
    Pointer: entity work.register_16b
    port map(
        clk => clk,
        rst => rst,
        ce => ptr_ce,
        D => ptr_in,
        Q => ptr_out
    );
    
    pointer_is_new_val <= '1' when RAM_addr = next_ptr_q else '0';
    next_ptr_ce <= (not rom_rst_busy) and ce and pointer_is_new_val;
    next_ptr_d <= std_logic_vector(unsigned(next_ptr_q) + 1);
    
    Next_Ptr: entity work.register_16b
    port map(
        clk => clk,
        rst => rst,
        ce => next_ptr_ce,
        D => next_ptr_d,
        Q => next_ptr_q
    );
    
    ptr_signed_one(0) <= '1';
    gen_ptr_signed_one: for i in 1 to 15 generate
        ptr_signed_one(i) <= ptrop;
    end generate gen_ptr_signed_one;
    
    ptr_in <= std_logic_vector(unsigned(ptr_out) + unsigned(ptr_signed_one));
    
    --RAM_addr_switch <= (not modptr);
    
    --on instructions where the pointer is NOT modified (ie. the result of the last cycle's pointer modification matters)
    --we have to advance the pointer result by a cycle in order to jump a pipeline stage in the RAM
    --so when the clock is low, you bypass the pointer register
    --RAM_addr <= ptr_out when RAM_addr_switch = '1' else ptr_in;
    RAM_addr <= ptr_out;
    
    mem_signed_one(0) <= '1';
    gen_mem_signed_one: for i in 1 to 7 generate
        mem_signed_one(i) <= memop;
    end generate gen_mem_signed_one;
    
    --RAM_data_in <= key when memsrc = '1' else std_logic_vector(unsigned(RAM_data_out) + unsigned(mem_signed_one));
    RAM_s <= pointer_is_new_val & memsrc;
    with RAM_s select RAM_data_in <=
        std_logic_vector(unsigned(RAM_data_out) + unsigned(mem_signed_one)) when "00",
        key when "01",
        (others => '0') when others;
    
    pause_ram <= modptr_reg and modmem;
    
    RAM_ce <= (not rom_rst_busy) and ((modmem and (not pause_ram)) or pointer_is_new_val) and ce;
    
--    work_mem: entity work.ram
--    generic map(addr_bits => RAM_bits)
--    port map(
--        addr => RAM_addr(RAM_bits-1 downto 0),
--        clk => clk,
--        rst => rst,
--        we => RAM_ce,
--        data_in => RAM_data_in,
--        data_out => RAM_data_out
--    );

--    work_mem : dist_mem_gen_0
--      PORT MAP (
--        a => RAM_addr(RAM_bits-1 downto 0),
--        d => RAM_data_in,
--        clk => clk,
--        we => RAM_ce,
--        spo => RAM_data_out
--      );

    bram_we(0) <= RAM_ce;

    work_mem : blk_mem_gen_0
      PORT MAP (
        clka => clk,
        wea => bram_we,
        addra => RAM_addr(RAM_bits-1 downto 0),
        dina => RAM_data_in,
        douta => RAM_data_out
      );
    
    cell_zero <= '1' when RAM_data_out = x"00" else '0';
    
    char_out <= RAM_data_out;
    
    out_enable <= out_en_reg;

end Structural;
