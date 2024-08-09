-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Aug  8 21:42:35 2024
-- Host        : COURIE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/mpaur/MESE/CLP/GuiaPracticaCLP/SPI_TPF/PruebaVivado/PruebaVivado.gen/sources_1/bd/PruebaTOP/ip/PruebaTOP_LMX2594_0_0/PruebaTOP_LMX2594_0_0_sim_netlist.vhdl
-- Design      : PruebaTOP_LMX2594_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PruebaTOP_LMX2594_0_0_LMX2594 is
  port (
    LMX2594_sclk : out STD_LOGIC;
    LMX2594_data_rx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    LMX2594_sdat : out STD_LOGIC;
    LMX2594_csb : out STD_LOGIC;
    LMX2594_cc : out STD_LOGIC;
    LMX2594_ena : in STD_LOGIC;
    LMX2594_rst : in STD_LOGIC;
    LMX2594_smux : in STD_LOGIC;
    LMX2594_clk_in : in STD_LOGIC;
    LMX2594_addr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    LMX2594_r_nw : in STD_LOGIC;
    LMX2594_data_tx : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of PruebaTOP_LMX2594_0_0_LMX2594 : entity is "LMX2594";
end PruebaTOP_LMX2594_0_0_LMX2594;

architecture STRUCTURE of PruebaTOP_LMX2594_0_0_LMX2594 is
  signal \BIT_CNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_CNT[1]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_CNT[2]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_CNT[2]_i_2_n_0\ : STD_LOGIC;
  signal \BIT_CNT[3]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_CNT[3]_i_2_n_0\ : STD_LOGIC;
  signal \BIT_CNT[4]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_CNT[5]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_CNT[5]_i_2_n_0\ : STD_LOGIC;
  signal \BIT_CNT_reg_n_0_[0]\ : STD_LOGIC;
  signal \BIT_CNT_reg_n_0_[1]\ : STD_LOGIC;
  signal \BIT_CNT_reg_n_0_[2]\ : STD_LOGIC;
  signal \BIT_CNT_reg_n_0_[3]\ : STD_LOGIC;
  signal \BIT_CNT_reg_n_0_[4]\ : STD_LOGIC;
  signal \BIT_CNT_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_sequential_STT[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STT[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STT[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STT[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_STT_reg_n_0_[1]\ : STD_LOGIC;
  signal LMX2594_addr_reg : STD_LOGIC;
  signal \LMX2594_addr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \LMX2594_addr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \LMX2594_addr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \LMX2594_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \LMX2594_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \LMX2594_addr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \LMX2594_addr_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \LMX2594_addr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \LMX2594_addr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \LMX2594_addr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \LMX2594_addr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \LMX2594_addr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \LMX2594_addr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \^lmx2594_cc\ : STD_LOGIC;
  signal LMX2594_cc_i_1_n_0 : STD_LOGIC;
  signal \^lmx2594_csb\ : STD_LOGIC;
  signal LMX2594_csb_i_1_n_0 : STD_LOGIC;
  signal \LMX2594_data_rx[15]_i_1_n_0\ : STD_LOGIC;
  signal LMX2594_data_rx_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal LMX2594_data_rx_reg_1 : STD_LOGIC;
  signal LMX2594_data_tx_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal LMX2594_data_tx_reg_0 : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \LMX2594_data_tx_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^lmx2594_sclk\ : STD_LOGIC;
  signal LMX2594_sclk_i_1_n_0 : STD_LOGIC;
  signal LMX2594_sdat_i_1_n_0 : STD_LOGIC;
  signal LMX2594_sdat_i_2_n_0 : STD_LOGIC;
  signal STT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \clk_inst.prescaler[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_inst.prescaler[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_inst.prescaler[0]_i_4_n_0\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \clk_inst.prescaler_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_inst.prescaler_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal internaCLK_i_1_n_0 : STD_LOGIC;
  signal internaCLK_i_2_n_0 : STD_LOGIC;
  signal internaCLK_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \NLW_clk_inst.prescaler_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clk_inst.prescaler_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BIT_CNT[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BIT_CNT[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BIT_CNT[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \BIT_CNT[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_STT[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_STT_reg[0]\ : label is "iSTATE:10,iSTATE0:11,iSTATE1:00,iSTATE2:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_STT_reg[1]\ : label is "iSTATE:10,iSTATE0:11,iSTATE1:00,iSTATE2:01";
  attribute SOFT_HLUTNM of \LMX2594_addr_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LMX2594_addr_reg[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \LMX2594_data_tx_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LMX2594_data_tx_reg[15]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of LMX2594_sclk_i_1 : label is "soft_lutpair1";
begin
  LMX2594_cc <= \^lmx2594_cc\;
  LMX2594_csb <= \^lmx2594_csb\;
  LMX2594_sclk <= \^lmx2594_sclk\;
\BIT_CNT[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000022F2"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT[1]_i_2_n_0\,
      I2 => \FSM_sequential_STT_reg_n_0_[1]\,
      I3 => \FSM_sequential_STT[0]_i_2_n_0\,
      I4 => \BIT_CNT_reg_n_0_[0]\,
      O => \BIT_CNT[0]_i_1_n_0\
    );
\BIT_CNT[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F2F200"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT[1]_i_2_n_0\,
      I2 => \FSM_sequential_STT_reg_n_0_[1]\,
      I3 => \BIT_CNT_reg_n_0_[1]\,
      I4 => \BIT_CNT_reg_n_0_[0]\,
      O => \BIT_CNT[1]_i_1_n_0\
    );
\BIT_CNT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F20000000022F2"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT[1]_i_2_n_0\,
      I2 => \FSM_sequential_STT_reg_n_0_[1]\,
      I3 => \FSM_sequential_STT[0]_i_2_n_0\,
      I4 => \BIT_CNT[2]_i_2_n_0\,
      I5 => \BIT_CNT_reg_n_0_[2]\,
      O => \BIT_CNT[2]_i_1_n_0\
    );
\BIT_CNT[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \BIT_CNT_reg_n_0_[1]\,
      I1 => \BIT_CNT_reg_n_0_[0]\,
      O => \BIT_CNT[2]_i_2_n_0\
    );
\BIT_CNT[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F20000000022F2"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT[1]_i_2_n_0\,
      I2 => \FSM_sequential_STT_reg_n_0_[1]\,
      I3 => \FSM_sequential_STT[0]_i_2_n_0\,
      I4 => \BIT_CNT[3]_i_2_n_0\,
      I5 => \BIT_CNT_reg_n_0_[3]\,
      O => \BIT_CNT[3]_i_1_n_0\
    );
\BIT_CNT[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \BIT_CNT_reg_n_0_[0]\,
      I1 => \BIT_CNT_reg_n_0_[1]\,
      I2 => \BIT_CNT_reg_n_0_[2]\,
      O => \BIT_CNT[3]_i_2_n_0\
    );
\BIT_CNT[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000022F222F20000"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT[1]_i_2_n_0\,
      I2 => \FSM_sequential_STT_reg_n_0_[1]\,
      I3 => \FSM_sequential_STT[0]_i_2_n_0\,
      I4 => \BIT_CNT[5]_i_2_n_0\,
      I5 => \BIT_CNT_reg_n_0_[4]\,
      O => \BIT_CNT[4]_i_1_n_0\
    );
\BIT_CNT[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787800007800"
    )
        port map (
      I0 => \BIT_CNT[5]_i_2_n_0\,
      I1 => \BIT_CNT_reg_n_0_[4]\,
      I2 => \BIT_CNT_reg_n_0_[5]\,
      I3 => \FSM_sequential_STT_reg_n_0_[1]\,
      I4 => \FSM_sequential_STT[0]_i_2_n_0\,
      I5 => STT(0),
      O => \BIT_CNT[5]_i_1_n_0\
    );
\BIT_CNT[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \BIT_CNT_reg_n_0_[3]\,
      I1 => \BIT_CNT_reg_n_0_[2]\,
      I2 => \BIT_CNT_reg_n_0_[1]\,
      I3 => \BIT_CNT_reg_n_0_[0]\,
      O => \BIT_CNT[5]_i_2_n_0\
    );
\BIT_CNT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_sdat_i_1_n_0,
      D => \BIT_CNT[0]_i_1_n_0\,
      Q => \BIT_CNT_reg_n_0_[0]\,
      R => LMX2594_rst
    );
\BIT_CNT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_sdat_i_1_n_0,
      D => \BIT_CNT[1]_i_1_n_0\,
      Q => \BIT_CNT_reg_n_0_[1]\,
      R => LMX2594_rst
    );
\BIT_CNT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_sdat_i_1_n_0,
      D => \BIT_CNT[2]_i_1_n_0\,
      Q => \BIT_CNT_reg_n_0_[2]\,
      R => LMX2594_rst
    );
\BIT_CNT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_sdat_i_1_n_0,
      D => \BIT_CNT[3]_i_1_n_0\,
      Q => \BIT_CNT_reg_n_0_[3]\,
      R => LMX2594_rst
    );
\BIT_CNT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_sdat_i_1_n_0,
      D => \BIT_CNT[4]_i_1_n_0\,
      Q => \BIT_CNT_reg_n_0_[4]\,
      R => LMX2594_rst
    );
\BIT_CNT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_sdat_i_1_n_0,
      D => \BIT_CNT[5]_i_1_n_0\,
      Q => \BIT_CNT_reg_n_0_[5]\,
      R => LMX2594_rst
    );
\FSM_sequential_STT[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0000003AFA3AFA"
    )
        port map (
      I0 => LMX2594_ena,
      I1 => \FSM_sequential_STT[1]_i_2_n_0\,
      I2 => STT(0),
      I3 => \^lmx2594_sclk\,
      I4 => \FSM_sequential_STT[0]_i_2_n_0\,
      I5 => \FSM_sequential_STT_reg_n_0_[1]\,
      O => \FSM_sequential_STT[0]_i_1_n_0\
    );
\FSM_sequential_STT[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \BIT_CNT_reg_n_0_[0]\,
      I1 => \BIT_CNT_reg_n_0_[1]\,
      I2 => \BIT_CNT_reg_n_0_[5]\,
      I3 => \BIT_CNT_reg_n_0_[4]\,
      I4 => \BIT_CNT_reg_n_0_[2]\,
      I5 => \BIT_CNT_reg_n_0_[3]\,
      O => \FSM_sequential_STT[0]_i_2_n_0\
    );
\FSM_sequential_STT[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3380"
    )
        port map (
      I0 => \FSM_sequential_STT[1]_i_2_n_0\,
      I1 => STT(0),
      I2 => \^lmx2594_sclk\,
      I3 => \FSM_sequential_STT_reg_n_0_[1]\,
      O => \FSM_sequential_STT[1]_i_1_n_0\
    );
\FSM_sequential_STT[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \BIT_CNT_reg_n_0_[3]\,
      I1 => \BIT_CNT_reg_n_0_[4]\,
      I2 => \BIT_CNT_reg_n_0_[0]\,
      I3 => \BIT_CNT_reg_n_0_[5]\,
      I4 => \BIT_CNT_reg_n_0_[1]\,
      I5 => \BIT_CNT_reg_n_0_[2]\,
      O => \FSM_sequential_STT[1]_i_2_n_0\
    );
\FSM_sequential_STT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => '1',
      D => \FSM_sequential_STT[0]_i_1_n_0\,
      Q => STT(0),
      R => LMX2594_rst
    );
\FSM_sequential_STT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => '1',
      D => \FSM_sequential_STT[1]_i_1_n_0\,
      Q => \FSM_sequential_STT_reg_n_0_[1]\,
      R => LMX2594_rst
    );
\LMX2594_addr_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => LMX2594_addr(0),
      I1 => LMX2594_ena,
      I2 => STT(0),
      O => \LMX2594_addr_reg[0]_i_1_n_0\
    );
\LMX2594_addr_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LMX2594_addr_reg_reg_n_0_[0]\,
      I1 => STT(0),
      I2 => LMX2594_ena,
      I3 => LMX2594_addr(1),
      O => \LMX2594_addr_reg[1]_i_1_n_0\
    );
\LMX2594_addr_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LMX2594_addr_reg_reg_n_0_[1]\,
      I1 => STT(0),
      I2 => LMX2594_ena,
      I3 => LMX2594_addr(2),
      O => \LMX2594_addr_reg[2]_i_1_n_0\
    );
\LMX2594_addr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LMX2594_addr_reg_reg_n_0_[2]\,
      I1 => STT(0),
      I2 => LMX2594_ena,
      I3 => LMX2594_addr(3),
      O => \LMX2594_addr_reg[3]_i_1_n_0\
    );
\LMX2594_addr_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LMX2594_addr_reg_reg_n_0_[3]\,
      I1 => STT(0),
      I2 => LMX2594_ena,
      I3 => LMX2594_addr(4),
      O => \LMX2594_addr_reg[4]_i_1_n_0\
    );
\LMX2594_addr_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LMX2594_addr_reg_reg_n_0_[4]\,
      I1 => STT(0),
      I2 => LMX2594_ena,
      I3 => LMX2594_addr(5),
      O => \LMX2594_addr_reg[5]_i_1_n_0\
    );
\LMX2594_addr_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => \^lmx2594_sclk\,
      O => LMX2594_addr_reg
    );
\LMX2594_addr_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \LMX2594_addr_reg_reg_n_0_[5]\,
      I1 => STT(0),
      I2 => LMX2594_ena,
      I3 => LMX2594_addr(6),
      O => \LMX2594_addr_reg[6]_i_2_n_0\
    );
\LMX2594_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_addr_reg,
      D => \LMX2594_addr_reg[0]_i_1_n_0\,
      Q => \LMX2594_addr_reg_reg_n_0_[0]\,
      R => LMX2594_rst
    );
\LMX2594_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_addr_reg,
      D => \LMX2594_addr_reg[1]_i_1_n_0\,
      Q => \LMX2594_addr_reg_reg_n_0_[1]\,
      R => LMX2594_rst
    );
\LMX2594_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_addr_reg,
      D => \LMX2594_addr_reg[2]_i_1_n_0\,
      Q => \LMX2594_addr_reg_reg_n_0_[2]\,
      R => LMX2594_rst
    );
\LMX2594_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_addr_reg,
      D => \LMX2594_addr_reg[3]_i_1_n_0\,
      Q => \LMX2594_addr_reg_reg_n_0_[3]\,
      R => LMX2594_rst
    );
\LMX2594_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_addr_reg,
      D => \LMX2594_addr_reg[4]_i_1_n_0\,
      Q => \LMX2594_addr_reg_reg_n_0_[4]\,
      R => LMX2594_rst
    );
\LMX2594_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_addr_reg,
      D => \LMX2594_addr_reg[5]_i_1_n_0\,
      Q => \LMX2594_addr_reg_reg_n_0_[5]\,
      R => LMX2594_rst
    );
\LMX2594_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_addr_reg,
      D => \LMX2594_addr_reg[6]_i_2_n_0\,
      Q => p_1_in,
      R => LMX2594_rst
    );
LMX2594_cc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \FSM_sequential_STT_reg_n_0_[1]\,
      I1 => STT(0),
      I2 => \^lmx2594_cc\,
      O => LMX2594_cc_i_1_n_0
    );
LMX2594_cc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => '1',
      D => LMX2594_cc_i_1_n_0,
      Q => \^lmx2594_cc\,
      R => LMX2594_rst
    );
LMX2594_csb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => LMX2594_ena,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => STT(0),
      I3 => \^lmx2594_csb\,
      O => LMX2594_csb_i_1_n_0
    );
LMX2594_csb_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => '1',
      D => LMX2594_csb_i_1_n_0,
      Q => \^lmx2594_csb\,
      S => LMX2594_rst
    );
\LMX2594_data_rx[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_rst,
      O => \LMX2594_data_rx[15]_i_1_n_0\
    );
\LMX2594_data_rx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(0),
      Q => LMX2594_data_rx(0),
      R => '0'
    );
\LMX2594_data_rx_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(10),
      Q => LMX2594_data_rx(10),
      R => '0'
    );
\LMX2594_data_rx_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(11),
      Q => LMX2594_data_rx(11),
      R => '0'
    );
\LMX2594_data_rx_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(12),
      Q => LMX2594_data_rx(12),
      R => '0'
    );
\LMX2594_data_rx_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(13),
      Q => LMX2594_data_rx(13),
      R => '0'
    );
\LMX2594_data_rx_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(14),
      Q => LMX2594_data_rx(14),
      R => '0'
    );
\LMX2594_data_rx_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(15),
      Q => LMX2594_data_rx(15),
      R => '0'
    );
\LMX2594_data_rx_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_sequential_STT_reg_n_0_[1]\,
      I1 => STT(0),
      I2 => \^lmx2594_sclk\,
      O => LMX2594_data_rx_reg_1
    );
\LMX2594_data_rx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(1),
      Q => LMX2594_data_rx(1),
      R => '0'
    );
\LMX2594_data_rx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(2),
      Q => LMX2594_data_rx(2),
      R => '0'
    );
\LMX2594_data_rx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(3),
      Q => LMX2594_data_rx(3),
      R => '0'
    );
\LMX2594_data_rx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(4),
      Q => LMX2594_data_rx(4),
      R => '0'
    );
\LMX2594_data_rx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(5),
      Q => LMX2594_data_rx(5),
      R => '0'
    );
\LMX2594_data_rx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(6),
      Q => LMX2594_data_rx(6),
      R => '0'
    );
\LMX2594_data_rx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(7),
      Q => LMX2594_data_rx(7),
      R => '0'
    );
\LMX2594_data_rx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(8),
      Q => LMX2594_data_rx(8),
      R => '0'
    );
\LMX2594_data_rx_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => \LMX2594_data_rx[15]_i_1_n_0\,
      D => LMX2594_data_rx_reg(9),
      Q => LMX2594_data_rx(9),
      R => '0'
    );
\LMX2594_data_rx_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_smux,
      Q => LMX2594_data_rx_reg(0),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(9),
      Q => LMX2594_data_rx_reg(10),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(10),
      Q => LMX2594_data_rx_reg(11),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(11),
      Q => LMX2594_data_rx_reg(12),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(12),
      Q => LMX2594_data_rx_reg(13),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(13),
      Q => LMX2594_data_rx_reg(14),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(14),
      Q => LMX2594_data_rx_reg(15),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(0),
      Q => LMX2594_data_rx_reg(1),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(1),
      Q => LMX2594_data_rx_reg(2),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(2),
      Q => LMX2594_data_rx_reg(3),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(3),
      Q => LMX2594_data_rx_reg(4),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(4),
      Q => LMX2594_data_rx_reg(5),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(5),
      Q => LMX2594_data_rx_reg(6),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(6),
      Q => LMX2594_data_rx_reg(7),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(7),
      Q => LMX2594_data_rx_reg(8),
      R => LMX2594_rst
    );
\LMX2594_data_rx_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_rx_reg_1,
      D => LMX2594_data_rx_reg(8),
      Q => LMX2594_data_rx_reg(9),
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => STT(0),
      I1 => LMX2594_data_tx(0),
      O => LMX2594_data_tx_reg(0)
    );
\LMX2594_data_tx_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[9]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(10),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(10)
    );
\LMX2594_data_tx_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[10]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(11),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(11)
    );
\LMX2594_data_tx_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[11]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(12),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(12)
    );
\LMX2594_data_tx_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[12]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(13),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(13)
    );
\LMX2594_data_tx_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[13]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(14),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(14)
    );
\LMX2594_data_tx_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D5"
    )
        port map (
      I0 => STT(0),
      I1 => \FSM_sequential_STT[1]_i_2_n_0\,
      I2 => \^lmx2594_sclk\,
      I3 => \FSM_sequential_STT_reg_n_0_[1]\,
      O => LMX2594_data_tx_reg_0
    );
\LMX2594_data_tx_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[14]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(15),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(15)
    );
\LMX2594_data_tx_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[0]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(1),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(1)
    );
\LMX2594_data_tx_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[1]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(2),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(2)
    );
\LMX2594_data_tx_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[2]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(3),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(3)
    );
\LMX2594_data_tx_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[3]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(4),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(4)
    );
\LMX2594_data_tx_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[4]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(5),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(5)
    );
\LMX2594_data_tx_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[5]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(6),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(6)
    );
\LMX2594_data_tx_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[6]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(7),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(7)
    );
\LMX2594_data_tx_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[7]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(8),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(8)
    );
\LMX2594_data_tx_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \LMX2594_data_tx_reg_reg_n_0_[8]\,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => LMX2594_data_tx(9),
      I3 => STT(0),
      O => LMX2594_data_tx_reg(9)
    );
\LMX2594_data_tx_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(0),
      Q => \LMX2594_data_tx_reg_reg_n_0_[0]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(10),
      Q => \LMX2594_data_tx_reg_reg_n_0_[10]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(11),
      Q => \LMX2594_data_tx_reg_reg_n_0_[11]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(12),
      Q => \LMX2594_data_tx_reg_reg_n_0_[12]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(13),
      Q => \LMX2594_data_tx_reg_reg_n_0_[13]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(14),
      Q => \LMX2594_data_tx_reg_reg_n_0_[14]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(15),
      Q => p_0_in,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(1),
      Q => \LMX2594_data_tx_reg_reg_n_0_[1]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(2),
      Q => \LMX2594_data_tx_reg_reg_n_0_[2]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(3),
      Q => \LMX2594_data_tx_reg_reg_n_0_[3]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(4),
      Q => \LMX2594_data_tx_reg_reg_n_0_[4]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(5),
      Q => \LMX2594_data_tx_reg_reg_n_0_[5]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(6),
      Q => \LMX2594_data_tx_reg_reg_n_0_[6]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(7),
      Q => \LMX2594_data_tx_reg_reg_n_0_[7]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(8),
      Q => \LMX2594_data_tx_reg_reg_n_0_[8]\,
      R => LMX2594_rst
    );
\LMX2594_data_tx_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_data_tx_reg_0,
      D => LMX2594_data_tx_reg(9),
      Q => \LMX2594_data_tx_reg_reg_n_0_[9]\,
      R => LMX2594_rst
    );
LMX2594_sclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \^lmx2594_sclk\,
      I1 => STT(0),
      I2 => \FSM_sequential_STT_reg_n_0_[1]\,
      O => LMX2594_sclk_i_1_n_0
    );
LMX2594_sclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => '1',
      D => LMX2594_sclk_i_1_n_0,
      Q => \^lmx2594_sclk\,
      R => LMX2594_rst
    );
LMX2594_sdat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => \^lmx2594_sclk\,
      I1 => STT(0),
      I2 => \FSM_sequential_STT_reg_n_0_[1]\,
      O => LMX2594_sdat_i_1_n_0
    );
LMX2594_sdat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B8BBB8BB"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_sequential_STT_reg_n_0_[1]\,
      I2 => p_1_in,
      I3 => STT(0),
      I4 => LMX2594_r_nw,
      I5 => LMX2594_ena,
      O => LMX2594_sdat_i_2_n_0
    );
LMX2594_sdat_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => internaCLK_reg_n_0,
      CE => LMX2594_sdat_i_1_n_0,
      D => LMX2594_sdat_i_2_n_0,
      Q => LMX2594_sdat,
      S => LMX2594_rst
    );
\clk_inst.prescaler[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => LMX2594_rst,
      I1 => \clk_inst.prescaler[0]_i_3_n_0\,
      I2 => \clk_inst.prescaler_reg\(7),
      I3 => \clk_inst.prescaler_reg\(3),
      I4 => \clk_inst.prescaler_reg\(2),
      I5 => \clk_inst.prescaler_reg\(1),
      O => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \clk_inst.prescaler_reg\(9),
      I1 => \clk_inst.prescaler_reg\(4),
      I2 => \clk_inst.prescaler_reg\(0),
      I3 => \clk_inst.prescaler_reg\(6),
      I4 => \clk_inst.prescaler_reg\(5),
      I5 => \clk_inst.prescaler_reg\(8),
      O => \clk_inst.prescaler[0]_i_3_n_0\
    );
\clk_inst.prescaler[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_inst.prescaler_reg\(0),
      O => \clk_inst.prescaler[0]_i_4_n_0\
    );
\clk_inst.prescaler_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[0]_i_2_n_7\,
      Q => \clk_inst.prescaler_reg\(0),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_inst.prescaler_reg[0]_i_2_n_0\,
      CO(2) => \clk_inst.prescaler_reg[0]_i_2_n_1\,
      CO(1) => \clk_inst.prescaler_reg[0]_i_2_n_2\,
      CO(0) => \clk_inst.prescaler_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_inst.prescaler_reg[0]_i_2_n_4\,
      O(2) => \clk_inst.prescaler_reg[0]_i_2_n_5\,
      O(1) => \clk_inst.prescaler_reg[0]_i_2_n_6\,
      O(0) => \clk_inst.prescaler_reg[0]_i_2_n_7\,
      S(3 downto 1) => \clk_inst.prescaler_reg\(3 downto 1),
      S(0) => \clk_inst.prescaler[0]_i_4_n_0\
    );
\clk_inst.prescaler_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[0]_i_2_n_6\,
      Q => \clk_inst.prescaler_reg\(1),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[0]_i_2_n_5\,
      Q => \clk_inst.prescaler_reg\(2),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[0]_i_2_n_4\,
      Q => \clk_inst.prescaler_reg\(3),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[4]_i_1_n_7\,
      Q => \clk_inst.prescaler_reg\(4),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_inst.prescaler_reg[0]_i_2_n_0\,
      CO(3) => \clk_inst.prescaler_reg[4]_i_1_n_0\,
      CO(2) => \clk_inst.prescaler_reg[4]_i_1_n_1\,
      CO(1) => \clk_inst.prescaler_reg[4]_i_1_n_2\,
      CO(0) => \clk_inst.prescaler_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_inst.prescaler_reg[4]_i_1_n_4\,
      O(2) => \clk_inst.prescaler_reg[4]_i_1_n_5\,
      O(1) => \clk_inst.prescaler_reg[4]_i_1_n_6\,
      O(0) => \clk_inst.prescaler_reg[4]_i_1_n_7\,
      S(3 downto 0) => \clk_inst.prescaler_reg\(7 downto 4)
    );
\clk_inst.prescaler_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[4]_i_1_n_6\,
      Q => \clk_inst.prescaler_reg\(5),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[4]_i_1_n_5\,
      Q => \clk_inst.prescaler_reg\(6),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[4]_i_1_n_4\,
      Q => \clk_inst.prescaler_reg\(7),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[8]_i_1_n_7\,
      Q => \clk_inst.prescaler_reg\(8),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
\clk_inst.prescaler_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_inst.prescaler_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_clk_inst.prescaler_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \clk_inst.prescaler_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_clk_inst.prescaler_reg[8]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \clk_inst.prescaler_reg[8]_i_1_n_6\,
      O(0) => \clk_inst.prescaler_reg[8]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \clk_inst.prescaler_reg\(9 downto 8)
    );
\clk_inst.prescaler_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => \clk_inst.prescaler_reg[8]_i_1_n_6\,
      Q => \clk_inst.prescaler_reg\(9),
      R => \clk_inst.prescaler[0]_i_1_n_0\
    );
internaCLK_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB04"
    )
        port map (
      I0 => LMX2594_rst,
      I1 => internaCLK_i_2_n_0,
      I2 => \clk_inst.prescaler[0]_i_3_n_0\,
      I3 => internaCLK_reg_n_0,
      O => internaCLK_i_1_n_0
    );
internaCLK_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \clk_inst.prescaler_reg\(7),
      I1 => \clk_inst.prescaler_reg\(3),
      I2 => \clk_inst.prescaler_reg\(2),
      I3 => \clk_inst.prescaler_reg\(1),
      O => internaCLK_i_2_n_0
    );
internaCLK_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => LMX2594_clk_in,
      CE => '1',
      D => internaCLK_i_1_n_0,
      Q => internaCLK_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PruebaTOP_LMX2594_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of PruebaTOP_LMX2594_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PruebaTOP_LMX2594_0_0 : entity is "PruebaTOP_LMX2594_0_0,LMX2594,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of PruebaTOP_LMX2594_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of PruebaTOP_LMX2594_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of PruebaTOP_LMX2594_0_0 : entity is "LMX2594,Vivado 2024.1";
end PruebaTOP_LMX2594_0_0;

architecture STRUCTURE of PruebaTOP_LMX2594_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of LMX2594_rst : signal is "xilinx.com:signal:reset:1.0 LMX2594_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of LMX2594_rst : signal is "XIL_INTERFACENAME LMX2594_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.PruebaTOP_LMX2594_0_0_LMX2594
     port map (
      LMX2594_addr(6 downto 0) => LMX2594_addr(6 downto 0),
      LMX2594_cc => LMX2594_cc,
      LMX2594_clk_in => LMX2594_clk_in,
      LMX2594_csb => LMX2594_csb,
      LMX2594_data_rx(15 downto 0) => LMX2594_data_rx(15 downto 0),
      LMX2594_data_tx(15 downto 0) => LMX2594_data_tx(15 downto 0),
      LMX2594_ena => LMX2594_ena,
      LMX2594_r_nw => LMX2594_r_nw,
      LMX2594_rst => LMX2594_rst,
      LMX2594_sclk => LMX2594_sclk,
      LMX2594_sdat => LMX2594_sdat,
      LMX2594_smux => LMX2594_smux
    );
end STRUCTURE;
