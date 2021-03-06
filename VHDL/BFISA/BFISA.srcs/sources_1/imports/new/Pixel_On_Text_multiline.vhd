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
    generic (
        num_char_rows : integer := 4;
        num_char_cols_term1, num_char_cols_term2 : integer := 2
    );
	port (
		clk: in std_logic;
		
		-- interfeace with text BRAM
		charPosition : out integer range 1 to num_char_rows*num_char_cols_term1*num_char_cols_term2 := 1;
		charCode : in integer range 0 to 127;
		
		-- top left corner of the text
		position: in point_2d := (0, 0);
		-- current pixel postion
		horzCoord: in integer := 0;
		vertCoord: in integer := 0;
		
		pixel: out std_logic := '0'
	);

end Pixel_On_Text_multiline;

architecture Behavioral of Pixel_On_Text_multiline is

    constant num_char_cols : integer := num_char_cols_term1*num_char_cols_term2;

	signal fontAddress: integer range 0 to 127*FONT_HEIGHT := 0;
	
	-- A row of bit in a charactor, we check if our current (x,y) is 1 in char row
	signal charBitInRow: std_logic_vector(FONT_WIDTH-1 downto 0) := (others => '0');
	
	-- the position of a charactor in the given text
	signal charCol : integer range 1 to num_char_cols := 1;
	signal charRow : integer range 1 to num_char_rows := 1;
	
	signal charPosition_rowdep_1, charPosition_rowdep_2 : integer range 1 to num_char_rows*num_char_cols := 1;
	
	-- the bit position(column) in a charactor
	signal bitPosition:integer range 0 to FONT_WIDTH - 1 := 0;
	
	type int_array_type is array (1 to 7) of integer;
	signal horz_reg, vert_reg : int_array_type := (others => 0);
	
begin
    -- (horz_reg - position.x): x positionin the top left of the whole text
    -- moved to clk process
--    bitPosition <= (horz_reg(0) - position.x) mod FONT_WIDTH;
    
    -- zero indexed
--    charCol <= (horzCoord - position.x)/FONT_WIDTH;
--    charRow <= (vertCoord - position.y)/FONT_HEIGHT;
    
    -- one-indexed
    -- moved to clk process
--    charPosition <= charRow*num_char_cols + charCol + 1;
    
--    charCode <= character'pos(displayText(charPosition));
    
-- fetches charCode from BRAM outside this module
    fontAddress <= charCode*FONT_HEIGHT+((vert_reg(5) - position.y) mod FONT_HEIGHT);


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
        
            -- add n cycle of delay to row/column numbernig to match font rom delay
            horz_reg(1) <= horzCoord;
            vert_reg(1) <= vertCoord;
            for i in 2 to 7 loop
                horz_reg(i) <= horz_reg(i-1);
                vert_reg(i) <= vert_reg(i-1);
            end loop;
            
            --cycle 1
            charRow <= (vertCoord - position.y)/FONT_HEIGHT;
            
            --cycle 2
            charPosition_rowdep_1 <= charRow*num_char_cols_term1;
            
            --cycle 3
            charPosition_rowdep_2 <= charPosition_rowdep_1*num_char_cols_term2;
            charCol <= (horz_reg(2) - position.x)/FONT_WIDTH;
            
            --cycle 4
            charPosition <= charPosition_rowdep_2 + charCol + 1;
            
            --cycle 5 (text bram outputs)
            
            --cycle 6 (fontrom address assigned via fontAddress)
            
            --cycle 7 (charinbitrow is assigned from fontROM)
            bitPosition <= (horz_reg(6) - position.x) mod FONT_WIDTH;
            
            --cycle 8
            -- reset
            inXRange := false;
            inYRange := false;
            
            -- If current pixel is in the horizontal range of text
            if horz_reg(7) >= position.x and horz_reg(7) < position.x + (FONT_WIDTH * num_char_cols) then
                inXRange := true;
            end if;
            
            -- If current pixel is in the vertical range of text
            if vert_reg(7) >= position.y and vert_reg(7) < position.y + (FONT_HEIGHT * num_char_rows) then
                inYRange := true;
            end if;
            
            -- need to check if the pixel is on for text
            if inXRange and inYRange then
                -- FONT_WIDTH-bitPosition: we are reverting the charactor
                if charBitInRow(FONT_WIDTH-bitPosition) = '1' then
                    pixel <= '1';
                else
                    pixel <= '0';
                end if;					
            end if;

		end if;
	end process;

end Behavioral;