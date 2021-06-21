-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Jun 18 10:11:15 2021
-- Host        : Geb running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Jim/Desktop/Code/BrainFuck/VHDL/BFISA/BFISA.sim/sim_1/impl/func/xsim/ISA_top_tb_func_impl.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debounce is
  port (
    dbc_result : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end debounce;

architecture STRUCTURE of debounce is
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[0]_i_7_n_0\ : STD_LOGIC;
  signal \count[0]_i_8_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 19 downto 6 );
  signal \count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \^dbc_result\ : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal result_i_1_n_0 : STD_LOGIC;
  signal \NLW_count_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_3\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \count_reg[0]_i_3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[16]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[8]_i_1\ : label is "SWEEP";
begin
  dbc_result <= \^dbc_result\;
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => rst_IBUF,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count[0]_i_4_n_0\,
      I1 => rst_IBUF,
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1055FFFF"
    )
        port map (
      I0 => count_reg(15),
      I1 => \count[0]_i_6_n_0\,
      I2 => \count[0]_i_7_n_0\,
      I3 => count_reg(14),
      I4 => \count[0]_i_8_n_0\,
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      I2 => count_reg(13),
      I3 => count_reg(12),
      O => \count[0]_i_6_n_0\
    );
\count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(7),
      I2 => count_reg(8),
      I3 => count_reg(9),
      O => \count[0]_i_7_n_0\
    );
\count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(16),
      I2 => count_reg(19),
      I3 => count_reg(18),
      O => \count[0]_i_8_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_7\,
      Q => \count_reg_n_0_[0]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3_n_0\,
      CO(2 downto 0) => \NLW_count_reg[0]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3_n_4\,
      O(2) => \count_reg[0]_i_3_n_5\,
      O(1) => \count_reg[0]_i_3_n_6\,
      O(0) => \count_reg[0]_i_3_n_7\,
      S(3) => \count_reg_n_0_[3]\,
      S(2) => \count_reg_n_0_[2]\,
      S(1) => \count_reg_n_0_[1]\,
      S(0) => \count[0]_i_5_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1_n_0\
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_6\,
      Q => \count_reg_n_0_[1]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_5\,
      Q => \count_reg_n_0_[2]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_4\,
      Q => \count_reg_n_0_[3]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_7\,
      Q => \count_reg_n_0_[4]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 2) => count_reg(7 downto 6),
      S(1) => \count_reg_n_0_[5]\,
      S(0) => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_6\,
      Q => \count_reg_n_0_[5]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1_n_0\
    );
\flipflops_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => D(0),
      Q => \flipflops_reg_n_0_[0]\
    );
\flipflops_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in
    );
result_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => \count[0]_i_4_n_0\,
      I3 => \^dbc_result\,
      O => result_i_1_n_0
    );
result_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => result_i_1_n_0,
      Q => \^dbc_result\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debounce_1 is
  port (
    dbc_result : out STD_LOGIC;
    ptr_ce : out STD_LOGIC;
    \s_TickDelayLine_reg[0]\ : out STD_LOGIC;
    result_reg_0 : out STD_LOGIC;
    dbcd_ce : out STD_LOGIC;
    pulse_reg_reg_0 : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    pulse_reg : in STD_LOGIC;
    \qsig_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ROM_out__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_mem_contents_reg_0_0 : in STD_LOGIC;
    s_OEReg : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC;
    s_mem_contents_reg_0_0_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of debounce_1 : entity is "debounce";
end debounce_1;

architecture STRUCTURE of debounce_1 is
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_8__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 19 downto 6 );
  signal \count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \^dbc_result\ : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \result_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_count_reg[0]_i_3__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_3__0\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \count_reg[0]_i_3__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__0\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[12]_i_1__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1__0\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[16]_i_1__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__0\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[4]_i_1__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__0\ : label is 11;
  attribute OPT_MODIFIED of \count_reg[8]_i_1__0\ : label is "SWEEP";
begin
  dbc_result <= \^dbc_result\;
\count[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => rst_IBUF,
      O => \count[0]_i_1__0_n_0\
    );
\count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count[0]_i_4__0_n_0\,
      I1 => rst_IBUF,
      O => \count[0]_i_2__0_n_0\
    );
\count[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1055FFFF"
    )
        port map (
      I0 => count_reg(15),
      I1 => \count[0]_i_6__0_n_0\,
      I2 => \count[0]_i_7__0_n_0\,
      I3 => count_reg(14),
      I4 => \count[0]_i_8__0_n_0\,
      O => \count[0]_i_4__0_n_0\
    );
\count[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_5__0_n_0\
    );
\count[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      I2 => count_reg(13),
      I3 => count_reg(12),
      O => \count[0]_i_6__0_n_0\
    );
\count[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(7),
      I2 => count_reg(8),
      I3 => count_reg(9),
      O => \count[0]_i_7__0_n_0\
    );
\count[0]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(16),
      I2 => count_reg(19),
      I3 => count_reg(18),
      O => \count[0]_i_8__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[0]_i_3__0_n_7\,
      Q => \count_reg_n_0_[0]\,
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3__0_n_0\,
      CO(2 downto 0) => \NLW_count_reg[0]_i_3__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3__0_n_4\,
      O(2) => \count_reg[0]_i_3__0_n_5\,
      O(1) => \count_reg[0]_i_3__0_n_6\,
      O(0) => \count_reg[0]_i_3__0_n_7\,
      S(3) => \count_reg_n_0_[3]\,
      S(2) => \count_reg_n_0_[2]\,
      S(1) => \count_reg_n_0_[1]\,
      S(0) => \count[0]_i_5__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[8]_i_1__0_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[8]_i_1__0_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3) => \count_reg[12]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[12]_i_1__0_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[12]_i_1__0_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[12]_i_1__0_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[16]_i_1__0_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_count_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__0_n_4\,
      O(2) => \count_reg[16]_i_1__0_n_5\,
      O(1) => \count_reg[16]_i_1__0_n_6\,
      O(0) => \count_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[16]_i_1__0_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[16]_i_1__0_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[16]_i_1__0_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[0]_i_3__0_n_6\,
      Q => \count_reg_n_0_[1]\,
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[0]_i_3__0_n_5\,
      Q => \count_reg_n_0_[2]\,
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[0]_i_3__0_n_4\,
      Q => \count_reg_n_0_[3]\,
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[4]_i_1__0_n_7\,
      Q => \count_reg_n_0_[4]\,
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3__0_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3 downto 2) => count_reg(7 downto 6),
      S(1) => \count_reg_n_0_[5]\,
      S(0) => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[4]_i_1__0_n_6\,
      Q => \count_reg_n_0_[5]\,
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[4]_i_1__0_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[4]_i_1__0_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1__0_n_0\
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \count[0]_i_2__0_n_0\,
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1__0_n_0\
    );
\flipflops_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => D(0),
      Q => \flipflops_reg_n_0_[0]\
    );
\flipflops_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in
    );
\qsig[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => pulse_reg,
      I1 => \^dbc_result\,
      I2 => \qsig_reg[0]\(0),
      I3 => \ROM_out__0\(0),
      O => ptr_ce
    );
\qsig[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dbc_result\,
      I1 => pulse_reg,
      O => dbcd_ce
    );
\result_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE08"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => \count[0]_i_4__0_n_0\,
      I3 => \^dbc_result\,
      O => \result_i_1__0_n_0\
    );
result_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \result_i_1__0_n_0\,
      Q => \^dbc_result\
    );
\s_TickDelayLine[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => s_mem_contents_reg_0_0,
      I1 => rst_IBUF,
      I2 => \^dbc_result\,
      I3 => pulse_reg,
      O => \s_TickDelayLine_reg[0]\
    );
s_mem_contents_reg_0_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pulse_reg,
      I1 => \^dbc_result\,
      I2 => rst_IBUF,
      O => pulse_reg_reg_0
    );
s_mem_contents_reg_0_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => rst_IBUF,
      I1 => \^dbc_result\,
      I2 => pulse_reg,
      I3 => s_OEReg,
      I4 => p_0_in1_in,
      O => result_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram is
  port (
    s_OEReg : out STD_LOGIC;
    p_0_in1_in : out STD_LOGIC;
    \s_TickDelayLine_reg[0]_0\ : out STD_LOGIC;
    s_WEReg_reg_0 : out STD_LOGIC;
    \cell_zero__6\ : out STD_LOGIC;
    s_ram_data_out0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_OEReg_reg_0 : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    modmem : in STD_LOGIC;
    \s_TickDelayLine_reg[0]_1\ : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    s_mem_contents_reg_0_7_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s_Address_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC;
    pwropt_2 : in STD_LOGIC;
    pwropt_3 : in STD_LOGIC
  );
end ram;

architecture STRUCTURE of ram is
  signal \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \qsig[0]_i_19_n_0\ : STD_LOGIC;
  signal s_Address_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_DataInReg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_tickdelayline_reg[0]_0\ : STD_LOGIC;
  signal s_mem_contents_reg_0_0_ENARDEN_cooolgate_en_sig_18 : STD_LOGIC;
  signal s_mem_contents_reg_0_0_ENBWREN_cooolgate_en_sig_2 : STD_LOGIC;
  signal s_mem_contents_reg_0_0_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_0_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_0_1_ENARDEN_cooolgate_en_sig_19 : STD_LOGIC;
  signal s_mem_contents_reg_0_1_ENBWREN_cooolgate_en_sig_3 : STD_LOGIC;
  signal s_mem_contents_reg_0_1_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_1_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_0_2_ENARDEN_cooolgate_en_sig_20 : STD_LOGIC;
  signal s_mem_contents_reg_0_2_ENBWREN_cooolgate_en_sig_4 : STD_LOGIC;
  signal s_mem_contents_reg_0_2_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_2_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_0_3_ENARDEN_cooolgate_en_sig_21 : STD_LOGIC;
  signal s_mem_contents_reg_0_3_ENBWREN_cooolgate_en_sig_5 : STD_LOGIC;
  signal s_mem_contents_reg_0_3_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_3_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_0_4_ENARDEN_cooolgate_en_sig_22 : STD_LOGIC;
  signal s_mem_contents_reg_0_4_ENBWREN_cooolgate_en_sig_6 : STD_LOGIC;
  signal s_mem_contents_reg_0_4_i_1_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_4_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_4_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_0_5_ENARDEN_cooolgate_en_sig_23 : STD_LOGIC;
  signal s_mem_contents_reg_0_5_ENBWREN_cooolgate_en_sig_7 : STD_LOGIC;
  signal s_mem_contents_reg_0_5_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_5_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_0_6_ENARDEN_cooolgate_en_sig_24 : STD_LOGIC;
  signal s_mem_contents_reg_0_6_ENBWREN_cooolgate_en_sig_8 : STD_LOGIC;
  signal s_mem_contents_reg_0_6_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_6_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_0_7_ENARDEN_cooolgate_en_sig_25 : STD_LOGIC;
  signal s_mem_contents_reg_0_7_ENBWREN_cooolgate_en_sig_9 : STD_LOGIC;
  signal s_mem_contents_reg_0_7_n_0 : STD_LOGIC;
  signal s_mem_contents_reg_0_7_n_1 : STD_LOGIC;
  signal s_mem_contents_reg_1_0_ENARDEN_cooolgate_en_sig_10 : STD_LOGIC;
  signal s_mem_contents_reg_1_1_ENARDEN_cooolgate_en_sig_11 : STD_LOGIC;
  signal s_mem_contents_reg_1_2_ENARDEN_cooolgate_en_sig_12 : STD_LOGIC;
  signal s_mem_contents_reg_1_3_ENARDEN_cooolgate_en_sig_13 : STD_LOGIC;
  signal s_mem_contents_reg_1_4_ENARDEN_cooolgate_en_sig_14 : STD_LOGIC;
  signal s_mem_contents_reg_1_5_ENARDEN_cooolgate_en_sig_15 : STD_LOGIC;
  signal s_mem_contents_reg_1_6_ENARDEN_cooolgate_en_sig_16 : STD_LOGIC;
  signal s_mem_contents_reg_1_7_ENARDEN_cooolgate_en_sig_17 : STD_LOGIC;
  signal \^s_ram_data_out0_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_0_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_0_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_1_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_1_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_0_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_2_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_2_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_0_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_3_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_3_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_0_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_0_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_0_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_0_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_0_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_0_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_0_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_0_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_0_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_0_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_0_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_1_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_1_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_2_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_2_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_3_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_3_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_s_mem_contents_reg_1_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_contents_reg_1_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_s_mem_contents_reg_1_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s_mem_contents_reg_1_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_s_mem_contents_reg_1_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s_mem_contents_reg_1_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_s_mem_contents_reg_1_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_0 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_0 : label is "";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_0 : label is "RETARGET";
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_0 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_0 : label is 524288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_0 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of s_mem_contents_reg_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of s_mem_contents_reg_0_0 : label is 32767;
  attribute ram_offset : integer;
  attribute ram_offset of s_mem_contents_reg_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of s_mem_contents_reg_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of s_mem_contents_reg_0_0 : label is 0;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_0_ENARDEN_cooolgate_en_gate_34_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_0_ENBWREN_cooolgate_en_gate_2_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_1 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_1 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_1 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_1 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_1 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_1 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_1 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_0_1 : label is 0;
  attribute ram_addr_end of s_mem_contents_reg_0_1 : label is 32767;
  attribute ram_offset of s_mem_contents_reg_0_1 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_0_1 : label is 1;
  attribute ram_slice_end of s_mem_contents_reg_0_1 : label is 1;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_1_ENARDEN_cooolgate_en_gate_36_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_1_ENBWREN_cooolgate_en_gate_4_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_2 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_2 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_2 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_2 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute \PinAttr:ADDRBWRADDR[11]:HOLD_DETOUR\ : integer;
  attribute \PinAttr:ADDRBWRADDR[11]:HOLD_DETOUR\ of s_mem_contents_reg_0_2 : label is 352;
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_2 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_2 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_2 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_0_2 : label is 0;
  attribute ram_addr_end of s_mem_contents_reg_0_2 : label is 32767;
  attribute ram_offset of s_mem_contents_reg_0_2 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_0_2 : label is 2;
  attribute ram_slice_end of s_mem_contents_reg_0_2 : label is 2;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_2_ENARDEN_cooolgate_en_gate_38_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_2_ENBWREN_cooolgate_en_gate_6_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_3 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_3 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_3 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_3 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_3 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_3 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_3 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_0_3 : label is 0;
  attribute ram_addr_end of s_mem_contents_reg_0_3 : label is 32767;
  attribute ram_offset of s_mem_contents_reg_0_3 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_0_3 : label is 3;
  attribute ram_slice_end of s_mem_contents_reg_0_3 : label is 3;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_3_ENARDEN_cooolgate_en_gate_40_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_3_ENBWREN_cooolgate_en_gate_8_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_4 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_4 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_4 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_4 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_4 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_4 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_4 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_0_4 : label is 0;
  attribute ram_addr_end of s_mem_contents_reg_0_4 : label is 32767;
  attribute ram_offset of s_mem_contents_reg_0_4 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_0_4 : label is 4;
  attribute ram_slice_end of s_mem_contents_reg_0_4 : label is 4;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_4_ENARDEN_cooolgate_en_gate_42_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_4_ENBWREN_cooolgate_en_gate_10_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_5 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_5 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_5 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_5 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_5 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_5 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_5 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_0_5 : label is 0;
  attribute ram_addr_end of s_mem_contents_reg_0_5 : label is 32767;
  attribute ram_offset of s_mem_contents_reg_0_5 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_0_5 : label is 5;
  attribute ram_slice_end of s_mem_contents_reg_0_5 : label is 5;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_5_ENARDEN_cooolgate_en_gate_44_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_5_ENBWREN_cooolgate_en_gate_12_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_6 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_6 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_6 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_6 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_6 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_6 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_6 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_0_6 : label is 0;
  attribute ram_addr_end of s_mem_contents_reg_0_6 : label is 32767;
  attribute ram_offset of s_mem_contents_reg_0_6 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_0_6 : label is 6;
  attribute ram_slice_end of s_mem_contents_reg_0_6 : label is 6;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_6_ENARDEN_cooolgate_en_gate_46_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_6_ENBWREN_cooolgate_en_gate_14_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_0_7 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_0_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_0_7 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_7 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_0_7 : label is "ENARDEN=AUG:ENBWREN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_0_7 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_0_7 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_0_7 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_0_7 : label is 0;
  attribute ram_addr_end of s_mem_contents_reg_0_7 : label is 32767;
  attribute ram_offset of s_mem_contents_reg_0_7 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_0_7 : label is 7;
  attribute ram_slice_end of s_mem_contents_reg_0_7 : label is 7;
  attribute OPT_MODIFIED of s_mem_contents_reg_0_7_ENARDEN_cooolgate_en_gate_48_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute OPT_MODIFIED of s_mem_contents_reg_0_7_ENBWREN_cooolgate_en_gate_16_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_0 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_0 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_0 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_0 : label is "ENARDEN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_0 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_0 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_0 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_0 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_0 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_0 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_0 : label is 0;
  attribute ram_slice_end of s_mem_contents_reg_1_0 : label is 0;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_0_ENARDEN_cooolgate_en_gate_18_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_1 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_1 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_1 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_1 : label is "ENARDEN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_1 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_1 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_1 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_1 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_1 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_1 : label is 1;
  attribute ram_slice_end of s_mem_contents_reg_1_1 : label is 1;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_1_ENARDEN_cooolgate_en_gate_20_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_2 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_2 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_2 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_2 : label is "ENARDEN=AUG";
  attribute \PinAttr:ADDRARDADDR[2]:HOLD_DETOUR\ : integer;
  attribute \PinAttr:ADDRARDADDR[2]:HOLD_DETOUR\ of s_mem_contents_reg_1_2 : label is 355;
  attribute \PinAttr:ADDRBWRADDR[2]:HOLD_DETOUR\ : integer;
  attribute \PinAttr:ADDRBWRADDR[2]:HOLD_DETOUR\ of s_mem_contents_reg_1_2 : label is 352;
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_2 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_2 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_2 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_2 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_2 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_2 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_2 : label is 2;
  attribute ram_slice_end of s_mem_contents_reg_1_2 : label is 2;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_2_ENARDEN_cooolgate_en_gate_22_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_3 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_3 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_3 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_3 : label is "ENARDEN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_3 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_3 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_3 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_3 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_3 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_3 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_3 : label is 3;
  attribute ram_slice_end of s_mem_contents_reg_1_3 : label is 3;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_3_ENARDEN_cooolgate_en_gate_24_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_4 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_4 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_4 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_4 : label is "ENARDEN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_4 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_4 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_4 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_4 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_4 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_4 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_4 : label is 4;
  attribute ram_slice_end of s_mem_contents_reg_1_4 : label is 4;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_4_ENARDEN_cooolgate_en_gate_26_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_5 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_5 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_5 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_5 : label is "ENARDEN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_5 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_5 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_5 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_5 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_5 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_5 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_5 : label is 5;
  attribute ram_slice_end of s_mem_contents_reg_1_5 : label is 5;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_5_ENARDEN_cooolgate_en_gate_28_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_6 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_6 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_6 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_6 : label is "ENARDEN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_6 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_6 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_6 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_6 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_6 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_6 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_6 : label is 6;
  attribute ram_slice_end of s_mem_contents_reg_1_6 : label is 6;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_6_ENARDEN_cooolgate_en_gate_30_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
  attribute IS_CLOCK_GATED of s_mem_contents_reg_1_7 : label is std.standard.true;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_contents_reg_1_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of s_mem_contents_reg_1_7 : label is "";
  attribute OPT_MODIFIED of s_mem_contents_reg_1_7 : label is "RETARGET";
  attribute POWER_OPTED_CE of s_mem_contents_reg_1_7 : label is "ENARDEN=AUG";
  attribute RTL_RAM_BITS of s_mem_contents_reg_1_7 : label is 524288;
  attribute RTL_RAM_NAME of s_mem_contents_reg_1_7 : label is "ISA/work_mem/s_mem_contents";
  attribute RTL_RAM_TYPE of s_mem_contents_reg_1_7 : label is "RAM_SP";
  attribute ram_addr_begin of s_mem_contents_reg_1_7 : label is 32768;
  attribute ram_addr_end of s_mem_contents_reg_1_7 : label is 65535;
  attribute ram_offset of s_mem_contents_reg_1_7 : label is 0;
  attribute ram_slice_begin of s_mem_contents_reg_1_7 : label is 7;
  attribute ram_slice_end of s_mem_contents_reg_1_7 : label is 7;
  attribute OPT_MODIFIED of s_mem_contents_reg_1_7_ENARDEN_cooolgate_en_gate_32_LOPT_REMAP : label is "POST_PROCESS_NETLIST";
begin
  \s_TickDelayLine_reg[0]_0\ <= \^s_tickdelayline_reg[0]_0\;
  s_ram_data_out0_out(7 downto 0) <= \^s_ram_data_out0_out\(7 downto 0);
\ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_gate_1_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => '0',
      D => s_OEReg_reg_0,
      Q => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\
    );
\qsig[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^s_ram_data_out0_out\(5),
      I1 => \^s_ram_data_out0_out\(4),
      I2 => \^s_ram_data_out0_out\(6),
      I3 => \^s_ram_data_out0_out\(7),
      I4 => \qsig[0]_i_19_n_0\,
      O => \cell_zero__6\
    );
\qsig[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^s_ram_data_out0_out\(2),
      I1 => \^s_ram_data_out0_out\(3),
      I2 => \^s_ram_data_out0_out\(0),
      I3 => \^s_ram_data_out0_out\(1),
      O => \qsig[0]_i_19_n_0\
    );
\s_Address_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(0),
      Q => s_Address_reg(0),
      R => '0'
    );
\s_Address_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(10),
      Q => s_Address_reg(10),
      R => '0'
    );
\s_Address_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(11),
      Q => s_Address_reg(11),
      R => '0'
    );
\s_Address_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(12),
      Q => s_Address_reg(12),
      R => '0'
    );
\s_Address_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(13),
      Q => s_Address_reg(13),
      R => '0'
    );
\s_Address_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(14),
      Q => s_Address_reg(14),
      R => '0'
    );
\s_Address_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(15),
      Q => s_Address_reg(15),
      R => '0'
    );
\s_Address_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(1),
      Q => s_Address_reg(1),
      R => '0'
    );
\s_Address_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(2),
      Q => s_Address_reg(2),
      R => '0'
    );
\s_Address_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(3),
      Q => s_Address_reg(3),
      R => '0'
    );
\s_Address_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(4),
      Q => s_Address_reg(4),
      R => '0'
    );
\s_Address_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(5),
      Q => s_Address_reg(5),
      R => '0'
    );
\s_Address_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(6),
      Q => s_Address_reg(6),
      R => '0'
    );
\s_Address_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(7),
      Q => s_Address_reg(7),
      R => '0'
    );
\s_Address_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(8),
      Q => s_Address_reg(8),
      R => '0'
    );
\s_Address_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \s_Address_reg_reg[15]_0\(9),
      Q => s_Address_reg(9),
      R => '0'
    );
\s_DataInReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(0),
      Q => s_DataInReg(0),
      R => '0'
    );
\s_DataInReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(1),
      Q => s_DataInReg(1),
      R => '0'
    );
\s_DataInReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(2),
      Q => s_DataInReg(2),
      R => '0'
    );
\s_DataInReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(3),
      Q => s_DataInReg(3),
      R => '0'
    );
\s_DataInReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(4),
      Q => s_DataInReg(4),
      R => '0'
    );
\s_DataInReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(5),
      Q => s_DataInReg(5),
      R => '0'
    );
\s_DataInReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(6),
      Q => s_DataInReg(6),
      R => '0'
    );
\s_DataInReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => D(7),
      Q => s_DataInReg(7),
      R => '0'
    );
s_OEReg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => '1',
      Q => s_OEReg,
      R => '0'
    );
\s_TickDelayLine_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \s_TickDelayLine_reg[0]_1\,
      Q => \^s_tickdelayline_reg[0]_0\,
      R => '0'
    );
\s_TickDelayLine_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => \^s_tickdelayline_reg[0]_0\,
      Q => p_1_in(2),
      R => '0'
    );
\s_TickDelayLine_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => p_1_in(2),
      Q => p_0_in1_in,
      R => '0'
    );
s_WEReg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => s_OEReg_reg_0,
      D => modmem,
      Q => s_WEReg_reg_0,
      R => '0'
    );
s_mem_contents_reg_0_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_0_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_0_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_0_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_0_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_0_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_0_ENARDEN_cooolgate_en_sig_18,
      ENBWREN => s_mem_contents_reg_0_0_ENBWREN_cooolgate_en_sig_2,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_0_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_0_ENARDEN_cooolgate_en_gate_34_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_0_ENARDEN_cooolgate_en_sig_18
    );
s_mem_contents_reg_0_0_ENBWREN_cooolgate_en_gate_2_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_0_ENBWREN_cooolgate_en_sig_2
    );
s_mem_contents_reg_0_0_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      O => p_0_in
    );
s_mem_contents_reg_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_1_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_1_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_1_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_1_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_1_ENARDEN_cooolgate_en_sig_19,
      ENBWREN => s_mem_contents_reg_0_1_ENBWREN_cooolgate_en_sig_3,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_1_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_1_ENARDEN_cooolgate_en_gate_36_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_1_ENARDEN_cooolgate_en_sig_19
    );
s_mem_contents_reg_0_1_ENBWREN_cooolgate_en_gate_4_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_1_ENBWREN_cooolgate_en_sig_3
    );
s_mem_contents_reg_0_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_2_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_2_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_2_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_2_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_2_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_2_ENARDEN_cooolgate_en_sig_20,
      ENBWREN => s_mem_contents_reg_0_2_ENBWREN_cooolgate_en_sig_4,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_2_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_2_ENARDEN_cooolgate_en_gate_38_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_2_ENARDEN_cooolgate_en_sig_20
    );
s_mem_contents_reg_0_2_ENBWREN_cooolgate_en_gate_6_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_2_ENBWREN_cooolgate_en_sig_4
    );
s_mem_contents_reg_0_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_3_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_3_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_3_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_3_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_3_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_3_ENARDEN_cooolgate_en_sig_21,
      ENBWREN => s_mem_contents_reg_0_3_ENBWREN_cooolgate_en_sig_5,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_3_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_3_ENARDEN_cooolgate_en_gate_40_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_3_ENARDEN_cooolgate_en_sig_21
    );
s_mem_contents_reg_0_3_ENBWREN_cooolgate_en_gate_8_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_3_ENBWREN_cooolgate_en_sig_5
    );
s_mem_contents_reg_0_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_4_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_4_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_4_ENARDEN_cooolgate_en_sig_22,
      ENBWREN => s_mem_contents_reg_0_4_ENBWREN_cooolgate_en_sig_6,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_4_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_4_ENARDEN_cooolgate_en_gate_42_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_4_ENARDEN_cooolgate_en_sig_22
    );
s_mem_contents_reg_0_4_ENBWREN_cooolgate_en_gate_10_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_4_ENBWREN_cooolgate_en_sig_6
    );
s_mem_contents_reg_0_4_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      O => s_mem_contents_reg_0_4_i_1_n_0
    );
s_mem_contents_reg_0_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_5_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_5_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_5_ENARDEN_cooolgate_en_sig_23,
      ENBWREN => s_mem_contents_reg_0_5_ENBWREN_cooolgate_en_sig_7,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_5_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_5_ENARDEN_cooolgate_en_gate_44_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_5_ENARDEN_cooolgate_en_sig_23
    );
s_mem_contents_reg_0_5_ENBWREN_cooolgate_en_gate_12_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_5_ENBWREN_cooolgate_en_sig_7
    );
s_mem_contents_reg_0_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_6_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_6_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_6_ENARDEN_cooolgate_en_sig_24,
      ENBWREN => s_mem_contents_reg_0_6_ENBWREN_cooolgate_en_sig_8,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_6_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_6_ENARDEN_cooolgate_en_gate_46_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_6_ENARDEN_cooolgate_en_sig_24
    );
s_mem_contents_reg_0_6_ENBWREN_cooolgate_en_gate_14_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_6_ENBWREN_cooolgate_en_sig_8
    );
s_mem_contents_reg_0_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => s_mem_contents_reg_0_7_n_0,
      CASCADEOUTB => s_mem_contents_reg_0_7_n_1,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_0_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_0_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_0_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_0_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_s_mem_contents_reg_0_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_0_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_0_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_0_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_0_7_ENARDEN_cooolgate_en_sig_25,
      ENBWREN => s_mem_contents_reg_0_7_ENBWREN_cooolgate_en_sig_9,
      INJECTDBITERR => NLW_s_mem_contents_reg_0_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_0_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_0_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_0_7_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_0_7_ENARDEN_cooolgate_en_gate_48_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_0_7_ENARDEN_cooolgate_en_sig_25
    );
s_mem_contents_reg_0_7_ENBWREN_cooolgate_en_gate_16_LOPT_REMAP: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => rst_IBUF,
      I3 => \ISA/work_mem/s_mem_contents_reg_0_0_cooolgate_en_sig_1\,
      I4 => s_Address_reg(15),
      O => s_mem_contents_reg_0_7_ENBWREN_cooolgate_en_sig_9
    );
s_mem_contents_reg_1_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_0_n_0,
      CASCADEINB => s_mem_contents_reg_0_0_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_0_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_0_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_0_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(0),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_0_ENARDEN_cooolgate_en_sig_10,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_0_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_0_ENARDEN_cooolgate_en_gate_18_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_0_ENARDEN_cooolgate_en_sig_10
    );
s_mem_contents_reg_1_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_1_n_0,
      CASCADEINB => s_mem_contents_reg_0_1_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_1_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_1_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(1),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_1_ENARDEN_cooolgate_en_sig_11,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_1_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_1_ENARDEN_cooolgate_en_gate_20_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_1_ENARDEN_cooolgate_en_sig_11
    );
s_mem_contents_reg_1_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_2_n_0,
      CASCADEINB => s_mem_contents_reg_0_2_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_2_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_2_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_2_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(2),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_2_ENARDEN_cooolgate_en_sig_12,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_2_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_2_ENARDEN_cooolgate_en_gate_22_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_2_ENARDEN_cooolgate_en_sig_12
    );
s_mem_contents_reg_1_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_3_n_0,
      CASCADEINB => s_mem_contents_reg_0_3_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_3_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_3_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_3_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(3),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_3_ENARDEN_cooolgate_en_sig_13,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_3_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => p_0_in,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_3_ENARDEN_cooolgate_en_gate_24_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_3_ENARDEN_cooolgate_en_sig_13
    );
s_mem_contents_reg_1_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_4_n_0,
      CASCADEINB => s_mem_contents_reg_0_4_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(4),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_4_ENARDEN_cooolgate_en_sig_14,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_4_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_4_ENARDEN_cooolgate_en_gate_26_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_4_ENARDEN_cooolgate_en_sig_14
    );
s_mem_contents_reg_1_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_5_n_0,
      CASCADEINB => s_mem_contents_reg_0_5_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(5),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_5_ENARDEN_cooolgate_en_sig_15,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_5_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_5_ENARDEN_cooolgate_en_gate_28_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_5_ENARDEN_cooolgate_en_sig_15
    );
s_mem_contents_reg_1_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_6_n_0,
      CASCADEINB => s_mem_contents_reg_0_6_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(6),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_6_ENARDEN_cooolgate_en_sig_16,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_6_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_6_ENARDEN_cooolgate_en_gate_30_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_6_ENARDEN_cooolgate_en_sig_16
    );
s_mem_contents_reg_1_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => s_Address_reg(15 downto 0),
      ADDRBWRADDR(15 downto 0) => s_Address_reg(15 downto 0),
      CASCADEINA => s_mem_contents_reg_0_7_n_0,
      CASCADEINB => s_mem_contents_reg_0_7_n_1,
      CASCADEOUTA => NLW_s_mem_contents_reg_1_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_s_mem_contents_reg_1_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk_IBUF_BUFG,
      CLKBWRCLK => clk_IBUF_BUFG,
      DBITERR => NLW_s_mem_contents_reg_1_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => s_DataInReg(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_s_mem_contents_reg_1_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_s_mem_contents_reg_1_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_s_mem_contents_reg_1_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_s_mem_contents_reg_1_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => \^s_ram_data_out0_out\(7),
      DOPADOP(3 downto 0) => NLW_s_mem_contents_reg_1_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_s_mem_contents_reg_1_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_s_mem_contents_reg_1_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s_mem_contents_reg_1_7_ENARDEN_cooolgate_en_sig_17,
      ENBWREN => s_OEReg_reg_0,
      INJECTDBITERR => NLW_s_mem_contents_reg_1_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_s_mem_contents_reg_1_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_s_mem_contents_reg_1_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => s_mem_contents_reg_0_7_0,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_s_mem_contents_reg_1_7_SBITERR_UNCONNECTED,
      WEA(3 downto 1) => B"000",
      WEA(0) => s_mem_contents_reg_0_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
s_mem_contents_reg_1_7_ENARDEN_cooolgate_en_gate_32_LOPT_REMAP: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => pwropt,
      I1 => pwropt_1,
      I2 => pwropt_2,
      I3 => pwropt_3,
      I4 => rst_IBUF,
      I5 => s_Address_reg(15),
      O => s_mem_contents_reg_1_7_ENARDEN_cooolgate_en_sig_17
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_16b is
  port (
    \qsig_reg[15]_0\ : out STD_LOGIC;
    \qsig_reg[15]_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    modmem : out STD_LOGIC;
    out_enable_OBUF : out STD_LOGIC;
    \qsig_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[11]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[15]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    dbcd_ce : in STD_LOGIC;
    dbc_result : in STD_LOGIC;
    pulse_reg : in STD_LOGIC;
    \cell_zero__6\ : in STD_LOGIC;
    ptr_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_IBUF : in STD_LOGIC;
    s_ram_data_out0_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    key_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end register_16b;

architecture STRUCTURE of register_16b is
  signal PC_clock_en : STD_LOGIC;
  signal PC_jump_addr : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal ROM_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jump : STD_LOGIC;
  signal out_enable_OBUF_inst_i_10_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_11_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_12_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_13_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_14_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_15_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_16_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_5_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_6_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_7_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_8_n_0 : STD_LOGIC;
  signal out_enable_OBUF_inst_i_9_n_0 : STD_LOGIC;
  signal \qsig[0]_i_10_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_15_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_17_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_20_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_21_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_22_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_23_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_24_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_4_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_5_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_6_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_7_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_8_n_0\ : STD_LOGIC;
  signal \qsig[0]_i_9_n_0\ : STD_LOGIC;
  signal \qsig[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \qsig[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \qsig[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \qsig[12]_i_5_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_10_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_11_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_12_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_13_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_14_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_15_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_16_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_17_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_18_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_19_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_2_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_3_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_4_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_5_n_0\ : STD_LOGIC;
  signal \qsig[4]_i_9_n_0\ : STD_LOGIC;
  signal \qsig[8]_i_2_n_0\ : STD_LOGIC;
  signal \qsig[8]_i_3_n_0\ : STD_LOGIC;
  signal \qsig[8]_i_4_n_0\ : STD_LOGIC;
  signal \qsig[8]_i_5_n_0\ : STD_LOGIC;
  signal qsig_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \qsig_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \qsig_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \^qsig_reg[15]_0\ : STD_LOGIC;
  signal \^qsig_reg[15]_1\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_7_n_0\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_8_n_0\ : STD_LOGIC;
  signal \s_DataInReg[3]_i_9_n_0\ : STD_LOGIC;
  signal \s_DataInReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_DataInReg[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_DataInReg[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_DataInReg[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_DataInReg[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_DataInReg[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_DataInReg[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_DataInReg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_qsig_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_qsig_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_qsig_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_qsig_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_DataInReg_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_DataInReg_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \qsig_reg[0]_i_2\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \qsig_reg[0]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \qsig_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \qsig_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \qsig_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \qsig_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \qsig_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \qsig_reg[8]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_DataInReg_reg[3]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_DataInReg_reg[7]_i_1\ : label is "SWEEP";
begin
  \qsig_reg[15]_0\ <= \^qsig_reg[15]_0\;
  \qsig_reg[15]_1\ <= \^qsig_reg[15]_1\;
out_enable_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^qsig_reg[15]_0\,
      I1 => ROM_out(0),
      I2 => \^qsig_reg[15]_1\,
      O => out_enable_OBUF
    );
out_enable_OBUF_inst_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40020002"
    )
        port map (
      I0 => qsig_reg(5),
      I1 => qsig_reg(4),
      I2 => qsig_reg(3),
      I3 => qsig_reg(2),
      I4 => qsig_reg(1),
      O => out_enable_OBUF_inst_i_10_n_0
    );
out_enable_OBUF_inst_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFDFAFB7B7F1F"
    )
        port map (
      I0 => qsig_reg(1),
      I1 => qsig_reg(6),
      I2 => qsig_reg(3),
      I3 => qsig_reg(5),
      I4 => qsig_reg(2),
      I5 => qsig_reg(4),
      O => out_enable_OBUF_inst_i_11_n_0
    );
out_enable_OBUF_inst_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7BFFBBD5BFFFF"
    )
        port map (
      I0 => qsig_reg(2),
      I1 => qsig_reg(1),
      I2 => qsig_reg(3),
      I3 => qsig_reg(4),
      I4 => qsig_reg(5),
      I5 => qsig_reg(6),
      O => out_enable_OBUF_inst_i_12_n_0
    );
out_enable_OBUF_inst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1510550505501510"
    )
        port map (
      I0 => qsig_reg(4),
      I1 => qsig_reg(5),
      I2 => qsig_reg(3),
      I3 => qsig_reg(6),
      I4 => qsig_reg(2),
      I5 => qsig_reg(1),
      O => out_enable_OBUF_inst_i_13_n_0
    );
out_enable_OBUF_inst_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040405FC34CC"
    )
        port map (
      I0 => qsig_reg(6),
      I1 => qsig_reg(2),
      I2 => qsig_reg(3),
      I3 => qsig_reg(5),
      I4 => qsig_reg(4),
      I5 => qsig_reg(1),
      O => out_enable_OBUF_inst_i_14_n_0
    );
out_enable_OBUF_inst_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"540000000B00BB10"
    )
        port map (
      I0 => qsig_reg(4),
      I1 => qsig_reg(3),
      I2 => qsig_reg(0),
      I3 => qsig_reg(5),
      I4 => qsig_reg(1),
      I5 => qsig_reg(2),
      O => out_enable_OBUF_inst_i_15_n_0
    );
out_enable_OBUF_inst_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4514440055244000"
    )
        port map (
      I0 => qsig_reg(5),
      I1 => qsig_reg(2),
      I2 => qsig_reg(1),
      I3 => qsig_reg(4),
      I4 => qsig_reg(3),
      I5 => qsig_reg(0),
      O => out_enable_OBUF_inst_i_16_n_0
    );
out_enable_OBUF_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => out_enable_OBUF_inst_i_5_n_0,
      I1 => out_enable_OBUF_inst_i_6_n_0,
      I2 => qsig_reg(15),
      I3 => out_enable_OBUF_inst_i_7_n_0,
      I4 => out_enable_OBUF_inst_i_8_n_0,
      O => \^qsig_reg[15]_0\
    );
out_enable_OBUF_inst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => out_enable_OBUF_inst_i_5_n_0,
      I1 => out_enable_OBUF_inst_i_6_n_0,
      I2 => qsig_reg(15),
      I3 => out_enable_OBUF_inst_i_9_n_0,
      I4 => out_enable_OBUF_inst_i_10_n_0,
      O => ROM_out(0)
    );
out_enable_OBUF_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000101010001"
    )
        port map (
      I0 => out_enable_OBUF_inst_i_5_n_0,
      I1 => out_enable_OBUF_inst_i_6_n_0,
      I2 => qsig_reg(15),
      I3 => out_enable_OBUF_inst_i_11_n_0,
      I4 => qsig_reg(0),
      I5 => out_enable_OBUF_inst_i_12_n_0,
      O => \^qsig_reg[15]_1\
    );
out_enable_OBUF_inst_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => qsig_reg(13),
      I1 => qsig_reg(14),
      I2 => qsig_reg(11),
      I3 => qsig_reg(12),
      O => out_enable_OBUF_inst_i_5_n_0
    );
out_enable_OBUF_inst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => qsig_reg(9),
      I1 => qsig_reg(10),
      I2 => qsig_reg(7),
      I3 => qsig_reg(8),
      O => out_enable_OBUF_inst_i_6_n_0
    );
out_enable_OBUF_inst_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => out_enable_OBUF_inst_i_13_n_0,
      I1 => out_enable_OBUF_inst_i_14_n_0,
      O => out_enable_OBUF_inst_i_7_n_0,
      S => qsig_reg(0)
    );
out_enable_OBUF_inst_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050B4A10A02FFAE"
    )
        port map (
      I0 => qsig_reg(6),
      I1 => qsig_reg(2),
      I2 => qsig_reg(4),
      I3 => qsig_reg(1),
      I4 => qsig_reg(5),
      I5 => qsig_reg(3),
      O => out_enable_OBUF_inst_i_8_n_0
    );
out_enable_OBUF_inst_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => out_enable_OBUF_inst_i_15_n_0,
      I1 => out_enable_OBUF_inst_i_16_n_0,
      O => out_enable_OBUF_inst_i_9_n_0,
      S => qsig_reg(6)
    );
\qsig[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1811"
    )
        port map (
      I0 => qsig_reg(0),
      I1 => qsig_reg(2),
      I2 => qsig_reg(6),
      I3 => qsig_reg(5),
      O => \qsig[0]_i_10_n_0\
    );
\qsig[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \qsig_reg[0]_i_18_n_0\,
      I1 => out_enable_OBUF_inst_i_8_n_0,
      I2 => out_enable_OBUF_inst_i_7_n_0,
      I3 => qsig_reg(15),
      I4 => out_enable_OBUF_inst_i_6_n_0,
      I5 => out_enable_OBUF_inst_i_5_n_0,
      O => jump
    );
\qsig[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => qsig_reg(5),
      I1 => qsig_reg(1),
      I2 => qsig_reg(15),
      I3 => out_enable_OBUF_inst_i_6_n_0,
      I4 => out_enable_OBUF_inst_i_5_n_0,
      I5 => \qsig[0]_i_20_n_0\,
      O => PC_jump_addr(3)
    );
\qsig[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \qsig[0]_i_21_n_0\,
      I1 => qsig_reg(15),
      I2 => out_enable_OBUF_inst_i_6_n_0,
      I3 => out_enable_OBUF_inst_i_5_n_0,
      I4 => \qsig[0]_i_22_n_0\,
      O => PC_jump_addr(2)
    );
\qsig[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => qsig_reg(2),
      I1 => qsig_reg(0),
      O => \qsig[0]_i_15_n_0\
    );
\qsig[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => qsig_reg(3),
      I1 => qsig_reg(6),
      I2 => qsig_reg(5),
      O => \qsig[0]_i_17_n_0\
    );
\qsig[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAAAAAA2AAA"
    )
        port map (
      I0 => dbcd_ce,
      I1 => \^qsig_reg[15]_0\,
      I2 => ROM_out(0),
      I3 => \^qsig_reg[15]_1\,
      I4 => dbc_result,
      I5 => pulse_reg,
      O => PC_clock_en
    );
\qsig[0]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFEFFD"
    )
        port map (
      I0 => qsig_reg(4),
      I1 => qsig_reg(2),
      I2 => qsig_reg(6),
      I3 => qsig_reg(3),
      I4 => qsig_reg(0),
      O => \qsig[0]_i_20_n_0\
    );
\qsig[0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3EF"
    )
        port map (
      I0 => qsig_reg(6),
      I1 => qsig_reg(5),
      I2 => qsig_reg(4),
      I3 => qsig_reg(3),
      O => \qsig[0]_i_21_n_0\
    );
\qsig[0]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11018001"
    )
        port map (
      I0 => qsig_reg(0),
      I1 => qsig_reg(2),
      I2 => qsig_reg(3),
      I3 => qsig_reg(1),
      I4 => qsig_reg(6),
      O => \qsig[0]_i_22_n_0\
    );
\qsig[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => qsig_reg(15),
      I1 => out_enable_OBUF_inst_i_6_n_0,
      I2 => out_enable_OBUF_inst_i_5_n_0,
      I3 => qsig_reg(6),
      I4 => qsig_reg(4),
      I5 => qsig_reg(5),
      O => \qsig[0]_i_23_n_0\
    );
\qsig[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000041"
    )
        port map (
      I0 => qsig_reg(4),
      I1 => qsig_reg(5),
      I2 => qsig_reg(6),
      I3 => qsig_reg(15),
      I4 => out_enable_OBUF_inst_i_6_n_0,
      I5 => out_enable_OBUF_inst_i_5_n_0,
      O => \qsig[0]_i_24_n_0\
    );
\qsig[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(3),
      O => \qsig_reg[3]_0\(3)
    );
\qsig[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F8FFF00808000"
    )
        port map (
      I0 => \qsig[0]_i_9_n_0\,
      I1 => \qsig[0]_i_10_n_0\,
      I2 => jump,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(0),
      O => \qsig[0]_i_4_n_0\
    );
\qsig[0]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(2),
      O => \qsig_reg[3]_0\(2)
    );
\qsig[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(3),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(3),
      O => \qsig[0]_i_5_n_0\
    );
\qsig[0]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(1),
      O => \qsig_reg[3]_0\(1)
    );
\qsig[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(2),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(2),
      O => \qsig[0]_i_6_n_0\
    );
\qsig[0]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(0),
      O => \qsig_reg[3]_0\(0)
    );
\qsig[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4F4FFF00000000"
    )
        port map (
      I0 => \qsig[0]_i_15_n_0\,
      I1 => \qsig_reg[0]_i_16_n_0\,
      I2 => jump,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(1),
      O => \qsig[0]_i_7_n_0\
    );
\qsig[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C0C05555555555"
    )
        port map (
      I0 => qsig_reg(0),
      I1 => \qsig[0]_i_10_n_0\,
      I2 => \qsig[0]_i_9_n_0\,
      I3 => \cell_zero__6\,
      I4 => ROM_out(0),
      I5 => jump,
      O => \qsig[0]_i_8_n_0\
    );
\qsig[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => qsig_reg(4),
      I1 => \qsig[0]_i_17_n_0\,
      I2 => out_enable_OBUF_inst_i_5_n_0,
      I3 => out_enable_OBUF_inst_i_6_n_0,
      I4 => qsig_reg(15),
      I5 => qsig_reg(1),
      O => \qsig[0]_i_9_n_0\
    );
\qsig[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(15),
      O => S(3)
    );
\qsig[12]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA82AA"
    )
        port map (
      I0 => qsig_reg(15),
      I1 => \cell_zero__6\,
      I2 => ROM_out(0),
      I3 => \^qsig_reg[15]_1\,
      I4 => \^qsig_reg[15]_0\,
      O => \qsig[12]_i_2__0_n_0\
    );
\qsig[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(14),
      O => S(2)
    );
\qsig[12]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA82AA"
    )
        port map (
      I0 => qsig_reg(14),
      I1 => \cell_zero__6\,
      I2 => ROM_out(0),
      I3 => \^qsig_reg[15]_1\,
      I4 => \^qsig_reg[15]_0\,
      O => \qsig[12]_i_3__0_n_0\
    );
\qsig[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(13),
      O => S(1)
    );
\qsig[12]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA82AA"
    )
        port map (
      I0 => qsig_reg(13),
      I1 => \cell_zero__6\,
      I2 => ROM_out(0),
      I3 => \^qsig_reg[15]_1\,
      I4 => \^qsig_reg[15]_0\,
      O => \qsig[12]_i_4__0_n_0\
    );
\qsig[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(6),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(12),
      O => \qsig[12]_i_5_n_0\
    );
\qsig[12]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(12),
      O => S(0)
    );
\qsig[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => qsig_reg(3),
      I1 => qsig_reg(6),
      I2 => qsig_reg(5),
      I3 => qsig_reg(1),
      O => \qsig[4]_i_10_n_0\
    );
\qsig[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => qsig_reg(2),
      I1 => qsig_reg(15),
      I2 => out_enable_OBUF_inst_i_6_n_0,
      I3 => out_enable_OBUF_inst_i_5_n_0,
      I4 => \qsig[4]_i_15_n_0\,
      O => \qsig[4]_i_11_n_0\
    );
\qsig[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => qsig_reg(15),
      I1 => out_enable_OBUF_inst_i_6_n_0,
      I2 => out_enable_OBUF_inst_i_5_n_0,
      I3 => qsig_reg(6),
      I4 => \qsig[4]_i_16_n_0\,
      I5 => \qsig[4]_i_17_n_0\,
      O => \qsig[4]_i_12_n_0\
    );
\qsig[4]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => qsig_reg(15),
      I1 => out_enable_OBUF_inst_i_6_n_0,
      I2 => out_enable_OBUF_inst_i_5_n_0,
      I3 => qsig_reg(2),
      I4 => \qsig[4]_i_18_n_0\,
      O => \qsig[4]_i_13_n_0\
    );
\qsig[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \qsig[4]_i_17_n_0\,
      I1 => qsig_reg(6),
      I2 => out_enable_OBUF_inst_i_5_n_0,
      I3 => out_enable_OBUF_inst_i_6_n_0,
      I4 => qsig_reg(15),
      I5 => \qsig[4]_i_19_n_0\,
      O => \qsig[4]_i_14_n_0\
    );
\qsig[4]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE7FF7"
    )
        port map (
      I0 => qsig_reg(3),
      I1 => qsig_reg(1),
      I2 => qsig_reg(6),
      I3 => qsig_reg(5),
      I4 => qsig_reg(4),
      O => \qsig[4]_i_15_n_0\
    );
\qsig[4]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => qsig_reg(3),
      I1 => qsig_reg(2),
      O => \qsig[4]_i_16_n_0\
    );
\qsig[4]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => qsig_reg(4),
      I1 => qsig_reg(5),
      O => \qsig[4]_i_17_n_0\
    );
\qsig[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFDF"
    )
        port map (
      I0 => qsig_reg(1),
      I1 => qsig_reg(4),
      I2 => qsig_reg(3),
      I3 => qsig_reg(5),
      I4 => qsig_reg(6),
      O => \qsig[4]_i_18_n_0\
    );
\qsig[4]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => qsig_reg(1),
      I1 => qsig_reg(2),
      I2 => qsig_reg(3),
      O => \qsig[4]_i_19_n_0\
    );
\qsig[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(6),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(7),
      O => \qsig[4]_i_2_n_0\
    );
\qsig[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(7),
      O => \qsig_reg[7]_0\(3)
    );
\qsig[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(6),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(6),
      O => \qsig[4]_i_3_n_0\
    );
\qsig[4]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(6),
      O => \qsig_reg[7]_0\(2)
    );
\qsig[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(5),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(5),
      O => \qsig[4]_i_4_n_0\
    );
\qsig[4]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(5),
      O => \qsig_reg[7]_0\(1)
    );
\qsig[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(4),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(4),
      O => \qsig[4]_i_5_n_0\
    );
\qsig[4]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(4),
      O => \qsig_reg[7]_0\(0)
    );
\qsig[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \qsig[4]_i_9_n_0\,
      I1 => qsig_reg(2),
      I2 => out_enable_OBUF_inst_i_5_n_0,
      I3 => out_enable_OBUF_inst_i_6_n_0,
      I4 => qsig_reg(15),
      I5 => \qsig[4]_i_10_n_0\,
      O => PC_jump_addr(6)
    );
\qsig[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => qsig_reg(0),
      I1 => qsig_reg(4),
      O => \qsig[4]_i_9_n_0\
    );
\qsig[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(6),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(11),
      O => \qsig[8]_i_2_n_0\
    );
\qsig[8]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(11),
      O => \qsig_reg[11]_0\(3)
    );
\qsig[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(6),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(10),
      O => \qsig[8]_i_3_n_0\
    );
\qsig[8]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(10),
      O => \qsig_reg[11]_0\(2)
    );
\qsig[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(6),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(9),
      O => \qsig[8]_i_4_n_0\
    );
\qsig[8]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(9),
      O => \qsig_reg[11]_0\(1)
    );
\qsig[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEFFF00202000"
    )
        port map (
      I0 => PC_jump_addr(6),
      I1 => \^qsig_reg[15]_0\,
      I2 => \^qsig_reg[15]_1\,
      I3 => ROM_out(0),
      I4 => \cell_zero__6\,
      I5 => qsig_reg(8),
      O => \qsig[8]_i_5_n_0\
    );
\qsig[8]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ROM_out(0),
      I1 => ptr_out(8),
      O => \qsig_reg[11]_0\(0)
    );
\qsig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[0]_i_2_n_7\,
      Q => qsig_reg(0),
      R => rst_IBUF
    );
\qsig_reg[0]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qsig[0]_i_23_n_0\,
      I1 => \qsig[0]_i_24_n_0\,
      O => \qsig_reg[0]_i_16_n_0\,
      S => qsig_reg(3)
    );
\qsig_reg[0]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => out_enable_OBUF_inst_i_11_n_0,
      I1 => out_enable_OBUF_inst_i_12_n_0,
      O => \qsig_reg[0]_i_18_n_0\,
      S => qsig_reg(0)
    );
\qsig_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \qsig_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_qsig_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \qsig[0]_i_4_n_0\,
      O(3) => \qsig_reg[0]_i_2_n_4\,
      O(2) => \qsig_reg[0]_i_2_n_5\,
      O(1) => \qsig_reg[0]_i_2_n_6\,
      O(0) => \qsig_reg[0]_i_2_n_7\,
      S(3) => \qsig[0]_i_5_n_0\,
      S(2) => \qsig[0]_i_6_n_0\,
      S(1) => \qsig[0]_i_7_n_0\,
      S(0) => \qsig[0]_i_8_n_0\
    );
\qsig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[8]_i_1_n_5\,
      Q => qsig_reg(10),
      R => rst_IBUF
    );
\qsig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[8]_i_1_n_4\,
      Q => qsig_reg(11),
      R => rst_IBUF
    );
\qsig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[12]_i_1_n_7\,
      Q => qsig_reg(12),
      R => rst_IBUF
    );
\qsig_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \qsig_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_qsig_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \qsig_reg[12]_i_1_n_4\,
      O(2) => \qsig_reg[12]_i_1_n_5\,
      O(1) => \qsig_reg[12]_i_1_n_6\,
      O(0) => \qsig_reg[12]_i_1_n_7\,
      S(3) => \qsig[12]_i_2__0_n_0\,
      S(2) => \qsig[12]_i_3__0_n_0\,
      S(1) => \qsig[12]_i_4__0_n_0\,
      S(0) => \qsig[12]_i_5_n_0\
    );
\qsig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[12]_i_1_n_6\,
      Q => qsig_reg(13),
      R => rst_IBUF
    );
\qsig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[12]_i_1_n_5\,
      Q => qsig_reg(14),
      R => rst_IBUF
    );
\qsig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[12]_i_1_n_4\,
      Q => qsig_reg(15),
      R => rst_IBUF
    );
\qsig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[0]_i_2_n_6\,
      Q => qsig_reg(1),
      R => rst_IBUF
    );
\qsig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[0]_i_2_n_5\,
      Q => qsig_reg(2),
      R => rst_IBUF
    );
\qsig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[0]_i_2_n_4\,
      Q => qsig_reg(3),
      R => rst_IBUF
    );
\qsig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[4]_i_1_n_7\,
      Q => qsig_reg(4),
      R => rst_IBUF
    );
\qsig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \qsig_reg[0]_i_2_n_0\,
      CO(3) => \qsig_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_qsig_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \qsig_reg[4]_i_1_n_4\,
      O(2) => \qsig_reg[4]_i_1_n_5\,
      O(1) => \qsig_reg[4]_i_1_n_6\,
      O(0) => \qsig_reg[4]_i_1_n_7\,
      S(3) => \qsig[4]_i_2_n_0\,
      S(2) => \qsig[4]_i_3_n_0\,
      S(1) => \qsig[4]_i_4_n_0\,
      S(0) => \qsig[4]_i_5_n_0\
    );
\qsig_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qsig[4]_i_11_n_0\,
      I1 => \qsig[4]_i_12_n_0\,
      O => PC_jump_addr(5),
      S => qsig_reg(0)
    );
\qsig_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \qsig[4]_i_13_n_0\,
      I1 => \qsig[4]_i_14_n_0\,
      O => PC_jump_addr(4),
      S => qsig_reg(0)
    );
\qsig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[4]_i_1_n_6\,
      Q => qsig_reg(5),
      R => rst_IBUF
    );
\qsig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[4]_i_1_n_5\,
      Q => qsig_reg(6),
      R => rst_IBUF
    );
\qsig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[4]_i_1_n_4\,
      Q => qsig_reg(7),
      R => rst_IBUF
    );
\qsig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[8]_i_1_n_7\,
      Q => qsig_reg(8),
      R => rst_IBUF
    );
\qsig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \qsig_reg[4]_i_1_n_0\,
      CO(3) => \qsig_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_qsig_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \qsig_reg[8]_i_1_n_4\,
      O(2) => \qsig_reg[8]_i_1_n_5\,
      O(1) => \qsig_reg[8]_i_1_n_6\,
      O(0) => \qsig_reg[8]_i_1_n_7\,
      S(3) => \qsig[8]_i_2_n_0\,
      S(2) => \qsig[8]_i_3_n_0\,
      S(1) => \qsig[8]_i_4_n_0\,
      S(0) => \qsig[8]_i_5_n_0\
    );
\qsig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => PC_clock_en,
      D => \qsig_reg[8]_i_1_n_6\,
      Q => qsig_reg(9),
      R => rst_IBUF
    );
\s_Address_reg[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(11),
      O => \qsig_reg[11]_1\(3)
    );
\s_Address_reg[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(10),
      O => \qsig_reg[11]_1\(2)
    );
\s_Address_reg[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(9),
      O => \qsig_reg[11]_1\(1)
    );
\s_Address_reg[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(8),
      O => \qsig_reg[11]_1\(0)
    );
\s_Address_reg[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(15),
      O => \qsig_reg[15]_2\(3)
    );
\s_Address_reg[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(14),
      O => \qsig_reg[15]_2\(2)
    );
\s_Address_reg[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(13),
      O => \qsig_reg[15]_2\(1)
    );
\s_Address_reg[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(12),
      O => \qsig_reg[15]_2\(0)
    );
\s_Address_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(3),
      O => \qsig_reg[3]_1\(3)
    );
\s_Address_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(2),
      O => \qsig_reg[3]_1\(2)
    );
\s_Address_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(1),
      O => \qsig_reg[3]_1\(1)
    );
\s_Address_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(0),
      O => \qsig_reg[3]_1\(0)
    );
\s_Address_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(7),
      O => \qsig_reg[7]_1\(3)
    );
\s_Address_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(6),
      O => \qsig_reg[7]_1\(2)
    );
\s_Address_reg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(5),
      O => \qsig_reg[7]_1\(1)
    );
\s_Address_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^qsig_reg[15]_1\,
      I2 => \^qsig_reg[15]_0\,
      I3 => ROM_out(0),
      I4 => ptr_out(4),
      O => \qsig_reg[7]_1\(0)
    );
\s_DataInReg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ROM_out(0),
      I1 => \^qsig_reg[15]_1\,
      O => \s_DataInReg[3]_i_2_n_0\
    );
\s_DataInReg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ROM_out(0),
      I1 => \^qsig_reg[15]_1\,
      O => \s_DataInReg[3]_i_3_n_0\
    );
\s_DataInReg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ROM_out(0),
      I1 => \^qsig_reg[15]_1\,
      O => \s_DataInReg[3]_i_4_n_0\
    );
\s_DataInReg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ROM_out(0),
      I1 => \^qsig_reg[15]_1\,
      O => \s_DataInReg[3]_i_5_n_0\
    );
\s_DataInReg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(3),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(3),
      O => \s_DataInReg[3]_i_6_n_0\
    );
\s_DataInReg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(2),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(2),
      O => \s_DataInReg[3]_i_7_n_0\
    );
\s_DataInReg[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(1),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(1),
      O => \s_DataInReg[3]_i_8_n_0\
    );
\s_DataInReg[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(0),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(0),
      O => \s_DataInReg[3]_i_9_n_0\
    );
\s_DataInReg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ROM_out(0),
      I1 => \^qsig_reg[15]_1\,
      O => \s_DataInReg[7]_i_2_n_0\
    );
\s_DataInReg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ROM_out(0),
      I1 => \^qsig_reg[15]_1\,
      O => \s_DataInReg[7]_i_3_n_0\
    );
\s_DataInReg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ROM_out(0),
      I1 => \^qsig_reg[15]_1\,
      O => \s_DataInReg[7]_i_4_n_0\
    );
\s_DataInReg[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(7),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(7),
      O => \s_DataInReg[7]_i_5_n_0\
    );
\s_DataInReg[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(6),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(6),
      O => \s_DataInReg[7]_i_6_n_0\
    );
\s_DataInReg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(5),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(5),
      O => \s_DataInReg[7]_i_7_n_0\
    );
\s_DataInReg[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => ROM_out(0),
      I1 => s_ram_data_out0_out(4),
      I2 => \^qsig_reg[15]_1\,
      I3 => key_IBUF(4),
      O => \s_DataInReg[7]_i_8_n_0\
    );
\s_DataInReg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_DataInReg_reg[3]_i_1_n_0\,
      CO(2 downto 0) => \NLW_s_DataInReg_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \s_DataInReg[3]_i_2_n_0\,
      DI(2) => \s_DataInReg[3]_i_3_n_0\,
      DI(1) => \s_DataInReg[3]_i_4_n_0\,
      DI(0) => \s_DataInReg[3]_i_5_n_0\,
      O(3 downto 0) => \out\(3 downto 0),
      S(3) => \s_DataInReg[3]_i_6_n_0\,
      S(2) => \s_DataInReg[3]_i_7_n_0\,
      S(1) => \s_DataInReg[3]_i_8_n_0\,
      S(0) => \s_DataInReg[3]_i_9_n_0\
    );
\s_DataInReg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_DataInReg_reg[3]_i_1_n_0\,
      CO(3 downto 0) => \NLW_s_DataInReg_reg[7]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \s_DataInReg[7]_i_2_n_0\,
      DI(1) => \s_DataInReg[7]_i_3_n_0\,
      DI(0) => \s_DataInReg[7]_i_4_n_0\,
      O(3 downto 0) => \out\(7 downto 4),
      S(3) => \s_DataInReg[7]_i_5_n_0\,
      S(2) => \s_DataInReg[7]_i_6_n_0\,
      S(1) => \s_DataInReg[7]_i_7_n_0\,
      S(0) => \s_DataInReg[7]_i_8_n_0\
    );
s_WEReg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C4"
    )
        port map (
      I0 => \^qsig_reg[15]_1\,
      I1 => \^qsig_reg[15]_0\,
      I2 => ROM_out(0),
      O => modmem
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_16b_2 is
  port (
    ptr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_IBUF : in STD_LOGIC;
    ptr_ce : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \qsig_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \qsig_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_Address_reg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_Address_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_Address_reg_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_Address_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_16b_2 : entity is "register_16b";
end register_16b_2;

architecture STRUCTURE of register_16b_2 is
  signal \^ptr_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \qsig_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \qsig_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \qsig_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \qsig_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \qsig_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \s_Address_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_Address_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_Address_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_qsig_reg[0]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_qsig_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_qsig_reg[4]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_qsig_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_Address_reg_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_Address_reg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_Address_reg_reg[3]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_s_Address_reg_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \qsig_reg[0]_i_2__0\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \qsig_reg[0]_i_2__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \qsig_reg[12]_i_1__0\ : label is 11;
  attribute OPT_MODIFIED of \qsig_reg[12]_i_1__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \qsig_reg[4]_i_1__0\ : label is 11;
  attribute OPT_MODIFIED of \qsig_reg[4]_i_1__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \qsig_reg[8]_i_1__0\ : label is 11;
  attribute OPT_MODIFIED of \qsig_reg[8]_i_1__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_Address_reg_reg[11]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_Address_reg_reg[15]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_Address_reg_reg[3]_i_1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \s_Address_reg_reg[7]_i_1\ : label is "SWEEP";
begin
  ptr_out(15 downto 0) <= \^ptr_out\(15 downto 0);
\qsig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[0]_i_2__0_n_7\,
      Q => \^ptr_out\(0),
      R => rst_IBUF
    );
\qsig_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \qsig_reg[0]_i_2__0_n_0\,
      CO(2 downto 0) => \NLW_qsig_reg[0]_i_2__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^ptr_out\(3 downto 0),
      O(3) => \qsig_reg[0]_i_2__0_n_4\,
      O(2) => \qsig_reg[0]_i_2__0_n_5\,
      O(1) => \qsig_reg[0]_i_2__0_n_6\,
      O(0) => \qsig_reg[0]_i_2__0_n_7\,
      S(3 downto 0) => \qsig_reg[3]_0\(3 downto 0)
    );
\qsig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[8]_i_1__0_n_5\,
      Q => \^ptr_out\(10),
      R => rst_IBUF
    );
\qsig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[8]_i_1__0_n_4\,
      Q => \^ptr_out\(11),
      R => rst_IBUF
    );
\qsig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[12]_i_1__0_n_7\,
      Q => \^ptr_out\(12),
      R => rst_IBUF
    );
\qsig_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \qsig_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_qsig_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^ptr_out\(14 downto 12),
      O(3) => \qsig_reg[12]_i_1__0_n_4\,
      O(2) => \qsig_reg[12]_i_1__0_n_5\,
      O(1) => \qsig_reg[12]_i_1__0_n_6\,
      O(0) => \qsig_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => S(3 downto 0)
    );
\qsig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[12]_i_1__0_n_6\,
      Q => \^ptr_out\(13),
      R => rst_IBUF
    );
\qsig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[12]_i_1__0_n_5\,
      Q => \^ptr_out\(14),
      R => rst_IBUF
    );
\qsig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[12]_i_1__0_n_4\,
      Q => \^ptr_out\(15),
      R => rst_IBUF
    );
\qsig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[0]_i_2__0_n_6\,
      Q => \^ptr_out\(1),
      R => rst_IBUF
    );
\qsig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[0]_i_2__0_n_5\,
      Q => \^ptr_out\(2),
      R => rst_IBUF
    );
\qsig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[0]_i_2__0_n_4\,
      Q => \^ptr_out\(3),
      R => rst_IBUF
    );
\qsig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[4]_i_1__0_n_7\,
      Q => \^ptr_out\(4),
      R => rst_IBUF
    );
\qsig_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \qsig_reg[0]_i_2__0_n_0\,
      CO(3) => \qsig_reg[4]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_qsig_reg[4]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^ptr_out\(7 downto 4),
      O(3) => \qsig_reg[4]_i_1__0_n_4\,
      O(2) => \qsig_reg[4]_i_1__0_n_5\,
      O(1) => \qsig_reg[4]_i_1__0_n_6\,
      O(0) => \qsig_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => \qsig_reg[7]_0\(3 downto 0)
    );
\qsig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[4]_i_1__0_n_6\,
      Q => \^ptr_out\(5),
      R => rst_IBUF
    );
\qsig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[4]_i_1__0_n_5\,
      Q => \^ptr_out\(6),
      R => rst_IBUF
    );
\qsig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[4]_i_1__0_n_4\,
      Q => \^ptr_out\(7),
      R => rst_IBUF
    );
\qsig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[8]_i_1__0_n_7\,
      Q => \^ptr_out\(8),
      R => rst_IBUF
    );
\qsig_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \qsig_reg[4]_i_1__0_n_0\,
      CO(3) => \qsig_reg[8]_i_1__0_n_0\,
      CO(2 downto 0) => \NLW_qsig_reg[8]_i_1__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^ptr_out\(11 downto 8),
      O(3) => \qsig_reg[8]_i_1__0_n_4\,
      O(2) => \qsig_reg[8]_i_1__0_n_5\,
      O(1) => \qsig_reg[8]_i_1__0_n_6\,
      O(0) => \qsig_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => \qsig_reg[11]_0\(3 downto 0)
    );
\qsig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ptr_ce,
      D => \qsig_reg[8]_i_1__0_n_6\,
      Q => \^ptr_out\(9),
      R => rst_IBUF
    );
\s_Address_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_Address_reg_reg[7]_i_1_n_0\,
      CO(3) => \s_Address_reg_reg[11]_i_1_n_0\,
      CO(2 downto 0) => \NLW_s_Address_reg_reg[11]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^ptr_out\(11 downto 8),
      O(3 downto 0) => D(11 downto 8),
      S(3 downto 0) => \s_Address_reg_reg[11]\(3 downto 0)
    );
\s_Address_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_Address_reg_reg[11]_i_1_n_0\,
      CO(3 downto 0) => \NLW_s_Address_reg_reg[15]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^ptr_out\(14 downto 12),
      O(3 downto 0) => D(15 downto 12),
      S(3 downto 0) => \s_Address_reg_reg[15]\(3 downto 0)
    );
\s_Address_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_Address_reg_reg[3]_i_1_n_0\,
      CO(2 downto 0) => \NLW_s_Address_reg_reg[3]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^ptr_out\(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 0) => \s_Address_reg_reg[3]\(3 downto 0)
    );
\s_Address_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_Address_reg_reg[3]_i_1_n_0\,
      CO(3) => \s_Address_reg_reg[7]_i_1_n_0\,
      CO(2 downto 0) => \NLW_s_Address_reg_reg[7]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^ptr_out\(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \s_Address_reg_reg[7]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ISA_top is
  port (
    s_OEReg : out STD_LOGIC;
    p_0_in1_in : out STD_LOGIC;
    \s_TickDelayLine_reg[0]\ : out STD_LOGIC;
    s_WEReg_reg : out STD_LOGIC;
    \ROM_out__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \qsig_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_enable_OBUF : out STD_LOGIC;
    s_ram_data_out0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_OEReg_reg : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    ptr_ce : in STD_LOGIC;
    \s_TickDelayLine_reg[0]_0\ : in STD_LOGIC;
    dbcd_ce : in STD_LOGIC;
    dbc_result : in STD_LOGIC;
    pulse_reg : in STD_LOGIC;
    s_mem_contents_reg_0_7 : in STD_LOGIC;
    clk_IBUF : in STD_LOGIC;
    key_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC;
    pwropt_2 : in STD_LOGIC;
    pwropt_3 : in STD_LOGIC
  );
end ISA_top;

architecture STRUCTURE of ISA_top is
  signal PC_n_10 : STD_LOGIC;
  signal PC_n_11 : STD_LOGIC;
  signal PC_n_12 : STD_LOGIC;
  signal PC_n_13 : STD_LOGIC;
  signal PC_n_14 : STD_LOGIC;
  signal PC_n_15 : STD_LOGIC;
  signal PC_n_16 : STD_LOGIC;
  signal PC_n_17 : STD_LOGIC;
  signal PC_n_18 : STD_LOGIC;
  signal PC_n_19 : STD_LOGIC;
  signal PC_n_2 : STD_LOGIC;
  signal PC_n_20 : STD_LOGIC;
  signal PC_n_21 : STD_LOGIC;
  signal PC_n_22 : STD_LOGIC;
  signal PC_n_23 : STD_LOGIC;
  signal PC_n_24 : STD_LOGIC;
  signal PC_n_25 : STD_LOGIC;
  signal PC_n_26 : STD_LOGIC;
  signal PC_n_27 : STD_LOGIC;
  signal PC_n_28 : STD_LOGIC;
  signal PC_n_29 : STD_LOGIC;
  signal PC_n_3 : STD_LOGIC;
  signal PC_n_30 : STD_LOGIC;
  signal PC_n_31 : STD_LOGIC;
  signal PC_n_32 : STD_LOGIC;
  signal PC_n_33 : STD_LOGIC;
  signal PC_n_34 : STD_LOGIC;
  signal PC_n_35 : STD_LOGIC;
  signal PC_n_36 : STD_LOGIC;
  signal PC_n_37 : STD_LOGIC;
  signal PC_n_38 : STD_LOGIC;
  signal PC_n_39 : STD_LOGIC;
  signal PC_n_4 : STD_LOGIC;
  signal PC_n_40 : STD_LOGIC;
  signal PC_n_41 : STD_LOGIC;
  signal PC_n_42 : STD_LOGIC;
  signal PC_n_43 : STD_LOGIC;
  signal PC_n_5 : STD_LOGIC;
  signal PC_n_8 : STD_LOGIC;
  signal PC_n_9 : STD_LOGIC;
  signal Pointer_n_16 : STD_LOGIC;
  signal Pointer_n_17 : STD_LOGIC;
  signal Pointer_n_18 : STD_LOGIC;
  signal Pointer_n_19 : STD_LOGIC;
  signal Pointer_n_20 : STD_LOGIC;
  signal Pointer_n_21 : STD_LOGIC;
  signal Pointer_n_22 : STD_LOGIC;
  signal Pointer_n_23 : STD_LOGIC;
  signal Pointer_n_24 : STD_LOGIC;
  signal Pointer_n_25 : STD_LOGIC;
  signal Pointer_n_26 : STD_LOGIC;
  signal Pointer_n_27 : STD_LOGIC;
  signal Pointer_n_28 : STD_LOGIC;
  signal Pointer_n_29 : STD_LOGIC;
  signal Pointer_n_30 : STD_LOGIC;
  signal Pointer_n_31 : STD_LOGIC;
  signal \cell_zero__6\ : STD_LOGIC;
  signal modmem : STD_LOGIC;
  signal ptr_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_ram_data_out0_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  s_ram_data_out0_out(7 downto 0) <= \^s_ram_data_out0_out\(7 downto 0);
PC: entity work.register_16b
     port map (
      S(3) => PC_n_2,
      S(2) => PC_n_3,
      S(1) => PC_n_4,
      S(0) => PC_n_5,
      \cell_zero__6\ => \cell_zero__6\,
      clk_IBUF => clk_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dbc_result => dbc_result,
      dbcd_ce => dbcd_ce,
      key_IBUF(7 downto 0) => key_IBUF(7 downto 0),
      modmem => modmem,
      \out\(7) => PC_n_36,
      \out\(6) => PC_n_37,
      \out\(5) => PC_n_38,
      \out\(4) => PC_n_39,
      \out\(3) => PC_n_40,
      \out\(2) => PC_n_41,
      \out\(1) => PC_n_42,
      \out\(0) => PC_n_43,
      out_enable_OBUF => out_enable_OBUF,
      ptr_out(15 downto 0) => ptr_out(15 downto 0),
      pulse_reg => pulse_reg,
      \qsig_reg[11]_0\(3) => PC_n_16,
      \qsig_reg[11]_0\(2) => PC_n_17,
      \qsig_reg[11]_0\(1) => PC_n_18,
      \qsig_reg[11]_0\(0) => PC_n_19,
      \qsig_reg[11]_1\(3) => PC_n_28,
      \qsig_reg[11]_1\(2) => PC_n_29,
      \qsig_reg[11]_1\(1) => PC_n_30,
      \qsig_reg[11]_1\(0) => PC_n_31,
      \qsig_reg[15]_0\ => \ROM_out__0\(0),
      \qsig_reg[15]_1\ => \qsig_reg[15]\(0),
      \qsig_reg[15]_2\(3) => PC_n_32,
      \qsig_reg[15]_2\(2) => PC_n_33,
      \qsig_reg[15]_2\(1) => PC_n_34,
      \qsig_reg[15]_2\(0) => PC_n_35,
      \qsig_reg[3]_0\(3) => PC_n_8,
      \qsig_reg[3]_0\(2) => PC_n_9,
      \qsig_reg[3]_0\(1) => PC_n_10,
      \qsig_reg[3]_0\(0) => PC_n_11,
      \qsig_reg[3]_1\(3) => PC_n_20,
      \qsig_reg[3]_1\(2) => PC_n_21,
      \qsig_reg[3]_1\(1) => PC_n_22,
      \qsig_reg[3]_1\(0) => PC_n_23,
      \qsig_reg[7]_0\(3) => PC_n_12,
      \qsig_reg[7]_0\(2) => PC_n_13,
      \qsig_reg[7]_0\(1) => PC_n_14,
      \qsig_reg[7]_0\(0) => PC_n_15,
      \qsig_reg[7]_1\(3) => PC_n_24,
      \qsig_reg[7]_1\(2) => PC_n_25,
      \qsig_reg[7]_1\(1) => PC_n_26,
      \qsig_reg[7]_1\(0) => PC_n_27,
      rst_IBUF => rst_IBUF,
      s_ram_data_out0_out(7 downto 0) => \^s_ram_data_out0_out\(7 downto 0)
    );
Pointer: entity work.register_16b_2
     port map (
      D(15) => Pointer_n_16,
      D(14) => Pointer_n_17,
      D(13) => Pointer_n_18,
      D(12) => Pointer_n_19,
      D(11) => Pointer_n_20,
      D(10) => Pointer_n_21,
      D(9) => Pointer_n_22,
      D(8) => Pointer_n_23,
      D(7) => Pointer_n_24,
      D(6) => Pointer_n_25,
      D(5) => Pointer_n_26,
      D(4) => Pointer_n_27,
      D(3) => Pointer_n_28,
      D(2) => Pointer_n_29,
      D(1) => Pointer_n_30,
      D(0) => Pointer_n_31,
      S(3) => PC_n_2,
      S(2) => PC_n_3,
      S(1) => PC_n_4,
      S(0) => PC_n_5,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      ptr_ce => ptr_ce,
      ptr_out(15 downto 0) => ptr_out(15 downto 0),
      \qsig_reg[11]_0\(3) => PC_n_16,
      \qsig_reg[11]_0\(2) => PC_n_17,
      \qsig_reg[11]_0\(1) => PC_n_18,
      \qsig_reg[11]_0\(0) => PC_n_19,
      \qsig_reg[3]_0\(3) => PC_n_8,
      \qsig_reg[3]_0\(2) => PC_n_9,
      \qsig_reg[3]_0\(1) => PC_n_10,
      \qsig_reg[3]_0\(0) => PC_n_11,
      \qsig_reg[7]_0\(3) => PC_n_12,
      \qsig_reg[7]_0\(2) => PC_n_13,
      \qsig_reg[7]_0\(1) => PC_n_14,
      \qsig_reg[7]_0\(0) => PC_n_15,
      rst_IBUF => rst_IBUF,
      \s_Address_reg_reg[11]\(3) => PC_n_28,
      \s_Address_reg_reg[11]\(2) => PC_n_29,
      \s_Address_reg_reg[11]\(1) => PC_n_30,
      \s_Address_reg_reg[11]\(0) => PC_n_31,
      \s_Address_reg_reg[15]\(3) => PC_n_32,
      \s_Address_reg_reg[15]\(2) => PC_n_33,
      \s_Address_reg_reg[15]\(1) => PC_n_34,
      \s_Address_reg_reg[15]\(0) => PC_n_35,
      \s_Address_reg_reg[3]\(3) => PC_n_20,
      \s_Address_reg_reg[3]\(2) => PC_n_21,
      \s_Address_reg_reg[3]\(1) => PC_n_22,
      \s_Address_reg_reg[3]\(0) => PC_n_23,
      \s_Address_reg_reg[7]\(3) => PC_n_24,
      \s_Address_reg_reg[7]\(2) => PC_n_25,
      \s_Address_reg_reg[7]\(1) => PC_n_26,
      \s_Address_reg_reg[7]\(0) => PC_n_27
    );
work_mem: entity work.ram
     port map (
      D(7) => PC_n_36,
      D(6) => PC_n_37,
      D(5) => PC_n_38,
      D(4) => PC_n_39,
      D(3) => PC_n_40,
      D(2) => PC_n_41,
      D(1) => PC_n_42,
      D(0) => PC_n_43,
      \cell_zero__6\ => \cell_zero__6\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      modmem => modmem,
      p_0_in1_in => p_0_in1_in,
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      pwropt_2 => pwropt_2,
      pwropt_3 => pwropt_3,
      rst_IBUF => rst_IBUF,
      \s_Address_reg_reg[15]_0\(15) => Pointer_n_16,
      \s_Address_reg_reg[15]_0\(14) => Pointer_n_17,
      \s_Address_reg_reg[15]_0\(13) => Pointer_n_18,
      \s_Address_reg_reg[15]_0\(12) => Pointer_n_19,
      \s_Address_reg_reg[15]_0\(11) => Pointer_n_20,
      \s_Address_reg_reg[15]_0\(10) => Pointer_n_21,
      \s_Address_reg_reg[15]_0\(9) => Pointer_n_22,
      \s_Address_reg_reg[15]_0\(8) => Pointer_n_23,
      \s_Address_reg_reg[15]_0\(7) => Pointer_n_24,
      \s_Address_reg_reg[15]_0\(6) => Pointer_n_25,
      \s_Address_reg_reg[15]_0\(5) => Pointer_n_26,
      \s_Address_reg_reg[15]_0\(4) => Pointer_n_27,
      \s_Address_reg_reg[15]_0\(3) => Pointer_n_28,
      \s_Address_reg_reg[15]_0\(2) => Pointer_n_29,
      \s_Address_reg_reg[15]_0\(1) => Pointer_n_30,
      \s_Address_reg_reg[15]_0\(0) => Pointer_n_31,
      s_OEReg => s_OEReg,
      s_OEReg_reg_0 => s_OEReg_reg,
      \s_TickDelayLine_reg[0]_0\ => \s_TickDelayLine_reg[0]\,
      \s_TickDelayLine_reg[0]_1\ => \s_TickDelayLine_reg[0]_0\,
      s_WEReg_reg_0 => s_WEReg_reg,
      s_mem_contents_reg_0_7_0 => s_mem_contents_reg_0_7,
      s_ram_data_out0_out(7 downto 0) => \^s_ram_data_out0_out\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debounce_pulse_gen is
  port (
    ptr_ce : out STD_LOGIC;
    \s_TickDelayLine_reg[0]\ : out STD_LOGIC;
    result_reg : out STD_LOGIC;
    dbcd_ce : out STD_LOGIC;
    pulse_reg_reg_1 : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \qsig_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ROM_out__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_mem_contents_reg_0_0 : in STD_LOGIC;
    s_OEReg : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC;
    s_mem_contents_reg_0_0_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    pwropt : out STD_LOGIC;
    pwropt_1 : out STD_LOGIC
  );
end debounce_pulse_gen;

architecture STRUCTURE of debounce_pulse_gen is
  signal dbc_result : STD_LOGIC;
  signal pulse_reg : STD_LOGIC;
  signal NLW_dbcr_s_mem_contents_reg_0_0_0_UNCONNECTED : STD_LOGIC;
begin
  pwropt <= pulse_reg;
  pwropt_1 <= dbc_result;
dbcr: entity work.debounce_1
     port map (
      D(0) => D(0),
      \ROM_out__0\(0) => \ROM_out__0\(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dbc_result => dbc_result,
      dbcd_ce => dbcd_ce,
      p_0_in1_in => p_0_in1_in,
      ptr_ce => ptr_ce,
      pulse_reg => pulse_reg,
      pulse_reg_reg_0 => pulse_reg_reg_1,
      \qsig_reg[0]\(0) => \qsig_reg[0]\(0),
      result_reg_0 => result_reg,
      rst_IBUF => rst_IBUF,
      s_OEReg => s_OEReg,
      \s_TickDelayLine_reg[0]\ => \s_TickDelayLine_reg[0]\,
      s_mem_contents_reg_0_0 => s_mem_contents_reg_0_0,
      s_mem_contents_reg_0_0_0 => NLW_dbcr_s_mem_contents_reg_0_0_0_UNCONNECTED
    );
pulse_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => dbc_result,
      Q => pulse_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debounce_pulse_gen_0 is
  port (
    pulse_reg : out STD_LOGIC;
    dbc_result : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of debounce_pulse_gen_0 : entity is "debounce_pulse_gen";
end debounce_pulse_gen_0;

architecture STRUCTURE of debounce_pulse_gen_0 is
  signal \^dbc_result\ : STD_LOGIC;
begin
  dbc_result <= \^dbc_result\;
dbcr: entity work.debounce
     port map (
      D(0) => D(0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dbc_result => \^dbc_result\,
      rst_IBUF => rst_IBUF
    );
pulse_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \^dbc_result\,
      Q => pulse_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    input_valid : in STD_LOGIC;
    ce : in STD_LOGIC;
    key : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_enable : out STD_LOGIC;
    char_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top : entity is "5c489a87";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of top : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of top : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of top : entity is 0;
end top;

architecture STRUCTURE of top is
  signal ISA_n_2 : STD_LOGIC;
  signal ISA_n_3 : STD_LOGIC;
  signal ROM_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \ROM_out__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ce_IBUF : STD_LOGIC;
  signal ce_dbcr_n_1 : STD_LOGIC;
  signal ce_dbcr_n_2 : STD_LOGIC;
  signal ce_dbcr_n_5 : STD_LOGIC;
  signal char_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal dbc_result : STD_LOGIC;
  signal dbcd_ce : STD_LOGIC;
  signal input_valid_IBUF : STD_LOGIC;
  signal key_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal out_enable_OBUF : STD_LOGIC;
  signal ptr_ce : STD_LOGIC;
  signal pulse_reg : STD_LOGIC;
  signal pwropt : STD_LOGIC;
  signal pwropt_1 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal \work_mem/p_0_in1_in\ : STD_LOGIC;
  signal \work_mem/s_OEReg\ : STD_LOGIC;
  signal NLW_ce_dbcr_s_mem_contents_reg_0_0_0_UNCONNECTED : STD_LOGIC;
  attribute SPLIT_LOADS_ON_BUFG : boolean;
  attribute SPLIT_LOADS_ON_BUFG of clk_IBUF_BUFG_inst : label is std.standard.true;
begin
ISA: entity work.ISA_top
     port map (
      \ROM_out__0\(0) => \ROM_out__0\(1),
      clk_IBUF => clk_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dbc_result => dbc_result,
      dbcd_ce => dbcd_ce,
      key_IBUF(7 downto 0) => key_IBUF(7 downto 0),
      out_enable_OBUF => out_enable_OBUF,
      p_0_in1_in => \work_mem/p_0_in1_in\,
      ptr_ce => ptr_ce,
      pulse_reg => pulse_reg,
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      pwropt_2 => ISA_n_3,
      pwropt_3 => ISA_n_2,
      \qsig_reg[15]\(0) => ROM_out(2),
      rst_IBUF => rst_IBUF,
      s_OEReg => \work_mem/s_OEReg\,
      s_OEReg_reg => ce_dbcr_n_5,
      \s_TickDelayLine_reg[0]\ => ISA_n_2,
      \s_TickDelayLine_reg[0]_0\ => ce_dbcr_n_1,
      s_WEReg_reg => ISA_n_3,
      s_mem_contents_reg_0_7 => ce_dbcr_n_2,
      s_ram_data_out0_out(7 downto 0) => char_out_OBUF(7 downto 0)
    );
ce_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ce,
      O => ce_IBUF
    );
ce_dbcr: entity work.debounce_pulse_gen
     port map (
      D(0) => ce_IBUF,
      \ROM_out__0\(0) => \ROM_out__0\(1),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dbcd_ce => dbcd_ce,
      p_0_in1_in => \work_mem/p_0_in1_in\,
      ptr_ce => ptr_ce,
      pulse_reg_reg_1 => ce_dbcr_n_5,
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      \qsig_reg[0]\(0) => ROM_out(2),
      result_reg => ce_dbcr_n_2,
      rst_IBUF => rst_IBUF,
      s_OEReg => \work_mem/s_OEReg\,
      \s_TickDelayLine_reg[0]\ => ce_dbcr_n_1,
      s_mem_contents_reg_0_0 => ISA_n_2,
      s_mem_contents_reg_0_0_0 => NLW_ce_dbcr_s_mem_contents_reg_0_0_0_UNCONNECTED
    );
\char_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(0),
      O => char_out(0)
    );
\char_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(1),
      O => char_out(1)
    );
\char_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(2),
      O => char_out(2)
    );
\char_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(3),
      O => char_out(3)
    );
\char_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(4),
      O => char_out(4)
    );
\char_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(5),
      O => char_out(5)
    );
\char_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(6),
      O => char_out(6)
    );
\char_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => char_out_OBUF(7),
      O => char_out(7)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
input_valid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => input_valid,
      O => input_valid_IBUF
    );
iv_dbcr: entity work.debounce_pulse_gen_0
     port map (
      D(0) => input_valid_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      dbc_result => dbc_result,
      pulse_reg => pulse_reg,
      rst_IBUF => rst_IBUF
    );
\key_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(0),
      O => key_IBUF(0)
    );
\key_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(1),
      O => key_IBUF(1)
    );
\key_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(2),
      O => key_IBUF(2)
    );
\key_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(3),
      O => key_IBUF(3)
    );
\key_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(4),
      O => key_IBUF(4)
    );
\key_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(5),
      O => key_IBUF(5)
    );
\key_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(6),
      O => key_IBUF(6)
    );
\key_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => key(7),
      O => key_IBUF(7)
    );
out_enable_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => out_enable_OBUF,
      O => out_enable
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
end STRUCTURE;
