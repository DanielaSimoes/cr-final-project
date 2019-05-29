-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May 29 12:19:39 2019
-- Host        : DESKTOP-FLPEC93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/darny/gpio-teste/gpio-teste.srcs/sources_1/bd/design_1/ip/design_1_ones_counter_0_2/design_1_ones_counter_0_2_sim_netlist.vhdl
-- Design      : design_1_ones_counter_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ones_counter_0_2_ones_counter is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 21 downto 0 );
    number : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ones_counter_0_2_ones_counter : entity is "ones_counter";
  attribute number_of_bits : integer;
  attribute number_of_bits of design_1_ones_counter_0_2_ones_counter : entity is 22;
end design_1_ones_counter_0_2_ones_counter;

architecture STRUCTURE of design_1_ones_counter_0_2_ones_counter is
  signal \<const0>\ : STD_LOGIC;
  signal C_S : STD_LOGIC;
  signal C_S_i_1_n_0 : STD_LOGIC;
  signal N_S : STD_LOGIC;
  signal \index[4]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \max_n_o_ones[0]_i_1_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[1]_i_1_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[2]_i_1_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[3]_i_1_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_11_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_12_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_13_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_14_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_1_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_2_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_3_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_4_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_5_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_7_n_0\ : STD_LOGIC;
  signal \max_n_o_ones[4]_i_8_n_0\ : STD_LOGIC;
  signal \max_n_o_ones_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \max_n_o_ones_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \max_n_o_ones_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \max_n_o_ones_reg_n_0_[0]\ : STD_LOGIC;
  signal \max_n_o_ones_reg_n_0_[1]\ : STD_LOGIC;
  signal \max_n_o_ones_reg_n_0_[2]\ : STD_LOGIC;
  signal \max_n_o_ones_reg_n_0_[3]\ : STD_LOGIC;
  signal \max_n_o_ones_reg_n_0_[4]\ : STD_LOGIC;
  signal \n_o_ones[4]_i_1_n_0\ : STD_LOGIC;
  signal \n_o_ones_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^number\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \index[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \index[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \index[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \max_n_o_ones[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \max_n_o_ones[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \max_n_o_ones[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \max_n_o_ones[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \max_n_o_ones[4]_i_5\ : label is "soft_lutpair0";
begin
  number(15) <= \<const0>\;
  number(14) <= \<const0>\;
  number(13) <= \<const0>\;
  number(12) <= \<const0>\;
  number(11) <= \<const0>\;
  number(10) <= \<const0>\;
  number(9) <= \<const0>\;
  number(8) <= \<const0>\;
  number(7) <= \<const0>\;
  number(6) <= \<const0>\;
  number(5) <= \<const0>\;
  number(4 downto 0) <= \^number\(4 downto 0);
C_S_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => N_S,
      I1 => btnC,
      O => C_S_i_1_n_0
    );
C_S_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => C_S,
      I1 => \index_reg__0\(1),
      I2 => \index_reg__0\(2),
      I3 => \index_reg__0\(0),
      I4 => \index_reg__0\(3),
      I5 => \index_reg__0\(4),
      O => N_S
    );
C_S_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C_S_i_1_n_0,
      Q => C_S,
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\Res_max_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => C_S,
      D => \max_n_o_ones_reg_n_0_[0]\,
      Q => \^number\(0),
      R => btnC
    );
\Res_max_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => C_S,
      D => \max_n_o_ones_reg_n_0_[1]\,
      Q => \^number\(1),
      R => btnC
    );
\Res_max_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => C_S,
      D => \max_n_o_ones_reg_n_0_[2]\,
      Q => \^number\(2),
      R => btnC
    );
\Res_max_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => C_S,
      D => \max_n_o_ones_reg_n_0_[3]\,
      Q => \^number\(3),
      R => btnC
    );
\Res_max_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => C_S,
      D => \max_n_o_ones_reg_n_0_[4]\,
      Q => \^number\(4),
      R => btnC
    );
\index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => p_0_in(0)
    );
\index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \index_reg__0\(0),
      I1 => \index_reg__0\(1),
      O => p_0_in(1)
    );
\index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \index_reg__0\(0),
      I1 => \index_reg__0\(1),
      I2 => \index_reg__0\(2),
      O => p_0_in(2)
    );
\index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(2),
      I3 => \index_reg__0\(3),
      O => p_0_in(3)
    );
\index[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => btnC,
      I1 => C_S,
      O => \index[4]_i_1_n_0\
    );
\index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(1),
      I3 => \index_reg__0\(3),
      I4 => \index_reg__0\(4),
      O => p_0_in(4)
    );
\index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \index_reg__0\(0),
      R => \index[4]_i_1_n_0\
    );
\index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \index_reg__0\(1),
      R => \index[4]_i_1_n_0\
    );
\index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \index_reg__0\(2),
      R => \index[4]_i_1_n_0\
    );
\index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \index_reg__0\(3),
      R => \index[4]_i_1_n_0\
    );
\index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \index_reg__0\(4),
      R => \index[4]_i_1_n_0\
    );
\max_n_o_ones[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \n_o_ones_reg__0\(0),
      O => \max_n_o_ones[0]_i_1_n_0\
    );
\max_n_o_ones[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n_o_ones_reg__0\(0),
      I1 => \n_o_ones_reg__0\(1),
      O => \max_n_o_ones[1]_i_1_n_0\
    );
\max_n_o_ones[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \n_o_ones_reg__0\(0),
      I1 => \n_o_ones_reg__0\(1),
      I2 => \n_o_ones_reg__0\(2),
      O => \max_n_o_ones[2]_i_1_n_0\
    );
\max_n_o_ones[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \n_o_ones_reg__0\(1),
      I1 => \n_o_ones_reg__0\(0),
      I2 => \n_o_ones_reg__0\(2),
      I3 => \n_o_ones_reg__0\(3),
      O => \max_n_o_ones[3]_i_1_n_0\
    );
\max_n_o_ones[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => C_S,
      I1 => btnC,
      O => \max_n_o_ones[4]_i_1_n_0\
    );
\max_n_o_ones[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => word(3),
      I1 => word(2),
      I2 => \index_reg__0\(1),
      I3 => word(1),
      I4 => \index_reg__0\(0),
      I5 => word(0),
      O => \max_n_o_ones[4]_i_11_n_0\
    );
\max_n_o_ones[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => word(7),
      I1 => word(6),
      I2 => \index_reg__0\(1),
      I3 => word(5),
      I4 => \index_reg__0\(0),
      I5 => word(4),
      O => \max_n_o_ones[4]_i_12_n_0\
    );
\max_n_o_ones[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => word(11),
      I1 => word(10),
      I2 => \index_reg__0\(1),
      I3 => word(9),
      I4 => \index_reg__0\(0),
      I5 => word(8),
      O => \max_n_o_ones[4]_i_13_n_0\
    );
\max_n_o_ones[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => word(15),
      I1 => word(14),
      I2 => \index_reg__0\(1),
      I3 => word(13),
      I4 => \index_reg__0\(0),
      I5 => word(12),
      O => \max_n_o_ones[4]_i_14_n_0\
    );
\max_n_o_ones[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => \max_n_o_ones[4]_i_4_n_0\,
      I1 => \max_n_o_ones[4]_i_5_n_0\,
      I2 => \index_reg__0\(4),
      I3 => \max_n_o_ones_reg[4]_i_6_n_0\,
      I4 => btnC,
      O => \max_n_o_ones[4]_i_2_n_0\
    );
\max_n_o_ones[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \n_o_ones_reg__0\(2),
      I1 => \n_o_ones_reg__0\(0),
      I2 => \n_o_ones_reg__0\(1),
      I3 => \n_o_ones_reg__0\(3),
      I4 => \n_o_ones_reg__0\(4),
      O => \max_n_o_ones[4]_i_3_n_0\
    );
\max_n_o_ones[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2FF00B2"
    )
        port map (
      I0 => \max_n_o_ones[4]_i_7_n_0\,
      I1 => \max_n_o_ones_reg_n_0_[3]\,
      I2 => \n_o_ones_reg__0\(3),
      I3 => \max_n_o_ones_reg_n_0_[4]\,
      I4 => \n_o_ones_reg__0\(4),
      O => \max_n_o_ones[4]_i_4_n_0\
    );
\max_n_o_ones[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => word(21),
      I1 => \index_reg__0\(0),
      I2 => word(20),
      I3 => \index_reg__0\(2),
      I4 => \max_n_o_ones[4]_i_8_n_0\,
      O => \max_n_o_ones[4]_i_5_n_0\
    );
\max_n_o_ones[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0DFFFF0000DF0D"
    )
        port map (
      I0 => \max_n_o_ones_reg_n_0_[0]\,
      I1 => \n_o_ones_reg__0\(0),
      I2 => \max_n_o_ones_reg_n_0_[1]\,
      I3 => \n_o_ones_reg__0\(1),
      I4 => \max_n_o_ones_reg_n_0_[2]\,
      I5 => \n_o_ones_reg__0\(2),
      O => \max_n_o_ones[4]_i_7_n_0\
    );
\max_n_o_ones[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => word(19),
      I1 => word(18),
      I2 => \index_reg__0\(1),
      I3 => word(17),
      I4 => \index_reg__0\(0),
      I5 => word(16),
      O => \max_n_o_ones[4]_i_8_n_0\
    );
\max_n_o_ones_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \max_n_o_ones[4]_i_2_n_0\,
      D => \max_n_o_ones[0]_i_1_n_0\,
      Q => \max_n_o_ones_reg_n_0_[0]\,
      R => \max_n_o_ones[4]_i_1_n_0\
    );
\max_n_o_ones_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \max_n_o_ones[4]_i_2_n_0\,
      D => \max_n_o_ones[1]_i_1_n_0\,
      Q => \max_n_o_ones_reg_n_0_[1]\,
      R => \max_n_o_ones[4]_i_1_n_0\
    );
\max_n_o_ones_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \max_n_o_ones[4]_i_2_n_0\,
      D => \max_n_o_ones[2]_i_1_n_0\,
      Q => \max_n_o_ones_reg_n_0_[2]\,
      R => \max_n_o_ones[4]_i_1_n_0\
    );
\max_n_o_ones_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \max_n_o_ones[4]_i_2_n_0\,
      D => \max_n_o_ones[3]_i_1_n_0\,
      Q => \max_n_o_ones_reg_n_0_[3]\,
      R => \max_n_o_ones[4]_i_1_n_0\
    );
\max_n_o_ones_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \max_n_o_ones[4]_i_2_n_0\,
      D => \max_n_o_ones[4]_i_3_n_0\,
      Q => \max_n_o_ones_reg_n_0_[4]\,
      R => \max_n_o_ones[4]_i_1_n_0\
    );
\max_n_o_ones_reg[4]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \max_n_o_ones[4]_i_13_n_0\,
      I1 => \max_n_o_ones[4]_i_14_n_0\,
      O => \max_n_o_ones_reg[4]_i_10_n_0\,
      S => \index_reg__0\(2)
    );
\max_n_o_ones_reg[4]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \max_n_o_ones_reg[4]_i_9_n_0\,
      I1 => \max_n_o_ones_reg[4]_i_10_n_0\,
      O => \max_n_o_ones_reg[4]_i_6_n_0\,
      S => \index_reg__0\(3)
    );
\max_n_o_ones_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \max_n_o_ones[4]_i_11_n_0\,
      I1 => \max_n_o_ones[4]_i_12_n_0\,
      O => \max_n_o_ones_reg[4]_i_9_n_0\,
      S => \index_reg__0\(2)
    );
\n_o_ones[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBABF"
    )
        port map (
      I0 => btnC,
      I1 => \max_n_o_ones[4]_i_5_n_0\,
      I2 => \index_reg__0\(4),
      I3 => \max_n_o_ones_reg[4]_i_6_n_0\,
      I4 => C_S,
      O => \n_o_ones[4]_i_1_n_0\
    );
\n_o_ones_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \max_n_o_ones[0]_i_1_n_0\,
      Q => \n_o_ones_reg__0\(0),
      R => \n_o_ones[4]_i_1_n_0\
    );
\n_o_ones_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \max_n_o_ones[1]_i_1_n_0\,
      Q => \n_o_ones_reg__0\(1),
      R => \n_o_ones[4]_i_1_n_0\
    );
\n_o_ones_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \max_n_o_ones[2]_i_1_n_0\,
      Q => \n_o_ones_reg__0\(2),
      R => \n_o_ones[4]_i_1_n_0\
    );
\n_o_ones_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \max_n_o_ones[3]_i_1_n_0\,
      Q => \n_o_ones_reg__0\(3),
      R => \n_o_ones[4]_i_1_n_0\
    );
\n_o_ones_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \max_n_o_ones[4]_i_3_n_0\,
      Q => \n_o_ones_reg__0\(4),
      R => \n_o_ones[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ones_counter_0_2 is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 21 downto 0 );
    number : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ones_counter_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ones_counter_0_2 : entity is "design_1_ones_counter_0_2,ones_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ones_counter_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ones_counter_0_2 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ones_counter_0_2 : entity is "ones_counter,Vivado 2018.3";
end design_1_ones_counter_0_2;

architecture STRUCTURE of design_1_ones_counter_0_2 is
  attribute number_of_bits : integer;
  attribute number_of_bits of U0 : label is 22;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
begin
U0: entity work.design_1_ones_counter_0_2_ones_counter
     port map (
      btnC => btnC,
      clk => clk,
      number(15 downto 0) => number(15 downto 0),
      word(21 downto 0) => word(21 downto 0)
    );
end STRUCTURE;
