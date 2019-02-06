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
use work.async_fifo32;
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


    type pci_tr_enc_state_machine is (ready, idle, s_read, s_rd_compleat, s_write, s_wr_compleat);
    signal pci_state, pci_next_state: pci_tr_enc_state_machine;

    type axi_mstr_tr_enc_state_machine is (mstr_edle, mstr_start, mstr_wr_mod_dec, mstr_wr_s_req, mstr_wr_b_req, mstr_wr_start, mstr_rd_req, msrt_wr, mstr_rd, mstr_cmplt);
    signal axi_mstr_state, axi_mstr_next_state : axi_mstr_tr_enc_state_machine;
    
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
    signal axi_read_data_reg_sync: std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;
    signal axi_read_data_reg_sync_d: std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;
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
      
    signal bar_x_rd                 : std_logic;
    signal bar_x_wr                 : std_logic;
    signal stop_s_write             : std_logic;
    signal target_wr_compleat          : std_logic;
    signal target_wr_compleat_sync     : std_logic;
    
    signal pci_off                  : std_logic;
    signal mstwr_en                 : std_logic;
    signal axi_wrdn_sig             : std_logic;
    signal axi_wrd_compleat         : std_logic;
    signal axi_wrd_compleat_reg     : std_logic;
    signal axi_wrd_compleat_sync    : std_logic;
    signal axi_read_data_reg        : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;
    
    signal wr_sel_enc               : std_logic_vector(2 downto 0);
    signal wr_data                  : std_logic_vector(31 downto 0);
    signal wr_data_cbe              : std_logic_vector(3 downto 0);
    signal s_reg_cbe                : std_logic_vector(3 downto 0);
    signal s_reg_cbe_sync           : std_logic_vector(3 downto 0);
    signal s_reg_cbe_sync_d         : std_logic_vector(3 downto 0);
    signal hit_en                   : std_logic;
    signal pci_req_valid_sync              : std_logic;
    signal axi_read_sync            : std_logic;
    signal axi_read_d               : std_logic;
    signal axi_read                 : std_logic;
    signal cmplt_sinc               : std_logic;
    signal axi_error                : std_logic;
    signal axi_error_sync           : std_logic;
    signal TR_ADIO_OUT_reg          : std_logic_vector(31 downto 0);
    signal axi_wrd_start            : std_logic;
  
    signal fifo_rst                 : std_logic;
    signal fifo_wr_data_counter     : std_logic_vector(8 downto 0);
    signal fifo_Din                 : std_logic_vector(36-1 downto 0);
    signal fifo_Dout                : std_logic_vector(36-1 downto 0);
    signal fifo_ready               : std_logic;
    signal fifo_Full                : std_logic; 
    signal fifo_Empty               : std_logic;
    signal fifo_Empty_d             : std_logic;
    signal fifo_Almost_full         : std_logic;  
    signal fifo_Almost_empty        : std_logic;  
    signal fifo_Wr_count            : std_logic_vector(8-1 downto 0);
    signal fifo_Rd_count            : std_logic_vector(8-1 downto 0);
    signal fifo_wr_en               : std_logic;
    signal push_wr_data_pkt         : std_logic;
    signal push_wr_data_pkt_reg     : std_logic;
    signal fifo_rd_en               : std_logic;
    signal fifo_wr_ack              : std_logic;
    signal fifo_valid               : std_logic;
    signal fifo_valid_n             : std_logic;
    signal bus2ip_mstwr_dst_n       : std_logic;
    signal fifo_Din_reg             : std_logic_vector(36-1 downto 0);
    signal fifo_wr_en_reg           : std_logic;
    signal tr_adio_in_reg           : std_logic_vector(36-1 downto 0);
    signal master_rd_dat_vld_n        : std_logic;
    signal master_rd_dat_vld_n_sinc   : std_logic;
    signal pci_read_en              : std_logic;
    
    signal fifo_rd_length           : std_logic_vector(9-1 downto 0);
    signal target_interface_busy_n    : std_logic;
    signal pci_req_valid            : std_logic;
    
begin
    
axi_error <= (bus2ip_mst_error and bus2ip_mst_cmplt);

pci_off <= RST_PCI or (not master_not_rst);

fifo_rst <= pci_off;

stop_s_write <= fifo_Almost_full or (not bar_x_wr);
--------------------------------------------------------------------
-- m_axi_clk delay process
--------------------------------------------------------------------

--------------------------------------------------------------------
-- Flip-Flop process begin
--------------------------------------------------------------------

pci_rst_master_logic : entity work.flip_flop_synchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sig         => RST_PCI,
      from_clk    => CLK_PCI,
      sig_sync    => pci_rst_mst_logic,
      to_clk      => m_axi_aclk
    );
    
ip2bus_mst_reset <= (not m_axi_aresetn) or pci_rst_mst_logic;

master_logic_reset_sts : entity work.flip_flop_synchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sig         => m_axi_aresetn,
      from_clk    => m_axi_aclk,
      sig_sync    => master_not_rst,
      to_clk      => CLK_PCI
    );

s_wrd_compleat_sync_proc : entity work.flip_flop_synchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sig         => target_wr_compleat,
      from_clk    => CLK_PCI,
      sig_sync    => target_wr_compleat_sync,
      to_clk      => m_axi_aclk
    );

mstwr_en_generation : entity work.flip_flop_synchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sig         => TR_S_WRDN,
      from_clk    => CLK_PCI,
      sig_sync    => axi_wrdn_sig,
      to_clk      => m_axi_aclk
    );
--------------------------------------------------------------------
-- Flip-Flop process end
--------------------------------------------------------------------

---------------------------------------------------------------------------
-- FSM PCI begin
---------------------------------------------------------------------------
pci_state_sync_proc : process(CLK_PCI)
    begin
      if (RST_PCI = '1') then 
          pci_state <= idle;
        elsif rising_edge(CLK_PCI) then
          pci_state <= pci_next_state;
      end if;
    end process;

pci_state_output_decode : process (pci_state, fifo_Almost_full, fifo_ready, axi_read_data_reg)
    begin
    TR_S_READY        <= '0';
    TR_S_TERM         <= '1';
    TR_S_ABORT        <= '0';
    TR_ADIO_OUT       <= (others => 'Z');
    target_wr_compleat <= '0';
    target_interface_busy_n <= '0';
      case (pci_state) is
        when idle =>
          TR_S_TERM         <= '1';
          TR_S_READY        <= '0';
          TR_S_ABORT        <= '1';
        when ready => 
          TR_S_TERM         <= '0';
          TR_S_READY        <= '1';
          target_interface_busy_n <= '1';
        when s_write =>            
          TR_S_READY        <= fifo_ready;
          TR_S_TERM         <= fifo_Almost_full;

        when s_wr_compleat =>
          TR_S_READY            <= '0';
          TR_S_TERM             <= '1';
          TR_S_ABORT            <= '0';
          target_wr_compleat    <= '1';

        when s_read =>
        --TR_ADIO_OUT           <= bus2ip_read_data_reg;
          TR_S_TERM             <= '0';

        when s_rd_compleat =>
          TR_S_READY            <= '1';
          TR_S_TERM             <= '1';
          TR_ADIO_OUT           <= axi_read_data_reg;

        when others =>
          TR_S_TERM         <= '0';
          TR_S_ABORT        <= '1';
      end case;

    end process;

pci_next_state_decode : process (pci_state, pci_off, hit_en, TR_S_WRDN, stop_s_write, axi_wrd_compleat_sync, TR_S_DATA_VLD)
    begin
      pci_next_state <= pci_state;
        case (pci_state) is

          when idle => 
            if (pci_off = '0') then 
              pci_next_state <= ready;
            end if;

          when ready => 
            if hit_en = '1' then 
              if (TR_S_WRDN = '1') then
                pci_next_state <= s_write;
              else 
                pci_next_state <= s_read;
              end if;
            end if;

          when s_write =>
            if (stop_s_write = '1') then
              pci_next_state <= s_wr_compleat;
            end if;

          when s_read =>
            if (axi_wrd_compleat_sync = '1') then
              pci_next_state <= s_rd_compleat;
            end if;

          when s_rd_compleat =>
            if (TR_S_DATA_VLD = '1') then
              pci_next_state <= ready;
            end if;
          when s_wr_compleat => 
            if (axi_wrd_compleat_sync = '1') then
              pci_next_state <= ready;
            end if;

          when others =>
            pci_next_state <= idle;
        end case;
    end process;
---------------------------------------------------------------------------
-- FSM PCI end
---------------------------------------------------------------------------

--Decoding Target Transactions
hit_en <= TR_BASE_HIT(2) or TR_BASE_HIT(1) or TR_BASE_HIT(0);
pci_req_valid <= hit_en and target_interface_busy_n;

target_rd_wr_bar_decodes_proc   : process(CLK_PCI)
  begin
      if rising_edge(CLK_PCI) then
        if (RST_PCI = '1') then
          bar_x_rd <= '0';
          bar_x_wr <= '0';
        else
          
          if (pci_req_valid = '1') then
            bar_x_rd <= (not TR_S_WRDN);
            s_reg_cbe <= (not TR_S_CBE);
            bar_x_wr <= TR_S_WRDN;
          elsif (TR_S_DATA = '0') then
            bar_x_rd <= '0';
            bar_x_wr <= '0';
          end if;
          
        end if;
      end if;
  end process;



adr_dec_proc : process(CLK_PCI)
  begin
    if (RST_PCI = '1') then
      axi_address <= (others =>'Z');
      elsif rising_edge(CLK_PCI) then
        if (pci_req_valid = '1') then
          case TR_BASE_HIT is
            when B"00000001" => axi_address <= C_AXI_BAR0_MAPPED_FROM_PCI_BAR0(31 DOWNTO C_PCI_BAR0_SIZE) & TR_ADDR(C_PCI_BAR0_SIZE-1 DOWNTO 0);
            when B"00000010" => axi_address <= C_AXI_BAR1_MAPPED_FROM_PCI_BAR1(31 DOWNTO C_PCI_BAR1_SIZE) & TR_ADDR(C_PCI_BAR1_SIZE-1 DOWNTO 0);
            when B"00000100" => axi_address <= C_AXI_BAR2_MAPPED_FROM_PCI_BAR2(31 DOWNTO C_PCI_BAR2_SIZE) & TR_ADDR(C_PCI_BAR2_SIZE-1 DOWNTO 0);
            when others => null;
          end case;
        end if;
    end if;
  end process;

fifo_wr_data_counter_proc : process(CLK_PCI)
    begin
      if rising_edge(CLK_PCI) then
        if ((axi_wrd_compleat_sync = '1') or (fifo_rst = '1')) then
          fifo_wr_data_counter <= (others => '0');
        elsif (fifo_wr_en = '1') then
          fifo_wr_data_counter <= fifo_wr_data_counter + 1;
        end if;
      end if;
    end process;

fifo_inst : entity work.async_fifo32
  port map(
    rst         => fifo_rst,

    wr_clk      => CLK_PCI,
    din         => fifo_Din,
    wr_ack      => fifo_wr_ack,
    wr_en       => fifo_wr_en,
    full        => fifo_Full,
    almost_full => fifo_Almost_full,
    rd_clk      => m_axi_aclk,
    rd_en       => fifo_rd_en,
    dout        => fifo_Dout,
    empty       => fifo_Empty,
    almost_empty => fifo_Almost_empty,
    valid         => fifo_valid,
    rd_data_count => fifo_rd_count    ,
    wr_data_count => fifo_Wr_count
  );

  fifo_wr_en <= bar_x_wr and TR_S_DATA_VLD and (not fifo_Full);
  fifo_din   <= (not TR_S_CBE) & TR_ADIO_IN;
  fifo_ready <= (not fifo_Full);
  
----------------------------------------------------------------
-- read process signals
----------------------------------------------------------------


axi_wrd_compleat_sync_proc: entity work.ToggleSynchronizer
    generic map( 
        SYNC_STAGES => C_SYNC_STAGES
        )
    Port map(
      sign      => axi_wrd_compleat_reg,
      from_clk  => m_axi_aclk,
      sign_sync => axi_wrd_compleat_sync,
      to_clk    => CLK_PCI
    );
    



fifo_valid_n <= not fifo_valid;
bus2ip_mstwr_dst_n <= ip2bus_mstwr_src_rdy_n or bus2ip_mstwr_dst_rdy_n;

fifo_rd_en <= not bus2ip_mstwr_dst_n;
ip2bus_mstwr_d <= fifo_Dout( 31 downto 0);
ip2bus_mstwr_rem <= (not fifo_Dout(35 downto 32));
--
--
axi_mstr_state_sync_proc : process(m_axi_aclk)
    begin
      if (m_axi_aresetn = '0') then 
          axi_mstr_state            <= mstr_edle;
          axi_read_data_reg         <= (others=> '0');
          axi_wrd_compleat_reg      <= '0';
        elsif rising_edge(m_axi_aclk) then
          axi_mstr_state            <= axi_mstr_next_state;
          axi_read_data_reg         <= bus2ip_read_data_reg;
          axi_wrd_compleat_reg      <= axi_wrd_compleat;
      end if;
    end process;

     
axi_mstr_state_output_decode : process(axi_mstr_state, axi_address, fifo_Dout, fifo_valid_n, fifo_wr_data_counter, fifo_Almost_empty, s_reg_cbe)
    begin
      ip2bus_mst_be         <= (others => 'Z');
      ip2bus_mst_addr       <= (others => 'Z');
      ip2bus_mst_length     <= (others => 'Z');
      ip2bus_mstwr_sof_n    <= '1';
      ip2bus_mstwr_eof_n    <= '1';
      ip2bus_mstwr_src_rdy_n<= '1';
      ip2bus_mstwr_src_dsc_n<= '1';
      ip2bus_mstwr_req      <= '0';
      ip2bus_mstrd_req      <= '0';
      ip2bus_mst_type       <= '0';
      ip2bus_mstrd_dst_rdy_n <= '1';
      axi_wrd_compleat      <= '0';
        case (axi_mstr_state) is

          when mstr_edle => 
            ip2bus_mst_be               <= (others => 'Z');
            ip2bus_mst_addr             <= (others => 'Z');
            ip2bus_mst_length           <= (others => 'Z');
            ip2bus_mstwr_sof_n          <= '1';
            ip2bus_mstwr_eof_n          <= '1';
            ip2bus_mstwr_src_rdy_n      <= '1';
            ip2bus_mstwr_src_dsc_n      <= '1';
            ip2bus_mstwr_req            <= '0';
            ip2bus_mstrd_req            <= '0';
            ip2bus_mstrd_dst_rdy_n      <= '1';

         when mstr_wr_s_req => 
            ip2bus_mstwr_req            <= '1';
            ip2bus_mst_addr             <= axi_address;
            ip2bus_mst_be               <= fifo_Dout( 35 downto 32);
            ip2bus_mst_length           <= (others => 'X');
            ip2bus_mstwr_sof_n          <= '0';
            ip2bus_mstwr_eof_n          <= '0';
            ip2bus_mstwr_src_rdy_n      <= '0';

         when mstr_wr_b_req => 
            ip2bus_mstwr_req            <= '1';
            ip2bus_mst_addr             <= axi_address;
            ip2bus_mst_length           <= ('0' & fifo_wr_data_counter & b"00");
            ip2bus_mstwr_sof_n          <= '0';
            ip2bus_mstwr_src_rdy_n      <= fifo_valid_n;
            ip2bus_mst_type             <= '1';

         when mstr_wr_start =>
            ip2bus_mstwr_sof_n          <= '0';
            ip2bus_mstwr_eof_n          <= (not fifo_Almost_empty);
            ip2bus_mstwr_src_rdy_n      <= fifo_valid_n;

         when msrt_wr => 
            ip2bus_mstwr_eof_n          <= (not fifo_Almost_empty);
            ip2bus_mstwr_src_rdy_n      <= fifo_valid_n;

         when mstr_start => 
            ip2bus_mstwr_req            <= '0';
            ip2bus_mstrd_req            <= '0';
            ip2bus_mst_type             <= '0';

         when mstr_cmplt =>
            axi_wrd_compleat            <= '1';

         when mstr_rd_req =>
            ip2bus_mstrd_req            <= '1';
            ip2bus_mst_addr             <= axi_address;
            ip2bus_mst_be               <= s_reg_cbe;
            ip2bus_mst_length           <= (others => 'X');
            ip2bus_mstrd_dst_rdy_n      <= '0';

          when mstr_rd => 
            ip2bus_mstrd_dst_rdy_n      <= '0';

          when others =>
            ip2bus_mstwr_eof_n          <= '0';
            ip2bus_mstwr_src_rdy_n      <= '1';
            ip2bus_mstwr_src_dsc_n      <= '1';
            ip2bus_mstwr_req            <= '0';
            ip2bus_mstrd_req            <= '0';
            ip2bus_mst_type             <= '0';
            ip2bus_mstrd_dst_rdy_n      <= '1';
        end case;
    end process;

axi_mstr_next_state_decode : process(axi_mstr_state, mstwr_en, axi_wrdn_sig,fifo_Almost_empty, bus2ip_mst_cmdack, bus2ip_mstwr_dst_n, bus2ip_mst_cmplt, target_wr_compleat_sync, pci_req_valid_sync)
    begin
      axi_mstr_next_state <= axi_mstr_state;
        case (axi_mstr_state) is

          when mstr_edle => 
            if pci_req_valid_sync = '1' then
              axi_mstr_next_state <= mstr_start;
            end if;

          when mstr_start =>
            if (axi_wrdn_sig = '1') then
              if (target_wr_compleat_sync = '1') then
                axi_mstr_next_state <= mstr_wr_mod_dec;
              end if;
            else 
              axi_mstr_next_state <= mstr_rd_req;
            end if;

          when mstr_wr_mod_dec =>
            if (fifo_Almost_empty = '1') then
              axi_mstr_next_state <= mstr_wr_s_req;
            else
              axi_mstr_next_state <= mstr_wr_b_req;
            end if;

          when mstr_wr_s_req => 
            if (bus2ip_mst_cmdack = '1') then 
              axi_mstr_next_state <= mstr_wr_start;
            end if;
            

          when mstr_wr_b_req => 
            if (bus2ip_mst_cmdack = '1') then 
              axi_mstr_next_state <= mstr_wr_start;
            end if;

          when mstr_wr_start =>
            if (bus2ip_mstwr_dst_n = '0') then
              axi_mstr_next_state <= msrt_wr;
            end if;

          when msrt_wr => 
            if (bus2ip_mst_cmplt = '1') then 
              axi_mstr_next_state <= mstr_cmplt;
            end if;

          when mstr_rd_req => 
            if (bus2ip_mst_cmdack = '1') then
              axi_mstr_next_state <= mstr_rd;
            end if;

          when mstr_rd =>
            if (bus2ip_mst_cmplt = '1') then
              axi_mstr_next_state <= mstr_cmplt;
            end if;

          when mstr_cmplt =>
            axi_mstr_next_state <= mstr_edle;

          when others =>
            axi_mstr_next_state <= mstr_edle;
        end case;
    end process;

pci_req_valid_sync_proc : entity work.ToggleSynchronizer
    generic map( 
        SYNC_STAGES => C_SYNC_STAGES
        )
    Port map(
      sign      => pci_req_valid,
      from_clk  => CLK_PCI,
      sign_sync => pci_req_valid_sync,
      to_clk    => m_axi_aclk
    );


  master_rd_dat_vld_n <= ip2bus_mstrd_dst_rdy_n or bus2ip_mstrd_src_rdy_n;
    
read_data_reg_proc : process(m_axi_aclk)
    begin
      if rising_edge(m_axi_aclk) then
        if (m_axi_aresetn = '0') then
          bus2ip_read_data_reg <= (others => 'Z');
        elsif master_rd_dat_vld_n ='0' then
          bus2ip_read_data_reg <= bus2ip_mstrd_d;
        end if;
      end if;
    end process;

axi_master_ist: entity work.axi_master_burst
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
    ip2bus_mst_reset           => axi_wrd_compleat , -- IPIC CMD

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
