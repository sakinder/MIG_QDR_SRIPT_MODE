
 add_fsm_encoding \
       {mig_7series_v4_0_qdr_phy_wr_po_adj.sm_r} \
       { }  \
       {{0000 0001} {0001 0010} {0010 0011} {0011 0100} {0100 0101} {0101 0110} {0110 0111} {0111 1000} {1000 0000} }

 add_fsm_encoding \
       {mig_7series_v4_0_qdr_rld_phy_cntrl_init.pc_ctl_ns} \
       { }  \
       {{00000 00} {00001 01} {00010 10} {10000 11} }

 add_fsm_encoding \
       {mig_7series_v4_0_qdr_rld_phy_rdlvl.sm_r} \
       { }  \
       {{000 000} {001 011} {010 100} {011 010} {100 001} {101 101} {110 110} {111 111} }
