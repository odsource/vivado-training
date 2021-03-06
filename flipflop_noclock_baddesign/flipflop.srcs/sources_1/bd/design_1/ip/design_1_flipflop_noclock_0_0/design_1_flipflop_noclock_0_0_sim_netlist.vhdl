-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Sep 21 22:02:51 2017
-- Host        : Wimucs running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/flipflop_noclock_baddesign/flipflop.srcs/sources_1/bd/design_1/ip/design_1_flipflop_noclock_0_0/design_1_flipflop_noclock_0_0_sim_netlist.vhdl
-- Design      : design_1_flipflop_noclock_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_flipflop_noclock_0_0_flipflop_noclock is
  port (
    out_q : out STD_LOGIC;
    out_qbar : out STD_LOGIC;
    in_s : in STD_LOGIC;
    in_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_flipflop_noclock_0_0_flipflop_noclock : entity is "flipflop_noclock";
end design_1_flipflop_noclock_0_0_flipflop_noclock;

architecture STRUCTURE of design_1_flipflop_noclock_0_0_flipflop_noclock is
  signal \^out_q\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of store_reg : label is "LDC";
begin
  out_q <= \^out_q\;
out_qbar_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out_q\,
      O => out_qbar
    );
store_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => in_r,
      D => in_s,
      G => in_s,
      GE => '1',
      Q => \^out_q\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_flipflop_noclock_0_0 is
  port (
    in_s : in STD_LOGIC;
    in_r : in STD_LOGIC;
    out_q : out STD_LOGIC;
    out_qbar : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_flipflop_noclock_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_flipflop_noclock_0_0 : entity is "design_1_flipflop_noclock_0_0,flipflop_noclock,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_flipflop_noclock_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_flipflop_noclock_0_0 : entity is "flipflop_noclock,Vivado 2017.2";
end design_1_flipflop_noclock_0_0;

architecture STRUCTURE of design_1_flipflop_noclock_0_0 is
begin
U0: entity work.design_1_flipflop_noclock_0_0_flipflop_noclock
     port map (
      in_r => in_r,
      in_s => in_s,
      out_q => out_q,
      out_qbar => out_qbar
    );
end STRUCTURE;
