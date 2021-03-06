-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Oct  4 14:58:48 2017
-- Host        : Wimucs running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Philipp/Documents/Scratch/Vivado/vivado-training/DS18B20/DS18B20.srcs/sources_1/bd/DS18B20_design/ip/DS18B20_design_gpio_adapter_0_0/DS18B20_design_gpio_adapter_0_0_sim_netlist.vhdl
-- Design      : DS18B20_design_gpio_adapter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DS18B20_design_gpio_adapter_0_0_gpio_adapter is
  port (
    gpio_in_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_in_o : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_in_t : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_out_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_out_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_out_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute GPIO_VECTOR_SIZE : integer;
  attribute GPIO_VECTOR_SIZE of DS18B20_design_gpio_adapter_0_0_gpio_adapter : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DS18B20_design_gpio_adapter_0_0_gpio_adapter : entity is "gpio_adapter";
end DS18B20_design_gpio_adapter_0_0_gpio_adapter;

architecture STRUCTURE of DS18B20_design_gpio_adapter_0_0_gpio_adapter is
  signal \^gpio_in_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gpio_in_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gpio_out_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^gpio_in_o\(0) <= gpio_in_o(0);
  \^gpio_in_t\(0) <= gpio_in_t(0);
  \^gpio_out_i\(0) <= gpio_out_i(0);
  gpio_in_i(0) <= \^gpio_out_i\(0);
  gpio_out_o(0) <= \^gpio_in_o\(0);
  gpio_out_t(0) <= \^gpio_in_t\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DS18B20_design_gpio_adapter_0_0 is
  port (
    gpio_in_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_in_o : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_in_t : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_out_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_out_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_out_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DS18B20_design_gpio_adapter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DS18B20_design_gpio_adapter_0_0 : entity is "DS18B20_design_gpio_adapter_0_0,gpio_adapter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DS18B20_design_gpio_adapter_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DS18B20_design_gpio_adapter_0_0 : entity is "gpio_adapter,Vivado 2017.2";
end DS18B20_design_gpio_adapter_0_0;

architecture STRUCTURE of DS18B20_design_gpio_adapter_0_0 is
  attribute GPIO_VECTOR_SIZE : integer;
  attribute GPIO_VECTOR_SIZE of U0 : label is 1;
begin
U0: entity work.DS18B20_design_gpio_adapter_0_0_gpio_adapter
     port map (
      gpio_in_i(0) => gpio_in_i(0),
      gpio_in_o(0) => gpio_in_o(0),
      gpio_in_t(0) => gpio_in_t(0),
      gpio_out_i(0) => gpio_out_i(0),
      gpio_out_o(0) => gpio_out_o(0),
      gpio_out_t(0) => gpio_out_t(0)
    );
end STRUCTURE;
