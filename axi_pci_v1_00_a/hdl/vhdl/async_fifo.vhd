--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file async_fifo.vhd when simulating
-- the core, async_fifo. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library axi_pci_v1_00_a_proc_common_v3_00_a;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.coregen_comp_defs.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.family_support.all;

--library axi_pci_v1_00_a;
--use axi_pci_v1_00_a.fifo_generator_v9_3;
-- synopsys translate_off
library XilinxCoreLib;
--use XilinxCoreLib.all;
-- synopsys translate_on
ENTITY async_fifo IS
  GENERIC (
    c_fifo_depth : integer := 512;
    c_data_width : integer := 32
  );
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC
  );
END async_fifo;

ARCHITECTURE async_fifo32_a OF async_fifo IS

BEGIN
I_ASYNC_FIFO_BRAM : fifo_generator_v9_3
   generic map(
      c_add_ngc_constraint => 0,
      c_application_type_axis => 0,
      c_application_type_rach => 0,
      c_application_type_rdch => 0,
      c_application_type_wach => 0,
      c_application_type_wdch => 0,
      c_application_type_wrch => 0,
      c_axi_addr_width => 32,
      c_axi_aruser_width => 1,
      c_axi_awuser_width => 1,
      c_axi_buser_width => 1,
      c_axi_data_width => 64,
      c_axi_id_width => 4,
      c_axi_ruser_width => 1,
      c_axi_type => 0,
      c_axi_wuser_width => 1,
      c_axis_tdata_width => 64,
      c_axis_tdest_width => 4,
      c_axis_tid_width => 8,
      c_axis_tkeep_width => 4,
      c_axis_tstrb_width => 4,
      c_axis_tuser_width => 4,
      c_axis_type => 0,
      c_common_clock => 0,
      c_count_type => 0,
      c_data_count_width => 9,
      c_default_value => "BlankString",
      c_din_width => c_data_width,
      c_din_width_axis => 1,
      c_din_width_rach => 32,
      c_din_width_rdch => 64,
      c_din_width_wach => 32,
      c_din_width_wdch => 64,
      c_din_width_wrch => 2,
      c_dout_rst_val => "0",
      c_dout_width => c_data_width,
      c_enable_rlocs => 0,
      c_enable_rst_sync => 1,
      c_error_injection_type => 0,
      c_error_injection_type_axis => 0,
      c_error_injection_type_rach => 0,
      c_error_injection_type_rdch => 0,
      c_error_injection_type_wach => 0,
      c_error_injection_type_wdch => 0,
      c_error_injection_type_wrch => 0,
      c_family => "spartan6",
      c_full_flags_rst_val => 1,
      c_has_almost_empty => 1,
      c_has_almost_full => 0,
      c_has_axi_aruser => 0,
      c_has_axi_awuser => 0,
      c_has_axi_buser => 0,
      c_has_axi_rd_channel => 0,
      c_has_axi_ruser => 0,
      c_has_axi_wr_channel => 0,
      c_has_axi_wuser => 0,
      c_has_axis_tdata => 0,
      c_has_axis_tdest => 0,
      c_has_axis_tid => 0,
      c_has_axis_tkeep => 0,
      c_has_axis_tlast => 0,
      c_has_axis_tready => 1,
      c_has_axis_tstrb => 0,
      c_has_axis_tuser => 0,
      c_has_backup => 0,
      c_has_data_count => 0,
      c_has_data_counts_axis => 0,
      c_has_data_counts_rach => 0,
      c_has_data_counts_rdch => 0,
      c_has_data_counts_wach => 0,
      c_has_data_counts_wdch => 0,
      c_has_data_counts_wrch => 0,
      c_has_int_clk => 0,
      c_has_master_ce => 0,
      c_has_meminit_file => 0,
      c_has_overflow => 0,
      c_has_prog_flags_axis => 0,
      c_has_prog_flags_rach => 0,
      c_has_prog_flags_rdch => 0,
      c_has_prog_flags_wach => 0,
      c_has_prog_flags_wdch => 0,
      c_has_prog_flags_wrch => 0,
      c_has_rd_data_count => 0,
      c_has_rd_rst => 0,
      c_has_rst => 1,
      c_has_slave_ce => 0,
      c_has_srst => 0,
      c_has_underflow => 0,
      c_has_valid => 1,
      c_has_wr_ack => 0,
      c_has_wr_data_count => 0,
      c_has_wr_rst => 0,
      c_implementation_type => 2,
      c_implementation_type_axis => 1,
      c_implementation_type_rach => 1,
      c_implementation_type_rdch => 1,
      c_implementation_type_wach => 1,
      c_implementation_type_wdch => 1,
      c_implementation_type_wrch => 1,
      c_init_wr_pntr_val => 0,
      c_interface_type => 0,
      c_memory_type => 1,
      c_mif_file_name => "BlankString",
      c_msgon_val => 1,
      c_optimization_mode => 0,
      c_overflow_low => 0,
      c_preload_latency => 0,
      c_preload_regs => 1,
      c_prim_fifo_type => "512x36",
      c_prog_empty_thresh_assert_val => 4,
      c_prog_empty_thresh_assert_val_axis => 1022,
      c_prog_empty_thresh_assert_val_rach => 1022,
      c_prog_empty_thresh_assert_val_rdch => 1022,
      c_prog_empty_thresh_assert_val_wach => 1022,
      c_prog_empty_thresh_assert_val_wdch => 1022,
      c_prog_empty_thresh_assert_val_wrch => 1022,
      c_prog_empty_thresh_negate_val => 5,
      c_prog_empty_type => 0,
      c_prog_empty_type_axis => 0,
      c_prog_empty_type_rach => 0,
      c_prog_empty_type_rdch => 0,
      c_prog_empty_type_wach => 0,
      c_prog_empty_type_wdch => 0,
      c_prog_empty_type_wrch => 0,
      c_prog_full_thresh_assert_val => c_fifo_depth-1,
      c_prog_full_thresh_assert_val_axis => 1023,
      c_prog_full_thresh_assert_val_rach => 1023,
      c_prog_full_thresh_assert_val_rdch => 1023,
      c_prog_full_thresh_assert_val_wach => 1023,
      c_prog_full_thresh_assert_val_wdch => 1023,
      c_prog_full_thresh_assert_val_wrch => 1023,
      c_prog_full_thresh_negate_val => c_fifo_depth-2,
      c_prog_full_type => 0,
      c_prog_full_type_axis => 0,
      c_prog_full_type_rach => 0,
      c_prog_full_type_rdch => 0,
      c_prog_full_type_wach => 0,
      c_prog_full_type_wdch => 0,
      c_prog_full_type_wrch => 0,
      c_rach_type => 0,
      c_rd_data_count_width => log2(c_fifo_depth),
      c_rd_depth => c_fifo_depth,
      c_rd_freq => 1,
      c_rd_pntr_width => log2(c_fifo_depth),
      c_rdch_type => 0,
      c_reg_slice_mode_axis => 0,
      c_reg_slice_mode_rach => 0,
      c_reg_slice_mode_rdch => 0,
      c_reg_slice_mode_wach => 0,
      c_reg_slice_mode_wdch => 0,
      c_reg_slice_mode_wrch => 0,
      c_synchronizer_stage => 2,
      c_underflow_low => 0,
      c_use_common_overflow => 0,
      c_use_common_underflow => 0,
      c_use_default_settings => 0,
      c_use_dout_rst => 1,
      c_use_ecc => 0,
      c_use_ecc_axis => 0,
      c_use_ecc_rach => 0,
      c_use_ecc_rdch => 0,
      c_use_ecc_wach => 0,
      c_use_ecc_wdch => 0,
      c_use_ecc_wrch => 0,
      c_use_embedded_reg => 0,
      c_use_fifo16_flags => 0,
      c_use_fwft_data_count => 0,
      c_valid_low => 0,
      c_wach_type => 0,
      c_wdch_type => 0,
      c_wr_ack_low => 0,
      c_wr_data_count_width => log2(c_fifo_depth),
      c_wr_depth => c_fifo_depth,
      c_wr_depth_axis => 1024,
      c_wr_depth_rach => 16,
      c_wr_depth_rdch => 1024,
      c_wr_depth_wach => 16,
      c_wr_depth_wdch => 1024,
      c_wr_depth_wrch => 16,
      c_wr_freq => 1,
      c_wr_pntr_width => log2(c_fifo_depth),
      c_wr_pntr_width_axis => 10,
      c_wr_pntr_width_rach => 4,
      c_wr_pntr_width_rdch => 10,
      c_wr_pntr_width_wach => 4,
      c_wr_pntr_width_wdch => 10,
      c_wr_pntr_width_wrch => 4,
      c_wr_response_latency => 1,
      c_wrch_type => 0

    )
   port map (
     BACKUP                    =>  '0',                  -- : IN  std_logic := '0';
     BACKUP_MARKER             =>  '0',                  -- : IN  std_logic := '0';
     CLK                       =>  '0',                  -- : IN  std_logic := '0';
     RST                       =>  rst,                -- : IN  std_logic := '0';
     SRST                      =>  '0',                  -- : IN  std_logic := '0';
     WR_CLK                    =>  Wr_clk,               -- : IN  std_logic := '0';
     WR_RST                    =>  '0',                -- : IN  std_logic := '0';
     RD_CLK                    =>  Rd_clk,               -- : IN  std_logic := '0';
     RD_RST                    =>  '0',                -- : IN  std_logic := '0';
     DIN                       =>  Din,                  -- : IN  std_logic_vector(C_DIN_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     WR_EN                     =>  Wr_en,                -- : IN  std_logic := '0';
     RD_EN                     =>  Rd_en,                -- : IN  std_logic := '0';
     PROG_EMPTY_THRESH         =>  (others => '0'),  -- : IN  std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     PROG_EMPTY_THRESH_ASSERT  =>  (others => '0'),  -- : IN  std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     PROG_EMPTY_THRESH_NEGATE  =>  (others => '0'),  -- : IN  std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     PROG_FULL_THRESH          =>  (others => '0'),  -- : IN  std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     PROG_FULL_THRESH_ASSERT   =>  (others => '0'),  -- : IN  std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     PROG_FULL_THRESH_NEGATE   =>  (others => '0'),  -- : IN  std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     INT_CLK                   =>  '0',                  -- : IN  std_logic := '0';
     INJECTDBITERR             =>  '0', -- new FG 5.1    -- : IN  std_logic := '0';
     INJECTSBITERR             =>  '0', -- new FG 5.1    -- : IN  std_logic := '0';

     DOUT                      =>  Dout,                 -- : OUT std_logic_vector(C_DOUT_WIDTH-1 DOWNTO 0);
     FULL                      =>  Full,                 -- : OUT std_logic;
     ALMOST_FULL               =>  open,          -- : OUT std_logic;
     WR_ACK                    =>  open,               -- : OUT std_logic;
     OVERFLOW                  =>  open,               -- : OUT std_logic;
     EMPTY                     =>  Empty,                -- : OUT std_logic;
     ALMOST_EMPTY              =>  Almost_empty,         -- : OUT std_logic;
     VALID                     =>  valid,               -- : OUT std_logic;
     UNDERFLOW                 =>  open,               -- : OUT std_logic;
     DATA_COUNT                =>  open,                 -- : OUT std_logic_vector(C_DATA_COUNT_WIDTH-1 DOWNTO 0);
     RD_DATA_COUNT             =>  open,  -- : OUT std_logic_vector(C_RD_DATA_COUNT_WIDTH-1 DOWNTO 0);
     WR_DATA_COUNT             =>  open,  -- : OUT std_logic_vector(C_WR_DATA_COUNT_WIDTH-1 DOWNTO 0);
     PROG_FULL                 =>  open,                 -- : OUT std_logic;
     PROG_EMPTY                =>  open,                 -- : OUT std_logic;
     SBITERR                   =>  open,                 -- : OUT std_logic;
     DBITERR                   =>  open,                 -- : OUT std_logic
    

     -- AXI Global Signal
     M_ACLK                    =>  '0',                   --       : IN  std_logic := '0';
     S_ACLK                    =>  '0',                   --       : IN  std_logic := '0';
     S_ARESETN                 =>  '0',                   --       : IN  std_logic := '0';
     M_ACLK_EN                 =>  '0',                   --       : IN  std_logic := '0';
     S_ACLK_EN                 =>  '0',                   --       : IN  std_logic := '0';

     -- AXI Full/Lite Slave Write Channel (write side)
     S_AXI_AWID                =>  (others => '0'),      --      : IN  std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWADDR              =>  (others => '0'),      --      : IN  std_logic_vector(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWLEN               =>  (others => '0'),      --      : IN  std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWSIZE              =>  (others => '0'),      --      : IN  std_logic_vector(3-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWBURST             =>  (others => '0'),      --      : IN  std_logic_vector(2-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWLOCK              =>  (others => '0'),      --      : IN  std_logic_vector(2-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWCACHE             =>  (others => '0'),      --      : IN  std_logic_vector(4-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWPROT              =>  (others => '0'),      --      : IN  std_logic_vector(3-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWQOS               =>  (others => '0'),      --      : IN  std_logic_vector(4-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWREGION            =>  (others => '0'),      --      : IN  std_logic_vector(4-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWUSER              =>  (others => '0'),      --      : IN  std_logic_vector(C_AXI_AWUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_AWVALID             =>  '0',                  --      : IN  std_logic := '0';
     S_AXI_AWREADY             =>  open,                 --      : OUT std_logic;
     S_AXI_WID                 =>  (others => '0'),      --      : IN  std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_WDATA               =>  (others => '0'),      --      : IN  std_logic_vector(C_AXI_DATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_WSTRB               =>  (others => '0'),      --      : IN  std_logic_vector(C_AXI_DATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_WLAST               =>  '0',                  --      : IN  std_logic := '0';
     S_AXI_WUSER               =>  (others => '0'),      --      : IN  std_logic_vector(C_AXI_WUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_WVALID              =>  '0',                  --      : IN  std_logic := '0';
     S_AXI_WREADY              =>  open,                 --      : OUT std_logic;
     S_AXI_BID                 =>  open,                 --      : OUT std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_BRESP               =>  open,                 --      : OUT std_logic_vector(2-1 DOWNTO 0);
     S_AXI_BUSER               =>  open,                 --      : OUT std_logic_vector(C_AXI_BUSER_WIDTH-1 DOWNTO 0);
     S_AXI_BVALID              =>  open,                 --      : OUT std_logic;
     S_AXI_BREADY              =>  '0',                  --      : IN  std_logic := '0';

     -- AXI Full/Lite Master Write Channel (Read side)
     M_AXI_AWID                =>  open,                 --       : OUT std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0);
     M_AXI_AWADDR              =>  open,                 --       : OUT std_logic_vector(C_AXI_ADDR_WIDTH-1 DOWNTO 0);
     M_AXI_AWLEN               =>  open,                 --       : OUT std_logic_vector(8-1 DOWNTO 0);
     M_AXI_AWSIZE              =>  open,                 --       : OUT std_logic_vector(3-1 DOWNTO 0);
     M_AXI_AWBURST             =>  open,                 --       : OUT std_logic_vector(2-1 DOWNTO 0);
     M_AXI_AWLOCK              =>  open,                 --       : OUT std_logic_vector(2-1 DOWNTO 0);
     M_AXI_AWCACHE             =>  open,                 --       : OUT std_logic_vector(4-1 DOWNTO 0);
     M_AXI_AWPROT              =>  open,                 --       : OUT std_logic_vector(3-1 DOWNTO 0);
     M_AXI_AWQOS               =>  open,                 --       : OUT std_logic_vector(4-1 DOWNTO 0);
     M_AXI_AWREGION            =>  open,                 --       : OUT std_logic_vector(4-1 DOWNTO 0);
     M_AXI_AWUSER              =>  open,                 --       : OUT std_logic_vector(C_AXI_AWUSER_WIDTH-1 DOWNTO 0);
     M_AXI_AWVALID             =>  open,                 --       : OUT std_logic;
     M_AXI_AWREADY             =>  '0',                  --       : IN  std_logic := '0';
     M_AXI_WID                 =>  open,                 --       : OUT std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0);
     M_AXI_WDATA               =>  open,                 --       : OUT std_logic_vector(C_AXI_DATA_WIDTH-1 DOWNTO 0);
     M_AXI_WSTRB               =>  open,                 --       : OUT std_logic_vector(C_AXI_DATA_WIDTH/8-1 DOWNTO 0);
     M_AXI_WLAST               =>  open,                 --       : OUT std_logic;
     M_AXI_WUSER               =>  open,                 --       : OUT std_logic_vector(C_AXI_WUSER_WIDTH-1 DOWNTO 0);
     M_AXI_WVALID              =>  open,                 --       : OUT std_logic;
     M_AXI_WREADY              =>  '0',                  --       : IN  std_logic := '0';
     M_AXI_BID                 =>  (others => '0'),      --       : IN  std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     M_AXI_BRESP               =>  (others => '0'),      --       : IN  std_logic_vector(2-1 DOWNTO 0) := (OTHERS => '0');
     M_AXI_BUSER               =>  (others => '0'),      --       : IN  std_logic_vector(C_AXI_BUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     M_AXI_BVALID              =>  '0',                  --       : IN  std_logic := '0';
     M_AXI_BREADY              =>  open,                 --       : OUT std_logic;

     -- AXI Full/Lite Slave Read Channel (Write side)
     S_AXI_ARID               =>  (others => '0'),       --       : IN  std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARADDR             =>  (others => '0'),       --       : IN  std_logic_vector(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); 
     S_AXI_ARLEN              =>  (others => '0'),       --       : IN  std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARSIZE             =>  (others => '0'),       --       : IN  std_logic_vector(3-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARBURST            =>  (others => '0'),       --       : IN  std_logic_vector(2-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARLOCK             =>  (others => '0'),       --       : IN  std_logic_vector(2-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARCACHE            =>  (others => '0'),       --       : IN  std_logic_vector(4-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARPROT             =>  (others => '0'),       --       : IN  std_logic_vector(3-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARQOS              =>  (others => '0'),       --       : IN  std_logic_vector(4-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARREGION           =>  (others => '0'),       --       : IN  std_logic_vector(4-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARUSER             =>  (others => '0'),       --       : IN  std_logic_vector(C_AXI_ARUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXI_ARVALID            =>  '0',                   --       : IN  std_logic := '0';
     S_AXI_ARREADY            =>  open,                  --       : OUT std_logic;
     S_AXI_RID                =>  open,                  --       : OUT std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0);       
     S_AXI_RDATA              =>  open,                  --       : OUT std_logic_vector(C_AXI_DATA_WIDTH-1 DOWNTO 0); 
     S_AXI_RRESP              =>  open,                  --       : OUT std_logic_vector(2-1 DOWNTO 0);
     S_AXI_RLAST              =>  open,                  --       : OUT std_logic;
     S_AXI_RUSER              =>  open,                  --       : OUT std_logic_vector(C_AXI_RUSER_WIDTH-1 DOWNTO 0);
     S_AXI_RVALID             =>  open,                  --       : OUT std_logic;
     S_AXI_RREADY             =>  '0',                   --       : IN  std_logic := '0';

     -- AXI Full/Lite Master Read Channel (Read side)
     M_AXI_ARID               =>  open,                 --        : OUT std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0);        
     M_AXI_ARADDR             =>  open,                 --        : OUT std_logic_vector(C_AXI_ADDR_WIDTH-1 DOWNTO 0);  
     M_AXI_ARLEN              =>  open,                 --        : OUT std_logic_vector(8-1 DOWNTO 0);
     M_AXI_ARSIZE             =>  open,                 --        : OUT std_logic_vector(3-1 DOWNTO 0);
     M_AXI_ARBURST            =>  open,                 --        : OUT std_logic_vector(2-1 DOWNTO 0);
     M_AXI_ARLOCK             =>  open,                 --        : OUT std_logic_vector(2-1 DOWNTO 0);
     M_AXI_ARCACHE            =>  open,                 --        : OUT std_logic_vector(4-1 DOWNTO 0);
     M_AXI_ARPROT             =>  open,                 --        : OUT std_logic_vector(3-1 DOWNTO 0);
     M_AXI_ARQOS              =>  open,                 --        : OUT std_logic_vector(4-1 DOWNTO 0);
     M_AXI_ARREGION           =>  open,                 --        : OUT std_logic_vector(4-1 DOWNTO 0);
     M_AXI_ARUSER             =>  open,                 --        : OUT std_logic_vector(C_AXI_ARUSER_WIDTH-1 DOWNTO 0);
     M_AXI_ARVALID            =>  open,                 --        : OUT std_logic;
     M_AXI_ARREADY            =>  '0',                  --        : IN  std_logic := '0';
     M_AXI_RID                =>  (others => '0'),      --        : IN  std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');        
     M_AXI_RDATA              =>  (others => '0'),      --        : IN  std_logic_vector(C_AXI_DATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  
     M_AXI_RRESP              =>  (others => '0'),      --        : IN  std_logic_vector(2-1 DOWNTO 0) := (OTHERS => '0');
     M_AXI_RLAST              =>  '0',                  --        : IN  std_logic := '0';
     M_AXI_RUSER              =>  (others => '0'),      --        : IN  std_logic_vector(C_AXI_RUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     M_AXI_RVALID             =>  '0',                  --        : IN  std_logic := '0';
     M_AXI_RREADY             =>  open,                 --        : OUT std_logic;

     -- AXI Streaming Slave Signals (Write side)
     S_AXIS_TVALID            =>  '0',                  --        : IN  std_logic := '0';
     S_AXIS_TREADY            =>  open,                 --        : OUT std_logic;
     S_AXIS_TDATA             =>  (others => '0'),      --        : IN  std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXIS_TSTRB             =>  (others => '0'),      --        : IN  std_logic_vector(C_AXIS_TSTRB_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXIS_TKEEP             =>  (others => '0'),      --        : IN  std_logic_vector(C_AXIS_TKEEP_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXIS_TLAST             =>  '0',                  --        : IN  std_logic := '0';
     S_AXIS_TID               =>  (others => '0'),      --        : IN  std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXIS_TDEST             =>  (others => '0'),      --        : IN  std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
     S_AXIS_TUSER             =>  (others => '0'),      --        : IN  std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');

     -- AXI Streaming Master Signals (Read side)
     M_AXIS_TVALID            =>  open,                 --        : OUT std_logic;
     M_AXIS_TREADY            =>  '0',                  --        : IN  std_logic := '0';
     M_AXIS_TDATA             =>  open,                 --        : OUT std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0);
     M_AXIS_TSTRB             =>  open,                 --        : OUT std_logic_vector(C_AXIS_TSTRB_WIDTH-1 DOWNTO 0);
     M_AXIS_TKEEP             =>  open,                 --        : OUT std_logic_vector(C_AXIS_TKEEP_WIDTH-1 DOWNTO 0);
     M_AXIS_TLAST             =>  open,                 --        : OUT std_logic;
     M_AXIS_TID               =>  open,                 --        : OUT std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0);
     M_AXIS_TDEST             =>  open,                 --        : OUT std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0);
     M_AXIS_TUSER             =>  open,                 --        : OUT std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0);

     -- AXI Full/Lite Write Address Channel Signals
     AXI_AW_INJECTSBITERR     =>  '0',                  --        : IN  std_logic := '0';
     AXI_AW_INJECTDBITERR     =>  '0',                  --        : IN  std_logic := '0';
     AXI_AW_PROG_FULL_THRESH  =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_WACH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_AW_PROG_EMPTY_THRESH =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_WACH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_AW_DATA_COUNT        =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WACH DOWNTO 0);
     AXI_AW_WR_DATA_COUNT     =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WACH DOWNTO 0);
     AXI_AW_RD_DATA_COUNT     =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WACH DOWNTO 0);
     AXI_AW_SBITERR           =>  open,                 --        : OUT std_logic;
     AXI_AW_DBITERR           =>  open,                 --        : OUT std_logic;
     AXI_AW_OVERFLOW          =>  open,                 --        : OUT std_logic;
     AXI_AW_UNDERFLOW         =>  open,                 --        : OUT std_logic;
     AXI_AW_PROG_FULL         =>  open,                 --        : OUT STD_LOGIC := '0';
     AXI_AW_PROG_EMPTY        =>  open,                 --        : OUT STD_LOGIC := '1';

     -- AXI Full/Lite Write Data Channel Signals
     AXI_W_INJECTSBITERR      =>  '0',                  --        : IN  std_logic := '0';
     AXI_W_INJECTDBITERR      =>  '0',                  --        : IN  std_logic := '0';
     AXI_W_PROG_FULL_THRESH   =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_WDCH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_W_PROG_EMPTY_THRESH  =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_WDCH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_W_DATA_COUNT         =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WDCH DOWNTO 0);
     AXI_W_WR_DATA_COUNT      =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WDCH DOWNTO 0);
     AXI_W_RD_DATA_COUNT      =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WDCH DOWNTO 0);
     AXI_W_SBITERR            =>  open,                 --        : OUT std_logic;
     AXI_W_DBITERR            =>  open,                 --        : OUT std_logic;
     AXI_W_OVERFLOW           =>  open,                 --        : OUT std_logic;
     AXI_W_UNDERFLOW          =>  open,                 --        : OUT std_logic;
     AXI_W_PROG_FULL          =>  open,                 --        : OUT STD_LOGIC := '0';
     AXI_W_PROG_EMPTY         =>  open,                 --        : OUT STD_LOGIC := '1';

     -- AXI Full/Lite Write Response Channel Signals
     AXI_B_INJECTSBITERR      =>  '0',                  --        : IN  std_logic := '0';
     AXI_B_INJECTDBITERR      =>  '0',                  --        : IN  std_logic := '0';
     AXI_B_PROG_FULL_THRESH   =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_WRCH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_B_PROG_EMPTY_THRESH  =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_WRCH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_B_DATA_COUNT         =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WRCH DOWNTO 0);
     AXI_B_WR_DATA_COUNT      =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WRCH DOWNTO 0);
     AXI_B_RD_DATA_COUNT      =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_WRCH DOWNTO 0);
     AXI_B_SBITERR            =>  open,                 --        : OUT std_logic;
     AXI_B_DBITERR            =>  open,                 --        : OUT std_logic;
     AXI_B_OVERFLOW           =>  open,                 --        : OUT std_logic;
     AXI_B_UNDERFLOW          =>  open,                 --        : OUT std_logic;
     AXI_B_PROG_FULL          =>  open,                 --        : OUT STD_LOGIC := '0';
     AXI_B_PROG_EMPTY         =>  open,                 --        : OUT STD_LOGIC := '1';

     -- AXI Full/Lite Read Address Channel Signals
     AXI_AR_INJECTSBITERR     =>  '0',                  --        : IN  std_logic := '0';
     AXI_AR_INJECTDBITERR     =>  '0',                  --        : IN  std_logic := '0';
     AXI_AR_PROG_FULL_THRESH  =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_RACH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_AR_PROG_EMPTY_THRESH =>  (others => '0'),      --        : IN  std_logic_vector(C_WR_PNTR_WIDTH_RACH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_AR_DATA_COUNT        =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_RACH DOWNTO 0);
     AXI_AR_WR_DATA_COUNT     =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_RACH DOWNTO 0);
     AXI_AR_RD_DATA_COUNT     =>  open,                 --        : OUT std_logic_vector(C_WR_PNTR_WIDTH_RACH DOWNTO 0);
     AXI_AR_SBITERR           =>  open,                 --        : OUT std_logic;
     AXI_AR_DBITERR           =>  open,                 --        : OUT std_logic;
     AXI_AR_OVERFLOW          =>  open,                 --        : OUT std_logic;
     AXI_AR_UNDERFLOW         =>  open,                 --        : OUT std_logic;
     AXI_AR_PROG_FULL         =>  open,                 --        : OUT STD_LOGIC := '0';
     AXI_AR_PROG_EMPTY        =>  open,                 --        : OUT STD_LOGIC := '1';

     -- AXI Full/Lite Read Data Channel Signals
     AXI_R_INJECTSBITERR     =>  '0',                  --         : IN  std_logic := '0';
     AXI_R_INJECTDBITERR     =>  '0',                  --         : IN  std_logic := '0';
     AXI_R_PROG_FULL_THRESH  =>  (others => '0'),      --         : IN  std_logic_vector(C_WR_PNTR_WIDTH_RDCH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_R_PROG_EMPTY_THRESH =>  (others => '0'),      --         : IN  std_logic_vector(C_WR_PNTR_WIDTH_RDCH-1 DOWNTO 0) := (OTHERS => '0');
     AXI_R_DATA_COUNT        =>  open,                 --         : OUT std_logic_vector(C_WR_PNTR_WIDTH_RDCH DOWNTO 0);
     AXI_R_WR_DATA_COUNT     =>  open,                 --         : OUT std_logic_vector(C_WR_PNTR_WIDTH_RDCH DOWNTO 0);
     AXI_R_RD_DATA_COUNT     =>  open,                 --         : OUT std_logic_vector(C_WR_PNTR_WIDTH_RDCH DOWNTO 0);
     AXI_R_SBITERR           =>  open,                 --         : OUT std_logic;
     AXI_R_DBITERR           =>  open,                 --         : OUT std_logic;
     AXI_R_OVERFLOW          =>  open,                 --         : OUT std_logic;
     AXI_R_UNDERFLOW         =>  open,                 --         : OUT std_logic;
     AXI_R_PROG_FULL         =>  open,                 --         : OUT STD_LOGIC := '0';
     AXI_R_PROG_EMPTY        =>  open,                 --         : OUT STD_LOGIC := '1';

     -- AXI Streaming FIFO Related Signals
     AXIS_INJECTSBITERR      =>  '0',                  --         : IN  std_logic := '0';
     AXIS_INJECTDBITERR      =>  '0',                  --         : IN  std_logic := '0';
     AXIS_PROG_FULL_THRESH   =>  (others => '0'),      --         : IN  std_logic_vector(C_WR_PNTR_WIDTH_AXIS-1 DOWNTO 0) := (OTHERS => '0');
     AXIS_PROG_EMPTY_THRESH  =>  (others => '0'),      --         : IN  std_logic_vector(C_WR_PNTR_WIDTH_AXIS-1 DOWNTO 0) := (OTHERS => '0');
     AXIS_DATA_COUNT         =>  open,                 --         : OUT std_logic_vector(C_WR_PNTR_WIDTH_AXIS DOWNTO 0);
     AXIS_WR_DATA_COUNT      =>  open,                 --         : OUT std_logic_vector(C_WR_PNTR_WIDTH_AXIS DOWNTO 0);
     AXIS_RD_DATA_COUNT      =>  open,                 --         : OUT std_logic_vector(C_WR_PNTR_WIDTH_AXIS DOWNTO 0);
     AXIS_SBITERR            =>  open,                 --         : OUT std_logic;
     AXIS_DBITERR            =>  open,                 --         : OUT std_logic;
     AXIS_OVERFLOW           =>  open,                 --         : OUT std_logic;
     AXIS_UNDERFLOW          =>  open,                 --         : OUT std_logic
     AXIS_PROG_FULL          =>  open,                 --         : OUT STD_LOGIC := '0';
     AXIS_PROG_EMPTY         =>  open                  --         : OUT STD_LOGIC := '1';

    
    );

END async_fifo32_a;
