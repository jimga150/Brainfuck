----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/18/2021 10:04:52 PM
-- Design Name: 
-- Module Name: vga_test_top - Structural
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

entity vga_test_top is
    Port (
        clk_100mhz, rst : in STD_LOGIC;
        h_sync, v_sync : out std_logic;
        pixel : out std_logic_vector(11 downto 0)
    );
end vga_test_top;

architecture Structural of vga_test_top is

    component vga_clk_wiz
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
    
    signal clk_vga, locked, reg_rst, reg_rst_n, pixel_bit : std_logic;
    signal row_int, col_int : integer;
    signal row_vect, col_vect : std_logic_vector(11 downto 0);

begin

    clk_div : vga_clk_wiz
       port map ( 
      -- Clock out ports  
       clk_out1 => clk_vga,
      -- Status and control signals                
       reset => rst,
       locked => locked,
       -- Clock in ports
       clk_in1 => clk_100mhz
     );
     
     reg_rst <= rst or (not locked);
     reg_rst_n <= not reg_rst;
     
     vga_cont: entity work.vga_controller
     port map(
        pixel_clk => clk_vga,
        reset_n => reg_rst_n,
        h_sync => h_sync,
        v_sync => v_sync,
        disp_ena => open,
        row => row_int,
        column => col_int,
        n_blank => open,
        n_sync => open
     );
     
     row_vect <= std_logic_vector(to_unsigned(row_int, 12));
     col_vect <= std_logic_vector(to_unsigned(col_int, 12));
     
     text_wrapper: entity work.wrapper
     port map(
        clk => clk_vga,
        xCoord => col_vect,
        yCoord => row_vect,
        pixOn => pixel_bit
     );
     
     gen_pixel: for i in 0 to 11 generate
        pixel(i) <= pixel_bit;
     end generate;

end Structural;
