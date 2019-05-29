-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May 29 12:19:39 2019
-- Host        : DESKTOP-FLPEC93 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/darny/gpio-teste/gpio-teste.srcs/sources_1/bd/design_1/ip/design_1_ones_counter_0_2/design_1_ones_counter_0_2_stub.vhdl
-- Design      : design_1_ones_counter_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ones_counter_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    word : in STD_LOGIC_VECTOR ( 21 downto 0 );
    number : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_ones_counter_0_2;

architecture stub of design_1_ones_counter_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,btnC,word[21:0],number[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ones_counter,Vivado 2018.3";
begin
end;
