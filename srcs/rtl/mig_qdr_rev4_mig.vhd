--*****************************************************************************
-- (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
--*****************************************************************************
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor             : Xilinx
-- \   \   \/     Version            : 4.0
--  \   \         Application        : MIG
--  /   /         Filename           : mig_qdr_rev4_mig.vhd
-- /___/   /\     Date Last Modified : $Date: 2011/06/02 08:35:03 $
-- \   \  /  \    Date Created       : Mon Aug 27 2012
--  \___\/\___\
--
-- Device           : 7 Series
-- Design Name      : QDRII+ SDRAM
-- Purpose          :
--   Top-level  module. This module can be instantiated in the
--   system and interconnect as shown in user design wrapper file (user top module).
--   In addition to the memory controller, the module instantiates:
--     1. Clock generation/distribution, reset logic
--     2. IDELAY control block
--     3. Debug logic
-- Reference        :
-- Revision History :
--*****************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mig_qdr_rev4_mig is
  generic
  (

  MEM_TYPE              : string := "QDR2PLUS";
                                    -- # of CK/CK# outputs to memory.
  DATA_WIDTH            : integer := 18;
                                    -- # of DQ (data)
  BW_WIDTH              : integer := 2;
                                    -- # of byte writes (data_width/9)
  ADDR_WIDTH            : integer := 20;
                                    -- Address Width
  NUM_DEVICES           : integer := 1;
                                    -- # of memory components connected
  MEM_RD_LATENCY        : real := 2.5;
                                    -- Value of Memory part read latency
  CPT_CLK_CQ_ONLY       : string := "TRUE";
                                    -- whether CQ and its inverse are used for the data capture
  INTER_BANK_SKEW       : integer := 0;
                                    -- Clock skew between two adjacent banks
  PHY_CONTROL_MASTER_BANK : integer := 0;
                                    -- The bank index where master PHY_CONTROL resides,
                                    -- equal to the PLL residing bank

  --***************************************************************************
  -- The following parameters are mode register settings
  --***************************************************************************
  BURST_LEN             : integer := 4;
                                    -- Burst Length of the design (4 or 2).
  FIXED_LATENCY_MODE    : integer := 0;
                                    -- Enable Fixed Latency
  PHY_LATENCY           : integer := 0;
                                    -- Value for Fixed Latency Mode
                                    -- Expected Latency
  
  --***************************************************************************
  -- The following parameters are multiplier and divisor factors for MMCM.
  -- Based on the selected design frequency these parameters vary.
  --***************************************************************************
  CLKIN_PERIOD          : integer := 4999;
                          -- Input Clock Period
  CLKFBOUT_MULT         : integer := 4;
                          -- write PLL VCO multiplier
  DIVCLK_DIVIDE         : integer := 1;
                          -- write PLL VCO divisor
  CLKOUT0_DIVIDE        : integer := 2;
                          -- VCO output divisor for PLL output clock (CLKOUT0)
  CLKOUT1_DIVIDE        : integer := 4;
                          -- VCO output divisor for PLL output clock (CLKOUT1)
  CLKOUT2_DIVIDE        : integer := 64;
                          -- VCO output divisor for PLL output clock (CLKOUT2)
  CLKOUT3_DIVIDE        : integer := 8;
                          -- VCO output divisor for PLL output clock (CLKOUT3)
  MMCM_VCO              : integer := 800;
                          -- Max Freq (MHz) of MMCM VCO
  MMCM_MULT_F           : integer := 8;
                          -- write MMCM VCO multiplier
  MMCM_DIVCLK_DIVIDE    : integer := 1;
                          -- write MMCM VCO divisor

  --***************************************************************************
  -- Simulation parameters
  --***************************************************************************
  SIM_BYPASS_INIT_CAL   : string := "OFF";
                                    -- # = "OFF" -  Complete memory init &
                                    --              calibration sequence
                                    -- # = "FAST" - Skip memory init & use
                                    --              abbreviated calib sequence
  SIMULATION            : string := "FALSE";
                                    -- Should be TRUE during design simulations and
                                    -- FALSE during implementations

  --***************************************************************************
  -- The following parameters varies based on the pin out entered in MIG GUI.
  -- Do not change any of these parameters directly by editing the RTL.
  -- Any changes required should be done through GUI and the design regenerated.
  --***************************************************************************
  BYTE_LANES_B0         : std_logic_vector(3 downto 0) := "1100";
                                    -- Byte lanes used in an IO column.
  BYTE_LANES_B1         : std_logic_vector(3 downto 0) := "0101";
                                    -- Byte lanes used in an IO column.
  BYTE_LANES_B2         : std_logic_vector(3 downto 0) := "1100";
                                    -- Byte lanes used in an IO column.
  BYTE_LANES_B3         : std_logic_vector(3 downto 0) := "0000";
                                    -- Byte lanes used in an IO column.
  BYTE_LANES_B4         : std_logic_vector(3 downto 0) := "0000";
                                    -- Byte lanes used in an IO column.
  DATA_CTL_B0           : std_logic_vector(3 downto 0) := "1100";
                                    -- Indicates Byte lane is data byte lane
                                    -- or control Byte lane. '1' in a bit
                                    -- position indicates a data byte lane and
                                    -- a '0' indicates a control byte lane
  DATA_CTL_B1           : std_logic_vector(3 downto 0) := "0000";
                                    -- Indicates Byte lane is data byte lane
                                    -- or control Byte lane. '1' in a bit
                                    -- position indicates a data byte lane and
                                    -- a '0' indicates a control byte lane
  DATA_CTL_B2           : std_logic_vector(3 downto 0) := "1100";
                                    -- Indicates Byte lane is data byte lane
                                    -- or control Byte lane. '1' in a bit
                                    -- position indicates a data byte lane and
                                    -- a '0' indicates a control byte lane
  DATA_CTL_B3           : std_logic_vector(3 downto 0) := "0000";
                                    -- Indicates Byte lane is data byte lane
                                    -- or control Byte lane. '1' in a bit
                                    -- position indicates a data byte lane and
                                    -- a '0' indicates a control byte lane
  DATA_CTL_B4           : std_logic_vector(3 downto 0) := "0000";
                                    -- Indicates Byte lane is data byte lane
                                    -- or control Byte lane. '1' in a bit
                                    -- position indicates a data byte lane and
                                    -- a '0' indicates a control byte lane

  -- this parameter specifies the location of the capture clock with respect
  -- to read data.
  -- Each byte refers to the information needed for data capture in the corresponding byte lane
  -- Lower order nibble - is either 4'h1 or 4'h2. This refers to the capture clock in T1 or T2 byte lane
  -- Higher order nibble - 4'h0 refers to clock present in the bank below the read data,
  --                       4'h1 refers to clock present in the same bank as the read data,
  --                       4'h2 refers to clock present in the bank above the read data.
  CPT_CLK_SEL_B0       : std_logic_vector(31 downto 0) := X"00_00_00_00";
  CPT_CLK_SEL_B1       : std_logic_vector(31 downto 0) := X"00_00_00_00";
  CPT_CLK_SEL_B2       : std_logic_vector(31 downto 0) := X"11_11_00_00";

  PHY_0_BITLANES       : std_logic_vector(47 downto 0) := X"3FE_FFE_000_000";
                                    -- The bits used inside the Bank0 out of 48 pins.
  PHY_1_BITLANES       : std_logic_vector(47 downto 0) := X"000_FFF_000_FFC";
                                    -- The bits used inside the Bank1 out of 48 pins.
  PHY_2_BITLANES       : std_logic_vector(47 downto 0) := X"FF8_FF1_000_000";
                                    -- The bits used inside the Bank2 out of 48 pins.
  PHY_3_BITLANES       : std_logic_vector(47 downto 0) := X"000_000_000_000";
                                    -- The bits used inside the Bank3 out of 48 pins.
  PHY_4_BITLANES       : std_logic_vector(47 downto 0) := X"000_000_000_000";
                                    -- The bits used inside the Bank4 out of 48 pins.

  -- Differentiates the INPUT and OUTPUT bytelates (1-input, 0-output)
  BYTE_GROUP_TYPE_B0   : std_logic_vector(3 downto 0) := "0000";
  BYTE_GROUP_TYPE_B1   : std_logic_vector(3 downto 0) := "0000";
  BYTE_GROUP_TYPE_B2   : std_logic_vector(3 downto 0) := "1100";
  BYTE_GROUP_TYPE_B3   : std_logic_vector(3 downto 0) := "0000";
  BYTE_GROUP_TYPE_B4   : std_logic_vector(3 downto 0) := "0000";

  -- mapping for K/K# clocks. This parameter needs to have an 8-bit value per component
  -- since the phy drives a K/K# clock pair to each memory it interfaces to. A 3 component
  -- interface is supported for now. This parameter needs to be used in conjunction with
  -- NUM_DEVICES parameter which provides information on the number. of components being
  -- interfaced to.
  -- the 8 bit for each component is defined as follows:
  -- [7:4] - bank number ; [3:0] - byte lane number
  K_MAP : std_logic_vector(47 downto 0) := X"00_00_00_00_00_03";

  -- mapping for CQ/CQ# clocks. This parameter needs to have an 4-bit value per component
  -- since the phy drives a CQ/CQ# clock pair to each memory it interfaces to. A 3 component
  -- interface is supported for now. This parameter needs to be used in conjunction with
  -- NUM_DEVICES parameter which provides information on the number. of components being
  -- interfaced to.
  -- the 4 bit for each component is defined as follows:
  -- [3:0] - bank number
  CQ_MAP : std_logic_vector(47 downto 0) := X"00_00_00_00_00_21";

  --**********************************************************************************************
  -- Each of the following parameter contains the byte_lane and bit position information for
  -- the address/control, data write and data read signals. Each bit has 12 bits and the details are
  -- [3:0] - Bit position within a byte lane .
  -- [7:4] - Byte lane position within a bank. [5:4] have the byte lane position and others reserved.
  -- [11:8] - Bank position. [10:8] have the bank position. [11] tied to zero .
  --**********************************************************************************************

  -- Mapping for address and control signals.

  RD_MAP : std_logic_vector(11 downto 0) := X"102";      -- Mapping for read enable signal
  WR_MAP : std_logic_vector(11 downto 0) := X"103";      -- Mapping for write enable signal

  -- Mapping for address signals. Supports upto 22 bits of address bits (22*12)
  ADD_MAP : std_logic_vector(263 downto 0) := X"000_000_129_128_127_126_12B_12A_125_124_123_122_121_120_109_108_107_106_10B_10A_105_104";

  -- Mapping for the byte lanes used for address/control signals. Supports a maximum of 3 banks.
  ADDR_CTL_MAP : std_logic_vector(31 downto 0) := X"00_00_10_12";

  -- Mapping for data WRITE signals

  -- Mapping for data write bytes (9*12)
  D0_MAP  : std_logic_vector(107 downto 0) := X"031_032_033_034_035_036_037_038_039"; --byte 0
  D1_MAP  : std_logic_vector(107 downto 0) := X"021_022_023_024_025_02A_02B_026_027"; --byte 1
  D2_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 2
  D3_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 3
  D4_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 4
  D5_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 5
  D6_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 6
  D7_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 7

  -- Mapping for byte write signals (8*12)
  BW_MAP : std_logic_vector(83 downto 0) := X"000_000_000_000_000_028_029";

  -- Mapping for data READ signals

  -- Mapping for data read bytes (9*12)
  Q0_MAP  : std_logic_vector(107 downto 0) := X"233_234_235_23A_23B_236_237_238_239"; --byte 0
  Q1_MAP  : std_logic_vector(107 downto 0) := X"220_224_225_22A_22B_226_227_228_229"; --byte 1
  Q2_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 2
  Q3_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 3
  Q4_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 4
  Q5_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 5
  Q6_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 6
  Q7_MAP  : std_logic_vector(107 downto 0) := X"000_000_000_000_000_000_000_000_000"; --byte 7

  --***************************************************************************
  -- IODELAY and PHY related parameters
  --***************************************************************************
  IODELAY_HP_MODE      : string := "ON";
                                    -- to phy_top
  IBUF_LPWR_MODE       : string := "OFF";
                                    -- to phy_top
  TCQ                  : integer := 100;
    IODELAY_GRP0          : string := "MIG_QDR_REV4_IODELAY_MIG0";
                                    -- It is associated to a set of IODELAYs with
                                    -- an IDELAYCTRL that have same IODELAY CONTROLLER
                                    -- clock frequency (200MHz).
  IODELAY_GRP1          : string := "MIG_QDR_REV4_IODELAY_MIG1";
                                    -- It is associated to a set of IODELAYs with
                                    -- an IDELAYCTRL that have same IODELAY CONTROLLER
                                    -- clock frequency (300MHz/400MHz).
  SYSCLK_TYPE           : string := "DIFFERENTIAL";
                                    -- System clock type DIFFERENTIAL, SINGLE_ENDED,
                                    -- NO_BUFFER
  REFCLK_TYPE           : string := "DIFFERENTIAL";
                                    -- Reference clock type DIFFERENTIAL, SINGLE_ENDED,
                                    -- NO_BUFFER, USE_SYSTEM_CLOCK
   SYS_RST_PORT          : string  := "TRUE";
                                     -- "TRUE" - if pin is selected for sys_rst
                                     --          and IBUF will be instantiated.
                                     -- "FALSE" - if pin is not selected for sys_rst
     
  -- Number of taps in target IDELAY
  DEVICE_TAPS : integer := 32;

  
  --***************************************************************************
  -- Referece clock frequency parameters
  --***************************************************************************
  REFCLK_FREQ           : real := 200.0;
                                    -- IODELAYCTRL reference clock frequency
  DIFF_TERM_REFCLK      : string := "TRUE";
                                    -- Differential Termination for idelay
                                    -- reference clock input pins
     
  --***************************************************************************
  -- System clock frequency parameters
  --***************************************************************************
  CLK_PERIOD            : integer := 5000;
                                    -- memory tCK paramter.
                                    -- # = Clock Period in pS.
  nCK_PER_CLK           : integer := 2;
                                    -- # of memory CKs per fabric CLK
  DIFF_TERM_SYSCLK      : string := "FALSE";
                                    -- Differential Termination for System
                                    -- clock input pins

  

  --***************************************************************************
  -- Wait period for the read strobe (CQ) to become stable
  --***************************************************************************
    CLK_STABLE            : integer := (20*1000*1000/(5000*2)) + 1;
                                    -- Cycles till CQ/CQ# is stable

  --***************************************************************************
  -- Debug parameter
  --***************************************************************************
  DEBUG_PORT            : string := "OFF";
                                    -- # = "ON" Enable debug signals/controls.
                                    --   = "OFF" Disable debug signals/controls.
     
   RST_ACT_LOW           : integer := 1
                                     -- =1 for active low reset,
                                     -- =0 for active high.
   );
  port
  (
  -- Differential system clocks
  sys_clk_p       : in  std_logic;
  sys_clk_n       : in  std_logic;  -- differential iodelayctrl clk (reference clock)
  clk_ref_p       : in  std_logic;
  clk_ref_n       : in  std_logic;
  --Memory Interface Ports
  qdriip_cq_p     : in  std_logic_vector(NUM_DEVICES-1 downto 0);
  qdriip_cq_n     : in  std_logic_vector(NUM_DEVICES-1 downto 0);
  qdriip_q        : in  std_logic_vector(DATA_WIDTH-1 downto 0);
  qdriip_k_p      : inout std_logic_vector(NUM_DEVICES-1 downto 0);
  qdriip_k_n      : inout std_logic_vector(NUM_DEVICES-1 downto 0);
  qdriip_d        : out std_logic_vector(DATA_WIDTH-1 downto 0);
  qdriip_sa       : out std_logic_vector(ADDR_WIDTH-1 downto 0);
  qdriip_w_n      : out std_logic;
  qdriip_r_n      : out std_logic;
  qdriip_bw_n     : out std_logic_vector(BW_WIDTH-1 downto 0);
  qdriip_dll_off_n: out std_logic;
  
    -- User Interface signals of Channel-0
  app_wr_cmd0   : in  std_logic;
  app_wr_addr0  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
  app_wr_data0  : in  std_logic_vector(DATA_WIDTH*BURST_LEN-1 downto 0);
  app_wr_bw_n0  : in  std_logic_vector(BW_WIDTH*BURST_LEN-1 downto 0);
  app_rd_cmd0   : in  std_logic;
  app_rd_addr0  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
  app_rd_valid0 : out std_logic;
  app_rd_data0  : out std_logic_vector(DATA_WIDTH*BURST_LEN-1 downto 0);

  -- User Interface signals of Channel-1. It is useful only for BL2 designs.
  -- All inputs of Channel-1 can be grounded for BL4 designs.
  app_wr_cmd1   : in  std_logic;
  app_wr_addr1  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
  app_wr_data1  : in  std_logic_vector(DATA_WIDTH*2-1 downto 0);
  app_wr_bw_n1  : in  std_logic_vector(BW_WIDTH*2-1 downto 0);
  app_rd_cmd1   : in  std_logic;
  app_rd_addr1  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
  app_rd_valid1 : out std_logic;
  app_rd_data1  : out std_logic_vector(DATA_WIDTH*2-1 downto 0);

  clk           : out std_logic;
  rst_clk       : out std_logic;
  
    init_calib_complete : out std_logic;
     

   -- System reset - Default polarity of sys_rst pin is Active Low.
   -- System reset polarity will change based on the option 
   -- selected in GUI.
   sys_rst         : in std_logic
 );
end entity mig_qdr_rev4_mig;

architecture arch_mig_qdr_rev4_mig of mig_qdr_rev4_mig is


  -- clogb2 function - ceiling of log base 2
  function clogb2 (size : integer) return integer is
    variable base : integer := 0;
    variable inp : integer := 0;
  begin
    inp := size;
    while (inp > 0) loop
      inp := inp/2 ;
      base := base + 1;
    end loop;
    return base;
  end function;


  constant N_DATA_LANES : integer := DATA_WIDTH / 9;
  constant TAPSPERKCLK : integer := (56*MMCM_MULT_F)/nCK_PER_CLK;
      
  -- Number of bits needed to represent DEVICE_TAPS
  constant TAP_BITS : integer := clogb2(DEVICE_TAPS - 1);
  -- Number of bits to represent number of cq/cq#'s
  constant CQ_BITS  : integer := clogb2(DATA_WIDTH/9 - 1);
  -- Number of bits needed to represent number of q's
  constant Q_BITS   : integer := clogb2(DATA_WIDTH - 1);
  

-- Start of Component declarations

  component mig_qdr_rev4
  port(

   sys_rst       : in std_logic
  );
  end component mig_qdr_rev4;

-- End of Component declarations


  component mig_7series_v4_0_iodelay_ctrl is
    generic(
      TCQ              : integer;
      IODELAY_GRP0     : string;
      IODELAY_GRP1     : string;
      REFCLK_TYPE      : string;
      SYSCLK_TYPE      : string;
      SYS_RST_PORT     : string;
      RST_ACT_LOW      : integer;
      DIFF_TERM_REFCLK : string
      );
    port (
      clk_ref_p        : in  std_logic;
      clk_ref_n        : in  std_logic;
      clk_ref_i        : in  std_logic;
      sys_rst          : in  std_logic;
      clk_ref          : out std_logic_vector(1 downto 0);
      sys_rst_o        : out std_logic;
      iodelay_ctrl_rdy : out std_logic_vector(1 downto 0)
   );
  end component mig_7series_v4_0_iodelay_ctrl;

  component mig_7series_v4_0_clk_ibuf is
    generic (
      SYSCLK_TYPE      : string;
      DIFF_TERM_SYSCLK : string
      );
    port (
      sys_clk_p   : in  std_logic;
      sys_clk_n   : in  std_logic;
      sys_clk_i   : in  std_logic;
      mmcm_clk    : out std_logic
      );
  end component mig_7series_v4_0_clk_ibuf;

  component mig_7series_v4_0_infrastructure is
    generic (
      SIMULATION      : string := "FALSE";
      TCQ             : integer;
      CLKIN_PERIOD    : integer;
      nCK_PER_CLK     : integer;
      SYSCLK_TYPE     : string;
      UI_EXTRA_CLOCKS : string := "FALSE";
      CLKFBOUT_MULT   : integer;
      DIVCLK_DIVIDE   : integer;
      CLKOUT0_PHASE   : real;
      CLKOUT0_DIVIDE  : integer;
      CLKOUT1_DIVIDE  : integer;
      CLKOUT2_DIVIDE  : integer;
      CLKOUT3_DIVIDE  : integer;
      MMCM_VCO            : integer;
      MMCM_MULT_F         : integer;
      MMCM_DIVCLK_DIVIDE  : integer;
      MMCM_CLKOUT0_EN     : string := "FALSE";
      MMCM_CLKOUT1_EN     : string := "FALSE";
      MMCM_CLKOUT2_EN     : string := "FALSE";
      MMCM_CLKOUT3_EN     : string := "FALSE";
      MMCM_CLKOUT4_EN     : string := "FALSE";
      MMCM_CLKOUT0_DIVIDE : integer := 1;
      MMCM_CLKOUT1_DIVIDE : integer := 1;
      MMCM_CLKOUT2_DIVIDE : integer := 1;
      MMCM_CLKOUT3_DIVIDE : integer := 1;
      MMCM_CLKOUT4_DIVIDE : integer := 1;
      RST_ACT_LOW         : integer;
      tCK                 : integer;
      MEM_TYPE            : string
      );
    port (
      mmcm_clk          : in  std_logic;
      sys_rst           : in  std_logic;
      iodelay_ctrl_rdy  : in  std_logic_vector(1 downto 0);
      psen              : in  std_logic;
      psincdec          : in  std_logic;
      clk               : out std_logic;
      clk_div2          : out std_logic;
      rst_div2          : out std_logic;
      mem_refclk        : out std_logic;
      freq_refclk       : out std_logic;
      sync_pulse        : out std_logic;
      mmcm_ps_clk       : out std_logic;
      poc_sample_pd     : out std_logic;
      iddr_rst          : out std_logic;
      psdone            : out std_logic;
--      auxout_clk        : out std_logic;
      ui_addn_clk_0     : out std_logic;
      ui_addn_clk_1     : out std_logic;
      ui_addn_clk_2     : out std_logic;
      ui_addn_clk_3     : out std_logic;
      ui_addn_clk_4     : out std_logic;
      pll_locked        : out std_logic;
      mmcm_locked       : out std_logic;
      rstdiv0           : out std_logic;
      rst_phaser_ref    : out std_logic;
      ref_dll_lock      : in  std_logic
   );
  end component mig_7series_v4_0_infrastructure;
      
  component mig_7series_v4_0_qdr_phy_top is
    generic (
      MEMORY_IO_DIR       : string  := "UNIDIR";
      BUFG_FOR_OUTPUTS    : string  := "OFF";
      PO_COARSE_BYPASS    : string  := "FALSE";
      SIMULATION          : string  := "FALSE";
      HW_SIM              : string  := "NONE";
      CPT_CLK_CQ_ONLY     : string  := "TRUE";
      --CMPLX_RDCAL_EN      : string  := "FALSE";
      ADDR_WIDTH          : integer := 19;
      DATA_WIDTH          : integer := 72;
      BW_WIDTH            : integer := 8;
      BURST_LEN           : integer := 4;
      CLK_PERIOD          : integer := 2500;
      nCK_PER_CLK         : integer := 2;
      REFCLK_FREQ         : real    := 200.0;
      NUM_DEVICES         : integer := 2;
      N_DATA_LANES        : integer := 4;
      FIXED_LATENCY_MODE  : integer := 0;
      PHY_LATENCY         : integer := 0;
      MEM_RD_LATENCY      : real    := 2.0;
      CLK_STABLE          : integer := 20;
      IODELAY_GRP         : string  := "IODELAY_MIG";
      MEM_TYPE            : string  := "QDR2PLUS";
      -- RST_ACT_LOW         : integer := 1;
      SIM_BYPASS_INIT_CAL : string  := "OFF";
      IBUF_LPWR_MODE      : string  := "OFF";
      IODELAY_HP_MODE     : string  := "ON";
      CQ_BITS             : integer := 1;
      Q_BITS              : integer := 7;
      DEVICE_TAPS         : integer := 32;
      TAP_BITS            : integer := 5;
      BUFMR_DELAY         : integer := 500;
      MASTER_PHY_CTL      : integer := 0;
      PLL_LOC             : integer := 2;
      INTER_BANK_SKEW     : integer := 0;
      TAPSPERKCLK         : integer := 56;
      DATA_CTL_B0         : std_logic_vector(3 downto 0) := X"f";
      DATA_CTL_B1         : std_logic_vector(3 downto 0) := X"f";
      DATA_CTL_B2         : std_logic_vector(3 downto 0) := X"c";
      DATA_CTL_B3         : std_logic_vector(3 downto 0) := X"f";
      DATA_CTL_B4         : std_logic_vector(3 downto 0) := X"f";
      CPT_CLK_SEL_B0      : std_logic_vector(31 downto 0) := X"12121111";
      CPT_CLK_SEL_B1      : std_logic_vector(31 downto 0) := X"12121111";
      CPT_CLK_SEL_B2      : std_logic_vector(31 downto 0) := X"12121111";
      BYTE_LANES_B0       : std_logic_vector(3 downto 0) := "1111";
      BYTE_LANES_B1       : std_logic_vector(3 downto 0) := "1111";
      BYTE_LANES_B2       : std_logic_vector(3 downto 0) := "0011";
      BYTE_LANES_B3       : std_logic_vector(3 downto 0) := "0000";
      BYTE_LANES_B4       : std_logic_vector(3 downto 0) := "0000";
      BYTE_GROUP_TYPE_B0  : std_logic_vector(3 downto 0) := "1111";
      BYTE_GROUP_TYPE_B1  : std_logic_vector(3 downto 0) := "0000";
      BYTE_GROUP_TYPE_B2  : std_logic_vector(3 downto 0) := "0000";
      BYTE_GROUP_TYPE_B3  : std_logic_vector(3 downto 0) := "0000";
      BYTE_GROUP_TYPE_B4  : std_logic_vector(3 downto 0) := "0000";
      K_MAP               : std_logic_vector(47 downto 0) := X"000000000011";
      CQ_MAP              : std_logic_vector(47 downto 0) := X"000000000001";
      RD_MAP              : std_logic_vector(11 downto 0) := X"218";
      WR_MAP              : std_logic_vector(11 downto 0) := X"219";
      ADD_MAP             : std_logic_vector(263 downto 0) := X"21721621B21A21521421321221121020920820720620B20A205204203202201200";
      ADDR_CTL_MAP        : std_logic_vector(31 downto 0) := X"00002120";
      D0_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      D1_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      D2_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      D3_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      D4_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      D5_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      D6_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      D7_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      BW_MAP              : std_logic_vector(83 downto 0) := X"006005004003002001000";
      Q0_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      Q1_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      Q2_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      Q3_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      Q4_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      Q5_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      Q6_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      Q7_MAP              : std_logic_vector(107 downto 0) := X"008007006005004003002001000";
      BIT_LANES_B0        : std_logic_vector(47 downto 0) := X"1ff3fd1ff1ff";
      BIT_LANES_B1        : std_logic_vector(47 downto 0) := X"000000000000";
      BIT_LANES_B2        : std_logic_vector(47 downto 0) := X"000000000000";
      BIT_LANES_B3        : std_logic_vector(47 downto 0) := X"000000000000";
      BIT_LANES_B4        : std_logic_vector(47 downto 0) := X"000000000000";
      DEBUG_PORT          : string  :=  "ON";
      TCQ                 : integer :=  100
    );
    port (
      clk                      : in  std_logic;
      rst                      : in  std_logic;
      clk_ref                  : in  std_logic;
      clk_mem                  : in  std_logic;
      freq_refclk              : in  std_logic;
      pll_lock                 : in  std_logic;
      sync_pulse               : in  std_logic;
      psdone                   : in  std_logic;
      psen                     : out std_logic;
      psincdec                 : out std_logic;
      poc_sample_pd            : in  std_logic;
      ref_dll_lock             : out std_logic;
      rst_phaser_ref           : in  std_logic;
      mmcm_fshift_clk          : in  std_logic;
      rst_clk                  : out std_logic;
      iddr_rst                 : in  std_logic;
      wr_cmd0                  : in  std_logic;
      wr_cmd1                  : in  std_logic;
      wr_addr0                 : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
      wr_addr1                 : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
      rd_cmd0                  : in  std_logic;
      rd_cmd1                  : in  std_logic;
      rd_addr0                 : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
      rd_addr1                 : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
      wr_data0                 : in  std_logic_vector((DATA_WIDTH*2)-1 downto 0);
      wr_data1                 : in  std_logic_vector((DATA_WIDTH*2)-1 downto 0);
      wr_bw_n0                 : in  std_logic_vector((BW_WIDTH*2)-1 downto 0);
      wr_bw_n1                 : in  std_logic_vector((BW_WIDTH*2)-1 downto 0);
      init_calib_complete      : out std_logic;
      error_adj_latency        : out std_logic;
      rd_valid0                : out std_logic;
      rd_valid1                : out std_logic;
      rd_data0                 : out std_logic_vector((DATA_WIDTH*2)-1 downto 0);
      rd_data1                 : out std_logic_vector((DATA_WIDTH*2)-1 downto 0);
      qdr_dll_off_n            : out std_logic;
      qdr_k_p                  : inout std_logic_vector(NUM_DEVICES-1 downto 0);
      qdr_k_n                  : inout std_logic_vector(NUM_DEVICES-1 downto 0);
      qdr_sa                   : out std_logic_vector(ADDR_WIDTH-1 downto 0);
      qdr_w_n                  : out std_logic;
      qdr_r_n                  : out std_logic;
      qdr_bw_n                 : out std_logic_vector(BW_WIDTH-1 downto 0);
      qdr_d                    : out std_logic_vector(DATA_WIDTH-1 downto 0);
      qdr_q                    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
      qdr_cq_p                 : in  std_logic_vector(NUM_DEVICES-1 downto 0);
      qdr_cq_n                 : in  std_logic_vector(NUM_DEVICES-1 downto 0);
      dbg_phy_status           : out std_logic_vector(7 downto 0);
      dbg_po_counter_read_val  : out std_logic_vector(8 downto 0);
      dbg_pi_counter_read_val  : out std_logic_vector(5 downto 0);
      dbg_phy_init_wr_only     : in  std_logic;
      dbg_phy_init_rd_only     : in  std_logic;
      dbg_po_stg3_sel          : in  std_logic;
      dbg_po_sel               : in  std_logic;
      dbg_byte_sel             : in  std_logic_vector(CQ_BITS-1 downto 0);
      dbg_bit_sel              : in  std_logic_vector(Q_BITS-1 downto 0);
      dbg_pi_f_inc             : in  std_logic;
      dbg_pi_f_dec             : in  std_logic;
      dbg_po_f_inc             : in  std_logic;
      dbg_po_f_dec             : in  std_logic;
      dbg_idel_up_all          : in  std_logic;
      dbg_idel_down_all        : in  std_logic;
      dbg_idel_up              : in  std_logic;
      dbg_idel_down            : in  std_logic;
      dbg_idel_tap_cnt         : out std_logic_vector((TAP_BITS*DATA_WIDTH)-1 downto 0);
      dbg_idel_tap_cnt_sel     : out std_logic_vector(TAP_BITS-1 downto 0);
      dbg_select_rdata         : out std_logic_vector(2 downto 0);
      dbg_align_rd0_r          : out std_logic_vector(8 downto 0);
      dbg_align_rd1_r          : out std_logic_vector(8 downto 0);
      dbg_align_fd0_r          : out std_logic_vector(8 downto 0);
      dbg_align_fd1_r          : out std_logic_vector(8 downto 0);
      dbg_align_rd0            : out std_logic_vector(DATA_WIDTH-1 downto 0);
      dbg_align_rd1            : out std_logic_vector(DATA_WIDTH-1 downto 0);
      dbg_align_fd0            : out std_logic_vector(DATA_WIDTH-1 downto 0);
      dbg_align_fd1            : out std_logic_vector(DATA_WIDTH-1 downto 0);
      dbg_mc_phy               : out std_logic_vector(255 downto 0);
      dbg_PO_read_value        : out std_logic_vector(107 downto 0);
      dbg_calib_po_tstpoint    : out std_logic_vector(47 downto 0);
      dbg_byte_sel_cnt         : out std_logic_vector(2 downto 0);
      dbg_phy_wr_cmd_n         : out std_logic_vector(1 downto 0);
      dbg_phy_addr             : out std_logic_vector((ADDR_WIDTH*4)-1 downto 0);
      dbg_phy_rd_cmd_n         : out std_logic_vector(1 downto 0);
      dbg_phy_wr_data          : out std_logic_vector((DATA_WIDTH*4)-1 downto 0);
      dbg_wr_init              : out std_logic_vector(255 downto 0);
      dbg_rd_stage1_cal        : out std_logic_vector(1023 downto 0);
      dbg_stage2_cal           : out std_logic_vector(127 downto 0);
      dbg_valid_lat            : out std_logic_vector(4 downto 0);
      dbg_inc_latency          : out std_logic_vector(N_DATA_LANES-1 downto 0);
      dbg_error_max_latency    : out std_logic_vector(N_DATA_LANES-1 downto 0);
      dbg_oclkdly_clk          : out std_logic;
      dbg_poc                  : out std_logic_vector (1023 downto 0);
      dbg_K_left_shift_right   : in std_logic_vector(5 downto 0);
      dbg_K_right_shift_left   : in std_logic_vector(5 downto 0);
      dbg_cmplx_wr_loop        : in std_logic;
      dbg_cmplx_rd_loop        : in std_logic;
      dbg_cmplx_rd_lane        : in std_logic_vector(2 downto 0)
    );
  end component mig_7series_v4_0_qdr_phy_top;
      

  -- Wire declarations
   signal clk_i : std_logic;
   signal freq_refclk  : std_logic;
   signal mem_refclk  : std_logic;
   signal pll_locked  : std_logic;
   signal sync_pulse : std_logic;
   signal rst_wr_clk : std_logic;
   signal ref_dll_lock : std_logic;
   signal rst_phaser_ref : std_logic;
   signal psen          : std_logic;
   signal psincdec      : std_logic;
   signal mmcm_ps_clk   : std_logic;
   signal poc_sample_pd : std_logic;
   signal iddr_rst      : std_logic;
   signal psdone        : std_logic;

   signal dbg_byte_sel : std_logic_vector(CQ_BITS-1 downto 0);
   signal dbg_bit_sel : std_logic_vector(Q_BITS-1 downto 0);
   signal dbg_pi_f_inc : std_logic;
   signal dbg_pi_f_dec : std_logic;
   signal dbg_po_f_inc : std_logic;
   signal dbg_po_f_dec : std_logic;
   signal dbg_idel_up_all : std_logic;
   signal dbg_idel_down_all : std_logic;
   signal dbg_idel_up : std_logic;
   signal dbg_idel_down : std_logic;
   signal dbg_idel_tap_cnt : std_logic_vector(TAP_BITS*DATA_WIDTH-1 downto 0);
   signal dbg_idel_tap_cnt_sel : std_logic_vector(TAP_BITS-1 downto 0);
   signal dbg_select_rdata : std_logic_vector(2 downto 0);

   --ChipScope Readpath Debug Signals
   signal dbg_phy_wr_cmd_n : std_logic_vector(1 downto 0);       --cs debug - wr command
   signal dbg_byte_sel_cnt : std_logic_vector(2 downto 0);
   signal dbg_phy_addr : std_logic_vector(ADDR_WIDTH*4-1 downto 0);           --cs debug - address
   signal dbg_phy_rd_cmd_n : std_logic_vector(1 downto 0);       --cs debug - rd command
   signal dbg_phy_wr_data : std_logic_vector(DATA_WIDTH*4-1 downto 0);        --cs debug - wr data
   signal dbg_phy_init_wr_only : std_logic;
   signal dbg_phy_init_rd_only : std_logic;
   signal dbg_po_counter_read_val : std_logic_vector(8 downto 0);
   signal dbg_mc_phy : std_logic_vector(255 downto 0);
   signal vio_sel_rise_chk : std_logic;

   signal dbg_cq_tapcnt : std_logic_vector(TAP_BITS*N_DATA_LANES-1 downto 0);          -- tap count for each cq
   signal dbg_cqn_tapcnt : std_logic_vector(TAP_BITS*N_DATA_LANES-1 downto 0);         -- tap count for each cq#
   signal dbg_cq_num : std_logic_vector(CQ_BITS-1 downto 0);             -- current cq/cq# being calibrated
   signal dbg_valid_lat : std_logic_vector(4 downto 0);          -- latency of the system
   signal dbg_inc_latency : std_logic_vector(N_DATA_LANES-1 downto 0);        -- increase latency for dcb
   signal dbg_dcb_din : std_logic_vector(4*DATA_WIDTH-1 downto 0);            -- dcb data in
   signal dbg_dcb_dout : std_logic_vector(4*DATA_WIDTH-1 downto 0);           -- dcb data out
   signal dbg_error_max_latency : std_logic_vector(N_DATA_LANES-1 downto 0);  -- stage 2 cal max latency error
   signal dbg_error_adj_latency : std_logic;  -- stage 2 cal latency adjustment error
   signal dbg_align_rd0 : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal dbg_align_rd1 : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal dbg_align_fd0 : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal dbg_align_fd1 : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal dbg_align_rd0_r : std_logic_vector(8 downto 0);
   signal dbg_align_rd1_r : std_logic_vector(8 downto 0);
   signal dbg_align_fd0_r : std_logic_vector(8 downto 0);
   signal dbg_align_fd1_r : std_logic_vector(8 downto 0);
   signal rd_valid0_r : std_logic;
   signal rd_valid1_r : std_logic;
   signal dbg_phy_status : std_logic_vector(7 downto 0);
   signal dbg_SM_No_Pause : std_logic;
   signal dbg_SM_en : std_logic;

   signal mux_wr_data0 : std_logic_vector((DATA_WIDTH*2)-1 downto 0);
   signal mux_wr_data1 : std_logic_vector((DATA_WIDTH*2)-1 downto 0);
   signal mux_wr_bw_n0 : std_logic_vector((BW_WIDTH*2)-1 downto 0);
   signal mux_wr_bw_n1 : std_logic_vector((BW_WIDTH*2)-1 downto 0);
   signal rd_data0 : std_logic_vector((DATA_WIDTH*2)-1 downto 0);
   signal rd_data1 : std_logic_vector((DATA_WIDTH*2)-1 downto 0);

   

   signal dbg_stage2_cal                : std_logic_vector( 127 downto 0);
   signal dbg_rd_stage1_cal             : std_logic_vector(1023 downto 0);
   signal dbg_wr_init                   : std_logic_vector( 255 downto 0);
   signal dbg_poc                       : std_logic_vector(1023 downto 0);
   signal dbg_cmplx_rd_loop             : std_logic;
   signal dbg_cmplx_rd_lane             : std_logic_vector(   2 downto 0);
   signal dbg_K_left_shift_right        : std_logic_vector(   5 downto 0);
   signal dbg_K_right_shift_left        : std_logic_vector(   5 downto 0);
   signal dbg_cmplx_wr_loop             : std_logic;

      
   
   signal sys_clk_i     : std_logic;
   signal mmcm_clk      : std_logic;
   
   
   signal clk_ref_i           : std_logic;
   signal clk_ref_in          : std_logic;
   signal iodelay_ctrl_rdy    : std_logic_vector(1 downto 0);
   signal clk_ref             : std_logic_vector(1 downto 0);
   signal sys_rst_o           : std_logic;
   
   signal init_calib_complete_i     : std_logic;
   signal app_rd_valid0_i           : std_logic;
   signal app_rd_valid1_i           : std_logic;
   signal dbg_pi_counter_read_val_i : std_logic_vector(5 downto 0);
      

begin

--***************************************************************************






   sys_clk_i <= '0';
      
   clk_ref_i <= '0';
      
   mux_data_bl4: if (BURST_LEN = 4) generate
     mux_wr_data0 <= app_wr_data0(DATA_WIDTH*4-1 downto DATA_WIDTH*2);
     mux_wr_bw_n0 <= app_wr_bw_n0(BW_WIDTH*4-1 downto BW_WIDTH*2);
   end generate;

   mux_data_bl2: if (BURST_LEN = 2) generate
     mux_wr_data0 <= app_wr_data0;
     mux_wr_bw_n0 <= app_wr_bw_n0;
   end generate;

   mux_wr_data1 <= app_wr_data0(DATA_WIDTH*2-1 downto 0) when (BURST_LEN = 4)
                                                                        else  app_wr_data1 ;
   mux_wr_bw_n1 <= app_wr_bw_n0(BW_WIDTH*2-1 downto 0) when (BURST_LEN = 4)
                                                                        else  app_wr_bw_n1 ;
   app_rd_data0 <= (rd_data0 & rd_data1) when (BURST_LEN = 4)
                                                                else  rd_data0 ;
   app_rd_data1 <= rd_data1;
  init_calib_complete     <= init_calib_complete_i;
  app_rd_valid0           <= app_rd_valid0_i;
  app_rd_valid1           <= app_rd_valid1_i;
      


  clk_ref_in_use_sys_clk : if (REFCLK_TYPE = "USE_SYSTEM_CLOCK") generate
    clk_ref_in <= mmcm_clk;
  end generate;

  clk_ref_in_others : if (REFCLK_TYPE /= "USE_SYSTEM_CLOCK") generate
    clk_ref_in <= clk_ref_i;
  end generate;

  u_iodelay_ctrl : mig_7series_v4_0_iodelay_ctrl
    generic map
    (
     TCQ              => TCQ,
     IODELAY_GRP0     => IODELAY_GRP0,
     IODELAY_GRP1     => IODELAY_GRP1,
     REFCLK_TYPE      => REFCLK_TYPE,
     SYSCLK_TYPE      => SYSCLK_TYPE,
     SYS_RST_PORT     => SYS_RST_PORT,
     RST_ACT_LOW      => RST_ACT_LOW,
     DIFF_TERM_REFCLK => DIFF_TERM_REFCLK
     )
    port map
      (
       -- Outputs
       iodelay_ctrl_rdy => iodelay_ctrl_rdy,
       sys_rst_o        => sys_rst_o,
       clk_ref          => clk_ref,
       -- Inputs
       clk_ref_p        => clk_ref_p,
       clk_ref_n        => clk_ref_n,
       clk_ref_i        => clk_ref_in,
       sys_rst          => sys_rst
       );
  u_clk_ibuf : mig_7series_v4_0_clk_ibuf
    generic map
      (
       SYSCLK_TYPE      => SYSCLK_TYPE,
       DIFF_TERM_SYSCLK => DIFF_TERM_SYSCLK
       )
    port map
      (
       sys_clk_p        => sys_clk_p,
       sys_clk_n        => sys_clk_n,
       sys_clk_i        => sys_clk_i,
       mmcm_clk         => mmcm_clk
       );

  clk <= clk_i;

  u_infrastructure : mig_7series_v4_0_infrastructure
    generic map
      (
       TCQ                => TCQ,
       nCK_PER_CLK        => nCK_PER_CLK,
       CLKIN_PERIOD       => CLKIN_PERIOD,
       SYSCLK_TYPE        => SYSCLK_TYPE,
       CLKFBOUT_MULT      => CLKFBOUT_MULT,
       DIVCLK_DIVIDE      => DIVCLK_DIVIDE,
       CLKOUT0_PHASE      => 45.0,
       CLKOUT0_DIVIDE     => CLKOUT0_DIVIDE,
       CLKOUT1_DIVIDE     => CLKOUT1_DIVIDE,
       CLKOUT2_DIVIDE     => CLKOUT2_DIVIDE,
       CLKOUT3_DIVIDE     => CLKOUT3_DIVIDE,
       MMCM_VCO           => MMCM_VCO,
       MMCM_MULT_F        => MMCM_MULT_F,
       MMCM_DIVCLK_DIVIDE => MMCM_DIVCLK_DIVIDE,
       RST_ACT_LOW        => RST_ACT_LOW,
       tCK                => CLK_PERIOD,
       MEM_TYPE           => MEM_TYPE
       )
    port map
      (
       -- Outputs
       rstdiv0          => rst_wr_clk,
       clk              => clk_i,
       clk_div2         => open,
       rst_div2         => open,
       mem_refclk       => mem_refclk,
       freq_refclk      => freq_refclk,
       sync_pulse       => sync_pulse,
       psen             => psen,
       psincdec         => psincdec,
       mmcm_ps_clk      => mmcm_ps_clk,
       poc_sample_pd    => poc_sample_pd,
       iddr_rst         => iddr_rst,
       psdone           => psdone,
--       auxout_clk       => open,
       ui_addn_clk_0    => open,
       ui_addn_clk_1    => open,
       ui_addn_clk_2    => open,
       ui_addn_clk_3    => open,
       ui_addn_clk_4    => open,
       pll_locked       => pll_locked,
       mmcm_locked      => open,
       rst_phaser_ref   => rst_phaser_ref,

       -- Inputs
       mmcm_clk         => mmcm_clk,
       sys_rst          => sys_rst_o,
       iodelay_ctrl_rdy => iodelay_ctrl_rdy,
       ref_dll_lock     => ref_dll_lock
       );


  u_qdr_phy_top: mig_7series_v4_0_qdr_phy_top
    generic map  (
      MEMORY_IO_DIR                  => "UNIDIR",
      BUFG_FOR_OUTPUTS               => "OFF",
      PO_COARSE_BYPASS               => "FALSE",
      SIMULATION                     => SIMULATION,           --TRUE during design simulation
      HW_SIM                         => "NONE",
      CPT_CLK_CQ_ONLY                => CPT_CLK_CQ_ONLY,      --Only CQ is used for data capture and no CQ#
      --CMPLX_RDCAL_EN                 => "FALSE",
      ADDR_WIDTH                     => ADDR_WIDTH ,          --Adress Width
      DATA_WIDTH                     => DATA_WIDTH ,          --Data Width
      BW_WIDTH                       => BW_WIDTH,             --Byte Write Width
      BURST_LEN                      => BURST_LEN,            --Burst Length
      CLK_PERIOD                     => CLK_PERIOD,
      nCK_PER_CLK                    => nCK_PER_CLK,
      REFCLK_FREQ                    => REFCLK_FREQ,
      NUM_DEVICES                    => NUM_DEVICES,          --Memory Devices
      N_DATA_LANES                   => N_DATA_LANES,
      FIXED_LATENCY_MODE             => FIXED_LATENCY_MODE,   --Fixed Latency for data reads
      PHY_LATENCY                    => PHY_LATENCY,          --Value for Fixed Latency Mode
      MEM_RD_LATENCY                 => MEM_RD_LATENCY,       --Value of Memory part read latency
      CLK_STABLE                     => CLK_STABLE ,          --Cycles till CQ/CQ# is stable
      IODELAY_GRP                    => IODELAY_GRP0,
      MEM_TYPE                       => MEM_TYPE,             --Memory Type (QDR2PLUS, QDR2)
      -- RST_ACT_LOW                    => RST_ACT_LOW,
      SIM_BYPASS_INIT_CAL            => SIM_BYPASS_INIT_CAL,
      IBUF_LPWR_MODE                 => IBUF_LPWR_MODE ,      --Input buffer low power mode
      IODELAY_HP_MODE                => IODELAY_HP_MODE,      --IODELAY High Performance Mode
      CQ_BITS                        => CQ_BITS,              --clogb2(NUM_DEVICES - 1)
      Q_BITS                         => Q_BITS,               --clogb2(DATA_WIDTH - 1)
      DEVICE_TAPS                    => DEVICE_TAPS,          -- Number of taps in the IDELAY chain
      TAP_BITS                       => TAP_BITS,             -- clogb2(DEVICE_TAPS - 1)
      BUFMR_DELAY                    => 500,
      MASTER_PHY_CTL                 => PHY_CONTROL_MASTER_BANK,
      PLL_LOC                        => PHY_CONTROL_MASTER_BANK,
      INTER_BANK_SKEW                => INTER_BANK_SKEW,
      TAPSPERKCLK                    => TAPSPERKCLK,
      DATA_CTL_B0                    => DATA_CTL_B0,          --Data write/read bits in all banks
      DATA_CTL_B1                    => DATA_CTL_B1,
      DATA_CTL_B2                    => DATA_CTL_B2,
      DATA_CTL_B3                    => DATA_CTL_B3,
      DATA_CTL_B4                    => DATA_CTL_B4,
      CPT_CLK_SEL_B0                 => CPT_CLK_SEL_B0,       --Capture clock placement parameters
      CPT_CLK_SEL_B1                 => CPT_CLK_SEL_B1,
      CPT_CLK_SEL_B2                 => CPT_CLK_SEL_B2,
      BYTE_LANES_B0                  => BYTE_LANES_B0,        --Byte lanes used for the complete design
      BYTE_LANES_B1                  => BYTE_LANES_B1,
      BYTE_LANES_B2                  => BYTE_LANES_B2,
      BYTE_LANES_B3                  => BYTE_LANES_B3,
      BYTE_LANES_B4                  => BYTE_LANES_B4,
      BYTE_GROUP_TYPE_B0             => BYTE_GROUP_TYPE_B0,   --Differentiates data write and read byte lanes
      BYTE_GROUP_TYPE_B1             => BYTE_GROUP_TYPE_B1,
      BYTE_GROUP_TYPE_B2             => BYTE_GROUP_TYPE_B2,
      BYTE_GROUP_TYPE_B3             => BYTE_GROUP_TYPE_B3,
      BYTE_GROUP_TYPE_B4             => BYTE_GROUP_TYPE_B4,
      K_MAP                          => K_MAP,
      CQ_MAP                         => CQ_MAP,
      RD_MAP                         => RD_MAP,
      WR_MAP                         => WR_MAP,
      ADD_MAP                        => ADD_MAP,              -- Address bits mapping
      ADDR_CTL_MAP                   => ADDR_CTL_MAP,
      D0_MAP                         => D0_MAP,               -- Data write bits mapping
      D1_MAP                         => D1_MAP,
      D2_MAP                         => D2_MAP,
      D3_MAP                         => D3_MAP,
      D4_MAP                         => D4_MAP,
      D5_MAP                         => D5_MAP,
      D6_MAP                         => D6_MAP,
      D7_MAP                         => D7_MAP,
      BW_MAP                         => BW_MAP,
      Q0_MAP                         => Q0_MAP,               -- Data read bits mapping
      Q1_MAP                         => Q1_MAP,
      Q2_MAP                         => Q2_MAP,
      Q3_MAP                         => Q3_MAP,
      Q4_MAP                         => Q4_MAP,
      Q5_MAP                         => Q5_MAP,
      Q6_MAP                         => Q6_MAP,
      Q7_MAP                         => Q7_MAP,
      BIT_LANES_B0                   => PHY_0_BITLANES,       --Bits used for the complete design
      BIT_LANES_B1                   => PHY_1_BITLANES,
      BIT_LANES_B2                   => PHY_2_BITLANES,
      BIT_LANES_B3                   => PHY_3_BITLANES,
      BIT_LANES_B4                   => PHY_4_BITLANES,
      DEBUG_PORT                     => DEBUG_PORT,           -- Debug using Chipscope controls
      TCQ                            => TCQ                   --Register Delay
      ) port map (
      -- clocking and reset
      clk                            => clk_i,              --Fabric logic clock
      rst                            => rst_wr_clk,         -- fabric reset based on PLL lock and system input reset.
      clk_ref                        => clk_ref(0),            -- Idelay_ctrl reference clock
      clk_mem                        => mem_refclk,         -- Memory clock to hard PHY
      freq_refclk                    => freq_refclk,
      pll_lock                       => pll_locked,
      sync_pulse                     => sync_pulse,
      psdone                         => psdone,
      psen                           => psen,
      psincdec                       => psincdec,
      poc_sample_pd                  => poc_sample_pd,
      ref_dll_lock                   => ref_dll_lock,
      rst_phaser_ref                 => rst_phaser_ref,
      mmcm_fshift_clk                => mmcm_ps_clk,
      rst_clk                        => rst_clk,            --output generated based on read clocks being stable
      iddr_rst                       => iddr_rst,

      --PHY Write Path Interface
      wr_cmd0                        => app_wr_cmd0,        --wr command 0
      wr_cmd1                        => app_wr_cmd1,        --wr command 1
      wr_addr0                       => app_wr_addr0,       --wr address 0
      wr_addr1                       => app_wr_addr1,       --wr address 1
      rd_cmd0                        => app_rd_cmd0,        --rd command 0
      rd_cmd1                        => app_rd_cmd1,        --rd command 1
      rd_addr0                       => app_rd_addr0,       --rd address 0
      rd_addr1                       => app_rd_addr1,       --rd address 1
      wr_data0                       => mux_wr_data0,       --app write data 0
      wr_data1                       => mux_wr_data1,       --app write data 1
      wr_bw_n0                       => mux_wr_bw_n0,       --app byte writes 0
      wr_bw_n1                       => mux_wr_bw_n1,       --app byte writes 1

      --PHY Read Path Interface
      init_calib_complete            => init_calib_complete_i, --Calibration complete
      error_adj_latency              => dbg_error_adj_latency,
      rd_valid0                      => app_rd_valid0_i,      --Read valid for rd_data0
      rd_valid1                      => app_rd_valid1_i,      --Read valid for rd_data1
      rd_data0                       => rd_data0,           --Read data 0
      rd_data1                       => rd_data1,           --Read data 1

      --Memory Interface
      qdr_dll_off_n                  => qdriip_dll_off_n,   --QDR - turn off dll in mem
      qdr_k_p                        => qdriip_k_p,         --QDR clock K
      qdr_k_n                        => qdriip_k_n,         --QDR clock K#
      qdr_sa                         => qdriip_sa,          --QDR Memory Address
      qdr_w_n                        => qdriip_w_n,         --QDR Write
      qdr_r_n                        => qdriip_r_n,         --QDR Read
      qdr_bw_n                       => qdriip_bw_n,        --QDR Byte Writes to Mem
      qdr_d                          => qdriip_d,           --QDR Data to Memory
      qdr_q                          => qdriip_q,           --QDR Data from Memory
      qdr_cq_p                       => qdriip_cq_p,        --QDR echo clock CQ
      qdr_cq_n                       => qdriip_cq_n,        --QDR echo clock CQ#

      --Debug interface
      dbg_phy_status                 => dbg_phy_status,
--      dbg_SM_en                      => dbg_SM_en,
--      dbg_SM_No_Pause                => dbg_SM_No_Pause,
      dbg_po_counter_read_val        => dbg_po_counter_read_val,
      dbg_pi_counter_read_val        => dbg_pi_counter_read_val_i,
      dbg_phy_init_wr_only           => dbg_phy_init_wr_only,
      dbg_phy_init_rd_only           => dbg_phy_init_rd_only,
      dbg_po_stg3_sel                => '0',
      dbg_po_sel                     => '0',
      dbg_byte_sel                   => dbg_byte_sel,
      dbg_bit_sel                    => dbg_bit_sel,
      dbg_pi_f_inc                   => dbg_pi_f_inc,
      dbg_pi_f_dec                   => dbg_pi_f_dec,
      dbg_po_f_inc                   => dbg_po_f_inc,
      dbg_po_f_dec                   => dbg_po_f_dec,
      dbg_idel_up_all                => dbg_idel_up_all,
      dbg_idel_down_all              => dbg_idel_down_all,
      dbg_idel_up                    => dbg_idel_up,
      dbg_idel_down                  => dbg_idel_down,
      dbg_idel_tap_cnt               => dbg_idel_tap_cnt,
      dbg_idel_tap_cnt_sel           => dbg_idel_tap_cnt_sel,
      dbg_select_rdata               => dbg_select_rdata,

      dbg_align_rd0_r                => dbg_align_rd0_r,
      dbg_align_rd1_r                => dbg_align_rd1_r,
      dbg_align_fd0_r                => dbg_align_fd0_r,
      dbg_align_fd1_r                => dbg_align_fd1_r,
      dbg_align_rd0                  => dbg_align_rd0,
      dbg_align_rd1                  => dbg_align_rd1,
      dbg_align_fd0                  => dbg_align_fd0,
      dbg_align_fd1                  => dbg_align_fd1,
      dbg_mc_phy                     => dbg_mc_phy,
      dbg_PO_read_value              => open,
      dbg_calib_po_tstpoint          => open,
      dbg_byte_sel_cnt               => dbg_byte_sel_cnt,
      dbg_phy_wr_cmd_n               => dbg_phy_wr_cmd_n,
      dbg_phy_addr                   => dbg_phy_addr,
      dbg_phy_rd_cmd_n               => dbg_phy_rd_cmd_n,
      dbg_phy_wr_data                => dbg_phy_wr_data,
      dbg_wr_init                    => dbg_wr_init,
      dbg_rd_stage1_cal              => dbg_rd_stage1_cal,
      dbg_stage2_cal                 => dbg_stage2_cal,
      dbg_valid_lat                  => dbg_valid_lat,
      dbg_inc_latency                => dbg_inc_latency,
      dbg_error_max_latency          => dbg_error_max_latency,
      dbg_poc                        => dbg_poc,
      dbg_K_left_shift_right         => dbg_K_left_shift_right,
      dbg_K_right_shift_left         => dbg_K_right_shift_left,
      dbg_cmplx_wr_loop              => dbg_cmplx_wr_loop,
      dbg_cmplx_rd_loop              => dbg_cmplx_rd_loop,
      dbg_cmplx_rd_lane              => dbg_cmplx_rd_lane
      );
      
      





   --*********************************************************************
   -- Resetting all RTL debug inputs as the debug ports are not enabled
   --*********************************************************************
     dbg_pi_f_inc             <= '0';
     dbg_pi_f_dec             <= '0';
     dbg_idel_up_all          <= '0';
     dbg_idel_down_all        <= '0';
     dbg_idel_up              <= '0';
     dbg_idel_down            <= '0';
     dbg_phy_init_wr_only     <= '0';
     dbg_phy_init_rd_only     <= '0';
     dbg_SM_en                <= '1';
     dbg_SM_No_Pause          <= '1';
     dbg_byte_sel             <= (others => '0');
     dbg_bit_sel              <= (others => '0');
     dbg_po_f_inc             <= '0';
     dbg_po_f_dec             <= '0';
     dbg_cmplx_rd_loop        <= '0';
     dbg_cmplx_rd_lane        <= (others => '0');
     dbg_K_left_shift_right   <= (others => '0');
     dbg_K_right_shift_left   <= (others => '0');
     dbg_cmplx_wr_loop        <= '0';
      

end architecture arch_mig_qdr_rev4_mig;
