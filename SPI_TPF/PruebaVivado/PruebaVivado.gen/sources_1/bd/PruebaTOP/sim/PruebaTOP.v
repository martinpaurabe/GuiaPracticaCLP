//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Aug  8 22:03:55 2024
//Host        : COURIE running 64-bit major release  (build 9200)
//Command     : generate_target PruebaTOP.bd
//Design      : PruebaTOP
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PruebaTOP,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PruebaTOP,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "PruebaTOP.hwdef" *) 
module PruebaTOP
   (LMX2594_ena_0,
    LMX2594_r_nw_0,
    LMX2594_rst_0,
    ck_io0,
    ck_io1,
    ck_io2,
    ck_io3,
    ck_io4,
    reset_rtl,
    sys_clock);
  input LMX2594_ena_0;
  input LMX2594_r_nw_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.LMX2594_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.LMX2594_RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input LMX2594_rst_0;
  output ck_io0;
  output ck_io1;
  output ck_io2;
  input ck_io3;
  output ck_io4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, ASSOCIATED_RESET LMX2594_rst_0, CLK_DOMAIN PruebaTOP_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;

  wire LMX2594_0_LMX2594_cc;
  wire LMX2594_0_LMX2594_csb;
  wire LMX2594_0_LMX2594_sclk;
  wire LMX2594_0_LMX2594_sdat;
  wire LMX2594_ena_0_1;
  wire LMX2594_r_nw_0_1;
  wire LMX2594_rst_0_1;
  wire LMX2594_smux_0_1;
  wire clk_wiz_0_clk_out1;
  wire reset_rtl_1;
  wire sys_clock_1;
  wire [6:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;

  assign LMX2594_ena_0_1 = LMX2594_ena_0;
  assign LMX2594_r_nw_0_1 = LMX2594_r_nw_0;
  assign LMX2594_rst_0_1 = LMX2594_rst_0;
  assign LMX2594_smux_0_1 = ck_io3;
  assign ck_io0 = LMX2594_0_LMX2594_csb;
  assign ck_io1 = LMX2594_0_LMX2594_sclk;
  assign ck_io2 = LMX2594_0_LMX2594_sdat;
  assign ck_io4 = LMX2594_0_LMX2594_cc;
  assign reset_rtl_1 = reset_rtl;
  assign sys_clock_1 = sys_clock;
  PruebaTOP_LMX2594_0_0 LMX2594_0
       (.LMX2594_addr(xlconstant_0_dout),
        .LMX2594_cc(LMX2594_0_LMX2594_cc),
        .LMX2594_clk_in(clk_wiz_0_clk_out1),
        .LMX2594_csb(LMX2594_0_LMX2594_csb),
        .LMX2594_data_tx(xlconstant_1_dout),
        .LMX2594_ena(LMX2594_ena_0_1),
        .LMX2594_r_nw(LMX2594_r_nw_0_1),
        .LMX2594_rst(LMX2594_rst_0_1),
        .LMX2594_sclk(LMX2594_0_LMX2594_sclk),
        .LMX2594_sdat(LMX2594_0_LMX2594_sdat),
        .LMX2594_smux(LMX2594_smux_0_1));
  PruebaTOP_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_1));
  PruebaTOP_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  PruebaTOP_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
