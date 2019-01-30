----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.01.2019 10:22:08
-- Design Name: 
-- Module Name: target_interface - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;

library work;
use work.axi_master_burst;
use work.aFifo;
use work.ToggleSynchronizer;
use work.flip_flop_synchronizer;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity target_interface is
    Generic (
      C_AXI_BAR0_MAPPED_FROM_PCI_BAR0 : std_logic_vector(31 downto 0) := x"4000_0000";
      C_PCI_BAR0_SIZE                 : integer range 13 to 32        := 13;
      C_AXI_BAR1_MAPPED_FROM_PCI_BAR1 : std_logic_vector(31 downto 0) := x"5000_0000";
      C_PCI_BAR1_SIZE                 : integer range 13 to 32        := 13;
      C_AXI_BAR2_MAPPED_FROM_PCI_BAR2 : std_logic_vector(31 downto 0) := x"6000_0000";
      C_PCI_BAR2_SIZE                 : integer range 13 to 32        := 13;
      C_M_AXI_ADDR_WIDTH              : integer range 32 to 32        := 32;
      C_M_AXI_DATA_WIDTH              : integer range 32 to 256       := 32;
      C_BURST_TR_EN                   : integer range 0 to 1          := 0;
      C_FAMILY                        : string := "spartan6";
      C_SYNC_STAGES                   : integer := 2
      
    );
    Port (
    -------------------------------------------------------------------------
    -- PCI interface signals
    -------------------------------------------------------------------------
      CLK_PCI                : in std_logic;
      RST_PCI                : in std_logic;
      TR_BASE_HIT            : in std_logic_vector(7 downto 0);
      TR_ADIO_OUT            : out std_logic_vector(31 downto 0);
      TR_ADIO_IN             : in std_logic_vector(31 downto 0);
      TR_ADDR                : in std_logic_vector(31 downto 0);
      TR_S_WRDN              : in std_logic;
      TR_S_CBE               : in std_logic_vector(3 downto 0);
      TR_PCI_CMD             : in std_logic_vector(15 downto 0);
      TR_S_DATA_VLD          : in std_logic;
      TR_S_DATA              : in std_logic;
      TR_ADDR_VLD            : in std_logic;
      TR_S_SRC_EN            : in std_logic;
      TR_CSR                 : in std_logic_vector(39 downto 0);
      TR_S_READY             : out std_logic;
      TR_S_TERM              : out std_logic;
      TR_S_ABORT             : out std_logic;
      TR_EDLE                : in std_logic;
      TR_B_BUSY              : in std_logic;
      TR_BACKOFF             : in std_logic;
    ------------------------------------------------------------------------
    -- Axi interface signals
    ------------------------------------------------------------------------
      m_axi_aclk             : in std_logic;
      m_axi_aresetn          : in std_logic;
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
      m_axi_bresp            : in  std_logic_vector(1 downto 0)        -- AXI4
         );
         
end target_interface;

architecture Behavioral of target_interface is


    type pci_tr_enc_state_machine is (lc_idle, lc_ready, lc_read, lc_start_read, lc_write, lc_error, lc_compleat);
    signal pci_state, pci_next_state: pci_tr_enc_state_machine;

   -- type axi_mstr_tr_enc_state_machine is ();
   -- signal axi_mstr_state, axi_mstr_next_state : axi_mstr_tr_enc_state_machine;
    
    constant C_MAX_BURST_LEN        : integer range 16 to  256      := 256;
    constant C_NATIVE_DATA_WIDTH    : integer := 32;
    constant C_LENGTH_WIDTH         : integer := 12;
    signal gnd                      : std_logic:= '0';
    signal vcc                      : std_logic:= '1';
    signal ip2bus_mstrd_req         : std_logic                                           ;
    signal ip2bus_mstwr_req         : std_logic                                           ;
    signal ip2bus_mst_addr          : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)     ;
    signal ip2bus_mst_length        : std_logic_vector(C_LENGTH_WIDTH-1 downto 0)         ;
    signal ip2bus_mst_be            : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);
    signal ip2bus_mst_type          : std_logic                                           ;
    signal ip2bus_mst_lock          : std_logic                                           ;
    signal ip2bus_mst_reset         : std_logic                                           ;
    signal bus2ip_mst_cmdack        : std_logic                                           ;
    signal bus2ip_mst_cmplt         : std_logic                                           ;
    signal bus2ip_mst_error         : std_logic                                           ;
    signal bus2ip_mstrd_d           : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;
    signal bus2ip_mstrd_rem         : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);
    signal bus2ip_mstrd_sof_n       : std_logic                                           ;
    signal bus2ip_mstrd_eof_n       : std_logic                                           ;
    signal bus2ip_mstrd_src_rdy_n   : std_logic                                           ;
    signal bus2ip_mstrd_src_dsc_n   : std_logic                                           ;
    signal ip2bus_mstrd_dst_rdy_n   : std_logic                                           ;
    signal ip2bus_mstwr_d           : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0)    ;
    signal ip2bus_mstwr_rem         : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);
    signal ip2bus_mstwr_sof_n       : std_logic                                           ;
    signal ip2bus_mstwr_eof_n       : std_logic                                           ;
    signal ip2bus_mstwr_src_rdy_n   : std_logic                                           ;
    signal ip2bus_mstwr_src_dsc_n   : std_logic                                           ;
    signal bus2ip_mstwr_dst_rdy_n   : std_logic                                           ;
    signal bus2ip_mstwr_dst_dsc_n   : std_logic                                           ;
    signal S_TERM_reg               : std_logic;
    signal S_READY_reg              : std_logic;
    signal S_ABORT_reg              : std_logic;
    signal pci_rst_mst_logic        : std_logic;
    signal master_not_rst           : std_logic;
    signal bus2ip_read_data_reg     : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;
    signal bus2ip_read_data_reg_sync: std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;
    
    signal ip2bus_mstrd_dst_rdy_n_reg: std_logic                                           ;
    signal ip2bus_mstwr_sof_n_reg   : std_logic                                           ;
    signal ip2bus_mstwr_eof_n_reg   : std_logic                                           ;
    signal ip2bus_mstwr_src_rdy_n_reg: std_logic                                           ;
    signal ip2bus_mstwr_src_dsc_n_reg: std_logic                                           ;
    signal ip2bus_mstrd_req_reg     : std_logic                                           ;
    signal ip2bus_mstwr_req_reg     : std_logic                                           ;
    signal ip2bus_mst_length_reg    : std_logic_vector(C_LENGTH_WIDTH-1 downto 0)         ;
    signal ip2bus_mst_be_reg        : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);
    signal ip2bus_mst_type_reg      : std_logic                                           ;
    signal ip2bus_mst_addr_reg      : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)     ;
    signal axi_address              : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)     ;
    signal data_burst_length        : std_logic_vector(C_LENGTH_WIDTH-1 downto 0)         ;
    
    signal fifo_Data_in             : std_logic_vector (36-1 downto 0);
    signal fifo_Full_out            : std_logic;
    signal fifo_WriteEn_in          : std_logic;
    signal fifo_clean               : std_logic;
    
    signal start_trgt_pci           : std_logic;
    signal m_axi_aresetn_sync       : std_logic;
    signal pci_off                  : std_logic;
    signal read_start               : std_logic;
    signal axi_read                 : std_logic;
    
    signal fifo_Data_out            : std_logic_vector (DATA_WIDTH-1 downto 0);
    signal fifo_Empty_out           : std_logic;
    signal fifo_ReadEn_in           : std_logic;
begin

start_trgt_pci <= TR_BASE_HIT(0) or TR_BASE_HIT(1) or TR_BASE_HIT(2);
pci_off <= (not m_axi_aresetn_sync) or  RST_PCI;

axi_resetn_sync_proc : entity work.flip_flop_synchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sig         => m_axi_aresetn,
      from_clk    => m_axi_aclk,
      sig_sync    => m_axi_aresetn_sync,
      to_clk      => CLK_PCI
    );

-- lc target state machine
lc_target_state_machine_sync_proc : process(CLK_PCI, RST_PCI)
    begin
      if (pci_off = '1) then
        pci_state <= lc_idle;
      elsif rising_edge(CLK_PCI) then
        pci_state <= pci_next_state;
      end if;
    end process;

lc_target_state_machine_data_decode_proc : process(pci_state)
    begin
     TR_S_READY <= '0';
     TR_S_TERM  <= '0';
     TR_S_ABORT <= '0';
     fifo_clean <= '1';
     read_start <= '0';
        case (pci_state) is
          when lc_idle =>
            TR_S_READY <= '0';
            TR_S_TERM  <= '0';
            TR_S_ABORT <= '1';
          when lc_ready =>
            TR_S_READY <= '1';
          when lc_write =>
            TR_S_READY <= '1';
            fifo_clean <= '0';
          when lc_read_start =>
            read_start <= '1';
          when lc_compleat=>
            TR_S_TERM  <= '1';
          when others =>
            TR_S_READY <= '0';
            TR_S_TERM  <= '0';
            TR_S_ABORT <= '1';
        end case;
    end process;

lc_target_state_machine_next_state_decode_proc : process(pci_state, start_trgt_pci, pci_off, TR_S_WRDN)
    begin
      pci_next_state <= pci_state;
        case (pci_state) is
          when lc_idle =>
            if (pci_off = '0') then
              pci_next_state <= lc_ready;
            end if;
          when lc_ready =>
            if start_trgt_pci = '1' then
              if (TR_S_WRDN = '1') then
                pci_next_state = lc_write;
              else 
                pci_next_state = lc_read_start;
              end if;
            end if;
          when lc_read_start => 
            pci_next_state = lc_read;
          when others => 
            pci_next_state <= lc_idle;
        end case;
    end process;

axi_read_start_sync: work.ToggleSynchronizer
    generic map( 
        SYNC_STAGES => C_SYNC_STAGES
        )
    Port map(
      sign      => read_start,
      from_clk  => CLK_PCI,
      sign_sync => axi_read,
      to_clk    => m_axi_aclk
    );

write_fifo_inst : entity work.aFifo
    generic map(
        DATA_WIDTH => 36,
        ADDR_WIDTH => 8
    )
    port (
       -- Reading port.
        Data_out    => Data_out ,
        Empty_out   => Empty_out,
        ReadEn_in   => ReadEn_in,
        RClk        => m_axi_aclk,
       -- Writing port.
        Data_in     => fifo_Data_in   ,
        Full_out    => fifo_Full_out  ,
        WriteEn_in  => fifo_WriteEn_in,
        WClk        => CLK_PCI      ,

        Clear_in    => fifo_clean
    );



master_ist: entity work.axi_master_burst
  generic map (
    C_M_AXI_ADDR_WIDTH         => C_M_AXI_ADDR_WIDTH,
    C_M_AXI_DATA_WIDTH         => C_M_AXI_DATA_WIDTH,
    C_MAX_BURST_LEN            => C_MAX_BURST_LEN,
    C_ADDR_PIPE_DEPTH          => 1,
    C_NATIVE_DATA_WIDTH        => C_NATIVE_DATA_WIDTH,
    C_LENGTH_WIDTH             => 12,
    C_FAMILY                   => C_FAMILY
    )
  port map(
    m_axi_aclk                 => m_axi_aclk,
    m_axi_aresetn              => m_axi_aresetn,
    md_error                   => open,
    ----------------------------------------------------------------------------
    -- AXI4 Master Read Channel
    ----------------------------------------------------------------------------
    -- MMap Read Address Channel
    m_axi_arready              => m_axi_arready,
    m_axi_arvalid              => m_axi_arvalid,
    m_axi_araddr               => m_axi_araddr ,
                              
    m_axi_arlen                => m_axi_arlen  ,
    m_axi_arsize               => m_axi_arsize ,
    m_axi_arburst              => m_axi_arburst,
    m_axi_arprot               => m_axi_arprot ,
    m_axi_arcache              => m_axi_arcache,
                             
    -- MMap Read Data Channel
    m_axi_rready               => m_axi_rready,
    m_axi_rvalid               => m_axi_rvalid,
    m_axi_rdata                => m_axi_rdata ,
                             
    m_axi_rresp                => m_axi_rresp,
    m_axi_rlast                => m_axi_rlast,
    -----------------------------------------------------------------------------
    -- AXI4 Master Write Channel
    -----------------------------------------------------------------------------
    -- Write Address Channel
    m_axi_awready              => m_axi_awready,
    m_axi_awvalid              => m_axi_awvalid,
    m_axi_awaddr               => m_axi_awaddr ,

    m_axi_awlen                => m_axi_awlen  ,
    m_axi_awsize               => m_axi_awsize ,
    m_axi_awburst              => m_axi_awburst,
    m_axi_awprot               => m_axi_awprot ,
    m_axi_awcache              => m_axi_awcache,
                               
    -- Write Data Channel      
    m_axi_wready               => m_axi_wready,
    m_axi_wvalid               => m_axi_wvalid,
    m_axi_wdata                => m_axi_wdata ,
                                              
    m_axi_wstrb                => m_axi_wstrb,
                                              
    m_axi_wlast                => m_axi_wlast,
                               
    -- Write Response Channel  
    m_axi_bready               => m_axi_bready,
    m_axi_bvalid               => m_axi_bvalid,
    m_axi_bresp                => m_axi_bresp ,

    -----------------------------------------------------------------------------------------
    -- IPIC Request/Qualifiers
    -----------------------------------------------------------------------------------------
    ip2bus_mstrd_req           => ip2bus_mstrd_req , -- IPIC CMD
    ip2bus_mstwr_req           => ip2bus_mstwr_req , -- IPIC CMD
    ip2bus_mst_addr            => ip2bus_mst_addr  , -- IPIC CMD
    ip2bus_mst_length          => ip2bus_mst_length, -- IPIC CMD
    ip2bus_mst_be              => ip2bus_mst_be    , -- IPIC CMD
    ip2bus_mst_type            => ip2bus_mst_type  , -- IPIC CMD
    ip2bus_mst_lock            => gnd              , -- IPIC CMD
    ip2bus_mst_reset           => ip2bus_mst_reset , -- IPIC CMD

    -----------------------------------------------------------------------------------------
    -- IPIC Request Status Reply
    -----------------------------------------------------------------------------------------
    bus2ip_mst_cmdack          => bus2ip_mst_cmdack     ,-- IPIC Stat
    bus2ip_mst_cmplt           => bus2ip_mst_cmplt      ,-- IPIC Stat
    bus2ip_mst_error           => bus2ip_mst_error      ,-- IPIC Stat
    bus2ip_mst_rearbitrate     => open                  ,-- IPIC Stat not uset in AXI
    bus2ip_mst_cmd_timeout     => open                  ,-- IPIC Stat not uset in AXI

    -----------------------------------------------------------------------------------------
    -- IPIC Read LocalLink Channel
    -----------------------------------------------------------------------------------------
    bus2ip_mstrd_d             => bus2ip_mstrd_d        ,-- IPIC RD LLink
    bus2ip_mstrd_rem           => bus2ip_mstrd_rem      ,-- IPIC RD LLink
    bus2ip_mstrd_sof_n         => bus2ip_mstrd_sof_n    ,-- IPIC RD LLink
    bus2ip_mstrd_eof_n         => bus2ip_mstrd_eof_n    ,-- IPIC RD LLink
    bus2ip_mstrd_src_rdy_n     => bus2ip_mstrd_src_rdy_n,-- IPIC RD LLink
    bus2ip_mstrd_src_dsc_n     => bus2ip_mstrd_src_dsc_n,-- IPIC RD LLink

    ip2bus_mstrd_dst_rdy_n     => ip2bus_mstrd_dst_rdy_n,-- IPIC RD LLink
    ip2bus_mstrd_dst_dsc_n     => vcc                   ,-- IPIC RD LLink


    -----------------------------------------------------------------------------------------
    -- IPIC Write LocalLink Channel
    -----------------------------------------------------------------------------------------
    ip2bus_mstwr_d             => ip2bus_mstwr_d        ,-- IPIC WR LLink
    ip2bus_mstwr_rem           => ip2bus_mstwr_rem      ,-- IPIC WR LLink
    ip2bus_mstwr_sof_n         => ip2bus_mstwr_sof_n    ,-- IPIC WR LLink
    ip2bus_mstwr_eof_n         => ip2bus_mstwr_eof_n    ,-- IPIC WR LLink
    ip2bus_mstwr_src_rdy_n     => ip2bus_mstwr_src_rdy_n,-- IPIC WR LLink
    ip2bus_mstwr_src_dsc_n     => ip2bus_mstwr_src_dsc_n,-- IPIC WR LLink

    bus2ip_mstwr_dst_rdy_n     => bus2ip_mstwr_dst_rdy_n,-- IPIC WR LLink
    bus2ip_mstwr_dst_dsc_n     => bus2ip_mstwr_dst_dsc_n -- IPIC WR LLink

    );
end Behavioral;
