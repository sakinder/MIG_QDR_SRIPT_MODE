
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mig_qdr_rev4 is
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
        sys_rst : in std_logic
    );
end entity mig_qdr_rev4;
architecture arch_mig_qdr_rev4 of mig_qdr_rev4 is
    component mig_qdr_rev4_mig
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
            sys_rst : in std_logic
        );
    end component mig_qdr_rev4_mig;
begin
    u_mig_qdr_rev4_mig : mig_qdr_rev4_mig
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
        init_calib_complete => init_calib_complete,

        app_wr_cmd0 => app_wr_cmd0,
        app_wr_cmd1 => app_wr_cmd1,
        app_wr_addr0 => app_wr_addr0,
        app_wr_addr1 => app_wr_addr1,
        app_rd_cmd0 => app_rd_cmd0,
        app_rd_cmd1 => app_rd_cmd1,
        app_rd_addr0 => app_rd_addr0,
        app_rd_addr1 => app_rd_addr1,
        app_wr_data0 => app_wr_data0,
        app_wr_data1 => app_wr_data1,
        app_wr_bw_n0 => app_wr_bw_n0,
        app_wr_bw_n1 => app_wr_bw_n1,
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
        sys_rst => sys_rst
    );
end architecture arch_mig_qdr_rev4;