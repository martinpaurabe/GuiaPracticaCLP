-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Aug  8 21:42:35 2024
-- Host        : COURIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mpaur/MESE/CLP/GuiaPracticaCLP/SPI_TPF/PruebaVivado/PruebaVivado.gen/sources_1/bd/PruebaTOP/ip/PruebaTOP_LMX2594_0_0/PruebaTOP_LMX2594_0_0_stub.vhdl
-- Design      : PruebaTOP_LMX2594_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PruebaTOP_LMX2594_0_0 is
  Port ( 
    LMX2594_rst : in STD_LOGIC;
    LMX2594_ena : in STD_LOGIC;
    LMX2594_clk_in : in STD_LOGIC;
    LMX2594_csb : out STD_LOGIC;
    LMX2594_sclk : out STD_LOGIC;
    LMX2594_sdat : out STD_LOGIC;
    LMX2594_smux : in STD_LOGIC;
    LMX2594_r_nw : in STD_LOGIC;
    LMX2594_addr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    LMX2594_data_tx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LMX2594_data_rx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    LMX2594_cc : out STD_LOGIC
  );

end PruebaTOP_LMX2594_0_0;

architecture stub of PruebaTOP_LMX2594_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "LMX2594_rst,LMX2594_ena,LMX2594_clk_in,LMX2594_csb,LMX2594_sclk,LMX2594_sdat,LMX2594_smux,LMX2594_r_nw,LMX2594_addr[6:0],LMX2594_data_tx[15:0],LMX2594_data_rx[15:0],LMX2594_cc";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LMX2594,Vivado 2024.1";
begin
end;
