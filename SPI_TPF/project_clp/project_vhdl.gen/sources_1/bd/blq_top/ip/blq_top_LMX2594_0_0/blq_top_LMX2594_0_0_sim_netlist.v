// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Aug  8 23:29:36 2024
// Host        : COURIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mpaur/.Xilinx/PruebaVitis/project_clp/project_vhdl.gen/sources_1/bd/blq_top/ip/blq_top_LMX2594_0_0/blq_top_LMX2594_0_0_sim_netlist.v
// Design      : blq_top_LMX2594_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blq_top_LMX2594_0_0,LMX2594,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "LMX2594,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blq_top_LMX2594_0_0
   (LMX2594_rst,
    LMX2594_ena,
    LMX2594_clk_in,
    LMX2594_csb,
    LMX2594_sclk,
    LMX2594_sdat,
    LMX2594_smux,
    LMX2594_r_nw,
    LMX2594_addr,
    LMX2594_data_tx,
    LMX2594_data_rx,
    LMX2594_cc);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 LMX2594_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME LMX2594_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input LMX2594_rst;
  input LMX2594_ena;
  input LMX2594_clk_in;
  output LMX2594_csb;
  output LMX2594_sclk;
  output LMX2594_sdat;
  input LMX2594_smux;
  input LMX2594_r_nw;
  input [6:0]LMX2594_addr;
  input [15:0]LMX2594_data_tx;
  output [15:0]LMX2594_data_rx;
  output LMX2594_cc;

  wire [6:0]LMX2594_addr;
  wire LMX2594_cc;
  wire LMX2594_clk_in;
  wire LMX2594_csb;
  wire [15:0]LMX2594_data_rx;
  wire [15:0]LMX2594_data_tx;
  wire LMX2594_ena;
  wire LMX2594_r_nw;
  wire LMX2594_rst;
  wire LMX2594_sclk;
  wire LMX2594_sdat;
  wire LMX2594_smux;

  blq_top_LMX2594_0_0_LMX2594 U0
       (.LMX2594_addr(LMX2594_addr),
        .LMX2594_cc(LMX2594_cc),
        .LMX2594_clk_in(LMX2594_clk_in),
        .LMX2594_csb(LMX2594_csb),
        .LMX2594_data_rx(LMX2594_data_rx),
        .LMX2594_data_tx(LMX2594_data_tx),
        .LMX2594_ena(LMX2594_ena),
        .LMX2594_r_nw(LMX2594_r_nw),
        .LMX2594_rst(LMX2594_rst),
        .LMX2594_sclk(LMX2594_sclk),
        .LMX2594_sdat(LMX2594_sdat),
        .LMX2594_smux(LMX2594_smux));
endmodule

(* ORIG_REF_NAME = "LMX2594" *) 
module blq_top_LMX2594_0_0_LMX2594
   (LMX2594_sclk,
    LMX2594_data_rx,
    LMX2594_sdat,
    LMX2594_csb,
    LMX2594_cc,
    LMX2594_ena,
    LMX2594_rst,
    LMX2594_smux,
    LMX2594_clk_in,
    LMX2594_addr,
    LMX2594_r_nw,
    LMX2594_data_tx);
  output LMX2594_sclk;
  output [15:0]LMX2594_data_rx;
  output LMX2594_sdat;
  output LMX2594_csb;
  output LMX2594_cc;
  input LMX2594_ena;
  input LMX2594_rst;
  input LMX2594_smux;
  input LMX2594_clk_in;
  input [6:0]LMX2594_addr;
  input LMX2594_r_nw;
  input [15:0]LMX2594_data_tx;

  wire \BIT_CNT[0]_i_1_n_0 ;
  wire \BIT_CNT[1]_i_1_n_0 ;
  wire \BIT_CNT[2]_i_1_n_0 ;
  wire \BIT_CNT[2]_i_2_n_0 ;
  wire \BIT_CNT[3]_i_1_n_0 ;
  wire \BIT_CNT[3]_i_2_n_0 ;
  wire \BIT_CNT[4]_i_1_n_0 ;
  wire \BIT_CNT[5]_i_1_n_0 ;
  wire \BIT_CNT[5]_i_2_n_0 ;
  wire \BIT_CNT_reg_n_0_[0] ;
  wire \BIT_CNT_reg_n_0_[1] ;
  wire \BIT_CNT_reg_n_0_[2] ;
  wire \BIT_CNT_reg_n_0_[3] ;
  wire \BIT_CNT_reg_n_0_[4] ;
  wire \BIT_CNT_reg_n_0_[5] ;
  wire \FSM_sequential_STT[0]_i_1_n_0 ;
  wire \FSM_sequential_STT[0]_i_2_n_0 ;
  wire \FSM_sequential_STT[1]_i_1_n_0 ;
  wire \FSM_sequential_STT[1]_i_2_n_0 ;
  wire \FSM_sequential_STT_reg_n_0_[1] ;
  wire [6:0]LMX2594_addr;
  wire LMX2594_addr_reg;
  wire \LMX2594_addr_reg[0]_i_1_n_0 ;
  wire \LMX2594_addr_reg[1]_i_1_n_0 ;
  wire \LMX2594_addr_reg[2]_i_1_n_0 ;
  wire \LMX2594_addr_reg[3]_i_1_n_0 ;
  wire \LMX2594_addr_reg[4]_i_1_n_0 ;
  wire \LMX2594_addr_reg[5]_i_1_n_0 ;
  wire \LMX2594_addr_reg[6]_i_2_n_0 ;
  wire \LMX2594_addr_reg_reg_n_0_[0] ;
  wire \LMX2594_addr_reg_reg_n_0_[1] ;
  wire \LMX2594_addr_reg_reg_n_0_[2] ;
  wire \LMX2594_addr_reg_reg_n_0_[3] ;
  wire \LMX2594_addr_reg_reg_n_0_[4] ;
  wire \LMX2594_addr_reg_reg_n_0_[5] ;
  wire LMX2594_cc;
  wire LMX2594_cc_i_1_n_0;
  wire LMX2594_clk_in;
  wire LMX2594_csb;
  wire LMX2594_csb_i_1_n_0;
  wire [15:0]LMX2594_data_rx;
  wire \LMX2594_data_rx[15]_i_1_n_0 ;
  wire [15:0]LMX2594_data_rx_reg;
  wire LMX2594_data_rx_reg_1;
  wire [15:0]LMX2594_data_tx;
  wire [15:0]LMX2594_data_tx_reg;
  wire LMX2594_data_tx_reg_0;
  wire \LMX2594_data_tx_reg_reg_n_0_[0] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[10] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[11] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[12] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[13] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[14] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[1] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[2] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[3] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[4] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[5] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[6] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[7] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[8] ;
  wire \LMX2594_data_tx_reg_reg_n_0_[9] ;
  wire LMX2594_ena;
  wire LMX2594_r_nw;
  wire LMX2594_rst;
  wire LMX2594_sclk;
  wire LMX2594_sclk_i_1_n_0;
  wire LMX2594_sdat;
  wire LMX2594_sdat_i_1_n_0;
  wire LMX2594_sdat_i_2_n_0;
  wire LMX2594_smux;
  wire [0:0]STT;
  wire \clk_inst.prescaler[0]_i_1_n_0 ;
  wire \clk_inst.prescaler[0]_i_3_n_0 ;
  wire [3:0]\clk_inst.prescaler_reg ;
  wire \clk_inst.prescaler_reg[0]_i_2_n_1 ;
  wire \clk_inst.prescaler_reg[0]_i_2_n_2 ;
  wire \clk_inst.prescaler_reg[0]_i_2_n_3 ;
  wire \clk_inst.prescaler_reg[0]_i_2_n_4 ;
  wire \clk_inst.prescaler_reg[0]_i_2_n_5 ;
  wire \clk_inst.prescaler_reg[0]_i_2_n_6 ;
  wire \clk_inst.prescaler_reg[0]_i_2_n_7 ;
  wire internaCLK_i_1_n_0;
  wire internaCLK_reg_n_0;
  wire p_0_in;
  wire p_1_in;
  wire [3:3]\NLW_clk_inst.prescaler_reg[0]_i_2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h000022F2)) 
    \BIT_CNT[0]_i_1 
       (.I0(STT),
        .I1(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I2(\FSM_sequential_STT_reg_n_0_[1] ),
        .I3(\FSM_sequential_STT[0]_i_2_n_0 ),
        .I4(\BIT_CNT_reg_n_0_[0] ),
        .O(\BIT_CNT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66660060)) 
    \BIT_CNT[1]_i_1 
       (.I0(\BIT_CNT_reg_n_0_[0] ),
        .I1(\BIT_CNT_reg_n_0_[1] ),
        .I2(STT),
        .I3(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I4(\FSM_sequential_STT_reg_n_0_[1] ),
        .O(\BIT_CNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F20000000022F2)) 
    \BIT_CNT[2]_i_1 
       (.I0(STT),
        .I1(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I2(\FSM_sequential_STT_reg_n_0_[1] ),
        .I3(\FSM_sequential_STT[0]_i_2_n_0 ),
        .I4(\BIT_CNT[2]_i_2_n_0 ),
        .I5(\BIT_CNT_reg_n_0_[2] ),
        .O(\BIT_CNT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \BIT_CNT[2]_i_2 
       (.I0(\BIT_CNT_reg_n_0_[1] ),
        .I1(\BIT_CNT_reg_n_0_[0] ),
        .O(\BIT_CNT[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F20000000022F2)) 
    \BIT_CNT[3]_i_1 
       (.I0(STT),
        .I1(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I2(\FSM_sequential_STT_reg_n_0_[1] ),
        .I3(\FSM_sequential_STT[0]_i_2_n_0 ),
        .I4(\BIT_CNT[3]_i_2_n_0 ),
        .I5(\BIT_CNT_reg_n_0_[3] ),
        .O(\BIT_CNT[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \BIT_CNT[3]_i_2 
       (.I0(\BIT_CNT_reg_n_0_[0] ),
        .I1(\BIT_CNT_reg_n_0_[1] ),
        .I2(\BIT_CNT_reg_n_0_[2] ),
        .O(\BIT_CNT[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000022F222F20000)) 
    \BIT_CNT[4]_i_1 
       (.I0(STT),
        .I1(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I2(\FSM_sequential_STT_reg_n_0_[1] ),
        .I3(\FSM_sequential_STT[0]_i_2_n_0 ),
        .I4(\BIT_CNT[5]_i_2_n_0 ),
        .I5(\BIT_CNT_reg_n_0_[4] ),
        .O(\BIT_CNT[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7878787800007800)) 
    \BIT_CNT[5]_i_1 
       (.I0(\BIT_CNT[5]_i_2_n_0 ),
        .I1(\BIT_CNT_reg_n_0_[4] ),
        .I2(\BIT_CNT_reg_n_0_[5] ),
        .I3(\FSM_sequential_STT_reg_n_0_[1] ),
        .I4(\FSM_sequential_STT[0]_i_2_n_0 ),
        .I5(STT),
        .O(\BIT_CNT[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \BIT_CNT[5]_i_2 
       (.I0(\BIT_CNT_reg_n_0_[3] ),
        .I1(\BIT_CNT_reg_n_0_[2] ),
        .I2(\BIT_CNT_reg_n_0_[1] ),
        .I3(\BIT_CNT_reg_n_0_[0] ),
        .O(\BIT_CNT[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_CNT_reg[0] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_sdat_i_1_n_0),
        .D(\BIT_CNT[0]_i_1_n_0 ),
        .Q(\BIT_CNT_reg_n_0_[0] ),
        .R(LMX2594_rst));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_CNT_reg[1] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_sdat_i_1_n_0),
        .D(\BIT_CNT[1]_i_1_n_0 ),
        .Q(\BIT_CNT_reg_n_0_[1] ),
        .R(LMX2594_rst));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_CNT_reg[2] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_sdat_i_1_n_0),
        .D(\BIT_CNT[2]_i_1_n_0 ),
        .Q(\BIT_CNT_reg_n_0_[2] ),
        .R(LMX2594_rst));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_CNT_reg[3] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_sdat_i_1_n_0),
        .D(\BIT_CNT[3]_i_1_n_0 ),
        .Q(\BIT_CNT_reg_n_0_[3] ),
        .R(LMX2594_rst));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_CNT_reg[4] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_sdat_i_1_n_0),
        .D(\BIT_CNT[4]_i_1_n_0 ),
        .Q(\BIT_CNT_reg_n_0_[4] ),
        .R(LMX2594_rst));
  FDRE #(
    .INIT(1'b0)) 
    \BIT_CNT_reg[5] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_sdat_i_1_n_0),
        .D(\BIT_CNT[5]_i_1_n_0 ),
        .Q(\BIT_CNT_reg_n_0_[5] ),
        .R(LMX2594_rst));
  LUT6 #(
    .INIT(64'h0F0000003A3AFAFA)) 
    \FSM_sequential_STT[0]_i_1 
       (.I0(LMX2594_ena),
        .I1(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I2(STT),
        .I3(\FSM_sequential_STT[0]_i_2_n_0 ),
        .I4(LMX2594_sclk),
        .I5(\FSM_sequential_STT_reg_n_0_[1] ),
        .O(\FSM_sequential_STT[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_sequential_STT[0]_i_2 
       (.I0(\BIT_CNT_reg_n_0_[5] ),
        .I1(\BIT_CNT_reg_n_0_[0] ),
        .I2(\BIT_CNT_reg_n_0_[1] ),
        .I3(\BIT_CNT_reg_n_0_[4] ),
        .I4(\BIT_CNT_reg_n_0_[2] ),
        .I5(\BIT_CNT_reg_n_0_[3] ),
        .O(\FSM_sequential_STT[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3380)) 
    \FSM_sequential_STT[1]_i_1 
       (.I0(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I1(STT),
        .I2(LMX2594_sclk),
        .I3(\FSM_sequential_STT_reg_n_0_[1] ),
        .O(\FSM_sequential_STT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_STT[1]_i_2 
       (.I0(\BIT_CNT_reg_n_0_[5] ),
        .I1(\BIT_CNT_reg_n_0_[0] ),
        .I2(\BIT_CNT_reg_n_0_[4] ),
        .I3(\BIT_CNT_reg_n_0_[3] ),
        .I4(\BIT_CNT_reg_n_0_[1] ),
        .I5(\BIT_CNT_reg_n_0_[2] ),
        .O(\FSM_sequential_STT[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:11,iSTATE1:00,iSTATE2:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_STT_reg[0] 
       (.C(internaCLK_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_STT[0]_i_1_n_0 ),
        .Q(STT),
        .R(LMX2594_rst));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:11,iSTATE1:00,iSTATE2:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_STT_reg[1] 
       (.C(internaCLK_reg_n_0),
        .CE(1'b1),
        .D(\FSM_sequential_STT[1]_i_1_n_0 ),
        .Q(\FSM_sequential_STT_reg_n_0_[1] ),
        .R(LMX2594_rst));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LMX2594_addr_reg[0]_i_1 
       (.I0(LMX2594_addr[0]),
        .I1(LMX2594_ena),
        .I2(STT),
        .O(\LMX2594_addr_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \LMX2594_addr_reg[1]_i_1 
       (.I0(\LMX2594_addr_reg_reg_n_0_[0] ),
        .I1(STT),
        .I2(LMX2594_ena),
        .I3(LMX2594_addr[1]),
        .O(\LMX2594_addr_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \LMX2594_addr_reg[2]_i_1 
       (.I0(\LMX2594_addr_reg_reg_n_0_[1] ),
        .I1(STT),
        .I2(LMX2594_ena),
        .I3(LMX2594_addr[2]),
        .O(\LMX2594_addr_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \LMX2594_addr_reg[3]_i_1 
       (.I0(\LMX2594_addr_reg_reg_n_0_[2] ),
        .I1(STT),
        .I2(LMX2594_ena),
        .I3(LMX2594_addr[3]),
        .O(\LMX2594_addr_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \LMX2594_addr_reg[4]_i_1 
       (.I0(\LMX2594_addr_reg_reg_n_0_[3] ),
        .I1(STT),
        .I2(LMX2594_ena),
        .I3(LMX2594_addr[4]),
        .O(\LMX2594_addr_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \LMX2594_addr_reg[5]_i_1 
       (.I0(\LMX2594_addr_reg_reg_n_0_[4] ),
        .I1(STT),
        .I2(LMX2594_ena),
        .I3(LMX2594_addr[5]),
        .O(\LMX2594_addr_reg[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \LMX2594_addr_reg[6]_i_1 
       (.I0(STT),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_sclk),
        .O(LMX2594_addr_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \LMX2594_addr_reg[6]_i_2 
       (.I0(\LMX2594_addr_reg_reg_n_0_[5] ),
        .I1(STT),
        .I2(LMX2594_ena),
        .I3(LMX2594_addr[6]),
        .O(\LMX2594_addr_reg[6]_i_2_n_0 ));
  FDRE \LMX2594_addr_reg_reg[0] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_addr_reg),
        .D(\LMX2594_addr_reg[0]_i_1_n_0 ),
        .Q(\LMX2594_addr_reg_reg_n_0_[0] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_addr_reg_reg[1] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_addr_reg),
        .D(\LMX2594_addr_reg[1]_i_1_n_0 ),
        .Q(\LMX2594_addr_reg_reg_n_0_[1] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_addr_reg_reg[2] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_addr_reg),
        .D(\LMX2594_addr_reg[2]_i_1_n_0 ),
        .Q(\LMX2594_addr_reg_reg_n_0_[2] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_addr_reg_reg[3] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_addr_reg),
        .D(\LMX2594_addr_reg[3]_i_1_n_0 ),
        .Q(\LMX2594_addr_reg_reg_n_0_[3] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_addr_reg_reg[4] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_addr_reg),
        .D(\LMX2594_addr_reg[4]_i_1_n_0 ),
        .Q(\LMX2594_addr_reg_reg_n_0_[4] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_addr_reg_reg[5] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_addr_reg),
        .D(\LMX2594_addr_reg[5]_i_1_n_0 ),
        .Q(\LMX2594_addr_reg_reg_n_0_[5] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_addr_reg_reg[6] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_addr_reg),
        .D(\LMX2594_addr_reg[6]_i_2_n_0 ),
        .Q(p_1_in),
        .R(LMX2594_rst));
  LUT3 #(
    .INIT(8'hE8)) 
    LMX2594_cc_i_1
       (.I0(\FSM_sequential_STT_reg_n_0_[1] ),
        .I1(STT),
        .I2(LMX2594_cc),
        .O(LMX2594_cc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    LMX2594_cc_reg
       (.C(internaCLK_reg_n_0),
        .CE(1'b1),
        .D(LMX2594_cc_i_1_n_0),
        .Q(LMX2594_cc),
        .R(LMX2594_rst));
  LUT4 #(
    .INIT(16'hFD01)) 
    LMX2594_csb_i_1
       (.I0(LMX2594_ena),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(STT),
        .I3(LMX2594_csb),
        .O(LMX2594_csb_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    LMX2594_csb_reg
       (.C(internaCLK_reg_n_0),
        .CE(1'b1),
        .D(LMX2594_csb_i_1_n_0),
        .Q(LMX2594_csb),
        .S(LMX2594_rst));
  LUT3 #(
    .INIT(8'h08)) 
    \LMX2594_data_rx[15]_i_1 
       (.I0(STT),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_rst),
        .O(\LMX2594_data_rx[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[0] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[0]),
        .Q(LMX2594_data_rx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[10] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[10]),
        .Q(LMX2594_data_rx[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[11] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[11]),
        .Q(LMX2594_data_rx[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[12] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[12]),
        .Q(LMX2594_data_rx[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[13] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[13]),
        .Q(LMX2594_data_rx[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[14] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[14]),
        .Q(LMX2594_data_rx[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[15] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[15]),
        .Q(LMX2594_data_rx[15]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \LMX2594_data_rx_reg[15]_i_1 
       (.I0(\FSM_sequential_STT_reg_n_0_[1] ),
        .I1(LMX2594_sclk),
        .I2(STT),
        .O(LMX2594_data_rx_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[1] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[1]),
        .Q(LMX2594_data_rx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[2] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[2]),
        .Q(LMX2594_data_rx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[3] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[3]),
        .Q(LMX2594_data_rx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[4] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[4]),
        .Q(LMX2594_data_rx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[5] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[5]),
        .Q(LMX2594_data_rx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[6] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[6]),
        .Q(LMX2594_data_rx[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[7] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[7]),
        .Q(LMX2594_data_rx[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[8] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[8]),
        .Q(LMX2594_data_rx[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LMX2594_data_rx_reg[9] 
       (.C(internaCLK_reg_n_0),
        .CE(\LMX2594_data_rx[15]_i_1_n_0 ),
        .D(LMX2594_data_rx_reg[9]),
        .Q(LMX2594_data_rx[9]),
        .R(1'b0));
  FDRE \LMX2594_data_rx_reg_reg[0] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_smux),
        .Q(LMX2594_data_rx_reg[0]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[10] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[9]),
        .Q(LMX2594_data_rx_reg[10]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[11] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[10]),
        .Q(LMX2594_data_rx_reg[11]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[12] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[11]),
        .Q(LMX2594_data_rx_reg[12]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[13] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[12]),
        .Q(LMX2594_data_rx_reg[13]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[14] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[13]),
        .Q(LMX2594_data_rx_reg[14]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[15] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[14]),
        .Q(LMX2594_data_rx_reg[15]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[1] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[0]),
        .Q(LMX2594_data_rx_reg[1]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[2] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[1]),
        .Q(LMX2594_data_rx_reg[2]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[3] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[2]),
        .Q(LMX2594_data_rx_reg[3]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[4] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[3]),
        .Q(LMX2594_data_rx_reg[4]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[5] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[4]),
        .Q(LMX2594_data_rx_reg[5]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[6] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[5]),
        .Q(LMX2594_data_rx_reg[6]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[7] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[6]),
        .Q(LMX2594_data_rx_reg[7]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[8] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[7]),
        .Q(LMX2594_data_rx_reg[8]),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_rx_reg_reg[9] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_rx_reg_1),
        .D(LMX2594_data_rx_reg[8]),
        .Q(LMX2594_data_rx_reg[9]),
        .R(LMX2594_rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LMX2594_data_tx_reg[0]_i_1 
       (.I0(STT),
        .I1(LMX2594_data_tx[0]),
        .O(LMX2594_data_tx_reg[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[10]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[9] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[10]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[11]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[10] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[11]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[12]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[11] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[12]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[13]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[12] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[13]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[14]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[13] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[14]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[14]));
  LUT4 #(
    .INIT(16'h50D5)) 
    \LMX2594_data_tx_reg[15]_i_1 
       (.I0(STT),
        .I1(\FSM_sequential_STT[1]_i_2_n_0 ),
        .I2(LMX2594_sclk),
        .I3(\FSM_sequential_STT_reg_n_0_[1] ),
        .O(LMX2594_data_tx_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[15]_i_2 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[14] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[15]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[1]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[0] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[1]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[2]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[1] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[2]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[3]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[2] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[3]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[4]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[3] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[4]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[5]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[4] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[5]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[6]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[5] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[6]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[7]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[6] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[7]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[8]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[7] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[8]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \LMX2594_data_tx_reg[9]_i_1 
       (.I0(\LMX2594_data_tx_reg_reg_n_0_[8] ),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(LMX2594_data_tx[9]),
        .I3(STT),
        .O(LMX2594_data_tx_reg[9]));
  FDRE \LMX2594_data_tx_reg_reg[0] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[0]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[0] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[10] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[10]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[10] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[11] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[11]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[11] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[12] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[12]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[12] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[13] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[13]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[13] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[14] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[14]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[14] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[15] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[15]),
        .Q(p_0_in),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[1] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[1]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[1] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[2] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[2]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[2] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[3] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[3]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[3] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[4] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[4]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[4] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[5] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[5]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[5] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[6] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[6]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[6] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[7] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[7]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[7] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[8] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[8]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[8] ),
        .R(LMX2594_rst));
  FDRE \LMX2594_data_tx_reg_reg[9] 
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_data_tx_reg_0),
        .D(LMX2594_data_tx_reg[9]),
        .Q(\LMX2594_data_tx_reg_reg_n_0_[9] ),
        .R(LMX2594_rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h14)) 
    LMX2594_sclk_i_1
       (.I0(LMX2594_sclk),
        .I1(STT),
        .I2(\FSM_sequential_STT_reg_n_0_[1] ),
        .O(LMX2594_sclk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    LMX2594_sclk_reg
       (.C(internaCLK_reg_n_0),
        .CE(1'b1),
        .D(LMX2594_sclk_i_1_n_0),
        .Q(LMX2594_sclk),
        .R(LMX2594_rst));
  LUT3 #(
    .INIT(8'h4D)) 
    LMX2594_sdat_i_1
       (.I0(\FSM_sequential_STT_reg_n_0_[1] ),
        .I1(LMX2594_sclk),
        .I2(STT),
        .O(LMX2594_sdat_i_1_n_0));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    LMX2594_sdat_i_2
       (.I0(p_0_in),
        .I1(\FSM_sequential_STT_reg_n_0_[1] ),
        .I2(p_1_in),
        .I3(STT),
        .I4(LMX2594_r_nw),
        .I5(LMX2594_ena),
        .O(LMX2594_sdat_i_2_n_0));
  FDSE #(
    .INIT(1'b0)) 
    LMX2594_sdat_reg
       (.C(internaCLK_reg_n_0),
        .CE(LMX2594_sdat_i_1_n_0),
        .D(LMX2594_sdat_i_2_n_0),
        .Q(LMX2594_sdat),
        .S(LMX2594_rst));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \clk_inst.prescaler[0]_i_1 
       (.I0(LMX2594_rst),
        .I1(\clk_inst.prescaler_reg [0]),
        .I2(\clk_inst.prescaler_reg [2]),
        .I3(\clk_inst.prescaler_reg [1]),
        .I4(\clk_inst.prescaler_reg [3]),
        .O(\clk_inst.prescaler[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_inst.prescaler[0]_i_3 
       (.I0(\clk_inst.prescaler_reg [0]),
        .O(\clk_inst.prescaler[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_inst.prescaler_reg[0] 
       (.C(LMX2594_clk_in),
        .CE(1'b1),
        .D(\clk_inst.prescaler_reg[0]_i_2_n_7 ),
        .Q(\clk_inst.prescaler_reg [0]),
        .R(\clk_inst.prescaler[0]_i_1_n_0 ));
  CARRY4 \clk_inst.prescaler_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\NLW_clk_inst.prescaler_reg[0]_i_2_CO_UNCONNECTED [3],\clk_inst.prescaler_reg[0]_i_2_n_1 ,\clk_inst.prescaler_reg[0]_i_2_n_2 ,\clk_inst.prescaler_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_inst.prescaler_reg[0]_i_2_n_4 ,\clk_inst.prescaler_reg[0]_i_2_n_5 ,\clk_inst.prescaler_reg[0]_i_2_n_6 ,\clk_inst.prescaler_reg[0]_i_2_n_7 }),
        .S({\clk_inst.prescaler_reg [3:1],\clk_inst.prescaler[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_inst.prescaler_reg[1] 
       (.C(LMX2594_clk_in),
        .CE(1'b1),
        .D(\clk_inst.prescaler_reg[0]_i_2_n_6 ),
        .Q(\clk_inst.prescaler_reg [1]),
        .R(\clk_inst.prescaler[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_inst.prescaler_reg[2] 
       (.C(LMX2594_clk_in),
        .CE(1'b1),
        .D(\clk_inst.prescaler_reg[0]_i_2_n_5 ),
        .Q(\clk_inst.prescaler_reg [2]),
        .R(\clk_inst.prescaler[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_inst.prescaler_reg[3] 
       (.C(LMX2594_clk_in),
        .CE(1'b1),
        .D(\clk_inst.prescaler_reg[0]_i_2_n_4 ),
        .Q(\clk_inst.prescaler_reg [3]),
        .R(\clk_inst.prescaler[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    internaCLK_i_1
       (.I0(LMX2594_rst),
        .I1(\clk_inst.prescaler_reg [3]),
        .I2(\clk_inst.prescaler_reg [1]),
        .I3(\clk_inst.prescaler_reg [2]),
        .I4(\clk_inst.prescaler_reg [0]),
        .I5(internaCLK_reg_n_0),
        .O(internaCLK_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internaCLK_reg
       (.C(LMX2594_clk_in),
        .CE(1'b1),
        .D(internaCLK_i_1_n_0),
        .Q(internaCLK_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
