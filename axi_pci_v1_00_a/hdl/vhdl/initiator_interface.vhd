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
use axi_pci_v1_00_a.stream_fifo_s;
use axi_pci_v1_00_a.async_fifo;

library axi_pci_v1_00_a_proc_common_v3_00_a;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.clog2;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.log2;
use axi_pci_v1_00_a_proc_common_v3_00_a.proc_common_pkg.max2;
use axi_pci_v1_00_a_proc_common_v3_00_a.family_support.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.ipif_pkg.all;
use axi_pci_v1_00_a_proc_common_v3_00_a.or_gate128;
use axi_pci_v1_00_a_proc_common_v3_00_a.async_fifo_fg;

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
      C_FIFO_DEPTH                   : integer := 16;
      C_SYNC_STAGES                  : integer:= 2

     );
    Port (
      S_AXIS_ACLK         : in std_logic;
      S_AXIS_ARESETN      : in std_logic;
      S_AXIS_TDATA        : in std_logic_vector(31 downto 0);
      S_AXIS_TVALID       : in std_logic;
      S_AXIS_TREADY       : out std_logic;

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
      
      FATAL_SIGN_OUT      : out std_logic;
      
      axi_cntrl_clk       : in std_logic;
      
      AXIBAR_CONTROL_IN   : in std_logic_vector(31 downto 0);
      AXIBAR_CONTROL_OUT  : out std_logic_vector(31 downto 0);
      
      pci_address_out     : out std_logic_vector(31 downto 0);
      pci_address_wr_en   : in  std_logic;
      pci_address_in      : in  std_logic_vector(31 downto 0)
    );
end initiator_interface;

architecture Behavioral of initiator_interface is

    type fsm_initiator  is (IDLE_S, REQ_S, READ_S, DEAD_S, WRITE_S, DONE_S, RETRY_S, ADDR_S, ADDR_ERROR);
    signal intr_state, intr_next_state : fsm_initiator;

    signal m_data_fell           : std_logic; 
    signal fatal                 : std_logic; 
    signal retry                 : std_logic; 
    signal m_dataq               : std_logic;
    signal wr_fifo_m_axis_tlast  : std_logic;
    signal wr_fifo_m_axis_tvalid : std_logic;
    signal wr_fifo_m_axis_tready : std_logic;
    signal wr_fifo_m_axis_tdata  : std_logic_vector(31 downto 0);
    signal wr_fifo_m_axis_tdata_d: std_logic_vector(31 downto 0);
    signal pci_adress            : std_logic_vector(31 downto 0):= (others => '0');
    signal AD_O_data             : std_logic_vector(31 downto 0);
    signal addr_wr_sync          : std_logic;
    signal sec_fifo_ready        : std_logic;
    signal sec_fifo_resetn       : std_logic;
    signal sec_fifo_activ        : std_logic;
    signal sec_fifo_valid        : std_logic;
    signal sec_fifo_last         : std_logic;
    signal sec_fifo_data         : std_logic_vector(31 downto 0);
    signal sec_fifo_rd_en        : std_logic;

    
    signal fifo_rd_en            : std_logic;
    signal fifo_full             : std_logic;
    signal fifo_ainit            : std_logic;
    
    signal req_to_pci            : std_logic;
    signal compl_pci             : std_logic;
    signal data_to_pci           : std_logic_vector(31 downto 0);

    
    

begin
address_sync_proc : entity work.ToggleSynchronizer
    generic map(
      SYNC_STAGES => C_SYNC_STAGES
    )
    Port map( 
      sign        => pci_address_wr_en,
      from_clk    => axi_cntrl_clk,
      sign_sync   => addr_wr_sync,
      to_clk      => CLK_PCI
    ); 

--------------------------------
--axi control process
--------------------------------



AXIBAR_CONTROL_OUT(0) <= AXIBAR_CONTROL_IN(0); -- axi_bar0_en
AXIBAR_CONTROL_OUT(1) <= AXIBAR_CONTROL_IN(1); -- axi_bar1_en
AXIBAR_CONTROL_OUT(2) <= fatal;                -- pci dead



wr_fifo_m_axis_tready <= ITR_M_SRC_EN;

ITR_ADIO_OUT <= pci_adress when (ITR_M_ADDR_N = '0') else 
                AD_O_data  when (ITR_M_DATA = '1') else 
               (others => 'Z');
ITR_M_CBE <= b"0111" when (ITR_M_ADDR_N = '0') else b"0000";

process(CLK_PCI)
  begin
    if rising_edge(CLK_PCI) then
      if (addr_wr_sync = '1') then
        pci_adress <= pci_address_in;
      elsif (ITR_M_DATA_VLD = '1') and (wr_fifo_m_axis_tvalid = '1') then
        pci_adress <= pci_adress + x"0000_0004";
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
  m_data_fell <= (not ITR_M_DATA) and m_dataq;
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
-- initiator state machine

FSM_INCTR_SYNC_PROC : process(CLK_PCI, RST_PCI)
  begin
    if (RST_PCI = '1') then
      intr_state <= IDLE_S;
      sec_fifo_rd_en <= '0';
    elsif rising_edge(CLK_PCI) then
      intr_state <= intr_next_state;
      sec_fifo_rd_en <= ITR_M_DATA_VLD;
    end if;
  end process;

FSM_INCTR_OUT_ENCODER_PROC : process(intr_state, wr_fifo_m_axis_tvalid, compl_pci, wr_fifo_m_axis_tdata)
    begin
      ITR_REQUEST <= '0';
      ITR_REQUESTHOLD <= '0'; 
      ITR_M_WRDN <= '0';
      ITR_M_READY <= '0';
      ITR_COMPLETE <= '0';
      AD_O_data <= (others => 'Z');
      INITIATOR_BUSY <= '1';
      FATAL_SIGN_OUT <= '0';
        case intr_state is
          when IDLE_S => 
            INITIATOR_BUSY <= '0';
          when REQ_S =>
            ITR_REQUEST <= '1';
          when DONE_S => 
          when WRITE_S =>
            ITR_M_WRDN      <= '1';
            ITR_M_READY     <= req_to_pci;
            ITR_COMPLETE    <= compl_pci;
            AD_O_data       <= data_to_pci;
          when DEAD_S =>
            FATAL_SIGN_OUT <= '1';
          when others =>
        end case;
    end process;

FSM_INCTR_NEXTSTATE_DECOD_PROC : process(intr_state, retry, fatal, m_data_fell, req_to_pci)
    begin
      intr_next_state <= intr_state;
        case (intr_state) is
        
          when IDLE_S =>
            if (req_to_pci = '1') then
              intr_next_state <= REQ_S;
            end if;
            
          when REQ_S =>
              intr_next_state <= WRITE_S;

          when WRITE_S =>
            if (m_data_fell = '1') then
              if (fatal = '1') then
                intr_next_state <= DEAD_S;
              elsif (retry = '1') then
                intr_next_state <= RETRY_S;
              else
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

sec_fifo_activ_proc :
    process(CLK_PCI)
    begin
      if (RST_PCI = '1') then 
        sec_fifo_activ <= '0';
      elsif rising_edge(CLK_PCI) then
        if (retry = '1') then
          sec_fifo_activ <= '1';
        elsif (sec_fifo_valid = '0') then 
          sec_fifo_activ <= '0';
        end if;
      end if;
    end process;

req_to_pci <= sec_fifo_valid or wr_fifo_m_axis_tvalid;
compl_pci <= sec_fifo_last or wr_fifo_m_axis_tlast;
data_to_pci <= sec_fifo_data when (sec_fifo_activ = '1') else wr_fifo_m_axis_tdata;

sec_fifo_resetn <= (not RST_PCI);
    
second_fifo : entity axi_pci_v1_00_a.stream_fifo_s
    generic map(
      c_data_width  => 32,
      c_depth_axis  => 16
      )
    Port map ( 
      s_aclk          => CLK_PCI,
      s_aresetn       => sec_fifo_resetn,
      s_axis_tvalid   => fifo_rd_en,
      s_axis_tready   => sec_fifo_ready,
      s_axis_tdata    => wr_fifo_m_axis_tdata,
      s_axis_tlast    => wr_fifo_m_axis_tlast,
      m_axis_tvalid   => sec_fifo_valid,
      m_axis_tready   => sec_fifo_rd_en,
      m_axis_tdata    => sec_fifo_data,
      m_axis_tlast    => sec_fifo_last
    );

async_fifo_inst : entity axi_pci_v1_00_a.async_fifo

  GENERIC MAP(
    c_fifo_depth => c_fifo_depth,
    c_data_width => 32
  )
  PORT MAP(
    rst          => fifo_ainit,
    wr_clk       => S_AXIS_ACLK,
    rd_clk       => CLK_PCI,
    din          => S_AXIS_TDATA,
    wr_en        => S_AXIS_TVALID,
    rd_en        => fifo_rd_en,
    dout         => wr_fifo_m_axis_tdata,
    full         => fifo_full,
    empty        => open,
    almost_empty => wr_fifo_m_axis_tlast,
    valid        => wr_fifo_m_axis_tvalid
  );
    fifo_rd_en      <= (wr_fifo_m_axis_tvalid and wr_fifo_m_axis_tready and (not sec_fifo_activ));
    fifo_ainit      <= (not S_AXIS_ARESETN);
    S_AXIS_TREADY   <= (not fifo_full) and sec_fifo_ready;

end Behavioral;
