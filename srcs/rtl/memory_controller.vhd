
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity top is
    generic
    (
    MEM_TYPE : string := "QDR2PLUS";
    DATA_WIDTH : integer := 18;
    BW_WIDTH : integer := 2;
    ADDR_WIDTH : integer := 20;
    BURST_LEN : integer := 4;
    SIMULATION : string := "FALSE";
    TCQ : integer := 100;
    DEVICE_TAPS : integer := 32;
    nCK_PER_CLK : integer := 2;
    BL_WIDTH : integer := 8;
    PORT_MODE : string := "BI_MODE";
    DATA_MODE : std_logic_vector(3 downto 0) := "0010";
    TST_MEM_INSTR_MODE : string := "R_W_INSTR_MODE";
    EYE_TEST : string := "FALSE";
    DATA_PATTERN : string := "DGEN_ALL";
    CMD_PATTERN : string := "CGEN_ALL";
    CMD_WDT : std_logic_vector(31 downto 0) := X"000003ff";
    WR_WDT : std_logic_vector(31 downto 0) := X"00001fff";
    RD_WDT : std_logic_vector(31 downto 0) := X"000003ff";
    BEGIN_ADDRESS : std_logic_vector(31 downto 0) := X"00000000";
    END_ADDRESS : std_logic_vector(31 downto 0) := X"00000fff";
    PRBS_EADDR_MASK_POS : std_logic_vector(31 downto 0) := X"fffff000";
    DEBUG_PORT : string := "OFF";
    RST_ACT_LOW : integer := 1
    );
    port
    (
    sys_clk_p : in std_logic;
    sys_clk_n : in std_logic;
    clk_ref_p : in std_logic;
    clk_ref_n : in std_logic;
    qdriip_cq_p : in std_logic_vector(0 downto 0);
    qdriip_cq_n : in std_logic_vector(0 downto 0);
    qdriip_q : in std_logic_vector(17 downto 0);
    qdriip_k_p : inout std_logic_vector(0 downto 0);
    qdriip_k_n : inout std_logic_vector(0 downto 0);
    qdriip_d : out std_logic_vector(17 downto 0);
    qdriip_sa : out std_logic_vector(19 downto 0);
    qdriip_w_n : out std_logic;
    qdriip_r_n : out std_logic;
    qdriip_bw_n : out std_logic_vector(1 downto 0);
    qdriip_dll_off_n : out std_logic;
    sys_rst         : in std_logic
    );
end entity top;
architecture arch_top of top is

function clogb2 (size : integer) return integer is
    variable base : integer := 0;
    variable inp : integer := 0;
begin
    inp := size;
    while (inp > 0) loop
    inp := inp/2;
    base := base + 1;
end loop; return base;
end function;

constant APP_DATA_WIDTH : integer := BURST_LEN * DATA_WIDTH;
component mig_qdr_rev4
    port (
        sys_clk_p : in std_logic;
        sys_clk_n : in std_logic;
        clk_ref_p : in std_logic;
        clk_ref_n : in std_logic;
        qdriip_cq_p : in std_logic_vector(0 downto 0);
        qdriip_cq_n : in std_logic_vector(0 downto 0);
        qdriip_q : in std_logic_vector(17 downto 0);
        qdriip_k_p : inout std_logic_vector(0 downto 0);
        qdriip_k_n : inout std_logic_vector(0 downto 0);
        qdriip_d : out std_logic_vector(17 downto 0);
        qdriip_sa : out std_logic_vector(19 downto 0);
        qdriip_w_n : out std_logic;
        qdriip_r_n : out std_logic;
        qdriip_bw_n : out std_logic_vector(1 downto 0);
        qdriip_dll_off_n : out std_logic;
        app_wr_cmd0 : in std_logic;
        app_wr_addr0 : in std_logic_vector(19 downto 0);
        app_wr_data0 : in std_logic_vector(71 downto 0);
        app_wr_bw_n0 : in std_logic_vector(7 downto 0);
        app_rd_cmd0 : in std_logic;
        app_rd_addr0 : in std_logic_vector(19 downto 0);
        app_rd_valid0 : out std_logic;
        app_rd_data0 : out std_logic_vector(71 downto 0);
        app_wr_cmd1 : in std_logic;
        app_wr_addr1 : in std_logic_vector(19 downto 0);
        app_wr_data1 : in std_logic_vector(35 downto 0);
        app_wr_bw_n1 : in std_logic_vector(3 downto 0);
        app_rd_cmd1 : in std_logic;
        app_rd_addr1 : in std_logic_vector(19 downto 0);
        app_rd_valid1 : out std_logic;
        app_rd_data1 : out std_logic_vector(35 downto 0);
        clk : out std_logic;
        rst_clk : out std_logic;
        init_calib_complete : out std_logic;
        sys_rst : in std_logic);
end component mig_qdr_rev4;

component mig_7series_v4_0_traffic_gen_top
    generic (
        TCQ : integer;
        SIMULATION : string;
        FAMILY : string;
        MEM_TYPE : string;
        TST_MEM_INSTR_MODE : string;
        nCK_PER_CLK : integer;
        NUM_DQ_PINS : integer;
        MEM_BURST_LEN : integer;
        MEM_COL_WIDTH : integer;
        DATA_WIDTH : integer;
        ADDR_WIDTH : integer;
        MASK_SIZE : integer := 5;
        DATA_MODE : std_logic_vector(3 downto 0);
        BEGIN_ADDRESS : std_logic_vector(31 downto 0);
        END_ADDRESS : std_logic_vector(31 downto 0);
        PRBS_EADDR_MASK_POS : std_logic_vector(31 downto 0);
        CMDS_GAP_DELAY : std_logic_vector(5 downto 0) := "000000";
        SEL_VICTIM_LINE : integer := 0;
        CMD_WDT : std_logic_vector(31 downto 0) := X"000003ff";
        WR_WDT : std_logic_vector(31 downto 0) := X"00001fff";
        RD_WDT : std_logic_vector(31 downto 0) := X"000003ff";
        EYE_TEST : string;
        PORT_MODE : string;
        DATA_PATTERN : string;
        CMD_PATTERN : string);
        
    port (
        clk : in std_logic;
        rst : in std_logic;
        tg_only_rst : in std_logic;
        manual_clear_error : in std_logic;
        memc_init_done : in std_logic;
        memc_cmd_full : in std_logic;
        memc_cmd_en : out std_logic;
        memc_cmd_instr : out std_logic_vector(2 downto 0);
        memc_cmd_bl : out std_logic_vector(5 downto 0);
        memc_cmd_addr : out std_logic_vector(31 downto 0);
        memc_wr_en : out std_logic;
        memc_wr_end : out std_logic;
        memc_wr_mask : out std_logic_vector((DATA_WIDTH/8) - 1 downto 0);
        memc_wr_data : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        memc_wr_full : in std_logic;
        memc_rd_en : out std_logic;
        memc_rd_data : in std_logic_vector(DATA_WIDTH - 1 downto 0);
        memc_rd_empty : in std_logic;
        qdr_wr_cmd_o : out std_logic;
        qdr_rd_cmd_o : out std_logic;
        vio_pause_traffic : in std_logic;
        vio_modify_enable : in std_logic;
        vio_data_mode_value : in std_logic_vector(3 downto 0);
        vio_addr_mode_value : in std_logic_vector(2 downto 0);
        vio_instr_mode_value : in std_logic_vector(3 downto 0);
        vio_bl_mode_value : in std_logic_vector(1 downto 0);
        vio_fixed_bl_value : in std_logic_vector(9 downto 0);
        vio_fixed_instr_value : in std_logic_vector(2 downto 0);
        vio_data_mask_gen : in std_logic;
        fixed_addr_i : in std_logic_vector(31 downto 0);
        fixed_data_i : in std_logic_vector(31 downto 0);
        simple_data0 : in std_logic_vector(31 downto 0);
        simple_data1 : in std_logic_vector(31 downto 0);
        simple_data2 : in std_logic_vector(31 downto 0);
        simple_data3 : in std_logic_vector(31 downto 0);
        simple_data4 : in std_logic_vector(31 downto 0);
        simple_data5 : in std_logic_vector(31 downto 0);
        simple_data6 : in std_logic_vector(31 downto 0);
        simple_data7 : in std_logic_vector(31 downto 0);
        wdt_en_i : in std_logic;
        bram_cmd_i : in std_logic_vector(38 downto 0);
        bram_valid_i : in std_logic;
        bram_rdy_o : out std_logic;
        cmp_data : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        cmp_data_valid : out std_logic;
        cmp_error : out std_logic;
        wr_data_counts : out std_logic_vector(47 downto 0);
        rd_data_counts : out std_logic_vector(47 downto 0);
        dq_error_bytelane_cmp : out std_logic_vector((NUM_DQ_PINS/8) - 1 downto 0);
        error : out std_logic;
        error_status : out std_logic_vector((64 + (2 * DATA_WIDTH)) - 1 downto 0);
        cumlative_dq_lane_error : out std_logic_vector((NUM_DQ_PINS/8) - 1 downto 0);
        cmd_wdt_err_o : out std_logic;
        wr_wdt_err_o : out std_logic;
        rd_wdt_err_o : out std_logic;
        mem_pattern_init_done : out std_logic);
end component mig_7series_v4_0_traffic_gen_top;

signal tg_compare_error : std_logic;
signal init_calib_complete : std_logic;
signal clk : std_logic;
signal rst_clk : std_logic;
signal app_wr_cmd0 : std_logic;
signal app_wr_addr0 : std_logic_vector(ADDR_WIDTH - 1 downto 0);
signal app_wr_data0 : std_logic_vector(DATA_WIDTH * BURST_LEN - 1 downto 0);
signal app_wr_bw_n0 : std_logic_vector(BW_WIDTH * BURST_LEN - 1 downto 0);
signal app_rd_cmd0 : std_logic;
signal app_rd_addr0 : std_logic_vector(ADDR_WIDTH - 1 downto 0);
signal app_rd_valid0 : std_logic;
signal app_rd_data0 : std_logic_vector(DATA_WIDTH * BURST_LEN - 1 downto 0);
signal app_wr_cmd1 : std_logic;
signal app_wr_addr1 : std_logic_vector(ADDR_WIDTH - 1 downto 0);
signal app_wr_data1 : std_logic_vector(DATA_WIDTH * 2 - 1 downto 0);
signal app_wr_bw_n1 : std_logic_vector(BW_WIDTH * 2 - 1 downto 0);
signal app_rd_cmd1 : std_logic;
signal app_rd_addr1 : std_logic_vector(ADDR_WIDTH - 1 downto 0);
signal app_rd_valid1 : std_logic;
signal app_rd_data1 : std_logic_vector(DATA_WIDTH * 2 - 1 downto 0);
signal tg_addr : std_logic_vector(ADDR_WIDTH * 2 - 1 downto 0);
signal wr_data_counts : std_logic_vector(47 downto 0);
signal rd_data_counts : std_logic_vector(47 downto 0);
signal error_status : std_logic_vector(64 + ((2 * APP_DATA_WIDTH) - 1)downto 0);
signal dbg_cmp_data_valid : std_logic;
signal init_calib_complete_i : std_logic;
signal tg_compare_error_i : std_logic;
signal app_rd_valid0_n : std_logic;
signal dbg_clear_error : std_logic;
signal dbg_cmp_err : std_logic_vector(0 downto 0);
signal cmp_data : std_logic_vector(APP_DATA_WIDTH - 1 downto 0);
signal vio_modify_enable : std_logic_vector(0 downto 0);
signal vio_pause_traffic : std_logic_vector(0 downto 0);
signal vio_data_mode_value : std_logic_vector(3 downto 0);
signal vio_addr_mode_value : std_logic_vector(2 downto 0);
signal vio_instr_mode_value : std_logic_vector(3 downto 0);
signal vio_bl_mode_value : std_logic_vector(1 downto 0);
signal vio_fixed_bl_value : std_logic_vector(9 downto 0);
signal vio_fixed_instr_value : std_logic_vector(2 downto 0);
signal vio_data_mask_gen : std_logic_vector(0 downto 0);

begin

    init_calib_complete <= init_calib_complete_i;
    tg_compare_error <= tg_compare_error_i;
    
u_mig_qdr_rev4: mig_qdr_rev4
    port map(
        qdriip_cq_p => qdriip_cq_p,
        qdriip_cq_n => qdriip_cq_n,
        qdriip_q => qdriip_q,
        qdriip_k_p => qdriip_k_p,
        qdriip_k_n => qdriip_k_n,
        qdriip_d => qdriip_d,
        qdriip_sa => qdriip_sa,
        qdriip_w_n => qdriip_w_n,
        qdriip_r_n => qdriip_r_n,
        qdriip_bw_n => qdriip_bw_n,
        qdriip_dll_off_n => qdriip_dll_off_n,
        init_calib_complete => init_calib_complete_i,
        app_wr_cmd0 => app_wr_cmd0,
        app_wr_cmd1 => '0',
        app_wr_addr0 => app_wr_addr0,
        app_wr_addr1 => (others => '0'),
        app_rd_cmd0 => app_rd_cmd0,
        app_rd_cmd1 => '0',
        app_rd_addr0 => app_rd_addr0,
        app_rd_addr1 => (others => '0'),
        app_wr_data0 => app_wr_data0,
        app_wr_data1 => (others => '0'),
        app_wr_bw_n0 => (others => '0'),
        app_wr_bw_n1 => (others => '0'),
        app_rd_valid0 => app_rd_valid0,
        app_rd_valid1 => app_rd_valid1,
        app_rd_data0 => app_rd_data0,
        app_rd_data1 => app_rd_data1,
        clk => clk,
        rst_clk => rst_clk,
        sys_clk_p => sys_clk_p,
        sys_clk_n => sys_clk_n,

        clk_ref_p => clk_ref_p,
        clk_ref_n => clk_ref_n,
        sys_rst => sys_rst);
    
    app_wr_addr0 <= tg_addr(ADDR_WIDTH - 1 downto 0);
    app_rd_addr0 <= tg_addr(ADDR_WIDTH - 1 downto 0);
    app_rd_valid0_n <= not(app_rd_valid0);
    
u_traffic_gen_top: mig_7series_v4_0_traffic_gen_top
    generic map(
        TCQ => TCQ,
        SIMULATION => SIMULATION,
        FAMILY => "VIRTEX7",
        MEM_TYPE => MEM_TYPE,
        TST_MEM_INSTR_MODE => TST_MEM_INSTR_MODE,
        nCK_PER_CLK => nCK_PER_CLK,
        NUM_DQ_PINS => DATA_WIDTH,
        MEM_BURST_LEN => BURST_LEN,
        PORT_MODE => PORT_MODE,
        DATA_PATTERN => DATA_PATTERN,
        CMD_PATTERN => CMD_PATTERN,
        ADDR_WIDTH => ADDR_WIDTH,
        DATA_WIDTH => APP_DATA_WIDTH,
        MEM_COL_WIDTH => ADDR_WIDTH,
        DATA_MODE => DATA_MODE,
        BEGIN_ADDRESS => BEGIN_ADDRESS,
        END_ADDRESS => END_ADDRESS,
        PRBS_EADDR_MASK_POS => PRBS_EADDR_MASK_POS,
        CMD_WDT => CMD_WDT,
        RD_WDT => RD_WDT,
        WR_WDT => WR_WDT,
        EYE_TEST => EYE_TEST)
        
    port map(
        clk => clk,
        rst => rst_clk,
        tg_only_rst => rst_clk,
        manual_clear_error => dbg_clear_error,
        memc_init_done => init_calib_complete_i,
        memc_cmd_full => '0',
        memc_cmd_en => open,
        memc_cmd_instr => open,
        memc_cmd_bl => open,
        memc_cmd_addr => tg_addr(31 downto 0),
        memc_wr_en => open,
        memc_wr_end => open,
        memc_wr_mask => open,
        memc_wr_data => app_wr_data0,
        memc_wr_full => '0',
        memc_rd_en => open,
        memc_rd_data => app_rd_data0,
        memc_rd_empty => app_rd_valid0_n,
        qdr_wr_cmd_o => app_wr_cmd0,
        qdr_rd_cmd_o => app_rd_cmd0,
        vio_pause_traffic => vio_pause_traffic(0),
        vio_modify_enable => vio_modify_enable(0),
        vio_data_mode_value => vio_data_mode_value,
        vio_addr_mode_value => vio_addr_mode_value,
        vio_instr_mode_value => vio_instr_mode_value,
        vio_bl_mode_value => vio_bl_mode_value,
        vio_fixed_bl_value => vio_fixed_bl_value,
        vio_fixed_instr_value => vio_fixed_instr_value,
        vio_data_mask_gen => vio_data_mask_gen(0),
        fixed_addr_i => (others => '0'),
        fixed_data_i => (others => '0'),
        simple_data0 => (others => '0'),
        simple_data1 => (others => '0'),
        simple_data2 => (others => '0'),
        simple_data3 => (others => '0'),
        simple_data4 => (others => '0'),
        simple_data5 => (others => '0'),
        simple_data6 => (others => '0'),
        simple_data7 => (others => '0'),
        wdt_en_i => '1',
        bram_cmd_i => (others => '0'),
        bram_valid_i => '0',
        bram_rdy_o => open,
        cmp_data => cmp_data,
        cmp_data_valid => dbg_cmp_data_valid,
        cmp_error => dbg_cmp_err(0),
        wr_data_counts => wr_data_counts,
        rd_data_counts => rd_data_counts,
        error => tg_compare_error_i,
        cumlative_dq_lane_error => open,
        cmd_wdt_err_o => open,
        wr_wdt_err_o => open,
        rd_wdt_err_o => open,
        mem_pattern_init_done => open,
        error_status => error_status);
        
    vio_modify_enable(0)  <= '0';
    vio_data_mode_value   <= "0010";
    vio_addr_mode_value   <= "011";
    vio_instr_mode_value  <= "0010";
    vio_bl_mode_value     <= "10";
    vio_fixed_bl_value    <= "0000110010";
    vio_data_mask_gen(0)  <= '0';
    vio_pause_traffic(0)  <= '0';
    vio_fixed_instr_value <= "001";
    dbg_clear_error       <= '0';
    
end architecture arch_top;