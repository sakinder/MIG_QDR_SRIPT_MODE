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
set_property LOC PHASER_OUT_PHY_X1Y18 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/PHASER_OUT_inst.phaser_out}]
set_property LOC OUT_FIFO_X1Y22 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo}]
set_property LOC OUT_FIFO_X1Y20 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_A.qdr_rld_byte_lane_A/out_fifo_inst.out_fifo}]
set_property LOC OUT_FIFO_X1Y27 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/out_fifo_inst.out_fifo}]
set_property LOC OUT_FIFO_X1Y26 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/out_fifo_inst.out_fifo}]
set_property LOC IN_FIFO_X1Y19 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_2.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/in_fifo_inst.in_fifo]
set_property LOC IN_FIFO_X1Y18 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_2.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/in_fifo_inst.in_fifo]
set_property LOC PHY_CONTROL_X1Y5 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i}]
set_property LOC PHY_CONTROL_X1Y6 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/PHY_CONTROL_INST.phy_control_i}]
set_property LOC PHASER_REF_X1Y4 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_2.u_qdr_rld_phy_4lanes/phaser_ref_i]
set_property LOC PHASER_REF_X1Y5 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_1.u_qdr_rld_phy_4lanes/phaser_ref_i}]
set_property LOC PHASER_REF_X1Y6 [get_cells -hier -filter {NAME =~ */qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/phaser_ref_i}]
set_property LOC PLLE2_ADV_X1Y6 [get_cells -hier -filter {NAME =~ */u_infrastructure/plle2_i}]
set_property LOC MMCME2_ADV_X1Y6 [get_cells -hier -filter {NAME =~ */u_infrastructure/gen_mmcm.mmcm_i}]
set_multicycle_path -setup -start -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] 2
set_multicycle_path -hold -start -through [get_pins -filter {NAME =~ */OSERDESRST} -of [get_cells -hier -filter {REF_NAME == PHASER_OUT_PHY}]] 1
#set_max_delay -from [get_cells -hier *rstdiv0_sync_r1_reg*] -to [get_pins -filter {NAME =~ */RESET} -of [get_cells -hier -filter {REF_NAME == PHY_CONTROL}]] -datapath_only 3
#set_false_path -through [get_nets */sys_rst]
set_property LOC OLOGIC_X1Y344 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D/gen_ddr_dk.gen_diff_ddr_dk.ddr_dk]
set_property PACKAGE_PIN L13 [get_ports {qdriip_k_p[0]}]
set_property PACKAGE_PIN K13 [get_ports {qdriip_k_n[0]}]
set_property LOC ILOGIC_X1Y344 [get_cells u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_phy_wr_top/u_qdr_phy_poc_pd0/u_phase_detector]


create_pblock pblock_PHSR_OT_inst.phsr_ot
add_cells_to_pblock [get_pblocks pblock_PHSR_OT_inst.phsr_ot] [get_cells -quiet [list u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_C.qdr_rld_byte_lane_C/PHASER_OUT_inst.phaser_out u_mig_qdr_rev4/u_mig_qdr_rev4_mig/u_qdr_phy_top/u_qdr_rld_mc_phy/qdr_rld_phy_4lanes_0.u_qdr_rld_phy_4lanes/qdr_rld_byte_lane_D.qdr_rld_byte_lane_D]]


