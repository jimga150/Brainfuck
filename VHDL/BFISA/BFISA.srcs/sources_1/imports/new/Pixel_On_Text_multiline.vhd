-- Pixel_On_Text determines if the current pixel is on text
-- param:
--   textlength, use to init the string
-- input: 
--   VGA clock(the clk you used to update VGA)
--   display text
--   top left corner of the text box
--   current X and Y position
-- output:
--   a bit that represent whether is the pixel in text

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- note this line.The package is compiled to this directory by default.
-- so don't forget to include this directory. 
library work;
-- this line also is must.This includes the particular package into your program.
use work.commonPak.all;

entity Pixel_On_Text_multiline is
	generic(
	   -- needed for init displayText, the default value 11 is just a random number
       num_char_rows : integer := 4;
       num_char_cols : integer := 158
	);
	port (
		clk: in std_logic;
		displayText: in string (1 to num_char_rows*num_char_cols) := (others => NUL);
		-- top left corner of the text
		position: in point_2d := (0, 0);
		-- current pixel postion
		horzCoord: in integer;
		vertCoord: in integer;
		
		pixel: out std_logic := '0'
	);

end Pixel_On_Text_multiline;

architecture Behavioral of Pixel_On_Text_multiline is

    type string_array_type is array (1 to num_char_rows) of string(1 to num_char_cols);
    signal string_array : string_array_type;

	signal fontAddress: integer;
	-- A row of bit in a charactor, we check if our current (x,y) is 1 in char row
	signal charBitInRow: std_logic_vector(FONT_WIDTH-1 downto 0);
	-- char in ASCII code
	signal charCode: integer;
	-- the position(column) of a charactor in the given text
	signal charXpos, charYpos: integer := 1;
	-- the bit position(column) in a charactor
	signal bitPosition: integer;
	
	signal current_line_reg : string(1 to num_char_cols) := (others => nul);
	
begin
    -- (horzCoord - position.x): x positionin the top left of the whole text
    
    -- what character index (1-indexed) we are interested in from the string
    --vertCoord/FONT_HEIGHT: the number of rows offset we need
    --num_char_cols*FONT_WIDTH*vertCoord/FONT_HEIGHT: the number of pixels offset the vertical coord would incur if this was otherwise going to be a stright line of chracters
    --moved to clk process
    --charPosition <= ((horzCoord + num_char_cols*FONT_WIDTH*vertCoord/FONT_HEIGHT) - position.x)/FONT_WIDTH + 1;
    
    -- what bit in the byte we need from the font (the x position of the pixel in the font)
    bitPosition <= (horzCoord - position.x) mod FONT_WIDTH;
    
    -- ASCII code of character from string (moved to clk process)
    --charCode <= character'pos(displayText(charPosition));
    
    -- charCode*FONT_HEIGHT: first row of the char
    
    --row number (within font ROM) of the right row from the font from the right character
    fontAddress <= charCode*FONT_HEIGHT+( (vertCoord mod FONT_HEIGHT) - position.y);
    
    charXpos <= (horzCoord - position.x)/FONT_WIDTH;
    -- 0-indexed
    charYpos <= (vertCoord - position.y)/FONT_HEIGHT;
    
    gen_split_rows: for r in 1 to num_char_rows generate
        string_array(r) <= displayText((r-1)*num_char_cols + 1 to r*num_char_cols);
    end generate gen_split_rows;


	fontRom: entity work.Font_Rom
	port map(
		clk => clk,
		addr => fontAddress,
		fontRow => charBitInRow
	);
	
	pixelOn: process(clk)
		variable inXRange: boolean := false;
		variable inYRange: boolean := false;
	begin
        if rising_edge(clk) then
            
            --charPosition <= ((horzCoord + num_char_cols*FONT_WIDTH*vertCoord/FONT_HEIGHT) - position.x)/FONT_WIDTH + 1;
            current_line_reg <= string_array(charYpos + 1);
            charCode <= character'pos(current_line_reg(charXpos));
            
            -- reset
            inXRange := false;
            inYRange := false;
            pixel <= '0';
            
            -- If current pixel is in the horizontal range of text
            if horzCoord >= position.x and horzCoord < position.x + (FONT_WIDTH * num_char_cols) then
                inXRange := true;
            end if;
            
            -- If current pixel is in the vertical range of text
            if vertCoord >= position.y and vertCoord < position.y + (FONT_HEIGHT * num_char_rows) then
                inYRange := true;
            end if;
            
            -- need to check if the pixel is on for text
            if inXRange and inYRange then
                -- FONT_WIDTH-bitPosition: we are reverting the charactor
                if charBitInRow(FONT_WIDTH-bitPosition) = '1' then
                    pixel <= '1';
                end if;					
            end if;

		end if;
	end process;

end Behavioral;