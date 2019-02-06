-------------------------------------------------------------------------------
--
-- This file contains confidential and proprietary information 
-- of Xilinx, Inc. and is protected under U.S. and             
-- international copyright and other intellectual property     
-- laws.                                                       
--                                                             
-- DISCLAIMER                                                  
-- This disclaimer is not a license and does not grant any     
-- rights to the materials distributed herewith. Except as     
-- otherwise provided in a valid license issued to you by      
-- Xilinx, and to the maximum extent permitted by applicable   
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND     
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES 
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING   
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-      
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and    
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of          
-- liability) for any loss or damage of any kind or nature     
-- related to, arising under or in connection with these       
-- materials, including for any direct, or any indirect,       
-- special, incidental, or consequential loss or damage        
-- (including loss of data, profits, goodwill, or any type of  
-- loss or damage suffered as a result of any action brought   
-- by a third party) even if such damage or loss was           
-- reasonably foreseeable or Xilinx had been advised of the    
-- possibility of the same.                                    
--                                                             
-- CRITICAL APPLICATIONS                                       
-- Xilinx products are not designed or intended to be fail-    
-- safe, or for use in any application requiring fail-safe     
-- performance, such as life-support or safety devices or      
-- systems, Class III medical devices, nuclear facilities,     
-- applications related to the deployment of airbags, or any   
-- other applications that could lead to death, personal       
-- injury, or severe property or environmental damage          
-- (individually and collectively, "Critical                   
-- Applications"). Customer assumes the sole risk and          
-- liability of any use of Xilinx products in Critical         
-- Applications, subject only to applicable laws and           
-- regulations governing limitations on product liability.     
--                                                                                
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS    
-- PART OF THIS FILE AT ALL TIMES.                             
-------------------------------------------------------------------------------
-- Project    : LogiCORE IP Initiator/Target for PCI
-- File       : pci_lc.vhd

------------------------------------------------------------------------
--
--  File:   pci_lc.vhd
--
--
--  This is a lower-level VHDL module which serves as a wrapper for the
--  PCI interface.  This module makes use of Unified Library Primitives.
--  Do not modify this file.
--
------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library work;
use work.pci32_spng_v4_14_0;

entity PCI_LC is
  port (
--    AD_IO         : inout std_logic_vector(31 downto 0);
    ADO           : out std_logic_vector(31 downto 0);
    ADI           : in  std_logic_vector(31 downto 0);
    ADT           : out std_logic_vector(31 downto 0);
--    CBE_IO        : inout std_logic_vector(3 downto 0);
    CBO           : out std_logic_vector(3 downto 0);
    CBI           : in  std_logic_vector(3 downto 0);
    CBT           : out std_logic_vector(3 downto 0);
--    PAR_IO        : inout std_logic;
    PARO          : out std_logic;
    PARI          : in  std_logic;
    PART          : out std_logic;
--    FRAME_IO      : inout std_logic;
    FRAMEO        : out std_logic;
    FRAMEI        : in  std_logic;
    FRAMET        : out std_logic;
--    TRDY_IO       : inout std_logic;
    TRDYO         : out std_logic;
    TRDYI         : in  std_logic;
    TRDYT         : out std_logic;
--    IRDY_IO       : inout std_logic;
    IRDYO         : out std_logic;
    IRDYI         : in  std_logic;
    IRDYT         : out std_logic;
--    STOP_IO       : inout std_logic;
    STOPO         : out std_logic;
    STOPI         : in  std_logic;
    STOPT         : out std_logic;
--    DEVSEL_IO     : inout std_logic;
    DEVSELO       : out std_logic;
    DEVSELI       : in  std_logic;
    DEVSELT       : out std_logic;
    IDSEL_I       : in    std_logic;
--    PERR_IO       : inout std_logic;
    PERRO         : out std_logic;
    PERRI         : in  std_logic;
    PERRT         : out std_logic;

--    SERR_IO         : out std_logic;
    SERRO         : out std_logic;
    SERRI         : in  std_logic;
    SERRT         : out std_logic;

    INT_O         : out   std_logic;
    PME_O         : out   std_logic;
    REQ_O         : out   std_logic;
    GNT_I         : in    std_logic;
    RST_I         : in    std_logic;
    CLK_I         : in    std_logic;

    FRAMEQ_N      : out   std_logic;
    TRDYQ_N       : out   std_logic;
    IRDYQ_N       : out   std_logic;
    STOPQ_N       : out   std_logic;
    DEVSELQ_N     : out   std_logic;
    ADDR          : out   std_logic_vector(31 downto 0);
    ADIO_IN       : in    std_logic_vector(31 downto 0);
    ADIO_OUT      : out   std_logic_vector(31 downto 0);
    CFG_VLD       : out   std_logic;
    CFG_HIT       : out   std_logic;
    C_TERM        : in    std_logic;
    C_READY       : in    std_logic;
    ADDR_VLD      : out   std_logic;
    BASE_HIT      : out   std_logic_vector(7 downto 0);
    S_TERM        : in    std_logic;
    S_READY       : in    std_logic;
    S_ABORT       : in    std_logic;
    S_WRDN        : out   std_logic;
    S_SRC_EN      : out   std_logic;
    S_DATA_VLD    : out   std_logic;
    S_CBE         : out   std_logic_vector(3 downto 0);
    PCI_CMD       : out   std_logic_vector(15 downto 0);
    REQUEST       : in    std_logic;
    REQUESTHOLD   : in    std_logic;
    COMPLETE      : in    std_logic;
    M_WRDN        : in    std_logic;
    M_READY       : in    std_logic;
    M_SRC_EN      : out   std_logic;
    M_DATA_VLD    : out   std_logic;
    M_CBE         : in    std_logic_vector(3 downto 0);
    TIME_OUT      : out   std_logic;
    CFG_SELF      : in    std_logic;
    M_DATA        : out   std_logic;
    I_IDLE        : out   std_logic;
    M_ADDR_N      : out   std_logic;
    IDLE          : out   std_logic;
    B_BUSY        : out   std_logic;
    S_DATA        : out   std_logic;
    BACKOFF       : out   std_logic;
    INT_N         : in    std_logic;
    PME_N         : in    std_logic;
    PERRQ_N       : out   std_logic;
    SERRQ_N       : out   std_logic;
    KEEPOUT       : in    std_logic;
    CSR           : out   std_logic_vector(39 downto 0);
    PCIW_EN       : out   std_logic;
    BW_DETECT_DIS : in    std_logic;
    BW_MANUAL_32B : in    std_logic;
    PCIX_EN       : out   std_logic;
    RTR           : out   std_logic;
    CFG           : out   std_logic_vector(511 downto 0);
    RST           : inout std_logic;
    CLK           : inout std_logic;
    dr_bus        : out std_logic
);

end PCI_LC;

architecture xilinx of PCI_LC is

  -- I/O instances for clock, reset, power, and ground
  signal RST_INV  : std_logic;
  signal CLK_NUB  : std_logic;

  signal NC_OPEN  : std_logic := '0';
  signal GND      : std_logic := '0';
  signal VCC      : std_logic := '1';

  signal BUSY_AD_UNUSED      : std_logic_vector(32 downto 0);
  signal DATAOUT2_AD_UNUSED  : std_logic_vector(32 downto 0);
  signal DOUT_AD_UNUSED      : std_logic_vector(32 downto 0);
  signal TOUT_AD_UNUSED      : std_logic_vector(32 downto 0);
  signal BUSY_CTL_UNUSED      : std_logic_vector(13 downto 0);
  signal DATAOUT2_CTL_UNUSED  : std_logic_vector(13 downto 0);
  signal DOUT_CTL_UNUSED      : std_logic_vector(13 downto 0);
  signal TOUT_CTL_UNUSED      : std_logic_vector(13 downto 0);


  -- I/O instances for address and data
--  signal ADO      : std_logic_vector(31 downto 0);
--  signal ADI      : std_logic_vector(31 downto 0);
--  signal ADT      : std_logic_vector(31 downto 0);
  signal ADD      : std_logic_vector(31 downto 0);


  -- I/O instances for command and byte enable
  --signal CBO      : std_logic_vector(3 downto 0);
  --signal CBI      : std_logic_vector(3 downto 0);
  --signal CBT      : std_logic_vector(3 downto 0);
  signal CBD      : std_logic_vector(3 downto 0);



  -- I/O instances for parity
  signal PARD     : std_logic;



  -- I/O instances for control
--  signal FRAMEO   : std_logic;
--  signal FRAMEI   : std_logic;
--  signal FRAMET   : std_logic;
  signal FRAMED   : std_logic;

--  signal TRDYO    : std_logic;
--  signal TRDYI    : std_logic;
--  signal TRDYT    : std_logic;
  signal TRDYD    : std_logic;
--  signal IRDYO    : std_logic;
--  signal IRDYI    : std_logic;
  signal IRDYD    : std_logic;
--  signal IRDYT    : std_logic;
--  signal STOPO    : std_logic;
--  signal STOPI    : std_logic;
  signal STOPD    : std_logic;
--  signal STOPT    : std_logic;
--  signal DEVSELO  : std_logic;
--  signal DEVSELI  : std_logic;
  signal DEVSELD  : std_logic;
--  signal DEVSELT  : std_logic;
--  signal PERRO    : std_logic;
--  signal PERRI    : std_logic;
  signal PERRD    : std_logic;
--  signal PERRT    : std_logic;
--  signal SERRO    : std_logic;
--  signal SERRI    : std_logic;
  signal SERRD    : std_logic;
--  signal SERRT    : std_logic;
  signal INTO     : std_logic;
  signal INTT     : std_logic;
  signal PMEO     : std_logic;
  signal PMET     : std_logic;
  signal REQO     : std_logic;
  signal REQT     : std_logic;
  signal GNTI     : std_logic;
  signal GNTD     : std_logic;
  signal IDSELI   : std_logic;
  signal IDSELD   : std_logic;

  signal ID_CTR   : std_logic_vector(4 downto 0);


--  component pci32_spng_v4_14 is
--    port (
--      s_wrdn        : out std_logic;
--      trdyi         : in  std_logic;
--      trdyd         : in  std_logic;
--      keepout       : in  std_logic;
--      trdyo         : out std_logic;
--      dr_bus        : out std_logic;
--      pcix_en       : out std_logic;
--      trdyt         : out std_logic;
--      backoff       : out std_logic;
--      irdyi         : in  std_logic;
--      irdyd         : in  std_logic;
--      irdyq_n       : out std_logic;
--      cfg_self      : in  std_logic;
--      irdyo         : out std_logic;
--      s_ready       : in  std_logic;
--      int_n         : in  std_logic;
--      bm_detect_dis : in  std_logic;
--      s_data_vld    : out std_logic;
--      irdyt         : out std_logic;
--      idseli        : in  std_logic;
--      idseld        : in  std_logic;
--      complete      : in  std_logic;
--      pciw_en       : out std_logic;
--      s_src_en      : out std_logic;
--      into          : out std_logic;
--      intt          : out std_logic;
--      pari          : in  std_logic;
--      pard          : in  std_logic;
--      paro          : out std_logic;
--      part          : out std_logic;
--      s_abort       : in  std_logic;
--      s_data        : out std_logic;
--      idle          : out std_logic;
--      perri         : in  std_logic;
--      perrd         : in  std_logic;
--      perro         : out std_logic;
--      cfg_vld       : out std_logic;
--      perrt         : out std_logic;
--      m_wrdn        : in  std_logic;
--      time_out      : out std_logic;
--      c_term        : in  std_logic;
--      trdyq_n       : out std_logic;
--      requesthold   : in  std_logic;
--      stopi         : in  std_logic;
--      stopd         : in  std_logic;
--      clk           : in  std_logic;
--      serrq_n       : out std_logic;
--      stopo         : out std_logic;
--      b_busy        : out std_logic;
--      bw_manual_32b : in  std_logic;
--      request       : in  std_logic;
--      stopt         : out std_logic;
--      m_addr_n      : out std_logic;
--      pme_n         : in  std_logic;
--      rst           : in  std_logic;
--      m_ready       : in  std_logic;
--      gnti          : in  std_logic;
--      gntd          : in  std_logic;
--      rtr           : out std_logic;
--      frameq_n      : out std_logic;
--      serri         : in  std_logic;
--      serrd         : in  std_logic;
--      addr_vld      : out std_logic;
--      serro         : out std_logic;
--      bw_detect_dis : in  std_logic;
--      serrt         : out std_logic;
--      devseli       : in  std_logic;
--      devseld       : in  std_logic;
--      s_term        : in  std_logic;
--      perrq_n       : out std_logic;
--      devselo       : out std_logic;
--      bm_manual_pci : in  std_logic;
--      devselt       : out std_logic;
--      c_ready       : in  std_logic;
--      cfg_hit       : out std_logic;
--      reqo          : out std_logic;
--      m_data        : out std_logic;
--      framei        : in  std_logic;
--      framed        : in  std_logic;
--      devselq_n     : out std_logic;
--      m_data_vld    : out std_logic;
--      m_src_en      : out std_logic;
--      reqt          : out std_logic;
--      pmeo          : out std_logic;
--      frameo        : out std_logic;
--      i_idle        : out std_logic;
--      pmet          : out std_logic;
--      stopq_n       : out std_logic;
--      framet        : out std_logic;
--      base_hit      : out std_logic_vector(7 downto 0);
--      cfg           : out std_logic_vector(511 downto 0);
--      pci_cmd       : out std_logic_vector(15 downto 0);
--      csr           : out std_logic_vector(39 downto 0);
--      m_cbe         : in  std_logic_vector(3 downto 0);
--      s_cbe         : out std_logic_vector(3 downto 0);
--      cbi           : in  std_logic_vector(3 downto 0);
--      cbd           : in  std_logic_vector(3 downto 0);
--      cbo           : out std_logic_vector(3 downto 0);
--      cbt           : out std_logic_vector(3 downto 0);
--      adio_out      : out std_logic_vector(31 downto 0);
--      adio_in       : in  std_logic_vector(31 downto 0);
--      adi           : in  std_logic_vector(31 downto 0);
--      add           : in  std_logic_vector(31 downto 0);
--      ado           : out std_logic_vector(31 downto 0);
--      adt           : out std_logic_vector(31 downto 0);
--      addr          : out std_logic_vector(31 downto 0)
--    );
--  end component pci32_spng_v4_14;


begin  -- Architecture

  -- I/O instances for clock, reset, power, and ground

  XPCI_CLK1 : IBUFG port map (O => CLK_NUB, I => CLK_I);
  XPCI_CLK2 : BUFG port map (O => CLK, I => CLK_NUB);
  XPCI_RST1 : IBUF port map (O => RST_INV, I => RST_I);
  XPCI_RST2 : INV port map (O => RST, I => RST_INV);

  -- I/O instances for address and data

--  XPCI_AD31 : IOBUF port map (O => ADI(31),IO => AD_IO(31),I => ADO(31),T => ADT(31));
--  XPCI_AD30 : IOBUF port map (O => ADI(30),IO => AD_IO(30),I => ADO(30),T => ADT(30));
--  XPCI_AD29 : IOBUF port map (O => ADI(29),IO => AD_IO(29),I => ADO(29),T => ADT(29));
--  XPCI_AD28 : IOBUF port map (O => ADI(28),IO => AD_IO(28),I => ADO(28),T => ADT(28));
--  XPCI_AD27 : IOBUF port map (O => ADI(27),IO => AD_IO(27),I => ADO(27),T => ADT(27));
--  XPCI_AD26 : IOBUF port map (O => ADI(26),IO => AD_IO(26),I => ADO(26),T => ADT(26));
--  XPCI_AD25 : IOBUF port map (O => ADI(25),IO => AD_IO(25),I => ADO(25),T => ADT(25));
--  XPCI_AD24 : IOBUF port map (O => ADI(24),IO => AD_IO(24),I => ADO(24),T => ADT(24));
--
--  XPCI_AD23 : IOBUF port map (O => ADI(23),IO => AD_IO(23),I => ADO(23),T => ADT(23));
--  XPCI_AD22 : IOBUF port map (O => ADI(22),IO => AD_IO(22),I => ADO(22),T => ADT(22));
--  XPCI_AD21 : IOBUF port map (O => ADI(21),IO => AD_IO(21),I => ADO(21),T => ADT(21));
--  XPCI_AD20 : IOBUF port map (O => ADI(20),IO => AD_IO(20),I => ADO(20),T => ADT(20));
--  XPCI_AD19 : IOBUF port map (O => ADI(19),IO => AD_IO(19),I => ADO(19),T => ADT(19));
--  XPCI_AD18 : IOBUF port map (O => ADI(18),IO => AD_IO(18),I => ADO(18),T => ADT(18));
--  XPCI_AD17 : IOBUF port map (O => ADI(17),IO => AD_IO(17),I => ADO(17),T => ADT(17));
--  XPCI_AD16 : IOBUF port map (O => ADI(16),IO => AD_IO(16),I => ADO(16),T => ADT(16));
--
--  XPCI_AD15 : IOBUF port map (O => ADI(15),IO => AD_IO(15),I => ADO(15),T => ADT(15));
--  XPCI_AD14 : IOBUF port map (O => ADI(14),IO => AD_IO(14),I => ADO(14),T => ADT(14));
--  XPCI_AD13 : IOBUF port map (O => ADI(13),IO => AD_IO(13),I => ADO(13),T => ADT(13));
--  XPCI_AD12 : IOBUF port map (O => ADI(12),IO => AD_IO(12),I => ADO(12),T => ADT(12));
--  XPCI_AD11 : IOBUF port map (O => ADI(11),IO => AD_IO(11),I => ADO(11),T => ADT(11));
--  XPCI_AD10 : IOBUF port map (O => ADI(10),IO => AD_IO(10),I => ADO(10),T => ADT(10));
--  XPCI_AD9 : IOBUF port map (O => ADI( 9),IO => AD_IO( 9),I => ADO( 9),T => ADT( 9));
--  XPCI_AD8 : IOBUF port map (O => ADI( 8),IO => AD_IO( 8),I => ADO( 8),T => ADT( 8));
--
--  XPCI_AD7 : IOBUF port map (O => ADI( 7),IO => AD_IO( 7),I => ADO( 7),T => ADT( 7));
--  XPCI_AD6 : IOBUF port map (O => ADI( 6),IO => AD_IO( 6),I => ADO( 6),T => ADT( 6));
--  XPCI_AD5 : IOBUF port map (O => ADI( 5),IO => AD_IO( 5),I => ADO( 5),T => ADT( 5));
--  XPCI_AD4 : IOBUF port map (O => ADI( 4),IO => AD_IO( 4),I => ADO( 4),T => ADT( 4));
--  XPCI_AD3 : IOBUF port map (O => ADI( 3),IO => AD_IO( 3),I => ADO( 3),T => ADT( 3));
--  XPCI_AD2 : IOBUF port map (O => ADI( 2),IO => AD_IO( 2),I => ADO( 2),T => ADT( 2));
--  XPCI_AD1 : IOBUF port map (O => ADI( 1),IO => AD_IO( 1),I => ADO( 1),T => ADT( 1));
--  XPCI_AD0 : IOBUF port map (O => ADI( 0),IO => AD_IO( 0),I => ADO( 0),T => ADT( 0));


  XPCI_ADD31: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(31), IDATAIN => ADI(31),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(31), DATAOUT2 => DATAOUT2_AD_UNUSED(31), DOUT=>DOUT_AD_UNUSED(31), TOUT=>TOUT_AD_UNUSED(31));
  XPCI_ADD30: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(30), IDATAIN => ADI(30),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(30), DATAOUT2 => DATAOUT2_AD_UNUSED(30), DOUT=>DOUT_AD_UNUSED(30), TOUT=>TOUT_AD_UNUSED(30));
  XPCI_ADD29: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(29), IDATAIN => ADI(29),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(29), DATAOUT2 => DATAOUT2_AD_UNUSED(29), DOUT=>DOUT_AD_UNUSED(29), TOUT=>TOUT_AD_UNUSED(29));
  XPCI_ADD28: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(28), IDATAIN => ADI(28),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(28), DATAOUT2 => DATAOUT2_AD_UNUSED(28), DOUT=>DOUT_AD_UNUSED(28), TOUT=>TOUT_AD_UNUSED(28));
  XPCI_ADD27: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(27), IDATAIN => ADI(27),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(27), DATAOUT2 => DATAOUT2_AD_UNUSED(27), DOUT=>DOUT_AD_UNUSED(27), TOUT=>TOUT_AD_UNUSED(27));
  XPCI_ADD26: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(26), IDATAIN => ADI(26),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(26), DATAOUT2 => DATAOUT2_AD_UNUSED(26), DOUT=>DOUT_AD_UNUSED(26), TOUT=>TOUT_AD_UNUSED(26));
  XPCI_ADD25: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(25), IDATAIN => ADI(25),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(25), DATAOUT2 => DATAOUT2_AD_UNUSED(25), DOUT=>DOUT_AD_UNUSED(25), TOUT=>TOUT_AD_UNUSED(25));
  XPCI_ADD24: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(24), IDATAIN => ADI(24),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(24), DATAOUT2 => DATAOUT2_AD_UNUSED(24), DOUT=>DOUT_AD_UNUSED(24), TOUT=>TOUT_AD_UNUSED(24));

  XPCI_ADD23: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(23), IDATAIN => ADI(23),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(23), DATAOUT2 => DATAOUT2_AD_UNUSED(23), DOUT=>DOUT_AD_UNUSED(23), TOUT=>TOUT_AD_UNUSED(23));
  XPCI_ADD22: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(22), IDATAIN => ADI(22),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(22), DATAOUT2 => DATAOUT2_AD_UNUSED(22), DOUT=>DOUT_AD_UNUSED(22), TOUT=>TOUT_AD_UNUSED(22));
  XPCI_ADD21: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(21), IDATAIN => ADI(21),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(21), DATAOUT2 => DATAOUT2_AD_UNUSED(21), DOUT=>DOUT_AD_UNUSED(21), TOUT=>TOUT_AD_UNUSED(21));
  XPCI_ADD20: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(20), IDATAIN => ADI(20),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(20), DATAOUT2 => DATAOUT2_AD_UNUSED(20), DOUT=>DOUT_AD_UNUSED(20), TOUT=>TOUT_AD_UNUSED(20));
  XPCI_ADD19: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(19), IDATAIN => ADI(19),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(19), DATAOUT2 => DATAOUT2_AD_UNUSED(19), DOUT=>DOUT_AD_UNUSED(19), TOUT=>TOUT_AD_UNUSED(19));
  XPCI_ADD18: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(18), IDATAIN => ADI(18),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(18), DATAOUT2 => DATAOUT2_AD_UNUSED(18), DOUT=>DOUT_AD_UNUSED(18), TOUT=>TOUT_AD_UNUSED(18));
  XPCI_ADD17: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(17), IDATAIN => ADI(17),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(17), DATAOUT2 => DATAOUT2_AD_UNUSED(17), DOUT=>DOUT_AD_UNUSED(17), TOUT=>TOUT_AD_UNUSED(17));
  XPCI_ADD16: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(16), IDATAIN => ADI(16),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(16), DATAOUT2 => DATAOUT2_AD_UNUSED(16), DOUT=>DOUT_AD_UNUSED(16), TOUT=>TOUT_AD_UNUSED(16));

  XPCI_ADD15: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(15), IDATAIN => ADI(15),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(15), DATAOUT2 => DATAOUT2_AD_UNUSED(15), DOUT=>DOUT_AD_UNUSED(15), TOUT=>TOUT_AD_UNUSED(15));
  XPCI_ADD14: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(14), IDATAIN => ADI(14),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(14), DATAOUT2 => DATAOUT2_AD_UNUSED(14), DOUT=>DOUT_AD_UNUSED(14), TOUT=>TOUT_AD_UNUSED(14));
  XPCI_ADD13: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(13), IDATAIN => ADI(13),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(13), DATAOUT2 => DATAOUT2_AD_UNUSED(13), DOUT=>DOUT_AD_UNUSED(13), TOUT=>TOUT_AD_UNUSED(13));
  XPCI_ADD12: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(12), IDATAIN => ADI(12),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(12), DATAOUT2 => DATAOUT2_AD_UNUSED(12), DOUT=>DOUT_AD_UNUSED(12), TOUT=>TOUT_AD_UNUSED(12));
  XPCI_ADD11: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(11), IDATAIN => ADI(11),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(11), DATAOUT2 => DATAOUT2_AD_UNUSED(11), DOUT=>DOUT_AD_UNUSED(11), TOUT=>TOUT_AD_UNUSED(11));
  XPCI_ADD10: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD(10), IDATAIN => ADI(10),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(10), DATAOUT2 => DATAOUT2_AD_UNUSED(10), DOUT=>DOUT_AD_UNUSED(10), TOUT=>TOUT_AD_UNUSED(10));
  XPCI_ADD9 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 9), IDATAIN => ADI( 9) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(9), DATAOUT2 => DATAOUT2_AD_UNUSED(9), DOUT=>DOUT_AD_UNUSED(9), TOUT=>TOUT_AD_UNUSED(9));
  XPCI_ADD8 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 8), IDATAIN => ADI( 8) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(8), DATAOUT2 => DATAOUT2_AD_UNUSED(8), DOUT=>DOUT_AD_UNUSED(8), TOUT=>TOUT_AD_UNUSED(8));

  XPCI_ADD7 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 7), IDATAIN => ADI( 7) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(7), DATAOUT2 => DATAOUT2_AD_UNUSED(7), DOUT=>DOUT_AD_UNUSED(7), TOUT=>TOUT_AD_UNUSED(7));
  XPCI_ADD6 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 6), IDATAIN => ADI( 6) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(6), DATAOUT2 => DATAOUT2_AD_UNUSED(6), DOUT=>DOUT_AD_UNUSED(6), TOUT=>TOUT_AD_UNUSED(6));
  XPCI_ADD5 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 5), IDATAIN => ADI( 5) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(5), DATAOUT2 => DATAOUT2_AD_UNUSED(5), DOUT=>DOUT_AD_UNUSED(5), TOUT=>TOUT_AD_UNUSED(5));
  XPCI_ADD4 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 4), IDATAIN => ADI( 4) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(4), DATAOUT2 => DATAOUT2_AD_UNUSED(4), DOUT=>DOUT_AD_UNUSED(4), TOUT=>TOUT_AD_UNUSED(4));
  XPCI_ADD3 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 3), IDATAIN => ADI( 3) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(3), DATAOUT2 => DATAOUT2_AD_UNUSED(3), DOUT=>DOUT_AD_UNUSED(3), TOUT=>TOUT_AD_UNUSED(3));
  XPCI_ADD2 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 2), IDATAIN => ADI( 2) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(2), DATAOUT2 => DATAOUT2_AD_UNUSED(2), DOUT=>DOUT_AD_UNUSED(2), TOUT=>TOUT_AD_UNUSED(2));
  XPCI_ADD1 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 1), IDATAIN => ADI( 1) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(1), DATAOUT2 => DATAOUT2_AD_UNUSED(1), DOUT=>DOUT_AD_UNUSED(1), TOUT=>TOUT_AD_UNUSED(1));
  XPCI_ADD0 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => ADD( 0), IDATAIN => ADI( 0) ,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_AD_UNUSED(0), DATAOUT2 => DATAOUT2_AD_UNUSED(0), DOUT=>DOUT_AD_UNUSED(0), TOUT=>TOUT_AD_UNUSED(0));


  -- I/O instances for command and byte enable

--  XPCI_CB3 : IOBUF port map (O => CBI( 3),IO => CBE_IO( 3),I => CBO( 3),T => CBT( 3));
--  XPCI_CB2 : IOBUF port map (O => CBI( 2),IO => CBE_IO( 2),I => CBO( 2),T => CBT( 2));
--  XPCI_CB1 : IOBUF port map (O => CBI( 1),IO => CBE_IO( 1),I => CBO( 1),T => CBT( 1));
--  XPCI_CB0 : IOBUF port map (O => CBI( 0),IO => CBE_IO( 0),I => CBO( 0),T => CBT( 0));


  XPCI_CBD3 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => CBD(3), IDATAIN => CBI(3),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(13), DATAOUT2 => DATAOUT2_CTL_UNUSED(13), DOUT=>DOUT_CTL_UNUSED(13), TOUT=>TOUT_CTL_UNUSED(13));
  XPCI_CBD2 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => CBD(2), IDATAIN => CBI(2),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(12), DATAOUT2 => DATAOUT2_CTL_UNUSED(12), DOUT=>DOUT_CTL_UNUSED(12), TOUT=>TOUT_CTL_UNUSED(12));
  XPCI_CBD1 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => CBD(1), IDATAIN => CBI(1),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(11), DATAOUT2 => DATAOUT2_CTL_UNUSED(11), DOUT=>DOUT_CTL_UNUSED(11), TOUT=>TOUT_CTL_UNUSED(11));
  XPCI_CBD0 : IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => CBD(0), IDATAIN => CBI(0),
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(10), DATAOUT2 => DATAOUT2_CTL_UNUSED(10), DOUT=>DOUT_CTL_UNUSED(10), TOUT=>TOUT_CTL_UNUSED(10));


  -- I/O instances for parity

--  XPCI_PAR : IOBUF port map (O => PARI,  IO => PAR_IO,  I => PARO,  T => PART  );

  XPCI_PARD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => PARD, IDATAIN => PARI,
             CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(9), DATAOUT2 => DATAOUT2_CTL_UNUSED(9), DOUT=>DOUT_CTL_UNUSED(9), TOUT=>TOUT_CTL_UNUSED(9));


  -- I/O instances for control

--  XPCI_FRAME : IOBUF port map (O => FRAMEI, IO => FRAME_IO, I => FRAMEO, T => FRAMET );
--  XPCI_TRDY : IOBUF port map (O => TRDYI,  IO => TRDY_IO,  I => TRDYO,  T => TRDYT  );
--  XPCI_IRDY : IOBUF port map (O => IRDYI,  IO => IRDY_IO,  I => IRDYO,  T => IRDYT  );
--  XPCI_STOP : IOBUF port map (O => STOPI,  IO => STOP_IO,  I => STOPO,  T => STOPT  );
--  XPCI_DEVSEL : IOBUF port map (O => DEVSELI, IO => DEVSEL_IO, I => DEVSELO, T => DEVSELT);
--  XPCI_PERR : IOBUF port map (O => PERRI,  IO => PERR_IO,  I => PERRO,  T => PERRT  );
--  XPCI_SERR : IOBUF port map (O => SERRI,  IO => SERR_IO,  I => SERRO,  T => SERRT  );

  XPCI_INT : OBUFT port map (O => INT_O, T => INTT, I => INTO);
  XPCI_PME : OBUFT port map (O => PME_O, T => PMET, I => PMEO);
  XPCI_REQ : OBUFT port map (O => REQ_O, T => REQT, I => REQO);

  XPCI_GNT : IBUF port map (O => GNTI, I => GNT_I);
  XPCI_IDSEL : IBUF port map (O => IDSELI, I => IDSEL_I);


  XPCI_FRAMED: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => FRAMED, IDATAIN => FRAMEI,
               CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(8), DATAOUT2 => DATAOUT2_CTL_UNUSED(8), DOUT=>DOUT_CTL_UNUSED(8), TOUT=>TOUT_CTL_UNUSED(8));
  XPCI_TRDYD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => TRDYD, IDATAIN => TRDYI,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(7), DATAOUT2 => DATAOUT2_CTL_UNUSED(7), DOUT=>DOUT_CTL_UNUSED(7), TOUT=>TOUT_CTL_UNUSED(7));
  XPCI_IRDYD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => IRDYD, IDATAIN => IRDYI,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(6), DATAOUT2 => DATAOUT2_CTL_UNUSED(6), DOUT=>DOUT_CTL_UNUSED(6), TOUT=>TOUT_CTL_UNUSED(6));
  XPCI_STOPD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => STOPD, IDATAIN => STOPI,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(5), DATAOUT2 => DATAOUT2_CTL_UNUSED(5), DOUT=>DOUT_CTL_UNUSED(5), TOUT=>TOUT_CTL_UNUSED(5));
  XPCI_DEVSELD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => DEVSELD, IDATAIN => DEVSELI,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(4), DATAOUT2 => DATAOUT2_CTL_UNUSED(4), DOUT=>DOUT_CTL_UNUSED(4), TOUT=>TOUT_CTL_UNUSED(4));
  XPCI_PERRD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => PERRD, IDATAIN => PERRI,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(3), DATAOUT2 => DATAOUT2_CTL_UNUSED(3), DOUT=>DOUT_CTL_UNUSED(3), TOUT=>TOUT_CTL_UNUSED(3));
  XPCI_SERRD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => SERRD, IDATAIN => SERRI,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(2), DATAOUT2 => DATAOUT2_CTL_UNUSED(2), DOUT=>DOUT_CTL_UNUSED(2), TOUT=>TOUT_CTL_UNUSED(2));
  XPCI_GNTD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => GNTD, IDATAIN => GNTI,
              CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(1), DATAOUT2 => DATAOUT2_CTL_UNUSED(1), DOUT=>DOUT_CTL_UNUSED(1), TOUT=>TOUT_CTL_UNUSED(1));
  XPCI_IDSELD: IODELAY2 generic map (DELAY_SRC => "IDATAIN") port map ( DATAOUT => IDSELD, IDATAIN => IDSELI,
               CAL => NC_OPEN, CE => NC_OPEN, CLK => NC_OPEN, INC => NC_OPEN, RST => NC_OPEN, T => VCC, IOCLK0 => NC_OPEN, IOCLK1 => NC_OPEN, ODATAIN => NC_OPEN,
              BUSY=> BUSY_CTL_UNUSED(0), DATAOUT2 => DATAOUT2_CTL_UNUSED(0), DOUT=>DOUT_CTL_UNUSED(0), TOUT=>TOUT_CTL_UNUSED(0));


  -- Instantiate PCI interface

  -- The pre- and post-IDELAY signals for each PCI input can be connected
  -- one of two ways. Using AD as an example:
  --
  --   1) adi => ADD,   This places the IDELAY buffer in both the internal
  --      add => ADD,   (combinational logic) path and the IFD path.
  --
  --   2) adi => ADI,   This places the IDELAY buffer only in the IFD path.
  --      add => ADD,   Provides independent control of IFD hold time and
  --                    combinational set-up time, but the extra hold-time
  --                    routing on the combinational path may starve more
  --                    critical signals of routing resources.

  XPCI_CORE : entity work.pci32_spng_v4_14_0 port map (
                ado => ADO,
                adi => ADD,
                add => ADD,
                adt => ADT,
                cbo => CBO,
                cbi => CBI,
                cbd => CBD,
                cbt => CBT,
                paro => PARO,
                pari => PARI,
                pard => PARD,
                part => PART,
                frameo => FRAMEO,
                framei => FRAMEI,
                framed => FRAMED,
                framet => FRAMET,
                trdyo => TRDYO,
                trdyi => TRDYI,
                trdyd => TRDYD,
                trdyt => TRDYT,
                irdyo => IRDYO,
                irdyi => IRDYI,
                irdyd => IRDYD,
                irdyt => IRDYT,
                stopo => STOPO,
                stopi => STOPI,
                stopd => STOPD,
                stopt => STOPT,
                devselo => DEVSELO,
                devseli => DEVSELI,
                devseld => DEVSELD,
                devselt => DEVSELT,
                perro => PERRO,
                perri => PERRD,
                perrd => PERRD,
                perrt => PERRT,
                serro => SERRO,
                serri => SERRD,
                serrd => SERRD,
                serrt => SERRT,
                into => INTO,
                intt => INTT,
                pmeo => PMEO,
                pmet => PMET,
                reqo => REQO,
                reqt => REQT,
                gnti => GNTI,
                gntd => GNTD,
                idseli => IDSELD,
                idseld => IDSELD,
                frameq_n => FRAMEQ_N,
                trdyq_n => TRDYQ_N,
                irdyq_n => IRDYQ_N,
                stopq_n => STOPQ_N,
                devselq_n => DEVSELQ_N,
                addr => ADDR,
                adio_in => ADIO_IN,
                adio_out => ADIO_OUT,
                cfg_vld => CFG_VLD,
                cfg_hit => CFG_HIT,
                c_term => C_TERM,
                c_ready => C_READY,
                addr_vld => ADDR_VLD,
                base_hit => BASE_HIT,
                s_term => S_TERM,
                s_ready => S_READY,
                s_abort => S_ABORT,
                s_wrdn => S_WRDN,
                s_src_en => S_SRC_EN,
                s_data_vld => S_DATA_VLD,
                s_cbe => S_CBE,
                pci_cmd => PCI_CMD,
                request => REQUEST,
                requesthold => REQUESTHOLD,
                complete => COMPLETE,
                m_wrdn => M_WRDN,
                m_ready => M_READY,
                m_src_en => M_SRC_EN,
                m_data_vld => M_DATA_VLD,
                m_cbe => M_CBE,
                time_out => TIME_OUT,
                cfg_self => CFG_SELF,
                m_data => M_DATA,
                dr_bus => DR_BUS,
                i_idle => I_IDLE,
                m_addr_n => M_ADDR_N,
                idle => IDLE,
                b_busy => B_BUSY,
                s_data => S_DATA,
                backoff => BACKOFF,
                int_n => INT_N,
                pme_n => PME_N,
                perrq_n => PERRQ_N,
                serrq_n => SERRQ_N,
                keepout => KEEPOUT,
                csr => CSR,
                pciw_en => PCIW_EN,
                bw_detect_dis => BW_DETECT_DIS,
                bw_manual_32b => BW_MANUAL_32B,
                pcix_en => PCIX_EN,
                bm_detect_dis => VCC,
                bm_manual_pci => VCC,
                rtr => RTR,
                rst => RST,
                cfg => CFG,
                clk => CLK
  );

end xilinx;
