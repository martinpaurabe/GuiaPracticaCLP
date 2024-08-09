//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Aug  8 22:03:55 2024
//Host        : COURIE running 64-bit major release  (build 9200)
//Command     : generate_target PruebaTOP_wrapper.bd
//Design      : PruebaTOP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PruebaTOP_wrapper
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
  input LMX2594_rst_0;
  output ck_io0;
  output ck_io1;
  output ck_io2;
  input ck_io3;
  output ck_io4;
  input reset_rtl;
  input sys_clock;

  wire LMX2594_ena_0;
  wire LMX2594_r_nw_0;
  wire LMX2594_rst_0;
  wire ck_io0;
  wire ck_io1;
  wire ck_io2;
  wire ck_io3;
  wire ck_io4;
  wire reset_rtl;
  wire sys_clock;

  PruebaTOP PruebaTOP_i
       (.LMX2594_ena_0(LMX2594_ena_0),
        .LMX2594_r_nw_0(LMX2594_r_nw_0),
        .LMX2594_rst_0(LMX2594_rst_0),
        .ck_io0(ck_io0),
        .ck_io1(ck_io1),
        .ck_io2(ck_io2),
        .ck_io3(ck_io3),
        .ck_io4(ck_io4),
        .reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
endmodule
