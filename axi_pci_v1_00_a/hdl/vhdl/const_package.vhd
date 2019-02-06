-------------------------------------------------------------------------------
-- Project Name:   ASAI - POI
-- Description:    Main constants and types declaration
-------------------------------------------------------------------------------

----------------------- Standart library declaration --------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_arith.all;

--------------------------- Package declaration -------------------------------
package const is

  ----------------- Synthesis declarations ------------------

  constant BYTE_WDT          : positive :=   8;

  ---------------------------------------------
  --      Global infrastructure network      --
  ---------------------------------------------

  constant RST_DRT           : positive :=   8;

  ---------------------------------------------
  --                  Protocol               --
  ---------------------------------------------

  constant SGNL_SRC          : integer  :=   1; -- 0 RLS; 1 Mscw stand; 2 Tmsk stand
  constant IMIT_EN           : boolean  := true;
  constant DEBUG_EN          : boolean  := false;

  constant CDG_WDT           : positive :=  32;

  constant CR_WDT            : positive :=  16;               -- Ширина отдельного регистра управления
  constant CRI_NMB           : positive := 112;               -- Количество регистров управления

  constant SRC_TYPE_WDT      : positive :=   5;

  constant ADC_NMB           : positive :=   4;
  constant ADC_DATA_WDT      : positive :=  14;
  constant AMPL_WDT          : positive := ADC_DATA_WDT - 1;
  constant SIN_UM_WDT        : positive :=  17;

  constant DYN_WDT           : positive :=  10;
  constant DYN_P_WDT         : positive :=  10;
  constant DYN_N_WDT         : positive :=   2;

  constant AZM_WDT           : positive :=  16;
  constant MIX_CNT_WDT       : positive :=  16;
  constant MIX_DRT_TRSH      : std_logic_vector(MIX_CNT_WDT - 1 downto 0)
                                := conv_std_logic_vector(18000, MIX_CNT_WDT);
  constant DIST_WDT          : positive :=  14;

  constant REQ_TYPE_WDT      : positive :=   5;

  constant LNGT_PSTN         : positive :=   5;

  constant SYNC_BYTE         : std_logic_vector(BYTE_WDT - 1 downto 0)
                                        := X"AA";
  constant BGN_BYTE          : std_logic_vector(BYTE_WDT - 1 downto 0)
                                        := X"02";
  constant END_BYTE          : std_logic_vector(BYTE_WDT - 1 downto 0)
                                        := X"03";
  constant CTG_BYTE          : std_logic_vector(BYTE_WDT - 1 downto 0)
                                        := X"FF";

  ---------------------------------------------
  --                 Converter               --
  ---------------------------------------------

  type adc_data_ary is array(ADC_NMB downto 1) of
                               std_logic_vector(ADC_DATA_WDT - 1 downto 0);

  -- Video
  constant ADC_DLY           : positive := 5;
  type adc_clk_ie_ary is array(ADC_NMB downto 1) of
                               std_logic_vector(ADC_DLY - 1 downto 0);
  constant VDO_DLY_LNGT      : positive :=  25;
  type vdo_dly_line_ary is array(VDO_DLY_LNGT - 1 downto 0) of
                               std_logic_vector(AMPL_WDT - 1 downto 0);
  type vdo_dly_ary is array(2*ADC_NMB downto 1) of vdo_dly_line_ary;

  -- Dynamical
  constant DYN_DL_LNGT       : positive :=  29;               -- 1 us
  type dyn_dl_ary is array(DYN_WDT - 1 downto 0) of
                               std_logic_vector(DYN_DL_LNGT - 1 downto 0);
  constant DYN_ACCM_WDT      : positive :=   5;
  type dyn_accm_ary is array(DYN_WDT - 1 downto 0) of
                               std_logic_vector(DYN_ACCM_WDT - 1 downto 0);
  constant DYN_TRSH          : std_logic_vector(DYN_ACCM_WDT - 1 downto 0)
                               := conv_std_logic_vector(27, DYN_ACCM_WDT);
  constant DYN_LCK_CNT_WDT   : positive :=   9;
  type dyn_lck_cnt_ary is array(DYN_WDT - 1 downto 0) of
                               std_logic_vector(DYN_LCK_CNT_WDT - 1 downto 0);

  -- NRZ
  constant DTCT_WDT          : positive :=   2;

  type sgnl_prl_rcd is
  record
    strp                     : std_logic;
    azm                      : std_logic_vector(AZM_WDT - 1 downto 0);
    video                    : std_logic_vector(AMPL_WDT - 1 downto 0);
  end record;

  type sgnl_prv_rcd is
  record
    strp                     : std_logic;
    azm                      : std_logic_vector(AZM_WDT - 1 downto 0);
    sin_um                   : std_logic_vector(SIN_UM_WDT - 1 downto 0);
    sin_um_cnd               : std_logic;
    video                    : std_logic_vector(AMPL_WDT - 1 downto 0);
  end record;

  type sgnl_vrl_rcd is
  record
    strp                     : std_logic;
    azm                      : std_logic_vector(AZM_WDT - 1 downto 0);
    video                    : std_logic_vector(AMPL_WDT - 1 downto 0);
    dec_vld                  : std_logic_vector(2 downto 0);
    dist_vld                 : std_logic;
    req_type                 : std_logic_vector(REQ_TYPE_WDT - 1 downto 0);
  end record;

  type sgnl_nrz_rcd is
  record
    strp                     : std_logic;
    azm                      : std_logic_vector(AZM_WDT - 1 downto 0);
    op64                     : std_logic_vector(AMPL_WDT - 1 downto 0);
    ich                      : std_logic_vector(AMPL_WDT - 1 downto 0);
    dec_vld                  : std_logic_vector(2 downto 0);
    dist_vld                 : std_logic;
  end record;

  type sgnl_rcd is
  record
    prl1, prl2               : sgnl_prl_rcd;
    prv                      : sgnl_prv_rcd;
    nrz1, nrz2               : sgnl_nrz_rcd;
    uvd                      : sgnl_vrl_rcd;
    rbs                      : sgnl_vrl_rcd;
  end record;

  ---------------------------------------------
  --                 PRL & PRV               --
  ---------------------------------------------

  constant ACCM_DSC_LNGT     : positive :=   5;
  constant SM_DSC_LNGT       : positive :=  20;

  constant DTCT_PCKG_WDT     : positive :=  29;

  constant UM_WNDW           : positive :=  16;

  ---------------------------------------------
  --               SSP channel               --
  ---------------------------------------------

  -- Receiver
  constant SSP_RX_REG_WDT                 : positive        :=  88;

  constant SSP_TEST_FLAGS_WDT             : positive        :=   8;
  constant SSP_STAT_WDT                   : positive        :=   8;
  constant SSP_FAZ_WDT                    : positive        :=  16;
  constant SSP_TEMP_WDT                   : positive        :=  16;

  type ssp_pckg_rcd is
  record
    test_flags         : std_logic_vector(SSP_TEST_FLAGS_WDT - 1 downto 0);
    stat_prv           : std_logic_vector(SSP_STAT_WDT - 1 downto 0);
    faz                : std_logic_vector(SSP_FAZ_WDT - 1 downto 0);
    stat_prl           : std_logic_vector(SSP_STAT_WDT - 1 downto 0);
    temp               : std_logic_vector(SSP_TEMP_WDT - 1 downto 0);

    vld                : std_logic;
  end record;

  -- Transmitter
  constant SSP_TX_CMD_NMB    : positive :=   3;
  constant SSP_TX_REG_WDT    : positive := 120;
  type ssp_tx_cmd_ary is array(0 to SSP_TX_CMD_NMB - 1) of
    std_logic_vector(SSP_TX_REG_WDT - 1 downto 0);

  constant SSP_TX_REG_INIT   : ssp_tx_cmd_ary := 
        (X"1BAA0300B80101BD00000000000000",  -- Переключение профиля на ПРВ
         X"1BAA0900A3020000000000FFF60000",  -- Поворот на север против часовой
         X"1BAA0900A3020000000000000A0000"); -- Поворот на север по часовой

  ---------------------------------------------
  --                    NRZ                  --
  ---------------------------------------------

  constant USER_WDT          : positive :=   2;
  constant USER_DATA_WDT     : positive :=  32;

  constant STI_WDT           : positive :=  16;
  constant STO_WDT           : positive :=  32;

  type nrz_sti_rcd is
  record
    diap7                    : std_logic; -- Индикация 7ого диапазона;
    mode2                    : std_logic; -- Индикация 2;
    mode3                    : std_logic; -- Индикация 3;
    manip                    : std_logic; -- Индикация манип;
    n_imit                   : std_logic; -- Неисправность имитатора;
    n_64                     : std_logic; -- Отказ 64;
    alert                    : std_logic; -- Тревога;
  end record;

  type nrz_sto_rcd is
  record
    diap7                    : std_logic; -- Включение 7 диапазона;
    mode1                    : std_logic; -- Включение режима I;
    mode2                    : std_logic; -- Включение режима II;
    mode3                    : std_logic; -- Включение режима III;
    mode46                   : std_logic; -- Включение режимов 4/6;
    nh                       : std_logic; -- Выбор номер / высота;
    manip                    : std_logic; -- Включение манип;
  end record;

  type sti_rcd is
  record
    nrz1, nrz2               : nrz_sti_rcd;
  end record;

  type sto_rcd is
  record
    nrz1, nrz2               : nrz_sto_rcd;

    pok3                     : std_logic; -- ПОК 3 - III;
    pok24                    : std_logic; -- ПОК 2,4 - III;
    pok14                    : std_logic; -- ПОК 1,4 - III;
    pokf3                    : std_logic; -- ПОК F3;

    pzk1                     : std_logic; -- ПЗК 1;
    pzk2                     : std_logic; -- ПЗК 2;
    pzk3                     : std_logic; -- ПЗК 3;
    pzk4                     : std_logic; -- ПЗК 4;
    pzk5                     : std_logic; -- ПЗК 5;
    pzk6                     : std_logic; -- ПЗК 6;

    dpu_off                  : std_logic; -- Выкл ДПУ;
    opu_on                   : std_logic; -- Вкл ОПУ;
    opu_off                  : std_logic; -- Выкл ОПУ;
  end record;

  constant NRZ_DEC_RTO       : positive :=   3;
  constant NRZ_DIST_CORR     : std_logic_vector(15 downto 0) := X"FA9C"; --X"F48A" X"F83A"
  constant NRZ_OP_IMPL_DRT   : positive :=  12;
  -- constant NRZ_OP_ANSW_WNDW  : positive := 3304;
  constant NRZ_ICH_IMPL_DRT  : positive :=  12;
  -- constant NRZ_ANSW_WNDW     : positive := 3406;
  constant NRZ_ANSW_WNDW     : positive := 208;

  type nrz_op_impl_trsh_ary is array(0 to 2) of
                               std_logic_vector(AMPL_WDT + 3 downto 0);
  constant NRZ_OP_IMPL_TRSH     : nrz_op_impl_trsh_ary := 
  (
    conv_std_logic_vector( 1632, AMPL_WDT + 4),
    conv_std_logic_vector( 1632, AMPL_WDT + 4),
    conv_std_logic_vector( 1632, AMPL_WDT + 4)
  );


  type nrz_impl_trsh_ary is array(0 to 2) of
                               std_logic_vector(16 downto 0);
  constant NRZ_IMPL_TRSH     : nrz_impl_trsh_ary := 
  (
    conv_std_logic_vector(6116, 17),
    conv_std_logic_vector(20000, 17), -- 37200
    conv_std_logic_vector(6116, 17)
  );

  constant NRZ_CC_WDT        : positive :=   6;
  constant NRZ_CC_N          : std_logic_vector(NRZ_CC_WDT - 1 downto 0)
                                        := "100101";
  constant NRZ_CC_H          : std_logic_vector(NRZ_CC_WDT - 1 downto 0)
                                        := "101010";
  constant NRZ_ICH_WDT       : positive :=  80;
  constant NRZ_ICH_DATA_WDT  : positive :=  20;
  constant NRZ_STRB_STEP     : positive :=  40;
  constant NRZ_DTCT_PCKG_WDT : positive :=  34;

  ---------------------------------------------
  --                    VRL                  --
  ---------------------------------------------

  constant VRL_DEC_RTO       : positive :=   3;
  constant VRL_ZK_DRT        : positive :=   8;
  constant VRL_REQ_WNDW      : positive := 242;

  constant RBS_DEC_RTO       : positive :=   3;
  constant RBS_IMPL_DRT      : positive :=   5;
  constant RBS_ANSW_WNDW     : positive := 247;
  constant RBS_DTCT_PCKG_WDT : positive :=  34;

  type vrl_zk_trsh_ary is array(0 to 2) of
                               std_logic_vector(15 downto 0);
  constant VRL_ZK_TRSH       : vrl_zk_trsh_ary := 
  (
    conv_std_logic_vector(6116, 16),
    conv_std_logic_vector(45875, 16),
    conv_std_logic_vector(6116, 16)
  );

  type rbs_impl_trsh_ary is array(0 to 2) of
                               std_logic_vector(15 downto 0);
  constant RBS_IMPL_TRSH     : rbs_impl_trsh_ary := 
  (
    conv_std_logic_vector(6116, 16),
    conv_std_logic_vector(16000, 16),
    conv_std_logic_vector(6116, 16)
  );

  ---------------------------------------------
  --             Codogram Queue              --
  ---------------------------------------------

  constant CDG_CH_NMB        : positive :=  16;
  constant CDG_CH_NMB_WDT    : positive :=   4;

  type cdg_ch_ary is array(0 to CDG_CH_NMB - 1) of
                               std_logic_vector(BYTE_WDT downto 0);

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

  constant PCI_MEM_REG_NMB   : positive :=  16;
  type pci_mem_reg_ary is array(PCI_MEM_REG_NMB - 1 downto 0) of
                               std_logic_vector(PCI_AD_WDT - 1 downto 0);
  constant PCI_MEM_REG_INIT : pci_mem_reg_ary
    := (X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 3C..30
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 2C..20
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000", -- 1C..10
        X"0000_0000", X"0000_0000", X"0000_0000", X"0000_0000");-- 0C..00

  constant MSC_TMR_WDT       : positive :=  20;
  constant MSC_TMR_CMP_REG   : std_logic_vector(MSC_TMR_WDT - 1 downto 0)
                                       := X"00D05";


  -- PCI \ Interrupt
  constant INTR_TMR_WDT      : positive :=  24;
  constant INTR_DUR_TMR_WDT  : positive :=  12;
  constant INTR_DUR_CMP_REG  : std_logic_vector(INTR_DUR_TMR_WDT - 1 downto 0)
                                        := X"020";

  constant INTR_FRQ_WDT      : positive :=   3;
  constant MAX_LNGT_WDT      : positive :=   2;

  -- PCI \ Master
  constant TRNS_LENGTH_WDT   : positive :=   5;
  constant PCI_MEM_WR_CMD    : std_logic_vector(PCI_CBE_WDT - 1 downto 0)
                                        := "0111";

  type mst_ctrl_rcd is
  record
    max_lngt          : std_logic_vector(MAX_LNGT_WDT - 1 downto  0); -- Maximum transaction length code;
    cdg_buf_bgn_addr  : std_logic_vector(PCI_AD_WDT - 1 downto 0);    -- Codogram Buffer initial address;
    cdg_buf_end_addr  : std_logic_vector(PCI_AD_WDT - 1 downto 0);    -- Codogram Buffer final address;
    lngt_buf_bgn_addr : std_logic_vector(PCI_AD_WDT - 1 downto 0);    -- Length Buffer initial address;
    lngt_buf_end_addr : std_logic_vector(PCI_AD_WDT - 1 downto 0);    -- Length Buffer final address;
    buf_vld           : std_logic;
    buf_rcv           : std_logic;
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
  constant ILA_TRIG_WDT      : positive := 120;
  constant ILA_CH_SEL_WDT    : positive :=   4;
  type ila_ch_trig_ary is array(2**ILA_CH_SEL_WDT - 1 downto 0)
    of std_logic_vector(ILA_TRIG_WDT - 1 downto 0);

  constant VIO_ASYNC_IN_WDT  : positive :=   4;
  constant VIO_ASYNC_OUT_WDT : positive :=  54;
  constant VIO_SYNC_OUT_WDT  : positive :=   4;

  constant LEDS_WDT          : positive :=   3;
  constant TEST_WDT          : positive :=   3;

  --------------- Implementation declarations ---------------
  constant PCI_SIG_STND      : string   := "PCI33_3";
  constant PCI_SIG_DRIVE     : integer  :=  12;

  ----------------- Simulation declarations -----------------

end package const;

------------------------------- Package body ----------------------------------
package body const is
end package body const;
-------------------------------------------------------------------------------