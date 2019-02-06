-------------------------------------------------------------------------------
-- Description:    Main constants and types declaration
-------------------------------------------------------------------------------

----------------------- Standart library declaration --------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;

--------------------------- Package declaration -------------------------------
package pci_const is

  ----------------- Synthesis declarations ------------------

  constant RST_DRT           : positive :=   8;

  ---------------------------------------------
  --                    PCI                  --
  ---------------------------------------------

  constant PCI_AD_WDT        : positive :=  32; -- PCI Address/Data bus width;
  constant PCI_CBE_WDT       : positive :=   4; -- PCI Command/Byte Enable width;
  constant PCI_CFG_WDT       : positive := 256; -- PCI Configuration space width;
  constant PCI_CMD_WDT       : positive :=  16; -- The current decoded and latched PCI Bus operation;
  constant PCI_CSR_WDT       : positive :=  40; -- Command State Register;
  constant PCI_BASE_HIT_WDT  : positive :=   8; -- Indicate BARs access;

  -- PCI \ Slave
  constant PCI_BAR0_OFS      : std_logic_vector(PCI_AD_WDT - 1 downto 0)
                                        := X"0000_0010";      -- BAR0 field offset;

  constant INTR_FRQ          : std_logic_vector(2 downto 0) := "011";
  constant MAX_TRCT_LNGT     : std_logic_vector(2 downto 0) := "011";

  constant PCI_MEM_REG_NMB   : positive :=  32;
  type pci_mem_reg_ary is array(PCI_MEM_REG_NMB - 1 downto 0) of
                               std_logic_vector(PCI_AD_WDT - 1 downto 0);
  constant PCI_MEM_REG_INIT : pci_mem_reg_ary
    := (X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 7C..70
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 6C..60
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 5C..50
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 4C..40
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 3C..30
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 2C..20
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 1C..10
        X"0000_0000", X"0000_0000", -- 0C..08
        X"0000_0" & '0' & INTR_FRQ & '0' & MAX_TRCT_LNGT & X"0", -- 01
        X"0000_0000");-- 00

  constant MSC_TMR_WDT       : positive :=  20;
  constant MSC_TMR_CMP_REG   : std_logic_vector(MSC_TMR_WDT - 1 downto 0)
                                       := X"00D05";


  -- PCI \ Interrupt
  constant INTR_TMR_WDT      : positive :=  24;
  constant INTR_DUR_TMR_WDT  : positive :=  12;
  constant INTR_DUR_CMP_REG  : std_logic_vector(INTR_DUR_TMR_WDT - 1 downto 0)
                                        := X"020";

  constant INTR_FRQ_WDT      : positive :=   3;
  constant MAX_LNGT_WDT      : positive :=   3;

  -- PCI \ Master
  constant TRNS_LENGTH_WDT   : positive :=   5;
  constant PCI_MEM_WR_CMD    : std_logic_vector(PCI_CBE_WDT - 1 downto 0)
                                        := "0111";
  constant PCI_MEM_RD_CMD    : std_logic_vector(PCI_CBE_WDT - 1 downto 0)
                                        := "0110";

  type mst_ctrl_rcd is
  record
    max_trct_lngt      : std_logic_vector( 2 downto  0); -- Maximum transaction length code;
    up_max_pckt_lngt   : std_logic_vector(31 downto  0); -- Up Maximum packet length code;
    down_max_pckt_lngt : std_logic_vector(31 downto  0); -- Down Maximum packet length code;
    up_pckt_bgn_addr   : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Up Codogram Buffer initial address;
    up_pckt_end_addr   : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Up Codogram Buffer final address;
    up_lngt_bgn_addr   : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Up Length Buffer initial address;
    up_lngt_end_addr   : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Up Length Buffer final address;
    down_pckt_bgn_addr : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Down Codogram Buffer initial address;
    down_pckt_end_addr : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Down Codogram Buffer final address;
    down_lngt_bgn_addr : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Down Length Buffer initial address;
    down_lngt_end_addr : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Down Length Buffer final address;

    down_lngt_addr     : std_logic_vector(PCI_AD_WDT - 1 downto 0); -- Down Length Buffer Current Write address;
    up_buf_vld         : std_logic;
    up_buf_rcv         : std_logic;
    down_buf_vld       : std_logic;
    down_buf_rcv       : std_logic;
  end record;

  type intr_ctrl_rcd is
  record
    frq                      : std_logic_vector(INTR_FRQ_WDT - 1 downto  0); -- Interrupts frequence code;
  end record;

  type trn_ctrl_rcd is
  record
    en                       : std_logic;                                    -- Transfer enable;
    mst                      : mst_ctrl_rcd;
    intr                     : intr_ctrl_rcd;
  end record;

  ---------------------------------------------
  --                   Debug                 --
  ---------------------------------------------

  constant CS_CTRL_WDT       : positive :=  36;
  constant ILA_TRIG_WDT      : positive := 256;

  ----------------- Simulation declarations -----------------

end pci_const;

------------------------------- Package body ----------------------------------
package body pci_const is
end pci_const;
-------------------------------------------------------------------------------