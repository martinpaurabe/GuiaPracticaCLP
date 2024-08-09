// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Aug  8 21:42:35 2024
// Host        : COURIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/mpaur/MESE/CLP/GuiaPracticaCLP/SPI_TPF/PruebaVivado/PruebaVivado.gen/sources_1/bd/PruebaTOP/ip/PruebaTOP_LMX2594_0_0/PruebaTOP_LMX2594_0_0_stub.v
// Design      : PruebaTOP_LMX2594_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LMX2594,Vivado 2024.1" *)
module PruebaTOP_LMX2594_0_0(LMX2594_rst, LMX2594_ena, LMX2594_clk_in, 
  LMX2594_csb, LMX2594_sclk, LMX2594_sdat, LMX2594_smux, LMX2594_r_nw, LMX2594_addr, 
  LMX2594_data_tx, LMX2594_data_rx, LMX2594_cc)
/* synthesis syn_black_box black_box_pad_pin="LMX2594_rst,LMX2594_ena,LMX2594_csb,LMX2594_sclk,LMX2594_sdat,LMX2594_smux,LMX2594_r_nw,LMX2594_addr[6:0],LMX2594_data_tx[15:0],LMX2594_data_rx[15:0],LMX2594_cc" */
/* synthesis syn_force_seq_prim="LMX2594_clk_in" */;
  input LMX2594_rst;
  input LMX2594_ena;
  input LMX2594_clk_in /* synthesis syn_isclock = 1 */;
  output LMX2594_csb;
  output LMX2594_sclk;
  output LMX2594_sdat;
  input LMX2594_smux;
  input LMX2594_r_nw;
  input [6:0]LMX2594_addr;
  input [15:0]LMX2594_data_tx;
  output [15:0]LMX2594_data_rx;
  output LMX2594_cc;
endmodule
