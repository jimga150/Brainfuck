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
       num_char_rows : integer := 3;
       num_char_cols : integer := 6
	);
	port (
		clk: in std_logic;
		displayText: in string (1 to num_char_rows*num_char_cols) := (others => nul);
		-- top left corner of the text
		position: in point_2d := (0, 0);
		-- current pixel postion
		horzCoord: in integer := 0;
		vertCoord: in integer := 0;
		
		pixel: out std_logic := '0'
	);

end Pixel_On_Text_multiline;

architecture Behavioral of Pixel_On_Text_multiline is

	signal fontAddress: integer range 0 to 127*FONT_HEIGHT := 0;
	
	-- A row of bit in a charactor, we check if our current (x,y) is 1 in char row
	signal charBitInRow: std_logic_vector(FONT_WIDTH-1 downto 0) := (others => '0');
	
	-- char in ASCII code
	signal charCode:integer range 0 to 127 := 0;
	
	-- the position of a charactor in the given text
	signal charCol : integer range 1 to num_char_cols := 1;
	signal charRow : integer range 1 to num_char_rows := 1;
	signal charPosition : integer range 1 to num_char_rows*num_char_cols := 1;
	
	-- the bit position(column) in a charactor
	signal bitPosition:integer range 0 to FONT_WIDTH - 1 := 0;
	
	type int_array_type is array (1 downto 0) of integer;
	signal horz_reg, vert_reg : int_array_type := (others => 0);
	
begin
    -- (horz_reg - position.x): x positionin the top left of the whole text
    bitPosition <= (horz_reg(0) - position.x) mod FONT_WIDTH;
    
    -- zero indexed
    charCol <= (horzCoord - position.x)/FONT_WIDTH;
    charRow <= (vertCoord - position.y)/FONT_HEIGHT;
    
    -- one-indexed
    charPosition <= charRow*num_char_cols + charCol + 1;
    
    charCode <= character'pos(displayText(charPosition));
    
    -- charCode*16: first row of the char
    fontAddress <= charCode*FONT_HEIGHT+((vertCoord - position.y) mod FONT_HEIGHT);


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
        
            -- add 2 cycle of delay to row/column numbernig to match font rom delay
            horz_reg(1) <= horzCoord;
            horz_reg(0) <= horz_reg(1);
            
            vert_reg(1) <= vertCoord;
            vert_reg(0) <= vert_reg(1);
            
            -- reset
            inXRange := false;
            inYRange := false;
            pixel <= '0';
            -- If current pixel is in the horizontal range of text
            if horz_reg(0) >= position.x and horz_reg(0) < position.x + (FONT_WIDTH * num_char_cols) then
                inXRange := true;
            end if;
            
            -- If current pixel is in the vertical range of text
            if vert_reg(0) >= position.y and vert_reg(0) < position.y + (FONT_HEIGHT * num_char_rows) then
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