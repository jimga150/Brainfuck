----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2021 11:48:31 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( clk, rst, input_valid, ce : in STD_LOGIC;
           key : in std_logic_vector(7 downto 0) := (others => '0');
           out_enable : out STD_LOGIC;
           --ce_count, iv_count : out std_logic_vector(7 downto 0);
           char_out : out STD_LOGIC_VECTOR (7 downto 0);
           h_sync, v_sync : out std_logic;
           pixel : out std_logic_vector(11 downto 0)
           );
end top;

architecture Structural of top is

    component clk_wiz_0
    port
     (-- Clock in ports
      -- Clock out ports
      clk_out1          : out    std_logic;
      -- Status and control signals
      reset             : in     std_logic;
      locked            : out    std_logic;
      clk_in1           : in     std_logic
     );
    end component;
    
    component clk_wiz_1
    port
     (-- Clock in ports
      -- Clock out ports
      clk_logic          : out    std_logic;
      clk_vga          : out    std_logic;
      -- Status and control signals
      reset             : in     std_logic;
      locked            : out    std_logic;
      clk_in1           : in     std_logic
     );
    end component;
    
    COMPONENT fifo_generator_0
      PORT (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
      );
    END COMPONENT;
    
    signal dbcd_ce, dbcd_input_valid, clk_50mhz, clk_vga, clk_locked, logic_rst, out_en, fifo_empty, disp_char_we, fifo_re : std_logic;
    signal fifo_empty_reg : std_logic := '0';
    signal char_disp_char : character;
    signal char_from_isa, char_to_disp : std_logic_vector(7 downto 0);

begin

--    clk_divider : clk_wiz_0
--       port map ( 
--      -- Clock out ports  
--       clk_out1 => clk_50mhz, --50MHz
--      -- Status and control signals                
--       reset => rst,
--       locked => clk_locked,
--       -- Clock in ports
--       clk_in1 => clk --100MHz
--     );

    clk_divider : clk_wiz_1
       port map ( 
      -- Clock out ports  
       clk_logic => clk_50mhz,
       clk_vga => clk_vga,
      -- Status and control signals                
       reset => rst,
       locked => clk_locked,
       -- Clock in ports
       clk_in1 => clk
     );
     
     logic_rst <= rst or (not clk_locked);

    ISA: entity work.ISA_top
    port map(
        clk => clk_50mhz,
        rst => logic_rst, 
        input_valid => dbcd_input_valid,
        ce => ce,
        key => key,
        out_enable => out_en,
        char_out => char_from_isa
    );
    
    char_out <= char_to_disp;
    char_disp_char <= character'val(to_integer(unsigned(char_to_disp)));
    out_enable <= disp_char_we;
    
    iv_dbcr: entity work.debounce_pulse_gen
    port map(
        clk => clk_50mhz,
        rst => logic_rst,
        btn_in => input_valid,
        count => open,
        pulse => dbcd_input_valid
    );
    
    ce_dbcr: entity work.debounce_pulse_gen
    port map(
        clk => clk_50mhz,
        rst => logic_rst,
        btn_in => ce,
        count => open,
        pulse => dbcd_ce
    );
    
    disp_char_we <= not fifo_empty_reg;
    fifo_re <= not fifo_empty;
    
    disp_fifo: fifo_generator_0
      PORT MAP (
        rst => logic_rst,
        wr_clk => clk_50mhz,
        rd_clk => clk_vga,
        din => char_from_isa,
        wr_en => out_en,
        rd_en => fifo_re,
        dout => char_to_disp,
        full => open,
        empty => fifo_empty
      );
      
    process(clk_vga) is begin
        if rising_edge(clk_vga) then
            fifo_empty_reg <= fifo_empty;
        end if;
    end process;

    disp: entity work.display_output
    port map(
        clk => clk_vga,
        rst => logic_rst,
        we => disp_char_we,
        char_in => char_disp_char,
        h_sync => h_sync,
        v_sync => v_sync,
        pixel => pixel
    );

end Structural;
