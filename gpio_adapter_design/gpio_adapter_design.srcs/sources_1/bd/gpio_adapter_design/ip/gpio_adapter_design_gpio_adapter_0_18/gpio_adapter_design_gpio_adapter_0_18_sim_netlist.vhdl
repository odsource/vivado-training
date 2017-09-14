-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sat Sep 16 00:11:52 2017
-- Host        : Wimucs running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/gpio_adapter_design/gpio_adapter_design.srcs/sources_1/bd/gpio_adapter_design/ip/gpio_adapter_design_gpio_adapter_0_18/gpio_adapter_design_gpio_adapter_0_18_sim_netlist.vhdl
-- Design      : gpio_adapter_design_gpio_adapter_0_18
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gpio_adapter_design_gpio_adapter_0_18_gpio_adapter is
  port (
    gpio_in_i : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_in_o : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_in_t : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_out_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_out_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_out_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute GPIO_VECTOR_SIZE : integer;
  attribute GPIO_VECTOR_SIZE of gpio_adapter_design_gpio_adapter_0_18_gpio_adapter : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gpio_adapter_design_gpio_adapter_0_18_gpio_adapter : entity is "gpio_adapter";
end gpio_adapter_design_gpio_adapter_0_18_gpio_adapter;

architecture STRUCTURE of gpio_adapter_design_gpio_adapter_0_18_gpio_adapter is
  signal \^gpio_in_o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gpio_in_t\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gpio_out_i\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^gpio_in_o\(3 downto 0) <= gpio_in_o(3 downto 0);
  \^gpio_in_t\(3 downto 0) <= gpio_in_t(3 downto 0);
  \^gpio_out_i\(3 downto 0) <= gpio_out_i(3 downto 0);
  gpio_in_i(3 downto 0) <= \^gpio_out_i\(3 downto 0);
  gpio_out_o(3 downto 0) <= \^gpio_in_o\(3 downto 0);
  gpio_out_t(3 downto 0) <= \^gpio_in_t\(3 downto 0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gpio_adapter_design_gpio_adapter_0_18 is
  port (
    gpio_in_i : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_in_o : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_in_t : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_out_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_out_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio_out_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gpio_adapter_design_gpio_adapter_0_18 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of gpio_adapter_design_gpio_adapter_0_18 : entity is "gpio_adapter_design_gpio_adapter_0_18,gpio_adapter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gpio_adapter_design_gpio_adapter_0_18 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of gpio_adapter_design_gpio_adapter_0_18 : entity is "gpio_adapter,Vivado 2017.2";
end gpio_adapter_design_gpio_adapter_0_18;

architecture STRUCTURE of gpio_adapter_design_gpio_adapter_0_18 is
  attribute GPIO_VECTOR_SIZE : integer;
  attribute GPIO_VECTOR_SIZE of U0 : label is 4;
begin
U0: entity work.gpio_adapter_design_gpio_adapter_0_18_gpio_adapter
     port map (
      gpio_in_i(3 downto 0) => gpio_in_i(3 downto 0),
      gpio_in_o(3 downto 0) => gpio_in_o(3 downto 0),
      gpio_in_t(3 downto 0) => gpio_in_t(3 downto 0),
      gpio_out_i(3 downto 0) => gpio_out_i(3 downto 0),
      gpio_out_o(3 downto 0) => gpio_out_o(3 downto 0),
      gpio_out_t(3 downto 0) => gpio_out_t(3 downto 0)
    );
end STRUCTURE;
