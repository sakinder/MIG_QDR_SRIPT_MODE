
####################################################################################
# Generated by Vivado 2016.3 built on 'Mon Oct 10 19:07:27 MDT 2016' by 'xbuild'
# Command Used: write_xdc -no_fixed_only -force S:/GoogleDrive/firmware/mars/m_s_r_0_0/outputs/output/wave_gen_impl.xdc
####################################################################################


set_property PACKAGE_PIN A9 [get_ports {qdriip_q[17]}]
set_property PACKAGE_PIN G1 [get_ports {qdriip_q[7]}]
set_property PACKAGE_PIN G11 [get_ports {qdriip_q[14]}]
set_property PACKAGE_PIN L1 [get_ports {qdriip_q[1]}]
set_property PACKAGE_PIN B7 [get_ports {qdriip_q[11]}]
set_property PACKAGE_PIN F2 [get_ports {qdriip_q[4]}]
set_property PACKAGE_PIN B9 [get_ports {qdriip_q[16]}]
set_property PACKAGE_PIN H2 [get_ports {qdriip_q[6]}]
set_property PACKAGE_PIN J11 [get_ports {qdriip_q[13]}]
set_property PACKAGE_PIN G17 [get_ports {qdriip_q[3]}]
set_property PACKAGE_PIN A7 [get_ports {qdriip_q[12]}]
set_property PACKAGE_PIN D10 [get_ports {qdriip_q[5]}]
set_property PACKAGE_PIN L2 [get_ports {qdriip_q[0]}]
set_property PACKAGE_PIN C6 [get_ports {qdriip_q[15]}]
set_property PACKAGE_PIN E8 [get_ports {qdriip_q[10]}]
set_property PACKAGE_PIN C7 [get_ports {qdriip_q[2]}]
set_property PACKAGE_PIN H1 [get_ports {qdriip_q[9]}]
set_property PACKAGE_PIN J1 [get_ports {qdriip_q[8]}]

####################################################################################
# Constraints from file : 'BetaConstraints.xdc'
####################################################################################

#File name :BetaConstraints.xdc
#File revn :652.1
create_clock -period 6.665 [get_ports sys_clk_p]
create_clock -period 5.000 [get_ports clk_ref_p]
create_clock -period 2.222 [get_ports {{qdriip_cq_p[*]} {qdriip_cq_n[*]}}]
#QDR Constraints
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_clk_p]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_pins -hierarchical *pll*CLKIN1]
set_property LOC PHASER_OUT_PHY_X1Y22 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y20 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y27 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out}]
set_property LOC PHASER_OUT_PHY_X1Y26 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out}]
set_property LOC OUT_FIFO_X1Y22 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo}]
set_property LOC OUT_FIFO_X1Y20 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo}]
set_property LOC OUT_FIFO_X1Y27 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo}]
set_property LOC OUT_FIFO_X1Y26 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo}]
set_property LOC PHY_CONTROL_X1Y5 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i}]
set_property LOC PHY_CONTROL_X1Y6 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i}]
set_property LOC PHASER_REF_X1Y5 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/phaser_ref_i}]
set_property LOC PHASER_REF_X1Y6 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i}]
set_property LOC PLLE2_ADV_X1Y6 [get_cells -hier -filter {NAME =~ */u_infrastructure/plle2_i}]
set_property LOC MMCME2_ADV_X1Y6 [get_cells -hier -filter {NAME =~ */u_infrastructure/gen_mmcm.mmcm_i}]
set_multicycle_path -setup -start -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] 2
set_multicycle_path -hold -start -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] 1


####################################################################################
# Constraints from file : 'BetaPins.xdc'
####################################################################################

set_property VCCAUX_IO DONTCARE [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_HSTL_I [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_HSTL_I [get_ports sys_clk_n]
set_property PACKAGE_PIN G9 [get_ports sys_clk_n]
set_property PACKAGE_PIN H9 [get_ports sys_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_ref_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_ref_n]
set_property PACKAGE_PIN AG14 [get_ports clk_ref_n]
set_property PACKAGE_PIN AF14 [get_ports clk_ref_p]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_cq_p[0]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_cq_p[0]}]
set_property PACKAGE_PIN G10 [get_ports {qdriip_cq_p[0]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_cq_n[0]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_cq_n[0]}]
set_property PACKAGE_PIN F10 [get_ports {qdriip_cq_n[0]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_k_p[0]}]
set_property SLEW FAST [get_ports {qdriip_k_p[0]}]
set_property IOSTANDARD DIFF_HSTL_II [get_ports {qdriip_k_p[0]}]
set_property SLEW FAST [get_ports {qdriip_k_n[0]}]
set_property IOSTANDARD DIFF_HSTL_II [get_ports {qdriip_k_n[0]}]
set_property LOC OLOGIC_X1Y344 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk]
set_property PACKAGE_PIN K13 [get_ports {qdriip_k_n[0]}]
set_property PACKAGE_PIN L13 [get_ports {qdriip_k_p[0]}]
set_property VCCAUX_IO NORMAL [get_ports qdriip_w_n]
set_property SLEW FAST [get_ports qdriip_w_n]
set_property IOSTANDARD HSTL_I [get_ports qdriip_w_n]
set_property PACKAGE_PIN J8 [get_ports qdriip_w_n]
set_property VCCAUX_IO NORMAL [get_ports qdriip_r_n]
set_property SLEW FAST [get_ports qdriip_r_n]
set_property IOSTANDARD HSTL_I [get_ports qdriip_r_n]
set_property PACKAGE_PIN F9 [get_ports qdriip_r_n]
set_property VCCAUX_IO NORMAL [get_ports qdriip_dll_off_n]
set_property SLEW FAST [get_ports qdriip_dll_off_n]
set_property IOSTANDARD HSTL_I [get_ports qdriip_dll_off_n]
set_property PACKAGE_PIN L12 [get_ports qdriip_dll_off_n]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_bw_n[0]}]
set_property SLEW FAST [get_ports {qdriip_bw_n[0]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_bw_n[0]}]
set_property PACKAGE_PIN D5 [get_ports {qdriip_bw_n[0]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_bw_n[1]}]
set_property SLEW FAST [get_ports {qdriip_bw_n[1]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_bw_n[1]}]
set_property PACKAGE_PIN E6 [get_ports {qdriip_bw_n[1]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[0]}]
set_property SLEW FAST [get_ports {qdriip_d[0]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[0]}]
set_property PACKAGE_PIN H12 [get_ports {qdriip_d[0]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[1]}]
set_property SLEW FAST [get_ports {qdriip_d[1]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[1]}]
set_property PACKAGE_PIN E3 [get_ports {qdriip_d[1]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[2]}]
set_property SLEW FAST [get_ports {qdriip_d[2]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[2]}]
set_property PACKAGE_PIN E2 [get_ports {qdriip_d[2]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[3]}]
set_property SLEW FAST [get_ports {qdriip_d[3]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[3]}]
set_property PACKAGE_PIN E5 [get_ports {qdriip_d[3]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[4]}]
set_property SLEW FAST [get_ports {qdriip_d[4]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[4]}]
set_property PACKAGE_PIN D4 [get_ports {qdriip_d[4]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[5]}]
set_property SLEW FAST [get_ports {qdriip_d[5]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[5]}]
set_property PACKAGE_PIN B6 [get_ports {qdriip_d[5]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[6]}]
set_property SLEW FAST [get_ports {qdriip_d[6]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[6]}]
set_property PACKAGE_PIN B10 [get_ports {qdriip_d[6]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[7]}]
set_property SLEW FAST [get_ports {qdriip_d[7]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[7]}]
set_property PACKAGE_PIN F3 [get_ports {qdriip_d[7]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[8]}]
set_property SLEW FAST [get_ports {qdriip_d[8]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[8]}]
set_property PACKAGE_PIN F4 [get_ports {qdriip_d[8]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[9]}]
set_property SLEW FAST [get_ports {qdriip_d[9]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[9]}]
set_property PACKAGE_PIN E1 [get_ports {qdriip_d[9]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[10]}]
set_property SLEW FAST [get_ports {qdriip_d[10]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[10]}]
set_property PACKAGE_PIN A4 [get_ports {qdriip_d[10]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[11]}]
set_property SLEW FAST [get_ports {qdriip_d[11]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[11]}]
set_property PACKAGE_PIN A5 [get_ports {qdriip_d[11]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[12]}]
set_property SLEW FAST [get_ports {qdriip_d[12]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[12]}]
set_property PACKAGE_PIN B2 [get_ports {qdriip_d[12]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[13]}]
set_property SLEW FAST [get_ports {qdriip_d[13]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[13]}]
set_property PACKAGE_PIN A2 [get_ports {qdriip_d[13]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[14]}]
set_property SLEW FAST [get_ports {qdriip_d[14]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[14]}]
set_property PACKAGE_PIN B5 [get_ports {qdriip_d[14]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[15]}]
set_property SLEW FAST [get_ports {qdriip_d[15]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[15]}]
set_property PACKAGE_PIN B4 [get_ports {qdriip_d[15]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[16]}]
set_property SLEW FAST [get_ports {qdriip_d[16]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[16]}]
set_property PACKAGE_PIN K2 [get_ports {qdriip_d[16]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_d[17]}]
set_property SLEW FAST [get_ports {qdriip_d[17]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_d[17]}]
set_property PACKAGE_PIN K3 [get_ports {qdriip_d[17]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[0]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[0]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[1]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[1]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[2]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[2]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[3]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[3]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[4]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[4]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[5]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[5]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[6]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[6]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[7]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[7]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[8]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[8]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[9]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[9]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[10]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[10]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[11]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[11]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[12]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[12]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[13]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[13]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[14]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[14]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[15]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[15]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[16]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[16]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_q[17]}]
set_property IOSTANDARD HSTL_I_DCI [get_ports {qdriip_q[17]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[19]}]
set_property SLEW FAST [get_ports {qdriip_sa[19]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[19]}]
set_property PACKAGE_PIN E10 [get_ports {qdriip_sa[19]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[18]}]
set_property SLEW FAST [get_ports {qdriip_sa[18]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[18]}]
set_property PACKAGE_PIN D11 [get_ports {qdriip_sa[18]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[17]}]
set_property SLEW FAST [get_ports {qdriip_sa[17]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[17]}]
set_property PACKAGE_PIN H3 [get_ports {qdriip_sa[17]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[16]}]
set_property SLEW FAST [get_ports {qdriip_sa[16]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[16]}]
set_property PACKAGE_PIN D1 [get_ports {qdriip_sa[16]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[15]}]
set_property SLEW FAST [get_ports {qdriip_sa[15]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[15]}]
set_property PACKAGE_PIN C1 [get_ports {qdriip_sa[15]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[14]}]
set_property SLEW FAST [get_ports {qdriip_sa[14]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[14]}]
set_property PACKAGE_PIN C2 [get_ports {qdriip_sa[14]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[13]}]
set_property SLEW FAST [get_ports {qdriip_sa[13]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[13]}]
set_property PACKAGE_PIN E11 [get_ports {qdriip_sa[13]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[12]}]
set_property SLEW FAST [get_ports {qdriip_sa[12]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[12]}]
set_property PACKAGE_PIN H6 [get_ports {qdriip_sa[12]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[11]}]
set_property SLEW FAST [get_ports {qdriip_sa[11]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[11]}]
set_property PACKAGE_PIN D3 [get_ports {qdriip_sa[11]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[10]}]
set_property SLEW FAST [get_ports {qdriip_sa[10]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[10]}]
set_property PACKAGE_PIN B1 [get_ports {qdriip_sa[10]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[9]}]
set_property SLEW FAST [get_ports {qdriip_sa[9]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[9]}]
set_property PACKAGE_PIN C4 [get_ports {qdriip_sa[9]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[8]}]
set_property SLEW FAST [get_ports {qdriip_sa[8]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[8]}]
set_property PACKAGE_PIN H4 [get_ports {qdriip_sa[8]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[7]}]
set_property SLEW FAST [get_ports {qdriip_sa[7]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[7]}]
set_property PACKAGE_PIN A3 [get_ports {qdriip_sa[7]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[6]}]
set_property SLEW FAST [get_ports {qdriip_sa[6]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[6]}]
set_property PACKAGE_PIN K6 [get_ports {qdriip_sa[6]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[5]}]
set_property SLEW FAST [get_ports {qdriip_sa[5]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[5]}]
set_property PACKAGE_PIN J4 [get_ports {qdriip_sa[5]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[4]}]
set_property SLEW FAST [get_ports {qdriip_sa[4]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[4]}]
set_property PACKAGE_PIN J5 [get_ports {qdriip_sa[4]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[3]}]
set_property SLEW FAST [get_ports {qdriip_sa[3]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[3]}]
set_property PACKAGE_PIN K5 [get_ports {qdriip_sa[3]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[2]}]
set_property SLEW FAST [get_ports {qdriip_sa[2]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[2]}]
set_property PACKAGE_PIN K1 [get_ports {qdriip_sa[2]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[1]}]
set_property SLEW FAST [get_ports {qdriip_sa[1]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[1]}]
set_property PACKAGE_PIN J3 [get_ports {qdriip_sa[1]}]
set_property VCCAUX_IO NORMAL [get_ports {qdriip_sa[0]}]
set_property SLEW FAST [get_ports {qdriip_sa[0]}]
set_property IOSTANDARD HSTL_I [get_ports {qdriip_sa[0]}]
set_property PACKAGE_PIN G6 [get_ports {qdriip_sa[0]}]



# Vivado Generated physical constraints 

set_property BEL PHY_CONTROL [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i]
set_property BEL PHY_CONTROL [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i]
set_property BEL PHASER_REF [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/phaser_ref_i]
set_property BEL OUTBUF_DCIEN [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.gen_lb_clk.loopback_iobuf_diff]
set_property BEL PHASER_REF [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i]
set_property BEL OUTBUF_DCIEN [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_r_n_obuf]
set_property BEL AFF [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_init_sm/rst_r_reg]
set_property BEL A6LUT [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/PHY_CONTROL_INST.phy_control_i_i_1]
set_property BEL A6LUT [get_cells u_dll_off_n_obuf_i_1]
set_property BEL A6LUT [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.LUT1_tri]
set_property BEL OUTBUF_DCIEN [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_dll_off_n_obuf]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[9].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[8].u_sa_obuf}]
set_property BEL MMCME2_ADV [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/gen_mmcm.mmcm_i]
set_property BEL BUFHCE [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/u_bufh_pll_clk3]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[0].u_bw_n_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[16].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[17].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[1].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[2].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[3].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[4].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[5].u_d_obuf}]
set_property BEL OUT_FIFO [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[6].u_d_obuf}]
set_property BEL BFF [get_cells {u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS_V.INC_COUNTS_reg[8]}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[7].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_bw_obuf[1].u_bw_n_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[0].u_d_obuf}]
set_property BEL OUT_FIFO [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[10].u_d_obuf}]
set_property BEL PHASER_OUT_PHY [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[11].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[12].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[13].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[14].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[15].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[17].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[16].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[15].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[14].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[13].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[12].u_sa_obuf}]
set_property BEL OUT_FIFO [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[11].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[10].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[0].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[9].u_d_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[7].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[6].u_sa_obuf}]
set_property BEL PHASER_OUT_PHY [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[5].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[4].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[3].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[2].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[1].u_sa_obuf}]
set_property BEL OUT_FIFO [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[19].u_sa_obuf}]
set_property BEL PHASER_OUT_PHY [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/PHASER_OUT_inst.phaser_out]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_sa_obuf[18].u_sa_obuf}]
set_property BEL OUTBUF_DCIEN [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/gen_d_q_buf.loop_d_q[8].u_d_obuf}]
set_property BEL INBUF_DCIEN [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_clk_ibuf/diff_input_clk.u_ibufg_sys_clk]
set_property BEL PLLE2_ADV [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/plle2_i]
set_property BEL OUTBUF_DCIEN [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_byte_lane_map/u_w_n_obuf]
set_property BEL AFF [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_data/iob_bw_rise0_reg[1]}]
set_property BEL PHASER_OUT_PHY [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out]
set_property BEL OUTFF [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk]
set_property LOC BUFGCTRL_X0Y16 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/u_bufg_clkdiv0]
set_property LOC BUFHCE_X1Y72 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/u_bufh_pll_clk3]
set_property LOC SLICE_X170Y251 [get_cells u_dll_off_n_obuf_i_1]
set_property LOC SLICE_X171Y302 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_infrastructure/PHY_CONTROL_INST.phy_control_i_i_1]
set_property LOC SLICE_X171Y344 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.LUT1_tri]
set_property LOC SLICE_X171Y335 [get_cells {u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_data/iob_bw_rise0_reg[1]}]
set_property LOC SLICE_X170Y251 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_wr_init_sm/rst_r_reg]
set_property LOC SLICE_X171Y335 [get_cells {u_traffic_gen_top/u_memc_traffic_gen/u_c_gen/INC_COUNTS_V.INC_COUNTS_reg[8]}]

# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet
