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
        char_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
        h_sync_out, v_sync_out : out std_logic;
        pixel : out std_logic_vector(11 downto 0)
    );
end display_output;

architecture Structural of display_output is

    constant num_char_rows : integer := 50;
    constant num_char_cols : integer := 158;
--    constant num_char_rows : integer := 5;
--    constant num_char_cols : integer := 5;
    constant num_chars : integer := num_char_rows*num_char_cols;
    
    COMPONENT blk_mem_text
      PORT (
        clka : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        clkb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
    END COMPONENT;
    
    signal vga_row_sig, vga_col_sig : integer;
    
    signal rst_n, pixel_bit : std_logic;
    
    constant default_char : character := ' ';
    
--    type col_num_stage_type is array(num_char_rows downto 1) of integer range 1 to num_char_cols;
--    signal col_num_stage : col_num_stage_type := (others => 1);
--    signal text_row_stage : string(1 to num_char_rows) := (others => 'X');
--    signal rows_pending_write : std_logic_vector(num_char_rows downto 1) := (others => '0');
    
    signal curr_char_row : integer range 1 to num_char_rows := 1;
    signal curr_char_col, last_char_col : integer range 1 to num_char_cols := 1;
    
    --signal text_array : string(1 to num_chars);
    
    signal h_reg, v_reg : std_logic_vector(1 downto 0) := (others => '0');
    signal h_sync_sig, v_sync_sig : std_logic;
    
    signal vga_row_reg, vga_col_reg : integer := 0;
    
    signal text_write_en : std_logic_vector(0 downto 0) := (others => '0');
    signal text_write_addr, text_read_addr : std_logic_vector(12 downto 0);
    signal text_din, text_dout : std_logic_vector(7 downto 0);
    signal char_position : integer range 1 to num_char_rows*num_char_cols;
    signal char_code : integer range 0 to 127;
    
    signal next_text_write_addr : integer range 1 to num_char_rows*num_char_cols := 1;
    
begin

    last_char_col <= num_char_cols when curr_char_col = 1 else curr_char_col - 1;

    sync_proc: process(clk) is
        variable curr_write_addr : integer := 1;
    begin
        if rising_edge(clk) then
            if rst = '1' then
                h_reg <= (others => '0');
                v_reg <= (others => '0');
                --TODO: make on the fly memory zeroer for the text BRAM too
                --text_rows <= (others => (others => default_char));
--                col_num_stage <= (others => 1);
--                text_row_stage <= (others => 'X');
--                rows_pending_write <= (others => '0');
                text_write_en <= (others => '0');
                next_text_write_addr <= 1;
                curr_char_row <= 1;
                curr_char_col <= 1;
                vga_row_reg <= 0;
                vga_col_reg <= 0;
            else
            
                h_reg(1) <= h_sync_sig;
                h_reg(0) <= h_reg(1);
                
                v_reg(1) <= v_sync_sig;
                v_reg(0) <= v_reg(1);
                
                vga_row_reg <= vga_row_sig;
                vga_col_reg <= vga_col_sig;
                
--                for r in 1 to num_char_rows loop
--                    if rows_pending_write(r) = '1' then
                    
--                        text_rows(r)(col_num_stage(r)) <= text_row_stage(r);
                    
--                        rows_pending_write(r) <= '0';
                    
--                    end if;
--                end loop;
                
                if we = '1' then
                    
                    --control flow: CR & LF
                    if char_in = X"0D" or char_in = X"0A" then
                        
                        --increment row
                        if curr_char_row = num_char_rows then
                            curr_char_row <= 1;
                        else 
                            curr_char_row <= curr_char_row + 1;
                        end if;
                        
                        --reset column
                        curr_char_col <= 1;
                        
                        --no write this cycle
                        text_write_en(0) <= '0';
                        
                    elsif char_in = X"7F" then --DELETE
                        
                         --'delete' the last character
--                        text_row_stage(curr_char_row) <= nul;
--                        col_num_stage(curr_char_row) <= last_char_col;
                        
--                        rows_pending_write(last_char_col) <= '1';

                        text_write_addr <= std_logic_vector(to_unsigned((curr_char_row-1)*num_char_cols + last_char_col, 13));
                        text_din <= X"00";
                        text_write_en(0) <= '1';
                        
                        --decrement columnn
                        if curr_char_col = 1 then
                            
                            --decrement row
                            if curr_char_row = 1 then
                                curr_char_row <= num_char_rows;
                            else 
                                curr_char_row <= curr_char_row - 1;
                            end if;
                            
                            curr_char_col <= num_char_cols;
                        else
                            curr_char_col <= last_char_col;
                        end if;
                        
                    else
                        --proceed as normal
--                        text_row_stage(curr_char_row) <= char_in;
--                        col_num_stage(curr_char_row) <= curr_char_col;
                        
--                        rows_pending_write(curr_char_row) <= '1';

                        curr_write_addr := (curr_char_row-1)*num_char_cols + curr_char_col;

                        text_write_addr <= std_logic_vector(to_unsigned(curr_write_addr, 13));
                        text_din <= char_in;
                        text_write_en(0) <= '1';
                        
                        next_text_write_addr <= curr_write_addr + 1;
                        
                        --increment columnn
                        if curr_char_col = num_char_cols then
                            
                            --increment row
                            if curr_char_row = num_char_rows then
                                curr_char_row <= 1;
                            else 
                                curr_char_row <= curr_char_row + 1;
                            end if;
                            
                            curr_char_col <= 1;
                        else
                            curr_char_col <= curr_char_col + 1;
                        end if;
                    end if;
                    
                else
                    --no write this cycle
                    text_write_en(0) <= '0';
                end if;
                
            end if;
        end if;
    end process sync_proc;
    
--    gen_text_array_rows: for r in 1 to num_char_rows generate
--        text_array((r-1)*num_char_cols + 1 to r*num_char_cols) <= text_rows(r);
--    end generate gen_text_array_rows;
    
    h_sync_out <= h_reg(0);
    v_sync_out <= v_reg(0);

    rst_n <= not rst;
    
    vga_cont: entity work.vga_controller
     port map(
        pixel_clk => clk,
        reset_n => rst_n,
        h_sync => h_sync_sig,
        v_sync => v_sync_sig,
        disp_ena => open,
        row => vga_row_sig,
        column => vga_col_sig,
        n_blank => open,
        n_sync => open
     );
          
     text_rows : blk_mem_text
      PORT MAP (
        clka => clk,
        wea => text_write_en,
        addra => text_write_addr,
        dina => text_din,
        clkb => clk,
        addrb => text_read_addr,
        doutb => text_dout
      );
      
      -- when the read address is one that has already been written to, pass it through, otherwise overwrite the adress with 0, 
      -- which will always be the initial value since no character is written to address 0 in this schema.
      text_read_addr <= std_logic_vector(to_unsigned(char_position, 13)) when char_position < next_text_write_addr else (others => '0');
      char_code <= to_integer(unsigned(text_dout));

    textElement: entity work.Pixel_On_Text_multiline
    generic map(
        num_char_rows => num_char_rows,
        num_char_cols => num_char_cols
    )
    port map(
        clk => clk,
        charPosition => char_position,
        charCode => char_code,
        position => (10, 10),
        horzCoord => vga_col_reg,
        vertCoord => vga_row_reg,
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
--        horzCoord => vga_col_reg,
--        vertCoord => vga_row_reg,
--        pixel => pixel_bit 
--    );
    
    gen_pixel: for i in 0 to 11 generate
        pixel(i) <= pixel_bit;
     end generate;

end Structural;
