----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2021 10:56:10 PM
-- Design Name: 
-- Module Name: display_output - Structural
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

use work.commonPak.all;

entity display_output is
    Port (
        clk, rst, we : in STD_LOGIC;
        char_in : character;
        h_sync, v_sync : out std_logic;
        pixel : out std_logic_vector(11 downto 0)
    );
end display_output;

architecture Structural of display_output is

    constant num_char_rows : integer := 3;
    constant num_char_cols : integer := 6;
    constant num_chars : integer := num_char_rows*num_char_cols;
    
    signal row_int, col_int : integer;
    signal row_vect, col_vect : std_logic_vector(11 downto 0);
    
    signal rst_n, pixel_bit : std_logic;
    
    signal text_array : string(1 to num_chars) := (others => nul);
    
    type integer_array_type is array (num_char_rows-1 downto 0) of integer;
    signal addr_array : integer_array_type;
    
    type font_row_array_type is array (num_char_rows-1 downto 0) of std_logic_vector(7 downto 0);
    signal font_row_array : font_row_array_type;
    
    signal h_reg, v_reg : std_logic := '0';
    signal h_sync_sig, v_sync_sig : std_logic;

begin

    sync_proc: process(clk) is
        variable next_char_index : integer range 1 to num_chars := 1;
    begin
        if rising_edge(clk) then
            if rst = '1' then
                text_array <= (others => nul);
                h_reg <= '0';
                v_reg <= '0';
                next_char_index := 1;
            else
            
                h_reg <= h_sync_sig;
                v_reg <= v_sync_sig;
            
                if we = '1' then
                    text_array(next_char_index) <= char_in;
                    next_char_index := next_char_index + 1;
                end if;
                
            end if;
        end if;
    end process sync_proc;
    
    h_sync <= h_reg;
    v_sync <= v_reg;

    rst_n <= not rst;
    
    vga_cont: entity work.vga_controller
     port map(
        pixel_clk => clk,
        reset_n => rst_n,
        h_sync => h_sync_sig,
        v_sync => v_sync_sig,
        disp_ena => open,
        row => row_int,
        column => col_int,
        n_blank => open,
        n_sync => open
     );

    textElement: entity work.Pixel_On_Text_multiline
    generic map (
        num_char_rows => num_char_rows,
        num_char_cols => num_char_cols
    )
    port map(
        clk => clk,
        displayText => text_array,
        position => (10, 10),
        horzCoord => col_int,
        vertCoord => row_int,
        pixel => pixel_bit 
    );

--    textElement: entity work.Pixel_On_Text
--    generic map (
--        textLength => num_chars
--    )
--    port map(
--        clk => clk,
--        displayText => text_array,
--        position => (10, 10),
--        horzCoord => col_int,
--        vertCoord => row_int,
--        pixel => pixel_bit 
--    );
    
    gen_pixel: for i in 0 to 11 generate
        pixel(i) <= pixel_bit;
     end generate;

end Structural;
