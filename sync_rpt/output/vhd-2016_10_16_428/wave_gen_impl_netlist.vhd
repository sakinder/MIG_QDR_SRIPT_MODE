-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Sun Oct 16 04:27:41 2016
-- Host        : Sakinder-Laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -file S:/GoogleDrive/firmware/mars/m_s_r_0_0/outputs/output/wave_gen_impl_netlist.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    clk_ref_p : in STD_LOGIC;
    clk_ref_n : in STD_LOGIC;
    qdriip_cq_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    qdriip_cq_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    qdriip_q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    qdriip_k_p : inout STD_LOGIC_VECTOR ( 0 to 0 );
    qdriip_k_n : inout STD_LOGIC_VECTOR ( 0 to 0 );
    qdriip_d : out STD_LOGIC_VECTOR ( 17 downto 0 );
    qdriip_sa : out STD_LOGIC_VECTOR ( 19 downto 0 );
    qdriip_w_n : out STD_LOGIC;
    qdriip_r_n : out STD_LOGIC;
    qdriip_bw_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    qdriip_dll_off_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
  attribute ADDR_WIDTH : integer;
  attribute ADDR_WIDTH of top : entity is 20;
  attribute BEGIN_ADDRESS : string;
  attribute BEGIN_ADDRESS of top : entity is "32'b00000000000000000000000000000000";
  attribute BL_WIDTH : integer;
  attribute BL_WIDTH of top : entity is 8;
  attribute BURST_LEN : integer;
  attribute BURST_LEN of top : entity is 4;
  attribute BW_WIDTH : integer;
  attribute BW_WIDTH of top : entity is 2;
  attribute CMD_PATTERN : string;
  attribute CMD_PATTERN of top : entity is "CGEN_ALL";
  attribute CMD_WDT : string;
  attribute CMD_WDT of top : entity is "32'b00000000000000000000001111111111";
  attribute DATA_MODE : string;
  attribute DATA_MODE of top : entity is "4'b0010";
  attribute DATA_PATTERN : string;
  attribute DATA_PATTERN of top : entity is "DGEN_ALL";
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of top : entity is 18;
  attribute DEBUG_PORT : string;
  attribute DEBUG_PORT of top : entity is "OFF";
  attribute DEVICE_TAPS : integer;
  attribute DEVICE_TAPS of top : entity is 32;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top : entity is "7570542b";
  attribute END_ADDRESS : string;
  attribute END_ADDRESS of top : entity is "32'b00000000000000000000111111111111";
  attribute EYE_TEST : string;
  attribute EYE_TEST of top : entity is "FALSE";
  attribute MEM_TYPE : string;
  attribute MEM_TYPE of top : entity is "QDR2PLUS";
  attribute PORT_MODE : string;
  attribute PORT_MODE of top : entity is "BI_MODE";
  attribute PRBS_EADDR_MASK_POS : string;
  attribute PRBS_EADDR_MASK_POS of top : entity is "32'b11111111111111111111000000000000";
  attribute RD_WDT : string;
  attribute RD_WDT of top : entity is "32'b00000000000000000000001111111111";
  attribute RST_ACT_LOW : integer;
  attribute RST_ACT_LOW of top : entity is 1;
  attribute SIMULATION : string;
  attribute SIMULATION of top : entity is "FALSE";
  attribute TCQ : integer;
  attribute TCQ of top : entity is 100;
  attribute TST_MEM_INSTR_MODE : string;
  attribute TST_MEM_INSTR_MODE of top : entity is "R_W_INSTR_MODE";
  attribute WR_WDT : string;
  attribute WR_WDT of top : entity is "32'b00000000000000000001111111111111";
  attribute nCK_PER_CLK : integer;
  attribute nCK_PER_CLK of top : entity is 2;
end top;

architecture STRUCTURE of top is
  signal clk : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/pll_locked\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/sys_clk_ibufg\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/sys_clk_ibufg\ : signal is "true";
  attribute syn_keep : string;
  attribute syn_keep of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/sys_clk_ibufg\ : signal is "true";
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/clk_pll_i\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_n_16\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clk3\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clk3_out\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clkfbout\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_locked_i\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\ : STD_LOGIC_VECTOR ( 83 downto 25 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/iob_bw\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/iob_dll_off_n\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_init_sm/rst_r\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_1\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_22\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_23\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i_n_0\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/po_rd_enable\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/ddr_clock_out_sel\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/lut_tristate\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q9\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk_delayed\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/po_rd_enable\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_23\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_25\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q9\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/po_rd_enable\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/po_rd_enable\ : STD_LOGIC;
  signal \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/ref_dll_lock_w_1\ : STD_LOGIC;
  signal \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\ : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKFBOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKFBSTOPPED_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKINSTOPPED_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT0B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT1B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT2B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT3_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT3B_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT4_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_DRDY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_PSDONE_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_CLKOUT4_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_CLKOUT5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_DRDY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLALMOSTFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLREADY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_AUXOUTPUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INBURSTPENDING_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_OUTBURSTPENDING_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PCENABLECALIB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_OCLKDELAYED_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_FULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_Q0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.gen_lb_clk.loopback_iobuf_diff_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_FULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_Q0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_Q5_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_Q6_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLALMOSTFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLEMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLREADY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_AUXOUTPUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INBURSTPENDING_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_OUTBURSTPENDING_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PCENABLECALIB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_OCLKDELAYED_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_FULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_Q0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_Q1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_OCLKDELAYED_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_FULL_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/diff_input_clk.u_ibufg_sys_clk\ : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/diff_input_clk.u_ibufg_sys_clk\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/diff_input_clk.u_ibufg_sys_clk\ : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/diff_input_clk.u_ibufg_sys_clk\ : label is "IBUFGDS";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/PHY_CONTROL_INST.phy_control_i_i_1\ : label is "soft_lutpair366";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/u_bufg_clkdiv0\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/u_bufh_pll_clk3\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[0].u_bw_n_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[0].u_bw_n_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[1].u_bw_n_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[1].u_bw_n_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[0].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[0].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[10].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[10].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[11].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[11].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[12].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[12].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[13].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[13].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[14].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[14].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[15].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[15].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[16].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[16].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[17].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[17].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[1].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[1].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[2].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[2].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[3].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[3].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[4].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[4].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[5].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[5].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[6].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[6].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[7].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[7].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[8].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[8].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[9].u_d_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[9].u_d_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[0].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[0].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[10].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[10].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[11].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[11].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[12].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[12].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[13].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[13].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[14].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[14].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[15].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[15].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[16].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[16].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[17].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[17].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[18].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[18].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[19].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[19].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[1].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[1].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[2].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[2].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[3].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[3].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[4].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[4].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[5].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[5].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[6].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[6].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[7].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[7].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[8].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[8].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[9].u_sa_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[9].u_sa_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_dll_off_n_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_dll_off_n_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_r_n_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_r_n_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_w_n_obuf\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_w_n_obuf\ : label is "DONT_CARE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo\ : label is "PRIMITIVE";
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo\ : label is "INDEPENDENT";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.LUT1_tri\ : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.LUT1_tri\ : label is std.standard.true;
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk\ : label is "FALSE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.gen_lb_clk.loopback_iobuf_diff\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo\ : label is "PRIMITIVE";
  attribute CLOCK_DOMAINS of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo\ : label is "INDEPENDENT";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/phaser_ref_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo\ : label is "PRIMITIVE";
  attribute CLOCK_DOMAINS of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo\ : label is "INDEPENDENT";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo\ : label is "PRIMITIVE";
  attribute CLOCK_DOMAINS of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo\ : label is "INDEPENDENT";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\ : label is "PRIMITIVE";
  attribute syn_dspstyle : string;
  attribute syn_dspstyle of \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS_V.INC_COUNTS_reg[8]\ : label is "logic";
begin
u_dll_off_n_obuf_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_init_sm/rst_r\,
      O => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/iob_dll_off_n\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/diff_input_clk.u_ibufg_sys_clk\: unisim.vcomponents.IBUFDS
    generic map(
      DQS_BIAS => "FALSE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sys_clk_p,
      IB => sys_clk_n,
      O => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/sys_clk_ibufg\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/PHY_CONTROL_INST.phy_control_i_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_locked_i\,
      I1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_n_16\,
      O => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/pll_locked\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i\: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "HIGH",
      CLKFBOUT_MULT_F => 4.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 4.443333,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 8.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => true,
      CLKOUT1_DIVIDE => 2,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "BUF_IN",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '1',
      REF_JITTER1 => 0.000000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clk,
      CLKFBOUT => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/clk_pll_i\,
      CLKFBOUTB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKFBOUTB_UNCONNECTED\,
      CLKFBSTOPPED => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKFBSTOPPED_UNCONNECTED\,
      CLKIN1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clk3\,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKINSTOPPED_UNCONNECTED\,
      CLKOUT0 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT0_UNCONNECTED\,
      CLKOUT0B => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT0B_UNCONNECTED\,
      CLKOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT1_UNCONNECTED\,
      CLKOUT1B => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT1B_UNCONNECTED\,
      CLKOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT2_UNCONNECTED\,
      CLKOUT2B => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT2B_UNCONNECTED\,
      CLKOUT3 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT3_UNCONNECTED\,
      CLKOUT3B => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT3B_UNCONNECTED\,
      CLKOUT4 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT4_UNCONNECTED\,
      CLKOUT5 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT5_UNCONNECTED\,
      CLKOUT6 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_CLKOUT6_UNCONNECTED\,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_DO_UNCONNECTED\(15 downto 0),
      DRDY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_DRDY_UNCONNECTED\,
      DWE => '0',
      LOCKED => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_n_16\,
      PSCLK => clk,
      PSDONE => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i_PSDONE_UNCONNECTED\,
      PSEN => '0',
      PSINCDEC => '1',
      PWRDWN => '0',
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_locked_i\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i\: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 6,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 6.665000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 2,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 45.000000,
      CLKOUT1_DIVIDE => 2,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 32,
      CLKOUT2_DUTY_CYCLE => 0.062500,
      CLKOUT2_PHASE => 9.843750,
      CLKOUT3_DIVIDE => 4,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 4,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 168.750000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clkfbout\,
      CLKFBOUT => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clkfbout\,
      CLKIN1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/sys_clk_ibufg\,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\,
      CLKOUT1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\,
      CLKOUT2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\,
      CLKOUT3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clk3_out\,
      CLKOUT4 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_CLKOUT4_UNCONNECTED\,
      CLKOUT5 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_CLKOUT5_UNCONNECTED\,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_DO_UNCONNECTED\(15 downto 0),
      DRDY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i_DRDY_UNCONNECTED\,
      DWE => '0',
      LOCKED => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_locked_i\,
      PWRDWN => '0',
      RST => '1'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/u_bufg_clkdiv0\: unisim.vcomponents.BUFG
     port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/clk_pll_i\,
      O => clk
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/u_bufh_pll_clk3\: unisim.vcomponents.BUFH
     port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clk3_out\,
      O => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/pll_clk3\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[0].u_bw_n_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(33),
      O => qdriip_bw_n(0)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[1].u_bw_n_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(32),
      O => qdriip_bw_n(1)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[0].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(45),
      O => qdriip_d(0)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[10].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(30),
      O => qdriip_d(10)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[11].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(35),
      O => qdriip_d(11)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[12].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(34),
      O => qdriip_d(12)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[13].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(29),
      O => qdriip_d(13)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[14].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(28),
      O => qdriip_d(14)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[15].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(27),
      O => qdriip_d(15)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[16].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(26),
      O => qdriip_d(16)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[17].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(25),
      O => qdriip_d(17)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[1].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(44),
      O => qdriip_d(1)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[2].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(43),
      O => qdriip_d(2)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[3].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(42),
      O => qdriip_d(3)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[4].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(41),
      O => qdriip_d(4)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[5].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(40),
      O => qdriip_d(5)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[6].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(39),
      O => qdriip_d(6)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[7].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(38),
      O => qdriip_d(7)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[8].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(37),
      O => qdriip_d(8)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[9].u_d_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(31),
      O => qdriip_d(9)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[0].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(52),
      O => qdriip_sa(0)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[10].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(74),
      O => qdriip_sa(10)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[11].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(75),
      O => qdriip_sa(11)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[12].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(76),
      O => qdriip_sa(12)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[13].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(77),
      O => qdriip_sa(13)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[14].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(82),
      O => qdriip_sa(14)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[15].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(83),
      O => qdriip_sa(15)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[16].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(78),
      O => qdriip_sa(16)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[17].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(79),
      O => qdriip_sa(17)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[18].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(80),
      O => qdriip_sa(18)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[19].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(81),
      O => qdriip_sa(19)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[1].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(53),
      O => qdriip_sa(1)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[2].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(58),
      O => qdriip_sa(2)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[3].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(59),
      O => qdriip_sa(3)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[4].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(54),
      O => qdriip_sa(4)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[5].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(55),
      O => qdriip_sa(5)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[6].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(56),
      O => qdriip_sa(6)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[7].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(57),
      O => qdriip_sa(7)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[8].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(72),
      O => qdriip_sa(8)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[9].u_sa_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(73),
      O => qdriip_sa(9)
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_dll_off_n_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/iob_dll_off_n\,
      O => qdriip_dll_off_n
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_r_n_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(50),
      O => qdriip_r_n
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_w_n_obuf\: unisim.vcomponents.OBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(51),
      O => qdriip_w_n
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_data/iob_bw_rise0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/iob_bw\(4),
      R => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_init_sm/rst_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_init_sm/rst_r\,
      R => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i\: unisim.vcomponents.PHY_CONTROL
    generic map(
      AO_TOGGLE => 5,
      AO_WRLVL_EN => B"0000",
      BURST_MODE => "TRUE",
      CLK_RATIO => 2,
      CMD_OFFSET => 0,
      CO_DURATION => 1,
      DATA_CTL_A_N => "TRUE",
      DATA_CTL_B_N => "TRUE",
      DATA_CTL_C_N => "TRUE",
      DATA_CTL_D_N => "TRUE",
      DISABLE_SEQ_MATCH => "TRUE",
      DI_DURATION => 1,
      DO_DURATION => 1,
      EVENTS_DELAY => 18,
      FOUR_WINDOW_CLOCKS => 63,
      MULTI_REGION => "TRUE",
      PHY_COUNT_ENABLE => "TRUE",
      RD_CMD_OFFSET_0 => 0,
      RD_CMD_OFFSET_1 => 0,
      RD_CMD_OFFSET_2 => 0,
      RD_CMD_OFFSET_3 => 0,
      RD_DURATION_0 => 0,
      RD_DURATION_1 => 0,
      RD_DURATION_2 => 0,
      RD_DURATION_3 => 0,
      SYNC_MODE => "FALSE",
      WR_CMD_OFFSET_0 => 5,
      WR_CMD_OFFSET_1 => 5,
      WR_CMD_OFFSET_2 => 5,
      WR_CMD_OFFSET_3 => 5,
      WR_DURATION_0 => 6,
      WR_DURATION_1 => 6,
      WR_DURATION_2 => 6,
      WR_DURATION_3 => 6
    )
        port map (
      AUXOUTPUT(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_AUXOUTPUT_UNCONNECTED\(3 downto 0),
      INBURSTPENDING(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INBURSTPENDING_UNCONNECTED\(3 downto 0),
      INRANKA(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKA_UNCONNECTED\(1 downto 0),
      INRANKB(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKB_UNCONNECTED\(1 downto 0),
      INRANKC(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKC_UNCONNECTED\(1 downto 0),
      INRANKD(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKD_UNCONNECTED\(1 downto 0),
      MEMREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\,
      OUTBURSTPENDING(3) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_22\,
      OUTBURSTPENDING(2) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_23\,
      OUTBURSTPENDING(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_OUTBURSTPENDING_UNCONNECTED\(1 downto 0),
      PCENABLECALIB(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PCENABLECALIB_UNCONNECTED\(1 downto 0),
      PHYCLK => clk,
      PHYCTLALMOSTFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLALMOSTFULL_UNCONNECTED\,
      PHYCTLEMPTY => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_1\,
      PHYCTLFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLFULL_UNCONNECTED\,
      PHYCTLMSTREMPTY => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_1\,
      PHYCTLREADY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLREADY_UNCONNECTED\,
      PHYCTLWD(31 downto 0) => B"01111110000000000000000000000100",
      PHYCTLWRENABLE => '0',
      PLLLOCK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/pll_locked\,
      READCALIBENABLE => '0',
      REFDLLLOCK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i_n_0\,
      RESET => '1',
      SYNCIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\,
      WRITECALIBENABLE => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i\: unisim.vcomponents.PHASER_REF
    generic map(
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0'
    )
        port map (
      CLKIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\,
      LOCKED => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i_n_0\,
      PWRDWN => '0',
      RST => '1'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out\: unisim.vcomponents.PHASER_OUT_PHY
    generic map(
      CLKOUT_DIV => 2,
      COARSE_BYPASS => "FALSE",
      COARSE_DELAY => 0,
      DATA_CTL_N => "TRUE",
      DATA_RD_CYCLES => "FALSE",
      FINE_DELAY => 60,
      IS_RST_INVERTED => '0',
      MEMREFCLK_PERIOD => 2.221667,
      OCLKDELAY_INV => "TRUE",
      OCLK_DELAY => 1,
      OUTPUT_CLK_SRC => "DELAYED_REF",
      PHASEREFCLK_PERIOD => 2.222000,
      PO => B"111",
      REFCLK_PERIOD => 2.222000,
      SYNC_IN_DIV_RST => "TRUE"
    )
        port map (
      BURSTPENDINGPHY => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_23\,
      COARSEENABLE => '0',
      COARSEINC => '1',
      COARSEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\,
      COUNTERLOADEN => '0',
      COUNTERLOADVAL(8 downto 0) => B"000000000",
      COUNTERREADEN => '1',
      COUNTERREADVAL(8 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\(8 downto 0),
      CTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\(1 downto 0),
      DQSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\(1 downto 0),
      DTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\(1 downto 0),
      ENCALIBPHY(1 downto 0) => B"00",
      FINEENABLE => '0',
      FINEINC => '1',
      FINEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\,
      FREQREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\,
      MEMREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\,
      OCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      OCLKDELAYED => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_OCLKDELAYED_UNCONNECTED\,
      OCLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      OSERDESRST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      PHASEREFCLK => '0',
      RDENABLE => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/po_rd_enable\,
      RST => '1',
      SELFINEOCLKDELAY => '0',
      SYNCIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\,
      SYSCLK => clk
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo\: unisim.vcomponents.OUT_FIFO
    generic map(
      ALMOST_EMPTY_VALUE => 1,
      ALMOST_FULL_VALUE => 1,
      ARRAY_MODE => "ARRAY_MODE_4_X_4",
      OUTPUT_DISABLE => "TRUE",
      SYNCHRONOUS_MODE => "FALSE"
    )
        port map (
      ALMOSTEMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\,
      ALMOSTFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\,
      D0(7 downto 0) => B"00000000",
      D1(7 downto 0) => B"00000000",
      D2(7 downto 0) => B"00000000",
      D3(7 downto 0) => B"00000000",
      D4(7 downto 0) => B"00000000",
      D5(7 downto 0) => B"00000000",
      D6(7 downto 0) => B"00000000",
      D7(7 downto 0) => B"00000000",
      D8(7 downto 4) => B"0000",
      D8(3) => \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\(8),
      D8(2) => \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\(8),
      D8(1) => \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\(8),
      D8(0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/iob_bw\(4),
      D9(7 downto 4) => B"0000",
      D9(3) => \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\(8),
      D9(2) => \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\(8),
      D9(1) => \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\(8),
      D9(0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/iob_bw\(4),
      EMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\,
      FULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_FULL_UNCONNECTED\,
      Q0(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_Q0_UNCONNECTED\(3 downto 0),
      Q1(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(3 downto 0),
      Q2(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(3 downto 0),
      Q3(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(3 downto 0),
      Q4(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(3 downto 0),
      Q5(7 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(7 downto 0),
      Q6(7 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(7 downto 0),
      Q7(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(3 downto 0),
      Q8(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(3 downto 0),
      Q9(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(3 downto 0),
      RDCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      RDEN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/po_rd_enable\,
      RESET => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      WRCLK => clk,
      WREN => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(4),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(5),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(6),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(7),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(34),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(4),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(5),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(6),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(7),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(35),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(25),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(26),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(27),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(28),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(29),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(30),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(31),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(32),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(33),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out\: unisim.vcomponents.PHASER_OUT_PHY
    generic map(
      CLKOUT_DIV => 2,
      COARSE_BYPASS => "FALSE",
      COARSE_DELAY => 0,
      DATA_CTL_N => "TRUE",
      DATA_RD_CYCLES => "FALSE",
      FINE_DELAY => 60,
      IS_RST_INVERTED => '0',
      MEMREFCLK_PERIOD => 2.221667,
      OCLKDELAY_INV => "TRUE",
      OCLK_DELAY => 1,
      OUTPUT_CLK_SRC => "DELAYED_REF",
      PHASEREFCLK_PERIOD => 2.222000,
      PO => B"111",
      REFCLK_PERIOD => 2.222000,
      SYNC_IN_DIV_RST => "TRUE"
    )
        port map (
      BURSTPENDINGPHY => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_22\,
      COARSEENABLE => '0',
      COARSEINC => '1',
      COARSEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\,
      COUNTERLOADEN => '0',
      COUNTERLOADVAL(8 downto 0) => B"000000000",
      COUNTERREADEN => '1',
      COUNTERREADVAL(8 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\(8 downto 0),
      CTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\(1 downto 0),
      DQSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\(1 downto 0),
      DTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\(1 downto 0),
      ENCALIBPHY(1 downto 0) => B"00",
      FINEENABLE => '0',
      FINEINC => '1',
      FINEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\,
      FREQREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\,
      MEMREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\,
      OCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      OCLKDELAYED => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk_delayed\,
      OCLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      OSERDESRST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      PHASEREFCLK => '0',
      RDENABLE => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/po_rd_enable\,
      RST => '1',
      SELFINEOCLKDELAY => '0',
      SYNCIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\,
      SYSCLK => clk
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.LUT1_tri\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/lut_tristate\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk_delayed\,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/ddr_clock_out_sel\,
      R => '0',
      S => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk_S_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.gen_lb_clk.loopback_iobuf_diff\: unisim.vcomponents.IOBUFDS
    generic map(
      DQS_BIAS => "FALSE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/ddr_clock_out_sel\,
      IO => qdriip_k_p(0),
      IOB => qdriip_k_n(0),
      O => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.gen_lb_clk.loopback_iobuf_diff_O_UNCONNECTED\,
      T => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/lut_tristate\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo\: unisim.vcomponents.OUT_FIFO
    generic map(
      ALMOST_EMPTY_VALUE => 1,
      ALMOST_FULL_VALUE => 1,
      ARRAY_MODE => "ARRAY_MODE_4_X_4",
      OUTPUT_DISABLE => "TRUE",
      SYNCHRONOUS_MODE => "FALSE"
    )
        port map (
      ALMOSTEMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\,
      ALMOSTFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\,
      D0(7 downto 0) => B"00000000",
      D1(7 downto 0) => B"00000000",
      D2(7 downto 0) => B"00000000",
      D3(7 downto 0) => B"00000000",
      D4(7 downto 0) => B"00000000",
      D5(7 downto 0) => B"00000000",
      D6(7 downto 0) => B"00000000",
      D7(7 downto 0) => B"00000000",
      D8(7 downto 0) => B"00000000",
      D9(7 downto 0) => B"00000000",
      EMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\,
      FULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_FULL_UNCONNECTED\,
      Q0(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_Q0_UNCONNECTED\(3 downto 0),
      Q1(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q1\(3 downto 0),
      Q2(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q2\(3 downto 0),
      Q3(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q3\(3 downto 0),
      Q4(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q4\(3 downto 0),
      Q5(7 downto 4) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_Q5_UNCONNECTED\(7 downto 4),
      Q5(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q5\(3 downto 0),
      Q6(7 downto 4) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo_Q6_UNCONNECTED\(7 downto 4),
      Q6(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q6\(3 downto 0),
      Q7(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q7\(3 downto 0),
      Q8(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q8\(3 downto 0),
      Q9(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q9\(3 downto 0),
      RDCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      RDEN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/po_rd_enable\,
      RESET => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      WRCLK => clk,
      WREN => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q1\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q1\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q1\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q1\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(37),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q2\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q2\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q2\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q2\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(38),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q3\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q3\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q3\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q3\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(39),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q4\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q4\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q4\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q4\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(40),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q5\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q5\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q5\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q5\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(41),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q6\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q6\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q6\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q6\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(42),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q7\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q7\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q7\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q7\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(43),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q8\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q8\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q8\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q8\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(44),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q9\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q9\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q9\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/of_q9\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(45),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i\: unisim.vcomponents.PHY_CONTROL
    generic map(
      AO_TOGGLE => 5,
      AO_WRLVL_EN => B"0000",
      BURST_MODE => "TRUE",
      CLK_RATIO => 2,
      CMD_OFFSET => 0,
      CO_DURATION => 1,
      DATA_CTL_A_N => "TRUE",
      DATA_CTL_B_N => "TRUE",
      DATA_CTL_C_N => "TRUE",
      DATA_CTL_D_N => "TRUE",
      DISABLE_SEQ_MATCH => "TRUE",
      DI_DURATION => 1,
      DO_DURATION => 1,
      EVENTS_DELAY => 18,
      FOUR_WINDOW_CLOCKS => 63,
      MULTI_REGION => "TRUE",
      PHY_COUNT_ENABLE => "TRUE",
      RD_CMD_OFFSET_0 => 0,
      RD_CMD_OFFSET_1 => 0,
      RD_CMD_OFFSET_2 => 0,
      RD_CMD_OFFSET_3 => 0,
      RD_DURATION_0 => 0,
      RD_DURATION_1 => 0,
      RD_DURATION_2 => 0,
      RD_DURATION_3 => 0,
      SYNC_MODE => "FALSE",
      WR_CMD_OFFSET_0 => 5,
      WR_CMD_OFFSET_1 => 5,
      WR_CMD_OFFSET_2 => 5,
      WR_CMD_OFFSET_3 => 5,
      WR_DURATION_0 => 6,
      WR_DURATION_1 => 6,
      WR_DURATION_2 => 6,
      WR_DURATION_3 => 6
    )
        port map (
      AUXOUTPUT(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_AUXOUTPUT_UNCONNECTED\(3 downto 0),
      INBURSTPENDING(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INBURSTPENDING_UNCONNECTED\(3 downto 0),
      INRANKA(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKA_UNCONNECTED\(1 downto 0),
      INRANKB(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKB_UNCONNECTED\(1 downto 0),
      INRANKC(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKC_UNCONNECTED\(1 downto 0),
      INRANKD(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_INRANKD_UNCONNECTED\(1 downto 0),
      MEMREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\,
      OUTBURSTPENDING(3) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_OUTBURSTPENDING_UNCONNECTED\(3),
      OUTBURSTPENDING(2) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_23\,
      OUTBURSTPENDING(1) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_OUTBURSTPENDING_UNCONNECTED\(1),
      OUTBURSTPENDING(0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_25\,
      PCENABLECALIB(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PCENABLECALIB_UNCONNECTED\(1 downto 0),
      PHYCLK => clk,
      PHYCTLALMOSTFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLALMOSTFULL_UNCONNECTED\,
      PHYCTLEMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLEMPTY_UNCONNECTED\,
      PHYCTLFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLFULL_UNCONNECTED\,
      PHYCTLMSTREMPTY => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_1\,
      PHYCTLREADY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_PHYCTLREADY_UNCONNECTED\,
      PHYCTLWD(31 downto 0) => B"01111110000000000000000000000100",
      PHYCTLWRENABLE => '0',
      PLLLOCK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/pll_locked\,
      READCALIBENABLE => '0',
      REFDLLLOCK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/ref_dll_lock_w_1\,
      RESET => '1',
      SYNCIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\,
      WRITECALIBENABLE => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/phaser_ref_i\: unisim.vcomponents.PHASER_REF
    generic map(
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0'
    )
        port map (
      CLKIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\,
      LOCKED => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/ref_dll_lock_w_1\,
      PWRDWN => '0',
      RST => '1'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out\: unisim.vcomponents.PHASER_OUT_PHY
    generic map(
      CLKOUT_DIV => 2,
      COARSE_BYPASS => "FALSE",
      COARSE_DELAY => 0,
      DATA_CTL_N => "TRUE",
      DATA_RD_CYCLES => "FALSE",
      FINE_DELAY => 60,
      IS_RST_INVERTED => '0',
      MEMREFCLK_PERIOD => 2.221667,
      OCLKDELAY_INV => "TRUE",
      OCLK_DELAY => 1,
      OUTPUT_CLK_SRC => "DELAYED_REF",
      PHASEREFCLK_PERIOD => 2.222000,
      PO => B"111",
      REFCLK_PERIOD => 2.222000,
      SYNC_IN_DIV_RST => "TRUE"
    )
        port map (
      BURSTPENDINGPHY => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_25\,
      COARSEENABLE => '0',
      COARSEINC => '1',
      COARSEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\,
      COUNTERLOADEN => '0',
      COUNTERLOADVAL(8 downto 0) => B"000000000",
      COUNTERREADEN => '1',
      COUNTERREADVAL(8 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\(8 downto 0),
      CTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\(1 downto 0),
      DQSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\(1 downto 0),
      DTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\(1 downto 0),
      ENCALIBPHY(1 downto 0) => B"00",
      FINEENABLE => '0',
      FINEINC => '1',
      FINEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\,
      FREQREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\,
      MEMREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\,
      OCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      OCLKDELAYED => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out_OCLKDELAYED_UNCONNECTED\,
      OCLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      OSERDESRST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      PHASEREFCLK => '0',
      RDENABLE => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/po_rd_enable\,
      RST => '1',
      SELFINEOCLKDELAY => '0',
      SYNCIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\,
      SYSCLK => clk
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo\: unisim.vcomponents.OUT_FIFO
    generic map(
      ALMOST_EMPTY_VALUE => 1,
      ALMOST_FULL_VALUE => 1,
      ARRAY_MODE => "ARRAY_MODE_4_X_4",
      OUTPUT_DISABLE => "TRUE",
      SYNCHRONOUS_MODE => "FALSE"
    )
        port map (
      ALMOSTEMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\,
      ALMOSTFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\,
      D0(7 downto 0) => B"00000000",
      D1(7 downto 0) => B"00000000",
      D2(7 downto 0) => B"00001111",
      D3(7 downto 0) => B"00001111",
      D4(7 downto 0) => B"00000000",
      D5(7 downto 0) => B"00000000",
      D6(7 downto 0) => B"00000000",
      D7(7 downto 0) => B"00000000",
      D8(7 downto 0) => B"00000000",
      D9(7 downto 0) => B"00000000",
      EMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\,
      FULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_FULL_UNCONNECTED\,
      Q0(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_Q0_UNCONNECTED\(3 downto 0),
      Q1(3 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo_Q1_UNCONNECTED\(3 downto 0),
      Q2(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q2\(3 downto 0),
      Q3(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q3\(3 downto 0),
      Q4(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q4\(3 downto 0),
      Q5(7 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(7 downto 0),
      Q6(7 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(7 downto 0),
      Q7(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q7\(3 downto 0),
      Q8(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q8\(3 downto 0),
      Q9(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q9\(3 downto 0),
      RDCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      RDEN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/po_rd_enable\,
      RESET => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      WRCLK => clk,
      WREN => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(4),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(5),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(6),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(7),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(58),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(4),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(5),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(6),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(7),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(59),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q2\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q2\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q2\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q2\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(50),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q3\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q3\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q3\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q3\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(51),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q4\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q4\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q4\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q4\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(52),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q5\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(53),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q6\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(54),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q7\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q7\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q7\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q7\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(55),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q8\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q8\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q8\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q8\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(56),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q9\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q9\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q9\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/of_q9\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(57),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out\: unisim.vcomponents.PHASER_OUT_PHY
    generic map(
      CLKOUT_DIV => 2,
      COARSE_BYPASS => "FALSE",
      COARSE_DELAY => 0,
      DATA_CTL_N => "TRUE",
      DATA_RD_CYCLES => "FALSE",
      FINE_DELAY => 60,
      IS_RST_INVERTED => '0',
      MEMREFCLK_PERIOD => 2.221667,
      OCLKDELAY_INV => "TRUE",
      OCLK_DELAY => 1,
      OUTPUT_CLK_SRC => "DELAYED_REF",
      PHASEREFCLK_PERIOD => 2.222000,
      PO => B"111",
      REFCLK_PERIOD => 2.222000,
      SYNC_IN_DIV_RST => "TRUE"
    )
        port map (
      BURSTPENDINGPHY => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i_n_23\,
      COARSEENABLE => '0',
      COARSEINC => '1',
      COARSEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COARSEOVERFLOW_UNCONNECTED\,
      COUNTERLOADEN => '0',
      COUNTERLOADVAL(8 downto 0) => B"000000000",
      COUNTERREADEN => '1',
      COUNTERREADVAL(8 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_COUNTERREADVAL_UNCONNECTED\(8 downto 0),
      CTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_CTSBUS_UNCONNECTED\(1 downto 0),
      DQSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DQSBUS_UNCONNECTED\(1 downto 0),
      DTSBUS(1 downto 0) => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_DTSBUS_UNCONNECTED\(1 downto 0),
      ENCALIBPHY(1 downto 0) => B"00",
      FINEENABLE => '0',
      FINEINC => '1',
      FINEOVERFLOW => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_FINEOVERFLOW_UNCONNECTED\,
      FREQREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/freq_refclk\,
      MEMREFCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/mem_refclk\,
      OCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      OCLKDELAYED => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out_OCLKDELAYED_UNCONNECTED\,
      OCLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      OSERDESRST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      PHASEREFCLK => '0',
      RDENABLE => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/po_rd_enable\,
      RST => '1',
      SELFINEOCLKDELAY => '0',
      SYNCIN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/sync_pulse\,
      SYSCLK => clk
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo\: unisim.vcomponents.OUT_FIFO
    generic map(
      ALMOST_EMPTY_VALUE => 1,
      ALMOST_FULL_VALUE => 1,
      ARRAY_MODE => "ARRAY_MODE_4_X_4",
      OUTPUT_DISABLE => "TRUE",
      SYNCHRONOUS_MODE => "FALSE"
    )
        port map (
      ALMOSTEMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTEMPTY_UNCONNECTED\,
      ALMOSTFULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_ALMOSTFULL_UNCONNECTED\,
      D0(7 downto 0) => B"00000000",
      D1(7 downto 0) => B"00000000",
      D2(7 downto 0) => B"00000000",
      D3(7 downto 0) => B"00000000",
      D4(7 downto 0) => B"00000000",
      D5(7 downto 0) => B"00000000",
      D6(7 downto 0) => B"00000000",
      D7(7 downto 0) => B"00000000",
      D8(7 downto 0) => B"00000000",
      D9(7 downto 0) => B"00000000",
      EMPTY => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_EMPTY_UNCONNECTED\,
      FULL => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo_FULL_UNCONNECTED\,
      Q0(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q0\(3 downto 0),
      Q1(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(3 downto 0),
      Q2(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(3 downto 0),
      Q3(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(3 downto 0),
      Q4(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(3 downto 0),
      Q5(7 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(7 downto 0),
      Q6(7 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(7 downto 0),
      Q7(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(3 downto 0),
      Q8(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(3 downto 0),
      Q9(3 downto 0) => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(3 downto 0),
      RDCLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      RDEN => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/po_rd_enable\,
      RESET => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      WRCLK => clk,
      WREN => '0'
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q0\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q0\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q0\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q0\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(72),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[0].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(4),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(5),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(6),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(7),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(82),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[10].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(4),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(5),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(6),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(7),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(83),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[11].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q1\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(73),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[1].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q2\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(74),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[2].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q3\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(75),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[3].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q4\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(76),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[4].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q5\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(77),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[5].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q6\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(78),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[6].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q7\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(79),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[7].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q8\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(80),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[8].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "DDR",
      DATA_WIDTH => 4,
      INIT_OQ => '1',
      INIT_TQ => '1',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '1',
      SRVAL_TQ => '1',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 4
    )
        port map (
      CLK => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clk\,
      CLKDIV => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/oserdes_clkdiv\,
      D1 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(0),
      D2 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(1),
      D3 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(2),
      D4 => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/of_q9\(3),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_OFB_UNCONNECTED\,
      OQ => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/O\(81),
      RST => \u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/os_rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEIN_UNCONNECTED\,
      TBYTEOUT => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TBYTEOUT_UNCONNECTED\,
      TCE => '1',
      TFB => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TFB_UNCONNECTED\,
      TQ => \NLW_u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/qdr_rld_byte_group_io/o_serdesd_[9].gen_oserdes_uni.gen_oserdes_uni_notri.oserdes_d_i_TQ_UNCONNECTED\
    );
\u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS_V.INC_COUNTS_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '1',
      Q => \u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS\(8),
      R => '0'
    );
end STRUCTURE;
