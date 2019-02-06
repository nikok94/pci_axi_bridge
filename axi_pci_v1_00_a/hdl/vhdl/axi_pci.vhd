----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2019 10:09:56
-- Design Name: 
-- Module Name: axi_pci - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library axi_pci_v1_00_a_proc_common_v3_00_a;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.clog2;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.max2;
use axi_pci_v1_00_a_proc_common_v3_00_a.family_support.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.ipif_pkg.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.or_gate128;

library axi_pci_v1_00_a;
use axi_pci_v1_00_a.pci_lc;
use axi_pci_v1_00_a.target_interface;
use axi_pci_v1_00_a.initiator_interface;
use axi_pci_v1_00_a.control_block;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axi_pci is
    Generic(
      C_PCIBAR2AXIBAR_0                 : std_logic_vector(31 downto 0) := x"4000_0000";
      C_PCIBAR_LEN_0                    : integer range 13 to 32        := 20;
      C_PCIBAR2AXIBAR_1                 : std_logic_vector(31 downto 0) := x"5000_0000";
      C_PCIBAR_LEN_1                    : integer range 13 to 32        := 13;
      C_PCIBAR2AXIBAR_2                 : std_logic_vector(31 downto 0) := x"6000_0000";
      C_PCIBAR_LEN_2                    : integer range 13 to 32        := 13;
      C_M_AXI_ADDR_WIDTH                : integer range 32 to 32        := 32;
      C_M_AXI_DATA_WIDTH                : integer range 32 to 256       := 32;
      C_FAMILY                          : string := "virtex6";
      C_S_AXI_ID_WIDTH                  : integer := 4;
      C_S_AXI_ADDR_WIDTH                : integer range 32 to 32        := 32;
      C_S_AXI_DATA_WIDTH                : integer range 32 to 32       := 32;
      C_AXIBAR_0                        : std_logic_vector(31 downto 0):= x"ffffffff";
      C_AXIBAR_1                        : std_logic_vector(31 downto 0):= x"ffffffff";
      C_AXIBAR_HIGHADDR_0               : std_logic_vector(31 downto 0):= x"00000000";
      C_AXIBAR_HIGHADDR_1               : std_logic_vector(31 downto 0):= x"00000000";
      C_AXIBAR2PCIBAR_0                 : std_logic_vector(31 downto 0):= x"12340000";
      C_AXIBAR2PCIBAR_1                 : std_logic_vector(31 downto 0):= x"56780000";
      C_S_AXI_CTL_ADDR_WIDTH            : integer := 32;
      C_S_AXI_CTL_DATA_WIDTH            : integer := 32
     );

    Port (
---------------------------------------------------------------------------
-- Control AXI Slave interface
---------------------------------------------------------------------------
    s_axi_ctl_aresetn          : in std_logic;                                     
    s_axi_ctl_aclk             : in std_logic;                                                                                             
    s_axi_ctl_awvalid      : in std_logic;                                     
    s_axi_ctl_awaddr       : in std_logic_vector(c_s_axi_ctl_addr_width-1 downto 0);
    s_axi_ctl_awready      : out std_logic;                                    
    s_axi_ctl_wvalid       : in std_logic;                                     
    s_axi_ctl_wdata        : in std_logic_vector(c_s_axi_ctl_data_width-1 downto 0);                 
    s_axi_ctl_wstrb        : in std_logic_vector((c_s_axi_ctl_data_width/8)-1 downto 0);                  
    s_axi_ctl_wready       : out std_logic;                                    
    s_axi_ctl_bvalid       : out std_logic;                                    
    s_axi_ctl_bresp        : out std_logic_vector(1 downto 0);                 
    s_axi_ctl_bready       : in std_logic;                                     
    s_axi_ctl_arvalid      : in std_logic;                                     
    s_axi_ctl_araddr       : in std_logic_vector(c_s_axi_ctl_addr_width-1 downto 0);
    s_axi_ctl_arready      : out std_logic;                                    
    s_axi_ctl_rvalid       : out std_logic;                                    
    s_axi_ctl_rresp        : out std_logic_vector(1 downto 0);                 
    s_axi_ctl_rdata        : out std_logic_vector(c_s_axi_ctl_data_width-1 downto 0);                
    s_axi_ctl_rready       : in std_logic ;
    ------------------------------------------------------------------------
    -- PCI interface signals
    ------------------------------------------------------------------------
--      AD_IO                           : inout std_logic_vector(31 downto 0);
      AD_IO_O                         : out std_logic_vector(31 downto 0);
      AD_IO_I                         : in  std_logic_vector(31 downto 0);
      AD_IO_T                         : out std_logic_vector(31 downto 0);
--      CBE_IO_IO                          : inout std_logic_vector(3 downto 0);
      CBE_IO_O                        : out std_logic_vector(3 downto 0);
      CBE_IO_I                        : in  std_logic_vector(3 downto 0);
      CBE_IO_T                        : out std_logic_vector(3 downto 0);
--      PAR_IO                          : inout std_logic;
      PAR_IO_O                        : out std_logic;
      PAR_IO_I                        : in  std_logic;
      PAR_IO_T                        : out std_logic;
--      FRAME_IO                        : inout std_logic;
      FRAME_IO_O                      : out std_logic;
      FRAME_IO_I                      : in  std_logic;
      FRAME_IO_T                      : out std_logic;
--      TRDY_IO                         : inout std_logic;
      TRDY_IO_I                       : in  std_logic;
      TRDY_IO_O                       : out std_logic;
      TRDY_IO_T                       : out std_logic;
--      IRDY_IO                         : inout std_logic;
      IRDY_IO_O                       : out std_logic;
      IRDY_IO_I                       : in  std_logic;
      IRDY_IO_T                       : out std_logic;
--      STOP_IO                         : inout std_logic;
      STOP_IO_O                       : out std_logic;
      STOP_IO_I                       : in  std_logic;
      STOP_IO_T                       : out std_logic;
--      DEVSEL_IO                       : inout std_logic;
      DEVSEL_IO_O                     : out std_logic;
      DEVSEL_IO_I                     : in  std_logic;
      DEVSEL_IO_T                     : out std_logic;
      IDSEL_I                         : in    std_logic;
--      PERR_IO                         : inout std_logic;
      PERR_IO_O                       : out std_logic;
      PERR_IO_I                       : in  std_logic;
      PERR_IO_T                       : out std_logic;
--      SERR_IO                         : inout std_logic;
      SERR_IO_O                       : out std_logic;
      SERR_IO_I                       : in  std_logic;
      SERR_IO_T                       : out std_logic;
      INT_O                           : out   std_logic;
      REQ_O                           : out   std_logic;
      GNT_I                           : in    std_logic;
      RST_I                           : in    std_logic;
      CLK_I                           : in    std_logic;
    
    ------------------------------------------------------------------------
    -- Axi interface signals
    ------------------------------------------------------------------------
      axi_aclk               : in std_logic;
      axi_aresetn            : in std_logic;
    -----------------------------------------------------------------------
    -- AXI4 Master Read Channel
    -----------------------------------------------------------------------
    -- MMap Read Address Channel                                    -- AXI4
      m_axi_arready          : in  std_logic                       ;-- AXI4
      m_axi_arvalid          : out std_logic                       ;-- AXI4
      m_axi_araddr           : out std_logic_vector                 -- AXI4
                                   (C_M_AXI_ADDR_WIDTH-1 downto 0) ;-- AXI4
      m_axi_arlen            : out std_logic_vector(7 downto 0)    ;-- AXI4
      m_axi_arsize           : out std_logic_vector(2 downto 0)    ;-- AXI4
      m_axi_arburst          : out std_logic_vector(1 downto 0)    ;-- AXI4
      m_axi_arprot           : out std_logic_vector(2 downto 0)    ;-- AXI4
      m_axi_arcache          : out std_logic_vector(3 downto 0)    ;-- AXI4
                                                                    -- AXI4
    -- MMap Read Data Channel                                       -- AXI4
      m_axi_rready           : out std_logic                       ;-- AXI4
      m_axi_rvalid           : in  std_logic                       ;-- AXI4
      m_axi_rdata            : in  std_logic_vector                 -- AXI4
                                   (C_M_AXI_DATA_WIDTH-1 downto 0) ;-- AXI4
      m_axi_rresp            : in  std_logic_vector(1 downto 0)    ;-- AXI4
      m_axi_rlast            : in  std_logic                       ;-- AXI4



    -----------------------------------------------------------------------------
    -- AXI4 Master Write Channel
    -----------------------------------------------------------------------------
    -- Write Address Channel                                           -- AXI4
      m_axi_awready          : in  std_logic                          ;-- AXI4
      m_axi_awvalid          : out std_logic                          ;-- AXI4
      m_axi_awaddr           : out std_logic_vector                    -- AXI4
                                   (C_M_AXI_ADDR_WIDTH-1 downto 0)    ;-- AXI4
      m_axi_awlen            : out std_logic_vector(7 downto 0)       ;-- AXI4
      m_axi_awsize           : out std_logic_vector(2 downto 0)       ;-- AXI4
      m_axi_awburst          : out std_logic_vector(1 downto 0)       ;-- AXI4
      m_axi_awprot           : out std_logic_vector(2 downto 0)       ;-- AXI4
      m_axi_awcache          : out std_logic_vector(3 downto 0)       ;-- AXI4
                                                                       -- AXI4
    -- Write Data Channel                                              -- AXI4
      m_axi_wready           : in  std_logic                          ;-- AXI4
      m_axi_wvalid           : out std_logic                          ;-- AXI4
      m_axi_wdata            : out std_logic_vector                    -- AXI4
                                   (C_M_AXI_DATA_WIDTH-1 downto 0)    ;-- AXI4
      m_axi_wstrb            : out std_logic_vector                    -- AXI4
                                   ((C_M_AXI_DATA_WIDTH/8)-1 downto 0);-- AXI4
      m_axi_wlast            : out std_logic                          ;-- AXI4
                                                                       -- AXI4
    -- Write Response Channel                                          -- AXI4
      m_axi_bready           : out std_logic                          ;-- AXI4
      m_axi_bvalid           : in  std_logic                          ;-- AXI4
      m_axi_bresp            : in  std_logic_vector(1 downto 0)       ;-- AXI4
    
--  -- axi write address channel signals
      s_axi_awid          : in  std_logic_vector((c_s_axi_id_width-1) downto 0);
      s_axi_awaddr        : in  std_logic_vector((c_s_axi_addr_width-1) downto 0);
      s_axi_awlen         : in  std_logic_vector(7 downto 0);
      s_axi_awsize        : in  std_logic_vector(2 downto 0);
      s_axi_awburst       : in  std_logic_vector(1 downto 0);
      s_axi_awlock        : in  std_logic;
      s_axi_awcache       : in  std_logic_vector(3 downto 0);
      s_axi_awprot        : in  std_logic_vector(2 downto 0);
      s_axi_awvalid       : in  std_logic;
      s_axi_awready       : out std_logic;
--  -- axi write channel signals
      s_axi_wdata         : in  std_logic_vector((c_s_axi_data_width-1) downto 0);
      s_axi_wstrb         : in  std_logic_vector(((c_s_axi_data_width/8)-1) downto 0);
      s_axi_wlast         : in  std_logic;
      s_axi_wvalid        : in  std_logic;
      s_axi_wready        : out std_logic;
--  -- axi write response channel signals
      s_axi_bid           : out std_logic_vector((c_s_axi_id_width-1) downto 0);
      s_axi_bresp         : out std_logic_vector(1 downto 0);
      s_axi_bvalid        : out std_logic;
      s_axi_bready        : in  std_logic;
--  -- axi read address channel signals
      s_axi_arid          : in  std_logic_vector((c_s_axi_id_width-1) downto 0);
      s_axi_araddr        : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      s_axi_arlen         : in  std_logic_vector(7 downto 0);
      s_axi_arsize        : in  std_logic_vector(2 downto 0);
      s_axi_arburst       : in  std_logic_vector(1 downto 0);
      s_axi_arlock        : in  std_logic;
      s_axi_arcache       : in  std_logic_vector(3 downto 0);
      s_axi_arprot        : in  std_logic_vector(2 downto 0);
      s_axi_arvalid       : in  std_logic;
      s_axi_arready       : out std_logic;
--  -- axi read data channel Signals
      s_axi_rid           : out std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      s_axi_rdata         : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      s_axi_rresp         : out std_logic_vector(1 downto 0);
      s_axi_rlast         : out std_logic;
      s_axi_rvalid        : out std_logic;
      s_axi_rready        : in  std_logic
    );
end axi_pci;

architecture Behavioral of axi_pci is
          
    constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE :=
       (
         X"0000_0000" & C_AXIBAR_0, -- IP user0 base address
         X"0000_0000" & C_AXIBAR_HIGHADDR_0, -- IP user0 high address

         X"0000_0000" & C_AXIBAR_1, -- IP user0 base address
         X"0000_0000" & C_AXIBAR_HIGHADDR_1 -- IP user0 high address

     );
    constant C_ARD_NUM_CE_ARRAY     : INTEGER_ARRAY_TYPE :=
        (
          1,         -- User0 CE Number -- only 1 is supported per addr range
          1          -- User1 CE Number -- only 1 is supported per addr range
        );
    signal gnd                      : std_logic:= '0';
    signal vcc                      : std_logic:= '1';
    signal pci_lc_clk_out           : std_logic;
    signal pci_lc_rst_out           : std_logic;
    signal pci_lc_frameq_n          : std_logic;
    signal pci_lc_trdyq_n           : std_logic;
    signal pci_lc_irdyq_n           : std_logic;
    signal pci_lc_stopq_n           : std_logic;
    signal pci_lc_devselq_n         : std_logic;
    signal pci_lc_addr_vld_out      : std_logic;
    signal pci_lc_addr              : std_logic_vector(31 downto 0);
    signal pci_lc_base_hit_out      : std_logic_vector(7 downto 0);
    signal PCI_LC_ADIO_IN           : std_logic_vector(31 downto 0):=(others=> 'H');
    signal PCI_LC_ADIO_OUT          : std_logic_vector(31 downto 0):=(others=> 'H');
    signal pci_lc_cfg_vld           : std_logic;
    signal pci_lc_cfg_hit           : std_logic;
    signal target_intrf_s_ready     : std_logic;
    signal target_intrf_s_term      : std_logic;
    signal target_intrf_s_abort     : std_logic;
    signal pci_lc_s_wrdn            : std_logic;
    signal pci_lc_s_src_en          : std_logic;
    signal pci_lc_s_data_vld        : std_logic;
    signal pci_lc_s_cbe             : std_logic_vector(3 downto 0);
    signal pci_lc_pci_cmd           : std_logic_vector(15 downto 0);
    signal pci_lc_csr               : std_logic_vector(39 downto 0);
    signal pci_lc_m_data            : std_logic;
    signal pci_lc_i_idle            : std_logic;
    signal pci_lc_m_addr_n          : std_logic;
    signal pci_lc_idle              : std_logic;
    signal pci_lc_b_busy            : std_logic;
    signal pci_lc_perrq_n           : std_logic;
    signal pci_lc_serrq_n           : std_logic;
    signal pci_lc_backoff           : std_logic;
    signal pci_lc_s_data            : std_logic;
    signal INT_N_reg                : std_logic;
    signal PME_N_reg                : std_logic;
    signal ITR_M_READY              : std_logic;
    signal ITR_M_CBE                : std_logic_vector(3 downto 0);
    signal ITR_REQUEST              : std_logic;
    signal ITR_COMPLETE             : std_logic;
    signal ITR_REQUESTHOLD          : std_logic;
    signal ITR_M_WRDN               : std_logic;
    signal axibar_control           : std_logic_vector(31 downto 0);
    signal axibar2pcibar0           : std_logic_vector(31 downto 0);
    signal axibar2pcibar1           : std_logic_vector(31 downto 0);
    signal pci_lc_dr_bus            : std_logic;
    signal pci_lc_time_out          : std_logic;
    signal pci_lc_m_src_en          : std_logic;
    signal pci_lc_m_data_vld        : std_logic;
    signal tr_adio_out              : std_logic_vector(31 downto 0);
    signal itr_adio_out             : std_logic_vector(31 downto 0);
    signal INITIATOR_BUSY           : std_logic;
    
begin

pci_lc_ist : entity axi_pci_v1_00_a.PCI_LC 
  port map(
--    AD_IO         => AD_IO    ,
    ADO           => AD_IO_O,
    ADI           => AD_IO_I,
    ADT           => AD_IO_T,
--    CBE_IO_IO        => CBE_IO_IO   ,
    CBO           => CBE_IO_O,
    CBI           => CBE_IO_I,
    CBT           => CBE_IO_T,
--    PAR_IO_IO        => PAR_IO_IO   ,
    PARO          => PAR_IO_O,
    PARI          => PAR_IO_I,
    PART          => PAR_IO_T,
--    FRAME_IO      => FRAME_IO ,
    FRAMEO        => FRAME_IO_O,
    FRAMEI        => FRAME_IO_I,
    FRAMET        => FRAME_IO_T,
--    TRDY_IO       => TRDY_IO  ,
    TRDYI         => TRDY_IO_I,
    TRDYO         => TRDY_IO_O,
    TRDYT         => TRDY_IO_T,
--    IRDY_IO       => IRDY_IO  ,
    IRDYO         => IRDY_IO_O,
    IRDYI         => IRDY_IO_I,
    IRDYT         => IRDY_IO_T,
--    STOP_IO       => STOP_IO  ,
    STOPO         => STOP_IO_O,
    STOPI         => STOP_IO_I,
    STOPT         => STOP_IO_T,
--    DEVSEL_IO     => DEVSEL_IO,
    DEVSELO       => DEVSEL_IO_O,
    DEVSELI       => DEVSEL_IO_I,
    DEVSELT       => DEVSEL_IO_T,
    IDSEL_I       => IDSEL_I  ,
--    PERR_IO       => PERR_IO  ,
    PERRO         => PERR_IO_O,
    PERRI         => PERR_IO_I,
    PERRT         => PERR_IO_T,
--    SERR_IO       => SERR_IO  ,
    SERRO         => SERR_IO_O,
    SERRI         => SERR_IO_I,
    SERRT         => SERR_IO_T,
    INT_O         => INT_O    ,
    PME_O         => open    ,
    REQ_O         => REQ_O    ,
    GNT_I         => GNT_I    ,
    RST_I         => RST_I    ,
    CLK_I         => CLK_I    ,

    FRAMEQ_N      => pci_lc_frameq_n ,
    TRDYQ_N       => pci_lc_trdyq_n  ,
    IRDYQ_N       => pci_lc_irdyq_n  ,
    STOPQ_N       => pci_lc_stopq_n  ,
    DEVSELQ_N     => pci_lc_devselq_n,
    ADDR          => pci_lc_addr,
    ADIO_IN       => PCI_LC_ADIO_IN ,
    ADIO_OUT      => PCI_LC_ADIO_OUT,
    CFG_VLD       => pci_lc_cfg_vld,
    CFG_HIT       => pci_lc_cfg_hit,
    C_TERM        => vcc,
    C_READY       => vcc,
    ADDR_VLD      => pci_lc_addr_vld_out,
    BASE_HIT      => pci_lc_base_hit_out,
    S_TERM        => target_intrf_s_term,
    S_READY       => target_intrf_s_ready,
    S_ABORT       => target_intrf_s_abort,
    S_WRDN        => pci_lc_s_wrdn    ,
    S_SRC_EN      => pci_lc_s_src_en  ,
    S_DATA_VLD    => pci_lc_s_data_vld,
    S_CBE         => pci_lc_s_cbe     ,
    PCI_CMD       => pci_lc_pci_cmd   ,
    REQUEST       => ITR_REQUEST,
    REQUESTHOLD   => ITR_REQUESTHOLD,
    COMPLETE      => ITR_COMPLETE,
    M_WRDN        => ITR_M_WRDN,
    M_READY       => ITR_M_READY,
    M_SRC_EN      => pci_lc_m_src_en,
    M_DATA_VLD    => pci_lc_m_data_vld,
    M_CBE         => ITR_M_CBE,
    TIME_OUT      => pci_lc_time_out,
    CFG_SELF      => gnd,
    M_DATA        => pci_lc_m_data  ,
    I_IDLE        => pci_lc_i_idle  ,
    M_ADDR_N      => pci_lc_m_addr_n,
    IDLE          => pci_lc_idle    ,
    B_BUSY        => pci_lc_b_busy  ,
    S_DATA        => pci_lc_s_data,
    BACKOFF       => pci_lc_backoff,
    INT_N         => INT_N_reg,
    PME_N         => PME_N_reg,
    PERRQ_N       => pci_lc_perrq_n,
    SERRQ_N       => pci_lc_serrq_n,
    KEEPOUT       => gnd,
    CSR           => pci_lc_csr,
    PCIW_EN       => open,
    BW_DETECT_DIS => gnd,
    BW_MANUAL_32B => gnd,
    PCIX_EN       => open,
    RTR           => open,
    CFG           => open,
    RST           => pci_lc_rst_out,
    CLK           => pci_lc_clk_out,
    dr_bus        => pci_lc_dr_bus
);

target_interface_inst :  entity axi_pci_v1_00_a.target_interface 
    Generic map(
      C_AXI_BAR0_MAPPED_FROM_PCI_BAR0 => C_PCIBAR2AXIBAR_0,
      C_PCI_BAR0_SIZE                 => C_PCIBAR_LEN_0                ,
      C_AXI_BAR1_MAPPED_FROM_PCI_BAR1 => C_PCIBAR2AXIBAR_1,
      C_PCI_BAR1_SIZE                 => C_PCIBAR_LEN_1                ,
      C_AXI_BAR2_MAPPED_FROM_PCI_BAR2 => C_PCIBAR2AXIBAR_2,
      C_PCI_BAR2_SIZE                 => C_PCIBAR_LEN_2                ,
      C_M_AXI_ADDR_WIDTH              => C_M_AXI_ADDR_WIDTH             ,
      C_M_AXI_DATA_WIDTH              => C_M_AXI_DATA_WIDTH             ,
      C_BURST_TR_EN                   => 1                  ,
      C_FAMILY                        => C_FAMILY
    )
    Port map (
    -------------------------------------------------------------------------
    -- PCI interface signals
    -------------------------------------------------------------------------
      CLK_PCI                       => pci_lc_clk_out,
      RST_PCI                       => pci_lc_rst_out,
      TR_BASE_HIT                   => pci_lc_base_hit_out,
      TR_ADIO_OUT                   => tr_adio_out,
      TR_ADIO_IN                    => PCI_LC_ADIO_OUT ,
      TR_ADDR                       => pci_lc_addr,
      TR_S_WRDN                     => pci_lc_s_wrdn    ,
      TR_S_CBE                      => pci_lc_s_cbe     ,
      TR_PCI_CMD                    => pci_lc_pci_cmd   ,
      TR_S_DATA_VLD                 => pci_lc_s_data_vld,
      TR_S_DATA                     => pci_lc_s_data    ,
      TR_ADDR_VLD                   => pci_lc_addr_vld_out,
      TR_S_SRC_EN                   => pci_lc_s_src_en,
      TR_CSR                        => pci_lc_csr,
      TR_S_READY                    => target_intrf_s_ready,
      TR_S_TERM                     => target_intrf_s_term ,
      TR_S_ABORT                    => target_intrf_s_abort,
      TR_EDLE                       => pci_lc_idle   ,
      TR_B_BUSY                     => pci_lc_b_busy ,
      TR_BACKOFF                    => pci_lc_backoff,
    ------------------------------------------------------------------------
    -- Axi interface signals
    ------------------------------------------------------------------------
      m_axi_aclk                    => axi_aclk   ,
      m_axi_aresetn                 => axi_aresetn,
    -----------------------------------------------------------------------
    -- AXI4 Master Read Channel
    -----------------------------------------------------------------------
    -- MMap Read Address Channel
      m_axi_arready                 => m_axi_arready,
      m_axi_arvalid                 => m_axi_arvalid,
      m_axi_araddr                  => m_axi_araddr ,
      m_axi_arlen                   => m_axi_arlen  ,
      m_axi_arsize                  => m_axi_arsize ,
      m_axi_arburst                 => m_axi_arburst,
      m_axi_arprot                  => m_axi_arprot ,
      m_axi_arcache                 => m_axi_arcache,
                                                                    
    -- MMap Read Data Channel                                       
      m_axi_rready                  => m_axi_rready,
      m_axi_rvalid                  => m_axi_rvalid,
      m_axi_rdata                   => m_axi_rdata ,
                                        
      m_axi_rresp                   => m_axi_rresp,
      m_axi_rlast                   => m_axi_rlast,



    -----------------------------------------------------------------------------
    -- AXI4 Master Write Channel
    -----------------------------------------------------------------------------
    -- Write Address Channel
      m_axi_awready                 => m_axi_awready,
      m_axi_awvalid                 => m_axi_awvalid,
      m_axi_awaddr                  => m_axi_awaddr ,

      m_axi_awlen                   => m_axi_awlen  ,
      m_axi_awsize                  => m_axi_awsize ,
      m_axi_awburst                 => m_axi_awburst,
      m_axi_awprot                  => m_axi_awprot ,
      m_axi_awcache                 => m_axi_awcache,

    -- Write Data Channel
      m_axi_wready                  => m_axi_wready,
      m_axi_wvalid                  => m_axi_wvalid,
      m_axi_wdata                   => m_axi_wdata ,
      m_axi_wstrb                   => m_axi_wstrb,
      m_axi_wlast                   => m_axi_wlast,
    -- Write Response Channel
      m_axi_bready                  => m_axi_bready,
      m_axi_bvalid                  => m_axi_bvalid,
      m_axi_bresp                   => m_axi_bresp 
    );

initiator_inst : entity axi_pci_v1_00_a.initiator_interface
  generic map(
    C_FAMILY                        => C_FAMILY,
----AXI Parameters  
    C_S_AXI_SUPPORTS_WRITE          => 1,
    C_S_AXI_SUPPORTS_READ           => 1,
    C_S_AXI_ADDR_WIDTH              => C_S_AXI_ADDR_WIDTH,
    C_S_AXI_DATA_WIDTH              => C_S_AXI_DATA_WIDTH,
    C_S_AXI_ID_WIDTH                => C_S_AXI_ID_WIDTH,
    C_AXIBAR_0                      => C_AXIBAR_0,
    C_AXIBAR_1                      => C_AXIBAR_1,
    C_AXIBAR_HIGHADDR_0             => C_AXIBAR_HIGHADDR_0,
    C_AXIBAR_HIGHADDR_1             => C_AXIBAR_HIGHADDR_1
    )
  Port map(
     --   -- AXI Global System Signals
    s_axi_aclk          => axi_aclk   ,
    s_axi_aresetn       => axi_aresetn,
    s_axi_awid          => s_axi_awid   ,
    s_axi_awaddr        => s_axi_awaddr ,
    s_axi_awlen         => s_axi_awlen  ,
    s_axi_awsize        => s_axi_awsize ,
    s_axi_awburst       => s_axi_awburst,
    s_axi_awlock        => s_axi_awlock ,
    s_axi_awcache       => s_axi_awcache,
    s_axi_awprot        => s_axi_awprot ,
    s_axi_awvalid       => s_axi_awvalid,
    s_axi_awready       => s_axi_awready,
    s_axi_wdata         => s_axi_wdata  ,
    s_axi_wstrb         => s_axi_wstrb  ,
    s_axi_wlast         => s_axi_wlast  ,
    s_axi_wvalid        => s_axi_wvalid ,
    s_axi_wready        => s_axi_wready ,
    s_axi_bid           => s_axi_bid    ,
    s_axi_bresp         => s_axi_bresp  ,
    s_axi_bvalid        => s_axi_bvalid ,
    s_axi_bready        => s_axi_bready ,
    s_axi_arid          => s_axi_arid   ,
    s_axi_araddr        => s_axi_araddr ,
    s_axi_arlen         => s_axi_arlen  ,
    s_axi_arsize        => s_axi_arsize ,
    s_axi_arburst       => s_axi_arburst,
    s_axi_arlock        => s_axi_arlock ,
    s_axi_arcache       => s_axi_arcache,
    s_axi_arprot        => s_axi_arprot ,
    s_axi_arvalid       => s_axi_arvalid,
    s_axi_arready       => s_axi_arready,
    s_axi_rid           => s_axi_rid    ,
    s_axi_rdata         => s_axi_rdata  ,
    s_axi_rresp         => s_axi_rresp  ,
    s_axi_rlast         => s_axi_rlast  ,
    s_axi_rvalid        => s_axi_rvalid ,
    s_axi_rready        => s_axi_rready ,
    
    clk_pci             => pci_lc_clk_out,
    rst_pci             => pci_lc_rst_out,
    itr_adio_in         => pci_lc_adio_out,
    itr_adio_out        => itr_adio_out,
    itr_m_data_vld      => pci_lc_m_data_vld,
    itr_m_src_en        => pci_lc_m_src_en,
    itr_time_out        => pci_lc_time_out,
    itr_csr             => pci_lc_csr,
    itr_request         => itr_request,
    itr_requesthold     => itr_requesthold,
    itr_m_wrdn          => itr_m_wrdn,
    itr_m_cbe           => itr_m_cbe,
    itr_m_ready         => itr_m_ready,
    itr_complete        => itr_complete,
    itr_i_idle          => pci_lc_i_idle,
    itr_dr_bus          => pci_lc_dr_bus,
    itr_m_addr_n        => pci_lc_m_addr_n,
    itr_m_data          => pci_lc_m_data,
    
    INITIATOR_BUSY      => INITIATOR_BUSY,
    
    axibar_control      => axibar_control,
    axibar2pcibar0      => axibar2pcibar0,
    axibar2pcibar1      => axibar2pcibar1
    
    );

    PCI_LC_ADIO_IN <= itr_adio_out when (INITIATOR_BUSY = '1') else tr_adio_out;
    
control_block_inst:    entity axi_pci_v1_00_a.control_block
    generic map (
      C_S_AXI_CTL_ADDR_WIDTH => C_S_AXI_CTL_ADDR_WIDTH,
      C_S_AXI_CTL_DATA_WIDTH => C_S_AXI_CTL_DATA_WIDTH,
      C_AXIBAR2PCIBAR_0 => C_AXIBAR2PCIBAR_0,
      C_AXIBAR2PCIBAR_1 => C_AXIBAR2PCIBAR_1
    )
    port map(
      s_axi_ctl_aclk    => s_axi_ctl_aclk,
      s_axi_ctl_aresetn  => s_axi_ctl_aresetn  ,
      s_axi_ctl_arready => s_axi_ctl_arready ,
      s_axi_ctl_arvalid => s_axi_ctl_arvalid ,
      s_axi_ctl_araddr  => s_axi_ctl_araddr  ,
      s_axi_ctl_rready  => s_axi_ctl_rready  ,
      s_axi_ctl_rvalid  => s_axi_ctl_rvalid  ,
      s_axi_ctl_rdata   => s_axi_ctl_rdata   ,
      s_axi_ctl_rresp   => s_axi_ctl_rresp   ,
      s_axi_ctl_awready => s_axi_ctl_awready ,
      s_axi_ctl_awvalid => s_axi_ctl_awvalid ,
      s_axi_ctl_awaddr  => s_axi_ctl_awaddr  ,
      s_axi_ctl_wready  => s_axi_ctl_wready  ,
      s_axi_ctl_wvalid  => s_axi_ctl_wvalid  ,
      s_axi_ctl_wdata   => s_axi_ctl_wdata   ,
      s_axi_ctl_wstrb   => s_axi_ctl_wstrb   ,
      s_axi_ctl_bready  => s_axi_ctl_bready  ,
      s_axi_ctl_bvalid  => s_axi_ctl_bvalid  ,
      s_axi_ctl_bresp   => s_axi_ctl_bresp   ,
      axibar_control_out  => axibar_control,
      axibar2pcibar0_out  => axibar2pcibar0,
      axibar2pcibar1_out  => axibar2pcibar1
    );
  ----------------------------------------------------------------------
  -- Instantiate registers to drive unused core inputs                --
  ----------------------------------------------------------------------

  process(pci_lc_clk_out, pci_lc_rst_out)
  begin
    if (pci_lc_rst_out='1') then
      INT_N_reg     <= '0';
      PME_N_reg     <= '0';

    elsif rising_edge(pci_lc_clk_out) then
      INT_N_reg     <= '1';
      PME_N_reg     <= '1';

    end if;
  end process;




end Behavioral;
