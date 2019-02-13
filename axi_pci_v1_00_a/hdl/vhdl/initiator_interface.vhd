----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.01.2019 11:19:01
-- Design Name: 
-- Module Name: initiator_interface - Behavioral
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
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library axi_pci_v1_00_a;
use axi_pci_v1_00_a.flip_flop_synchronizer;
use axi_pci_v1_00_a.ToggleSynchronizer;

library axi_pci_v1_00_a_proc_common_v3_00_a;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.clog2;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.max2;
use axi_pci_v1_00_a_proc_common_v3_00_a.family_support.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.ipif_pkg.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.or_gate128;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity initiator_interface is
    generic(
      C_FAMILY                       : string   := "virtex6";
----  AXI Parameters
      C_S_AXI_SUPPORTS_WRITE         : integer range 0 to 1      := 1;
      C_S_AXI_SUPPORTS_READ          : integer range 0 to 1      := 1;
      --C_S_AXI_SUPPORTS_READ_WRITE  : string   := "11";   -- "01" read only ,
      --                                                   -- "10" write only,
      --                                                   -- "11" read-write,
      --                                                   -- "00" skipped slot
      
      C_S_AXI_ADDR_WIDTH             : integer range 32 to 32 := 32;
      C_S_AXI_DATA_WIDTH             : integer                := 32; -- range is 32, 64 or 128
      C_S_AXI_ID_WIDTH               : integer range 1 to 16   := 4;
      
      C_SYNC_STAGES                  : integer:= 2;
      C_AXIBAR_0                     : std_logic_vector(31 downto 0):= x"8000_1000";
      C_AXIBAR_1                     : std_logic_vector(31 downto 0):= x"8000_1000";
      C_AXIBAR_HIGHADDR_0            : std_logic_vector(31 downto 0):= x"8000_1fff";
      C_AXIBAR_HIGHADDR_1            : std_logic_vector(31 downto 0):= x"8000_1fff"

     );
    Port (
     --   -- AXI Global System Signals
      S_AXI_ACLK          : in  std_logic;
      S_AXI_ARESETN       : in  std_logic;
--  -- AXI Write Address Channel Signals
      S_AXI_AWID          : in  std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_AWADDR        : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWLEN         : in  std_logic_vector(7 downto 0);
      S_AXI_AWSIZE        : in  std_logic_vector(2 downto 0);
      S_AXI_AWBURST       : in  std_logic_vector(1 downto 0);
      S_AXI_AWLOCK        : in  std_logic;
      S_AXI_AWCACHE       : in  std_logic_vector(3 downto 0);
      S_AXI_AWPROT        : in  std_logic_vector(2 downto 0);
      S_AXI_AWVALID       : in  std_logic;
      S_AXI_AWREADY       : out std_logic;
--  -- AXI Write Channel Signals
      S_AXI_WDATA         : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB         : in  std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WLAST         : in  std_logic;
      S_AXI_WVALID        : in  std_logic;
      S_AXI_WREADY        : out std_logic;
--  -- AXI Write Response Channel Signals
      S_AXI_BID           : out std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_BRESP         : out std_logic_vector(1 downto 0);
      S_AXI_BVALID        : out std_logic;
      S_AXI_BREADY        : in  std_logic;
--  -- AXI Read Address Channel Signals
      S_AXI_ARID          : in  std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_ARADDR        : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARLEN         : in  std_logic_vector(7 downto 0);
      S_AXI_ARSIZE        : in  std_logic_vector(2 downto 0);
      S_AXI_ARBURST       : in  std_logic_vector(1 downto 0);
      S_AXI_ARLOCK        : in  std_logic;
      S_AXI_ARCACHE       : in  std_logic_vector(3 downto 0);
      S_AXI_ARPROT        : in  std_logic_vector(2 downto 0);
      S_AXI_ARVALID       : in  std_logic;
      S_AXI_ARREADY       : out std_logic;
--  -- AXI Read Data Channel Signals
      S_AXI_RID           : out std_logic_vector((C_S_AXI_ID_WIDTH-1) downto 0);
      S_AXI_RDATA         : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP         : out std_logic_vector(1 downto 0);
      S_AXI_RLAST         : out std_logic;
      S_AXI_RVALID        : out std_logic;
      S_AXI_RREADY        : in  std_logic;
      
      CLK_PCI             : in std_logic;
      RST_PCI             : in std_logic;
      ITR_ADIO_IN         : in std_logic_vector(31 downto 0);
      ITR_ADIO_OUT        : out std_logic_vector(31 downto 0);
      ITR_M_DATA_VLD      : in std_logic;
      ITR_M_SRC_EN        : in std_logic;
      ITR_TIME_OUT        : in std_logic;
      ITR_CSR             : in std_logic_vector(39 downto 0);
      ITR_REQUEST         : out std_logic;
      ITR_REQUESTHOLD     : out std_logic;
      ITR_M_WRDN          : out std_logic;
      ITR_M_CBE           : out std_logic_vector(3 downto 0);
      ITR_M_READY         : out std_logic;
      ITR_COMPLETE        : out std_logic;
      ITR_I_IDLE          : in std_logic;
      ITR_DR_BUS          : in std_logic;
      ITR_M_ADDR_N        : in std_logic;
      ITR_M_DATA          : in std_logic;
      
      INITIATOR_BUSY      : out std_logic;
      
      AXIBAR_CONTROL      : in std_logic_vector(31 downto 0);
      AXIBAR2PCIBAR0      : in std_logic_vector(31 downto 0);
      AXIBAR2PCIBAR1      : in std_logic_vector(31 downto 0)
      
      
    );
end initiator_interface;

architecture Behavioral of initiator_interface is

component a_fifo_stream IS
  PORT (
    m_aclk : IN STD_LOGIC;
    s_aclk : IN STD_LOGIC;
    s_aresetn : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axis_tstrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_tlast : IN STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_tstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC
  );
END component a_fifo_stream;

    type fsm_initiator  is (IDLE_S, REQ_S, READ_S, DEAD_S, WRITE_S, DONE_S, RETRY_S, ADDR_S, ADDR_ERROR);
    signal intr_state, intr_next_state : fsm_initiator;
    
    type fsm_axi_slave_dec  is (AXI_IDLE, AXI_REQ, AXI_WRITE_S, AXI_WRITE_F, AXI_WRITE_COMPLT, AXI_WRITE_ACK, AXI_READ_F, AXI_ADDR_ERROR);
    signal axi_slv_state, axi_slv_next_state : fsm_axi_slave_dec;
    
    constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE :=
                                                         (
                                                             X"0000_0000" & C_AXIBAR_0, -- IP user0 base address
                                                             X"0000_0000" & C_AXIBAR_HIGHADDR_0, -- IP user0 high address
                                                     
                                                             X"0000_0000" & C_AXIBAR_1, -- IP user1 base address
                                                             X"0000_0000" & C_AXIBAR_HIGHADDR_1 -- IP user1 high address
                                                         );
	constant C_ARD_NUM_CE_ARRAY     : INTEGER_ARRAY_TYPE := 
																	(
																		1,         -- User0 CE Number -- only 1 is supported per addr range
																		1          -- User1 CE Number -- only 1 is supported per addr range
																	);
    constant axibar0_max_val     : std_logic_vector(31 downto 0):= (C_AXIBAR_HIGHADDR_0 - C_AXIBAR_0);
    constant axibar1_max_val     : std_logic_vector(31 downto 0):= (C_AXIBAR_HIGHADDR_1 - C_AXIBAR_1);
    signal Bus2IP_Clk            : std_logic;
    signal Bus2IP_Resetn         : std_logic;
    signal IP2Bus_Data           : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0 );
    signal IP2Bus_WrAck          : std_logic;
    signal IP2Bus_RdAck          : std_logic;
    signal IP2Bus_AddrAck        : std_logic;
    signal IP2Bus_Error          : std_logic;
    signal Bus2IP_Addr           : std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
    signal Bus2IP_Data           : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
    signal Bus2IP_RNW            : std_logic;
    signal Bus2IP_BE             : std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1)downto 0);
    signal Bus2IP_Burst          : std_logic;
    signal Bus2IP_BurstLength    : std_logic_vector(7 downto 0);
    signal Bus2IP_WrReq          : std_logic;
    signal Bus2IP_RdReq          : std_logic;
    signal Bus2IP_CS             : std_logic_vector((((C_ARD_ADDR_RANGE_ARRAY'LENGTH)/2)-1)downto 0);
    signal Bus2IP_RdCE           : std_logic_vector((calc_num_ce(C_ARD_NUM_CE_ARRAY)-1)downto 0);
    signal Bus2IP_WrCE           : std_logic_vector((calc_num_ce(C_ARD_NUM_CE_ARRAY)-1)downto 0);
    signal Type_of_xfer          : std_logic;
    signal axisl2pcinc_rnw       : std_logic;
    signal start                 : std_logic;
    signal dir                   : std_logic;
    signal m_data_fell           : std_logic; 
    signal fatal                 : std_logic; 
    signal retry                 : std_logic; 
    signal m_dataq               : std_logic;
    signal bus2ip_req            : std_logic;
    signal s_axis_tdata          : std_logic_vector(63 downto 0);
    signal s_axis_tlast          : std_logic;
    signal s_axis_tvalid         : std_logic;
    signal s_axis_tready         : std_logic;
    signal s_axis_tstrb          : std_logic_vector(7 downto 0);
    signal wr_fifo_m_axis_tvalid : std_logic;
    signal wr_fifo_m_axis_tready : std_logic;
    signal wr_fifo_m_axis_tdata  : std_logic_vector(63 downto 0);
    signal wr_fifo_m_axis_tstrb  : std_logic_vector(7 downto 0);
    signal wr_fifo_m_axis_tlast  : std_logic;
    signal last_word_fifo_rd     : std_logic;
    signal axi_slv_req           : std_logic;
    signal pci_start_ack         : std_logic;
    signal pci_end_ack           : std_logic;
    signal pcin2axisl_start_ack  : std_logic;
    signal pcin2axisl_end_ack    : std_logic;   
    signal axi_slv_wr_ack        : std_logic;
    signal axi_slv_wr_cmplt      : std_logic;
    signal pci_decod_addr        : std_logic_vector(31 downto 0);
    signal axi2pci_address       : std_logic_vector(31 downto 0);
    signal pci_adress            : std_logic_vector(31 downto 0);
    signal axi2pcibar0_adress    : std_logic_vector(31 downto 0);
    signal axi2pcibar1_adress    : std_logic_vector(31 downto 0);
    signal AD_O_data             : std_logic_vector(31 downto 0);
    signal m_cbe                 : std_logic_vector(3 downto 0);
    signal command               : std_logic_vector(3 downto 0);
    signal axi_bar0_en           : std_logic;
    signal axi_bar1_en           : std_logic;
    signal axi_bar0_valid        : std_logic;
    signal axi_bar1_valid        : std_logic;
    signal axi_barX_valid        : std_logic;
    signal addr_err_pass         : std_logic;
    signal addr_val_ack          : std_logic;
    
    signal addr_err_pass_sync    : std_logic;
    signal fifo_en               : std_logic;
    signal fifo_rstn             : std_logic;
    
    

begin

axi2pci_address <= wr_fifo_m_axis_tdata(63 downto 32);
axi2pcibar0_adress <= axi2pci_address xor C_AXIBAR_0;
axi2pcibar1_adress <= axi2pci_address xor C_AXIBAR_1;
axi_bar0_en <= '1' when (axi2pcibar0_adress <= axibar0_max_val) else '0';
axi_bar1_en <= '1' when (axi2pcibar1_adress <= axibar0_max_val) else '0';
axi_bar0_valid <= axi_bar0_en and AXIBAR_CONTROL(0);
axi_bar1_valid <= axi_bar1_en and AXIBAR_CONTROL(1);
axi_barX_valid <= (axi_bar0_valid or axi_bar1_valid) and wr_fifo_m_axis_tvalid;

wr_fifo_m_axis_tready <= ITR_M_SRC_EN;
last_word_fifo_rd <= wr_fifo_m_axis_tlast and ITR_M_SRC_EN;

ITR_ADIO_OUT <= pci_adress when (ITR_M_ADDR_N = '0') else 
                AD_O_data  when (ITR_M_DATA = '1') else 
               (others => 'Z');
ITR_M_CBE <= b"011"&(not axisl2pcinc_rnw) when (ITR_M_ADDR_N = '0') else (m_cbe);

process(CLK_PCI)
  begin
    if rising_edge(CLK_PCI) then
      if (axi_bar0_en = '1') then
        pci_adress <= AXIBAR2PCIBAR0 or axi2pcibar0_adress;
      else 
        pci_adress <= AXIBAR2PCIBAR1 or axi2pcibar1_adress;
      end if;
    end if;
  end process;

process(CLK_PCI, RST_PCI)
  begin 
    if (RST_PCI = '1') then
      m_dataq <= '0';
    elsif rising_edge(CLK_PCI) then
      m_dataq <= ITR_M_DATA;
    end if;
  end process;
  m_data_fell <= (not m_dataq) and ITR_M_DATA;

-- inputs to the initiatior state machine
watch_status : process(CLK_PCI, RST_PCI)
  begin
    if (RST_PCI = '1') then
      fatal <= '0';
      retry <= '0';
    elsif rising_edge(CLK_PCI) then
      if (ITR_M_ADDR_N = '0') then
        fatal <= '0';
        retry <= '0';
      elsif (ITR_M_DATA = '1') then
        fatal <= ITR_CSR(39) or ITR_CSR(38);
        retry <= ITR_CSR(36);
      end if;
    end if;
  end process;
  
  
dir_signal_gen_sync : entity work.flip_flop_synchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sig         => Bus2IP_RNW,
      from_clk    => Bus2IP_Clk,
      sig_sync    => axisl2pcinc_rnw,
      to_clk      => CLK_PCI
    );

start_signal_gen_sync : entity work.flip_flop_synchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sig         => axi_slv_req,
      from_clk    => Bus2IP_Clk,
      sig_sync    => start,
      to_clk      => CLK_PCI
    );
  
pcin2axisl_start_ack_sync : entity work.ToggleSynchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sign        => pci_start_ack,
      from_clk    => CLK_PCI,
      sign_sync   => pcin2axisl_start_ack,
      to_clk      => Bus2IP_Clk
    ); 

pcin2axisl_end_ack_sync : entity work.ToggleSynchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sign        => pci_end_ack,
      from_clk    => CLK_PCI,
      sign_sync   => pcin2axisl_end_ack,
      to_clk      => Bus2IP_Clk
    ); 
addr_err_pass_sync_proc : entity work.ToggleSynchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sign        => addr_err_pass,
      from_clk    => CLK_PCI,
      sign_sync   => addr_err_pass_sync,
      to_clk      => Bus2IP_Clk
    ); 
  
-- initiator state machine

FSM_INCTR_SYNC_PROC : process(CLK_PCI, RST_PCI)
  begin
    if (RST_PCI = '1') then
      intr_state <= IDLE_S;
    elsif rising_edge(CLK_PCI) then
      intr_state <= intr_next_state;
    end if;
  end process;

FSM_INCTR_OUT_ENCODER_PROC : process(intr_state, wr_fifo_m_axis_tvalid, wr_fifo_m_axis_tlast, wr_fifo_m_axis_tstrb, wr_fifo_m_axis_tdata)
    begin
      ITR_REQUEST <= '0';
      ITR_REQUESTHOLD <= '0';
      pci_start_ack <= '0'; 
      pci_end_ack <= '0';
      ITR_M_WRDN <= '0';
      ITR_M_READY <= '0';
      ITR_COMPLETE <= '0';
      m_cbe <= (others => 'Z');
      AD_O_data <= (others => 'Z');
      addr_err_pass <= '0';
      INITIATOR_BUSY <= '1';
        case intr_state is
          when IDLE_S => 
            INITIATOR_BUSY <= '0';
          when REQ_S =>
            ITR_REQUEST <= '1';
            pci_start_ack <= '1';
          when DONE_S => 
            pci_end_ack <= '1';
          when WRITE_S =>
            ITR_M_WRDN <= '1';
            ITR_M_READY <= wr_fifo_m_axis_tvalid;
            ITR_COMPLETE <= wr_fifo_m_axis_tlast;
            m_cbe <= not wr_fifo_m_axis_tstrb(3 downto 0);
            AD_O_data <= wr_fifo_m_axis_tdata(31 downto 0);
          when ADDR_ERROR =>
            addr_err_pass <= '1';
          when others =>
        end case;
    end process;

FSM_INCTR_NEXTSTATE_DECOD_PROC : process(intr_state, start, axisl2pcinc_rnw, retry, fatal, m_data_fell, last_word_fifo_rd, wr_fifo_m_axis_tvalid, axi_barX_valid)
    begin
      intr_next_state <= intr_state;
        case (intr_state) is
        
          when IDLE_S =>
            if (start = '1') then
              intr_next_state <= ADDR_S;
            end if;
            
          when ADDR_S =>
            if (wr_fifo_m_axis_tvalid = '1') then
              if (axi_barX_valid = '1') then
                intr_next_state <= REQ_S;
              else 
                intr_next_state <= ADDR_ERROR;
              end if;
            end if;
            
          when REQ_S =>
            if (axisl2pcinc_rnw = '1') then
              intr_next_state <= READ_S;
            else 
              intr_next_state <= WRITE_S;
            end if;
            
          when ADDR_ERROR => 
            intr_next_state <= IDLE_S;
            
          when WRITE_S =>
            if (m_data_fell = '1') then
              if (fatal = '1') then
                intr_next_state <= DEAD_S;
              elsif (retry = '1') then
                intr_next_state <= RETRY_S;
              elsif (last_word_fifo_rd = '1') then 
                intr_next_state <= DONE_S;
              end if;
            end if;
            
          when READ_S =>
            if (m_data_fell = '1') then
              if (fatal = '1') then
                intr_next_state <= DEAD_S;
              elsif (retry = '1') then 
                intr_next_state <= RETRY_S;
              else
                intr_next_state <= DONE_S;
              end if;
            end if;
            
          when RETRY_S =>
            intr_next_state <= REQ_S;
            
          when DONE_S =>
            intr_next_state <= IDLE_S;
            
          when DEAD_S =>
            intr_next_state <= DEAD_S;
            
          when others =>
            intr_next_state <= IDLE_S;
        end case;
    end process;



bus2ip_req <= Bus2IP_WrReq or Bus2IP_RdReq;

-- axi slave state machine

FSM_AXI_SLV_SYNC_PROC : process(Bus2IP_Clk, Bus2IP_Resetn)
  begin
    if (Bus2IP_Resetn = '0') then
      axi_slv_state <= AXI_IDLE;
    elsif rising_edge(Bus2IP_Clk) then
      axi_slv_state <= axi_slv_next_state;
    end if;
  end process;

FSM_AXI_SLV_OUT_ENCODER_PROC : process(axi_slv_state)
    begin
      axi_slv_req <= '0';
      IP2Bus_WrAck <= '0';
      IP2Bus_RdAck <= '0';
      IP2Bus_AddrAck <= '0';
      IP2Bus_Data <= (others => '0');
      axi_slv_wr_cmplt <= '0';
      IP2Bus_Error <= '0';
      fifo_en <= '1';
        case axi_slv_state is
          when AXI_REQ =>
            axi_slv_req <= '1';
          when AXI_WRITE_F => 
            IP2Bus_WrAck <= s_axis_tready;
            IP2Bus_AddrAck <= s_axis_tready;   
          when AXI_WRITE_COMPLT =>
            axi_slv_wr_cmplt <= '1';
            IP2Bus_WrAck     <= axi_slv_wr_ack;
            IP2Bus_AddrAck   <= axi_slv_wr_ack;
          when AXI_ADDR_ERROR =>
            IP2Bus_Error <= '1';
            fifo_en <= '0';
            IP2Bus_WrAck <= '1';
          when others =>
        end case;
    end process;

FSM_AXI_SLV_NEXTSTATE_DECOD_PROC : process(axi_slv_state, bus2ip_req, Bus2IP_RNW, pcin2axisl_start_ack, pcin2axisl_end_ack, addr_err_pass_sync)
    begin
      axi_slv_next_state <= axi_slv_state;
        case (axi_slv_state) is
          when AXI_IDLE =>
            if (bus2ip_req = '1') then
              axi_slv_next_state <= AXI_REQ;
            end if;
          when AXI_REQ =>
            if (pcin2axisl_start_ack = '1') then
              if (Bus2IP_RNW = '1') then
                axi_slv_next_state <= AXI_READ_F;
              else
                axi_slv_next_state <= AXI_WRITE_F;
              end if;
            elsif (addr_err_pass_sync = '1') then
              axi_slv_next_state <= AXI_ADDR_ERROR;
            end if;
          when AXI_WRITE_F =>
            if (pcin2axisl_end_ack = '1') then
              axi_slv_next_state <= AXI_WRITE_COMPLT;
            elsif (addr_err_pass_sync = '1') then
              axi_slv_next_state <= AXI_ADDR_ERROR;
            end if;
          when AXI_ADDR_ERROR =>
              axi_slv_next_state <= AXI_IDLE;
          when others =>
            axi_slv_next_state <= AXI_IDLE;
        end case;
    end process;

    
    
write_fifo_inst : entity axi_pci_v1_00_a.a_fifo_stream 
  port map(
    m_aclk          => CLK_PCI,
    s_aclk          => Bus2IP_Clk,
    s_aresetn       => fifo_rstn,
    s_axis_tvalid   => s_axis_tvalid,
    s_axis_tready   => s_axis_tready,
    s_axis_tdata    => s_axis_tdata,
    s_axis_tlast    => s_axis_tlast,
    s_axis_tstrb    => s_axis_tstrb,
    m_axis_tvalid   => wr_fifo_m_axis_tvalid,
    m_axis_tready   => wr_fifo_m_axis_tready,
    m_axis_tdata    => wr_fifo_m_axis_tdata ,
    m_axis_tstrb    => wr_fifo_m_axis_tstrb ,
    m_axis_tlast    => wr_fifo_m_axis_tlast 
  );
  
  fifo_rstn <= Bus2IP_Resetn and fifo_en;
  s_axis_tvalid <= Bus2IP_WrReq;  
  s_axis_tdata <= (Bus2IP_Addr & Bus2IP_Data);
  s_axis_tstrb <= (B"1111" & Bus2IP_BE);
  s_axis_tlast <= (not Bus2IP_Burst);
  
  
  axi_slv_wr_ack <= s_axis_tready and (Bus2IP_Burst or axi_slv_wr_cmplt);
  
  axi_slave_ipif_ist : entity work.axi_slave_burst
    generic map(
----  System Parameters
      C_FAMILY                       => C_FAMILY             ,
      C_RDATA_FIFO_DEPTH             => 32   ,
      C_INCLUDE_TIMEOUT_CNT          => 0    ,
      C_TIMEOUT_CNTR_VAL             => 16   ,
      C_ALIGN_BE_RDADDR              => 0    ,

--     C_ALIGN_BE_RDADDR              : integer range 0 to 1   := 0;
----  AXI Parameters
      C_S_AXI_SUPPORTS_WRITE         => C_S_AXI_SUPPORTS_WRITE,
      C_S_AXI_SUPPORTS_READ          => C_S_AXI_SUPPORTS_READ ,
      C_S_AXI_ADDR_WIDTH             => C_S_AXI_ADDR_WIDTH    ,
      C_S_AXI_DATA_WIDTH             => C_S_AXI_DATA_WIDTH    ,
      C_S_AXI_ID_WIDTH               => C_S_AXI_ID_WIDTH      ,
      
      C_ARD_ADDR_RANGE_ARRAY         => C_ARD_ADDR_RANGE_ARRAY,
      C_ARD_NUM_CE_ARRAY             => C_ARD_NUM_CE_ARRAY
      )

    port map(
--  -- AXI Slave signals ------------------------------------------------------
--  -- AXI Global System Signals
      S_AXI_ACLK                   => S_AXI_ACLK   ,
      S_AXI_ARESETN                => S_AXI_ARESETN,
      S_AXI_AWID                   => S_AXI_AWID   ,
      S_AXI_AWADDR                 => S_AXI_AWADDR ,
      S_AXI_AWLEN                  => S_AXI_AWLEN  ,
      S_AXI_AWSIZE                 => S_AXI_AWSIZE ,
      S_AXI_AWBURST                => S_AXI_AWBURST,
      S_AXI_AWLOCK                 => S_AXI_AWLOCK ,
      S_AXI_AWCACHE                => S_AXI_AWCACHE,
      S_AXI_AWPROT                 => S_AXI_AWPROT ,
      S_AXI_AWVALID                => S_AXI_AWVALID,
      S_AXI_AWREADY                => S_AXI_AWREADY,
      S_AXI_WDATA                  => S_AXI_WDATA,
      S_AXI_WSTRB                  => S_AXI_WSTRB,
      S_AXI_WLAST                  => S_AXI_WLAST,
      S_AXI_WVALID                 => S_AXI_WVALID,
      S_AXI_WREADY                 => S_AXI_WREADY,
--  -- AXI Write Response Channel Signals
      S_AXI_BID                    => S_AXI_BID,
      S_AXI_BRESP                  => S_AXI_BRESP,
      S_AXI_BVALID                 => S_AXI_BVALID,
      S_AXI_BREADY                 => S_AXI_BREADY,
--  -- AXI Read Address Channel Signals
      S_AXI_ARID                   => S_AXI_ARID   ,
      S_AXI_ARADDR                 => S_AXI_ARADDR ,
      S_AXI_ARLEN                  => S_AXI_ARLEN  ,
      S_AXI_ARSIZE                 => S_AXI_ARSIZE ,
      S_AXI_ARBURST                => S_AXI_ARBURST,
      S_AXI_ARLOCK                 => S_AXI_ARLOCK ,
      S_AXI_ARCACHE                => S_AXI_ARCACHE,
      S_AXI_ARPROT                 => S_AXI_ARPROT ,
      S_AXI_ARVALID                => S_AXI_ARVALID,
      S_AXI_ARREADY                => S_AXI_ARREADY,
--  -- AXI Read Data Channel Signals
      S_AXI_RID                    => S_AXI_RID   ,
      S_AXI_RDATA                  => S_AXI_RDATA ,
      S_AXI_RRESP                  => S_AXI_RRESP ,
      S_AXI_RLAST                  => S_AXI_RLAST ,
      S_AXI_RVALID                 => S_AXI_RVALID,
      S_AXI_RREADY                 => S_AXI_RREADY,
     -- Controls to the IP/IPIF modules
      Bus2IP_Clk                   => Bus2IP_Clk    ,
      Bus2IP_Resetn                => Bus2IP_Resetn ,
      IP2Bus_Data                  => IP2Bus_Data   ,
      IP2Bus_WrAck                 => IP2Bus_WrAck  ,
      IP2Bus_RdAck                 => IP2Bus_RdAck  ,
      IP2Bus_AddrAck               => IP2Bus_AddrAck,
      IP2Bus_Error                 => IP2Bus_Error  ,

      Bus2IP_Addr                  => Bus2IP_Addr ,
      Bus2IP_Data                  => Bus2IP_Data ,
      Bus2IP_RNW                   => Bus2IP_RNW  ,
      Bus2IP_BE                    => Bus2IP_BE   ,
      Bus2IP_Burst                 => Bus2IP_Burst,
      Bus2IP_BurstLength           => Bus2IP_BurstLength,
      Bus2IP_WrReq                 => Bus2IP_WrReq,
      Bus2IP_RdReq                 => Bus2IP_RdReq,
      Bus2IP_CS                    => Bus2IP_CS   ,
      Bus2IP_RdCE                  => Bus2IP_RdCE ,
      Bus2IP_WrCE                  => Bus2IP_WrCE ,
      Type_of_xfer                 => Type_of_xfer
       );


end Behavioral;
