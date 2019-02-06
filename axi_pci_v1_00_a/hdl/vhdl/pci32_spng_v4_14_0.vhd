--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: pci32_spng_v4_14_0.vhd
-- /___/   /\     Timestamp: Mon Jan 28 08:48:08 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg/pci32_spng_v4_14_0.ngc ./tmp/_cg/pci32_spng_v4_14_0.vhd 
-- Device	: 6slx16ftg256-3
-- Input file	: ./tmp/_cg/pci32_spng_v4_14_0.ngc
-- Output file	: ./tmp/_cg/pci32_spng_v4_14_0.vhd
-- # of Entities	: 2
-- Design Name	: pci32_spng_v4_14_0
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


entity PCILOGICSE is
  port (
    I2 : in STD_LOGIC := 'X'; 
    PCI_CE : out STD_LOGIC; 
    I3 : in STD_LOGIC := 'X'; 
    TRDY : in STD_LOGIC := 'X'; 
    IRDY : in STD_LOGIC := 'X'; 
    I1 : in STD_LOGIC := 'X' 
  );
end PCILOGICSE;

architecture STRUCTURE of PCILOGICSE is
  signal PCILOGIC_sig0 : STD_LOGIC; 
  signal PCILOGIC_sig1 : STD_LOGIC; 
  signal PCILOGIC_sig2 : STD_LOGIC; 
  signal PCILOGIC_sig3 : STD_LOGIC; 
  signal PCILOGIC_sig4 : STD_LOGIC; 
  signal PCILOGIC_sig5 : STD_LOGIC; 
  signal PCILOGIC_sig6 : STD_LOGIC; 
  signal PCILOGIC_sig7 : STD_LOGIC; 
  signal PCILOGIC_sig8 : STD_LOGIC; 
begin
  PCILOGIC_sig4 <= I2;
  PCI_CE <= PCILOGIC_sig3;
  PCILOGIC_sig7 <= I3;
  PCILOGIC_sig8 <= TRDY;
  PCILOGIC_sig6 <= IRDY;
  PCILOGIC_sig5 <= I1;
  PCILOGIC_OR3 : OR3
    port map (
      O => PCILOGIC_sig3,
      I0 => PCILOGIC_sig4,
      I1 => PCILOGIC_sig1,
      I2 => PCILOGIC_sig2
    );
  PCILOGIC_NOR2_1 : NOR2
    port map (
      O => PCILOGIC_sig1,
      I0 => PCILOGIC_sig5,
      I1 => PCILOGIC_sig6
    );
  PCILOGIC_NOR2_2 : NOR2
    port map (
      O => PCILOGIC_sig2,
      I0 => PCILOGIC_sig7,
      I1 => PCILOGIC_sig8
    );

end STRUCTURE;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity pci32_spng_v4_14_0 is
  port (
    s_wrdn : out STD_LOGIC; 
    trdyi : in STD_LOGIC := 'X'; 
    keepout : in STD_LOGIC := 'X'; 
    trdyo : out STD_LOGIC; 
    dr_bus : out STD_LOGIC; 
    pcix_en : out STD_LOGIC; 
    trdyt : out STD_LOGIC; 
    backoff : out STD_LOGIC; 
    s_data_vld : out STD_LOGIC; 
    bm_detect_dis : in STD_LOGIC := 'X'; 
    irdyd : in STD_LOGIC := 'X'; 
    irdyi : in STD_LOGIC := 'X'; 
    irdyq_n : out STD_LOGIC; 
    cfg_self : in STD_LOGIC := 'X'; 
    s_ready : in STD_LOGIC := 'X'; 
    irdyo : out STD_LOGIC; 
    idseld : in STD_LOGIC := 'X'; 
    m_data_vld : out STD_LOGIC; 
    int_n : in STD_LOGIC := 'X'; 
    bw_detect_dis : in STD_LOGIC := 'X'; 
    irdyt : out STD_LOGIC; 
    idseli : in STD_LOGIC := 'X'; 
    complete : in STD_LOGIC := 'X'; 
    pciw_en : out STD_LOGIC; 
    into : out STD_LOGIC; 
    s_src_en : out STD_LOGIC; 
    pard : in STD_LOGIC := 'X'; 
    intt : out STD_LOGIC; 
    pari : in STD_LOGIC := 'X'; 
    paro : out STD_LOGIC; 
    part : out STD_LOGIC; 
    s_abort : in STD_LOGIC := 'X'; 
    perrd : in STD_LOGIC := 'X'; 
    s_data : out STD_LOGIC; 
    idle : out STD_LOGIC; 
    perri : in STD_LOGIC := 'X'; 
    perro : out STD_LOGIC; 
    cfg_vld : out STD_LOGIC; 
    m_wrdn : in STD_LOGIC := 'X'; 
    perrt : out STD_LOGIC; 
    time_out : out STD_LOGIC; 
    devselq_n : out STD_LOGIC; 
    c_term : in STD_LOGIC := 'X'; 
    trdyq_n : out STD_LOGIC; 
    stopd : in STD_LOGIC := 'X'; 
    stopi : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    stopo : out STD_LOGIC; 
    serrq_n : out STD_LOGIC; 
    b_busy : out STD_LOGIC; 
    request : in STD_LOGIC := 'X'; 
    stopt : out STD_LOGIC; 
    m_addr_n : out STD_LOGIC; 
    bw_manual_32b : in STD_LOGIC := 'X'; 
    bm_manual_pci : in STD_LOGIC := 'X'; 
    pme_n : in STD_LOGIC := 'X'; 
    gntd : in STD_LOGIC := 'X'; 
    requesthold : in STD_LOGIC := 'X'; 
    m_ready : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    gnti : in STD_LOGIC := 'X'; 
    serrd : in STD_LOGIC := 'X'; 
    rtr : out STD_LOGIC; 
    frameq_n : out STD_LOGIC; 
    serri : in STD_LOGIC := 'X'; 
    addr_vld : out STD_LOGIC; 
    serro : out STD_LOGIC; 
    serrt : out STD_LOGIC; 
    devseld : in STD_LOGIC := 'X'; 
    devseli : in STD_LOGIC := 'X'; 
    s_term : in STD_LOGIC := 'X'; 
    perrq_n : out STD_LOGIC; 
    devselo : out STD_LOGIC; 
    framed : in STD_LOGIC := 'X'; 
    c_ready : in STD_LOGIC := 'X'; 
    devselt : out STD_LOGIC; 
    reqo : out STD_LOGIC; 
    cfg_hit : out STD_LOGIC; 
    framei : in STD_LOGIC := 'X'; 
    m_data : out STD_LOGIC; 
    reqt : out STD_LOGIC; 
    m_src_en : out STD_LOGIC; 
    pmeo : out STD_LOGIC; 
    frameo : out STD_LOGIC; 
    i_idle : out STD_LOGIC; 
    trdyd : in STD_LOGIC := 'X'; 
    pmet : out STD_LOGIC; 
    framet : out STD_LOGIC; 
    stopq_n : out STD_LOGIC; 
    base_hit : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    m_cbe : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cbd : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cbi : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cbo : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cbt : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cfg : out STD_LOGIC_VECTOR ( 511 downto 0 ); 
    adio_out : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    adio_in : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    s_cbe : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    add : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    adi : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    ado : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    adt : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    pci_cmd : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    csr : out STD_LOGIC_VECTOR ( 39 downto 0 ); 
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end pci32_spng_v4_14_0;

architecture STRUCTURE of pci32_spng_v4_14_0 is
  component PCILOGICSE
    port (
      I2 : in STD_LOGIC := 'X'; 
      PCI_CE : out STD_LOGIC; 
      I3 : in STD_LOGIC := 'X'; 
      TRDY : in STD_LOGIC := 'X'; 
      IRDY : in STD_LOGIC := 'X'; 
      I1 : in STD_LOGIC := 'X' 
    );
  end component;
  signal NlwRenamedSignal_adt_24_Q : STD_LOGIC; 
  signal NlwRenamedSignal_adt_16_Q : STD_LOGIC; 
  signal NlwRenamedSignal_adt_10_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_frameq_n : STD_LOGIC; 
  signal NlwRenamedSig_OI_trdyq_n : STD_LOGIC; 
  signal NlwRenamedSig_OI_irdyq_n : STD_LOGIC; 
  signal NlwRenamedSig_OI_stopq_n : STD_LOGIC; 
  signal NlwRenamedSig_OI_devselq_n : STD_LOGIC; 
  signal NlwRenamedSig_OI_cfg_hit : STD_LOGIC; 
  signal NlwRenamedSig_OI_addr_vld : STD_LOGIC; 
  signal NlwRenamedSig_OI_s_wrdn : STD_LOGIC; 
  signal NlwRenamedSig_OI_pci_cmd_11_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_pci_cmd_10_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_pci_cmd_1_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_time_out : STD_LOGIC; 
  signal NlwRenamedSig_OI_m_data : STD_LOGIC; 
  signal NlwRenamedSig_OI_dr_bus : STD_LOGIC; 
  signal NlwRenamedSig_OI_i_idle : STD_LOGIC; 
  signal NlwRenamedSig_OI_idle : STD_LOGIC; 
  signal NlwRenamedSig_OI_b_busy : STD_LOGIC; 
  signal NlwRenamedSig_OI_s_data : STD_LOGIC; 
  signal NlwRenamedSig_OI_backoff : STD_LOGIC; 
  signal NlwRenamedSignal_pme_n : STD_LOGIC; 
  signal NlwRenamedSig_OI_perrq_n : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_39_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_31_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_30_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_29_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_28_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_27_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_25_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_24_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_20_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_19_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_10_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_8_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_6_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_2_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_1_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_csr_0_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_pciw_en : STD_LOGIC; 
  signal NlwRenamedSig_OI_cfg_100_Q : STD_LOGIC; 
  signal NlwRenamedSig_OI_cfg_0_Q : STD_LOGIC; 
  signal BU2_U0_ff_drive_zero_1_2401 : STD_LOGIC; 
  signal BU2_m_fail64 : STD_LOGIC; 
  signal BU2_s_cycle64 : STD_LOGIC; 
  signal BU2_ack64q_n : STD_LOGIC; 
  signal BU2_req64q_n : STD_LOGIC; 
  signal BU2_ack64t : STD_LOGIC; 
  signal BU2_ack64o : STD_LOGIC; 
  signal BU2_req64t : STD_LOGIC; 
  signal BU2_req64o : STD_LOGIC; 
  signal BU2_par64t : STD_LOGIC; 
  signal BU2_par64o : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL6411_1987 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL641 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SRC_EN_S_SRC_EN : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N401 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N400 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N399 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N398 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N397 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N396 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N395 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N394 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N392 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N390 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N388 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N386 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N01032_1972 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N384 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010369_1970 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N382 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N381 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N380 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N351 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N350 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N347 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N348 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N346 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N344 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N343 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31100_1959 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N340 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N338 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26138_1956 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N336 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N334 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N332 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N330 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N324 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N322 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N321 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31146_1948 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N319 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N318 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT186_1945 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1813_1944 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1230_1943 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1213_1942 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2330_1941 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2313_1940 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2675_1939 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N305 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N108 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N303 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_123_1935 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N301 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N299 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N298 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2630_1930 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2613_1929 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N296 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N294 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N292 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N290 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N288 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N286 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N284 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N282 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N280 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N278 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N276 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N274 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N272 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N271 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27108_1914 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28108_1913 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30108_1912 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10124_1911 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15124_1910 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16124_1909 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19124_1908 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3124_1907 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32124_1906 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4124_1905 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5124_1904 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6124_1903 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7124_1902 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8124_1901 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9124_1900 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N267 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N265 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N258 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT272_1896 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2728_1895 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N259 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N255 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT282_1892 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2828_1891 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N256 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N252 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT302_1888 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3028_1887 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N253 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12164_1885 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1275_1884 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N246 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N247 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23164_1881 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2375_1880 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N243 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N244 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1134_1877 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N240 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N241 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29134_1874 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N237 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2944_1872 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N238 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N234 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11158_1869 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N235 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N231 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13158_1866 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N232 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N228 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14158_1863 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N229 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N225 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17158_1860 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N226 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N222 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2158_1857 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N223 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N219 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20158_1854 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N220 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N216 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21158_1851 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N217 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N213 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22158_1848 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N214 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N210 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24158_1845 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N211 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N207 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25158_1842 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N208 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1844_1840 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N204 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N205 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N190 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N189 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N187 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N186 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N184 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N183 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N181 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N180 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N178 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N177 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N175 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N174 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N172 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N171 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N169 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N168 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N166 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N165 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N163 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N162 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N160 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N159 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N157 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N156 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N154 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N153 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N151 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N149 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N147 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N145 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N143 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N141 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N139 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N137 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N135 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N133 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N131 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N129 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N127 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N125 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N123 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N121 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N119 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N80 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N78 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N76 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N74 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18147_1790 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N113 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N111 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N110 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N106 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N104 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N102 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N100 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N98 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N96 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N94 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N92 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N90 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12118_1776 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N88 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23118_1774 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N86 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1882_1772 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N84 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2988_1770 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N82 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_RSTPOT_1768 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_RSTPOT_1767 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_RSTPOT_1766 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_CYCLE64_INT_RSTPOT_1765 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_1764 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_RSTPOT_1763 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12147_1762 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23147_1761 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1117_1760 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1441_1759 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT127_1758 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29117_1757 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2927_1756 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1103 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3112_1754 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11148_1753 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11110_1752 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1155_1751 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1147_1750 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1126_1749 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13148_1748 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13110_1747 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1355_1746 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1347_1745 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1326_1744 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14148_1743 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14110_1742 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1455_1741 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1447_1740 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1426_1739 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17148_1738 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17110_1737 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1755_1736 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1747_1735 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1726_1734 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21481_1733 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21101_1732 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT255_1731 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT247_1730 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT226_1729 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20148_1728 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20110_1727 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2055_1726 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2047_1725 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2026_1724 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21148_1723 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21110_1722 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2155_1721 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2147_1720 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2126_1719 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22148_1718 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22110_1717 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2255_1716 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2247_1715 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2226_1714 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24148_1713 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24110_1712 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2455_1711 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2447_1710 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2426_1709 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25148_1708 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_N25 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25110_1706 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2555_1705 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2547_1704 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2526_1703 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1881_1702 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1866_1701 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1066_1700 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1051_1699 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1026_1698 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1566_1697 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1551_1696 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1526_1695 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1666_1694 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1651_1693 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1626_1692 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1966_1691 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1951_1690 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1926_1689 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT366_1688 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT351_1687 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT326_1686 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3266_1685 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3251_1684 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3226_1683 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT466_1682 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT451_1681 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT426_1680 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT566_1679 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT551_1678 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT526_1677 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT666_1676 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT651_1675 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT626_1674 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT766_1673 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT751_1672 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT726_1671 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT866_1670 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT851_1669 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT826_1668 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT966_1667 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT951_1666 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT926_1665 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_137_1664 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N00042 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_N7 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N72 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT143_1660 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT138_1659 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT122_1658 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT117_1657 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT15_1656 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT10_1655 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT243_1654 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT238_1653 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT222_1652 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT217_1651 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT25_1650 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT20_1649 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N68 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N66 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N59 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N58 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT343_1642 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT338_1641 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT322_1640 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT317_1639 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT35_1638 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_CFG_REMAP_OUT30_1637 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_133_1636 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_112_1635 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_15_1634 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N56 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N55 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N53 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_ACKHIT : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N51 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010346_1627 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010327_1626 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N49 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N47 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N45 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N0004 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_124_1621 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_181_1620 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_114_1619 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_1618 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_1617 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_1616 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_15_1615 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN076_1614 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN046_1613 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN038_1612 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN015_1611 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN07_1610 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000442_1609 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000410_1608 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N43 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N42 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N41 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N40 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_149_1603 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_17_1602 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_62_1601 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_57_1600 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_30_1599 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_25_1598 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_9_1597 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_4_1596 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_62_1595 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_57_1594 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_30_1593 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_25_1592 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_9_1591 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_4_1590 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_MMUX_NS_REQ64_140_1589 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_138_1588 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_112_1587 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N38 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N34 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N27 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N25 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N23 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N21 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N19 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_114_1576 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_110_1575 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR136_1574 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR118_1573 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR115_1572 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64_1571 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR53_1570 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR21_1569 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR10_1568 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64136_1567 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64118_1566 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64115_1565 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6464_1564 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6453_1563 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6421_1562 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6410_1561 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N17 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE5_1559 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF34_1558 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF4_1557 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA22_1556 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N14 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N15 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N12 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N10 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N8 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N6 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N4 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_N2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N37 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_31_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_30_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_29_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_28_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_27_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_26_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_24_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_23_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_22_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_21_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_20_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_19_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_18_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_17_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_16_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_15_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_14_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_13_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_12_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_11_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_10_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_9_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_6_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_31_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_30_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_29_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_28_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_27_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_26_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_24_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_23_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_22_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_21_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_20_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_19_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_18_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_17_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_16_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_15_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_14_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_13_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_12_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_11_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_10_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_9_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_6_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_26_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_23_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_22_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_18_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_17_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_16_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_15_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_14_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_13_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_12_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_11_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_9_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE1_3 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N01 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N11 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_ABORT_INT : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_115 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N8 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_N2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_XFER_REQ_S1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_N121 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BH64_2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_N23 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_N1447 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_N1445 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_N9 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_OLD_74_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_N01 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_OLD_0_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_OLD_37_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIX0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIX1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIXOK : STD_LOGIC; 
  signal BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIW : STD_LOGIC; 
  signal BU2_U0_pci32_inst_XPCI_WATCHDOG_PCI64B : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE15_0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE4_0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE4_1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_29_1422 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE4_2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_30_1419 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_28_1418 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_31_1413 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE4_3 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_BH64_O_1410 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_ADDRESS_MATCH : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE5_0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE5_1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_29_1367 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE5_2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_30_1364 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_28_1363 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_31_1358 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE5_3 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_BH64_O_1355 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_ADDRESS_MATCH : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE6_0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE6_1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_29_1312 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE6_2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_30_1309 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_28_1308 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_31_1303 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE6_3 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_BASE_HITO_1301 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2_INT : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_BH64_O_1299 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2_INT : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_ADDRESS_MATCH : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_MEMACCESSALLOWED_INT_1277 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_IOACCESSALLOWED_INT_1276 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE1_0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_27_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_28_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_29_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_30_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_31_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE1_1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_24_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0092 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NS_PAR_CE : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NEWDATA_1265 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NS_NEWDATA_OUT_CE : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_S_OK_N : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_M_OK_N : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_FFA : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD0 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD3 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD6 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD4 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD5 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD7 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD8 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD11 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD9 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD10 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD12 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD13 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD14 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD15 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_CFG_HIT : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_CYC_1243 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_NS_CFG_CYC : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX3_1239 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX3 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4_1237 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX4 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5_1235 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX5 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6_1233 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX6 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX15_1231 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX15 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0040 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0022 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0031 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0049 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0098 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0103 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0012 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_I_DATA_FLAG_1215 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N0038 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_TACK64_I_Q_1211 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRSTIN : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT_Q_1204 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB_Q_1202 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T_Q_1200 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B_Q_1198 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT64_Q_1196 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT64_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB64_Q_1194 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB64_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T64_Q_1192 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T64_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N0029 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B64_Q_1188 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B64_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_HOLD_OE_PERR_1186 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_SET_OE_PERR : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_Q_1184 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ACK64_IN_Q_1183 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN64_1182 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN_1180 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR_1178 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N0238 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BUSY_NS_BUSY : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_IDLE_NS_IDLE_1175 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N0010 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_DEV_TO_ADDR : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N0006 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_FAST_1167 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_FAST_1166 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SLOW_1165 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_MEDIUM_1164 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRSTIN : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_Q_1162 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_Q_1160 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_I_Q_1159 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_HOLD_OE_PERR_1157 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SET_OE_PERR : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_REQUESTQ_1155 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_REQ64_INT_1150 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_INT_1149 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OER : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OER : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OEF : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OEF : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_NS_OE_PERR_1144 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ADDR_BE_Q_1143 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ATTEMPT64_1142 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0046 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0030_1139 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0038 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64Q_1137 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64_1136 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_IREAD64_1135 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_NS_IREAD64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_NS_REQ_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_N0038_1131 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_NS_FAIL64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_NS_S_TAR : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_ABE : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_MAN : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_DATA_NS_MDATA_1125 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL2 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL3 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL4 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL5 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL6 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL7 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_X_1092 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_N0008 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_S_TARQ_1090 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_S_TAR_1089 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_NS_DR_BUS : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N_1086 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PRE_APERR_N : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADDR_VLDQ_956 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_LC_PERR_Q_955 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATA2Q_954 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATAQ_953 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_OE_SERR : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_INTACKQ_951 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_INTACK : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_CE3_1 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_0_903 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_1_902 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_2_901 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_3_900 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_4_899 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_7_898 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_5_897 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_6_896 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_61_895 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_63_894 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_62_893 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_60_892 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_59_891 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_58_890 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_57_889 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_54_888 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_56_887 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_55_886 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_51_885 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_53_884 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_52_883 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_48_882 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_50_881 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_49_880 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_47_879 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_46_878 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_45_877 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_44_876 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_41_875 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_43_874 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_42_873 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_38_872 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_40_871 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_39_870 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_35_869 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_37_868 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_36_867 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_34_866 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_33_865 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_32_864 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_31_863 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_28_862 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_30_861 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_29_860 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_25_859 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_27_858 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_26_857 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_22_856 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_24_855 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_23_854 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_21_853 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_20_852 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_19_851 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_18_850 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_15_849 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_17_848 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_16_847 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_14_846 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_13_845 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_12_844 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_11_843 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_8_842 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_10_841 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_9_840 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_7_839 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_6_838 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_5_837 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_4_836 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_1_835 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_3_834 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_2_833 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_0_832 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_IDSEL : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_IRDY_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_FRAME_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_REQ64_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_FRAME_CE : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_TRDY_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_STOP_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_DEVSEL_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_ACK64_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_PERR_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_PAR64 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_NS_PAR : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_PAR_CE_818 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_FRAMEQ_Q_817 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_REQ64Q_Q_816 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_SEL_IN_814 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N0008 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N0014 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_DL_734 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733 : STD_LOGIC; 
  signal BU2_U0_pci32_inst_PCI_LC_I_EOT_OEOT_D : STD_LOGIC; 
  signal BU2_U0_pci32_inst_ADT_32_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_ADT_40_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_ADT_48_Q : STD_LOGIC; 
  signal BU2_U0_pci32_inst_ADT_56_Q : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal ado_2 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal adi_3 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal add_4 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal NlwRenamedSig_OI_adt : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cbo_5 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cbi_6 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cbd_7 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwRenamedSignal_cbt : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal NlwRenamedSig_OI_addr : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal adio_in_8 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal NlwRenamedSig_OI_adio_out : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal NlwRenamedSig_OI_base_hit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal NlwRenamedSig_OI_s_cbe : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal m_cbe_9 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal csr_10 : STD_LOGIC_VECTOR ( 38 downto 32 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBEOUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT : STD_LOGIC_VECTOR ( 27 downto 4 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT : STD_LOGIC_VECTOR ( 27 downto 4 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT : STD_LOGIC_VECTOR ( 27 downto 4 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_ADOUT : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_REG_0CH : STD_LOGIC_VECTOR ( 15 downto 8 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH : STD_LOGIC_VECTOR ( 63 downto 32 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal BU2_U0_pci32_inst_S_CBE : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal BU2_U0_pci32_inst_ADIO_OUT : STD_LOGIC_VECTOR ( 63 downto 32 ); 
  signal BU2_U0_pci32_inst_CBT : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal BU2_U0_pci32_inst_CBO : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal BU2_U0_pci32_inst_ADO : STD_LOGIC_VECTOR ( 63 downto 32 ); 
begin
  s_wrdn <= NlwRenamedSig_OI_s_wrdn;
  base_hit(7) <= NlwRenamedSig_OI_base_hit(3);
  base_hit(6) <= NlwRenamedSig_OI_base_hit(3);
  base_hit(5) <= NlwRenamedSig_OI_base_hit(3);
  base_hit(4) <= NlwRenamedSig_OI_base_hit(3);
  base_hit(3) <= NlwRenamedSig_OI_base_hit(3);
  base_hit(2) <= NlwRenamedSig_OI_base_hit(2);
  base_hit(1) <= NlwRenamedSig_OI_base_hit(1);
  base_hit(0) <= NlwRenamedSig_OI_base_hit(0);
  m_cbe_9(3) <= m_cbe(3);
  m_cbe_9(2) <= m_cbe(2);
  m_cbe_9(1) <= m_cbe(1);
  m_cbe_9(0) <= m_cbe(0);
  dr_bus <= NlwRenamedSig_OI_dr_bus;
  backoff <= NlwRenamedSig_OI_backoff;
  irdyq_n <= NlwRenamedSig_OI_irdyq_n;
  cbd_7(3) <= cbd(3);
  cbd_7(2) <= cbd(2);
  cbd_7(1) <= cbd(1);
  cbd_7(0) <= cbd(0);
  cbi_6(3) <= cbi(3);
  cbi_6(2) <= cbi(2);
  cbi_6(1) <= cbi(1);
  cbi_6(0) <= cbi(0);
  cbo(3) <= cbo_5(3);
  cbo(2) <= cbo_5(2);
  cbo(1) <= cbo_5(1);
  cbo(0) <= cbo_5(0);
  pciw_en <= NlwRenamedSig_OI_pciw_en;
  cbt(3) <= NlwRenamedSignal_cbt(0);
  cbt(2) <= NlwRenamedSignal_cbt(0);
  cbt(1) <= NlwRenamedSignal_cbt(0);
  cbt(0) <= NlwRenamedSignal_cbt(0);
  into <= NlwRenamedSig_OI_base_hit(3);
  cfg(511) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(510) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(509) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(508) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(507) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(506) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(505) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(504) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(503) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(502) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(501) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(500) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(499) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(498) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(497) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(496) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(495) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(494) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(493) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(492) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(491) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(490) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(489) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(488) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(487) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(486) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(485) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(484) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(483) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(482) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(481) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(480) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(479) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(478) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(477) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(476) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(475) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(474) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(473) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(472) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(471) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(470) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(469) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(468) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(467) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(466) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(465) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(464) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(463) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(462) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(461) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(460) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(459) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(458) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(457) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(456) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(455) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(454) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(453) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(452) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(451) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(450) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(449) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(448) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(447) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(446) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(445) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(444) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(443) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(442) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(441) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(440) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(439) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(438) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(437) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(436) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(435) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(434) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(433) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(432) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(431) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(430) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(429) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(428) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(427) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(426) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(425) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(424) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(423) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(422) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(421) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(420) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(419) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(418) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(417) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(416) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(415) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(414) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(413) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(412) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(411) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(410) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(409) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(408) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(407) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(406) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(405) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(404) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(403) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(402) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(401) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(400) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(399) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(398) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(397) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(396) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(395) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(394) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(393) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(392) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(391) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(390) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(389) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(388) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(387) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(386) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(385) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(384) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(383) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(382) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(381) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(380) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(379) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(378) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(377) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(376) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(375) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(374) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(373) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(372) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(371) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(370) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(369) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(368) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(367) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(366) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(365) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(364) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(363) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(362) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(361) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(360) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(359) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(358) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(357) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(356) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(355) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(354) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(353) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(352) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(351) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(350) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(349) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(348) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(347) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(346) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(345) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(344) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(343) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(342) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(341) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(340) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(339) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(338) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(337) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(336) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(335) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(334) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(333) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(332) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(331) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(330) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(329) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(328) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(327) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(326) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(325) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(324) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(323) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(322) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(321) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(320) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(319) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(318) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(317) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(316) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(315) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(314) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(313) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(312) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(311) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(310) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(309) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(308) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(307) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(306) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(305) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(304) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(303) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(302) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(301) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(300) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(299) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(298) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(297) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(296) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(295) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(294) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(293) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(292) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(291) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(290) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(289) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(288) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(287) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(286) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(285) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(284) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(283) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(282) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(281) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(280) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(279) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(278) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(277) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(276) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(275) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(274) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(273) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(272) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(271) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(270) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(269) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(268) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(267) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(266) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(265) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(264) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(263) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(262) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(261) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(260) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(259) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(258) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(257) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(256) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(255) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(254) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(253) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(252) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(251) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(250) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(249) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(248) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(247) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(246) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(245) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(244) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(243) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(242) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(241) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(240) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(239) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(238) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(237) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(236) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(235) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(234) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(233) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(232) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(231) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(230) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(229) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(228) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(227) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(226) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(225) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(224) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(223) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(222) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(221) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(220) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(219) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(218) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(217) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(216) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(215) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(214) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(213) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(212) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(211) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(210) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(209) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(208) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(207) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(206) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(205) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(204) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(203) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(202) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(201) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(200) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(199) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(198) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(197) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(196) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(195) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(194) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(193) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(192) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(191) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(190) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(189) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(188) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(187) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(186) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(185) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(184) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(183) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(182) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(181) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(180) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(179) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(178) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(177) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(176) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(175) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(174) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(173) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(172) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(171) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(170) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(169) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(168) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(167) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(166) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(165) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(164) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(163) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(162) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(161) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(160) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(159) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(158) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(157) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(156) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(155) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(154) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(153) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(152) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(151) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(150) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(149) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(148) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(147) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(146) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(145) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(144) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(143) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(142) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(141) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(140) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(139) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(138) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(137) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(136) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(135) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(134) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(133) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(132) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(131) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(130) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(129) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(128) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(127) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(126) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(125) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(124) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(123) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(122) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(121) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(120) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(119) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(118) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(117) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(116) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(115) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(114) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(113) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(112) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(111) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(110) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(109) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(108) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(107) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(106) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(105) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(104) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(103) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(102) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(101) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(100) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(99) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(98) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(97) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(96) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(95) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(94) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(93) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(92) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(91) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(90) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(89) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(88) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(87) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(86) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(85) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(84) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(83) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(82) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(81) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(80) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(79) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(78) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(77) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(76) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(75) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(74) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(73) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(72) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(71) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(70) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(69) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(68) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(67) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(66) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(65) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(64) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(63) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(62) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(61) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(60) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(59) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(58) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(57) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(56) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(55) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(54) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(53) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(52) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(51) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(50) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(49) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(48) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(47) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(46) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(45) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(44) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(43) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(42) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(41) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(40) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(39) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(38) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(37) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(36) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(35) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(34) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(33) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(32) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(31) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(30) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(29) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(28) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(27) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(26) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(25) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(24) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(23) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(22) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(21) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(20) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(19) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(18) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(17) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(16) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(15) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(14) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(13) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(12) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(11) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(10) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(9) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(8) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(7) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(6) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(5) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(4) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(3) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(2) <= NlwRenamedSig_OI_cfg_100_Q;
  cfg(1) <= NlwRenamedSig_OI_cfg_0_Q;
  cfg(0) <= NlwRenamedSig_OI_cfg_0_Q;
  s_data <= NlwRenamedSig_OI_s_data;
  idle <= NlwRenamedSig_OI_idle;
  adio_out(31) <= NlwRenamedSig_OI_adio_out(31);
  adio_out(30) <= NlwRenamedSig_OI_adio_out(30);
  adio_out(29) <= NlwRenamedSig_OI_adio_out(29);
  adio_out(28) <= NlwRenamedSig_OI_adio_out(28);
  adio_out(27) <= NlwRenamedSig_OI_adio_out(27);
  adio_out(26) <= NlwRenamedSig_OI_adio_out(26);
  adio_out(25) <= NlwRenamedSig_OI_adio_out(25);
  adio_out(24) <= NlwRenamedSig_OI_adio_out(24);
  adio_out(23) <= NlwRenamedSig_OI_adio_out(23);
  adio_out(22) <= NlwRenamedSig_OI_adio_out(22);
  adio_out(21) <= NlwRenamedSig_OI_adio_out(21);
  adio_out(20) <= NlwRenamedSig_OI_adio_out(20);
  adio_out(19) <= NlwRenamedSig_OI_adio_out(19);
  adio_out(18) <= NlwRenamedSig_OI_adio_out(18);
  adio_out(17) <= NlwRenamedSig_OI_adio_out(17);
  adio_out(16) <= NlwRenamedSig_OI_adio_out(16);
  adio_out(15) <= NlwRenamedSig_OI_adio_out(15);
  adio_out(14) <= NlwRenamedSig_OI_adio_out(14);
  adio_out(13) <= NlwRenamedSig_OI_adio_out(13);
  adio_out(12) <= NlwRenamedSig_OI_adio_out(12);
  adio_out(11) <= NlwRenamedSig_OI_adio_out(11);
  adio_out(10) <= NlwRenamedSig_OI_adio_out(10);
  adio_out(9) <= NlwRenamedSig_OI_adio_out(9);
  adio_out(8) <= NlwRenamedSig_OI_adio_out(8);
  adio_out(7) <= NlwRenamedSig_OI_adio_out(7);
  adio_out(6) <= NlwRenamedSig_OI_adio_out(6);
  adio_out(5) <= NlwRenamedSig_OI_adio_out(5);
  adio_out(4) <= NlwRenamedSig_OI_adio_out(4);
  adio_out(3) <= NlwRenamedSig_OI_adio_out(3);
  adio_out(2) <= NlwRenamedSig_OI_adio_out(2);
  adio_out(1) <= NlwRenamedSig_OI_adio_out(1);
  adio_out(0) <= NlwRenamedSig_OI_adio_out(0);
  time_out <= NlwRenamedSig_OI_time_out;
  devselq_n <= NlwRenamedSig_OI_devselq_n;
  trdyq_n <= NlwRenamedSig_OI_trdyq_n;
  adio_in_8(31) <= adio_in(31);
  adio_in_8(30) <= adio_in(30);
  adio_in_8(29) <= adio_in(29);
  adio_in_8(28) <= adio_in(28);
  adio_in_8(27) <= adio_in(27);
  adio_in_8(26) <= adio_in(26);
  adio_in_8(25) <= adio_in(25);
  adio_in_8(24) <= adio_in(24);
  adio_in_8(23) <= adio_in(23);
  adio_in_8(22) <= adio_in(22);
  adio_in_8(21) <= adio_in(21);
  adio_in_8(20) <= adio_in(20);
  adio_in_8(19) <= adio_in(19);
  adio_in_8(18) <= adio_in(18);
  adio_in_8(17) <= adio_in(17);
  adio_in_8(16) <= adio_in(16);
  adio_in_8(15) <= adio_in(15);
  adio_in_8(14) <= adio_in(14);
  adio_in_8(13) <= adio_in(13);
  adio_in_8(12) <= adio_in(12);
  adio_in_8(11) <= adio_in(11);
  adio_in_8(10) <= adio_in(10);
  adio_in_8(9) <= adio_in(9);
  adio_in_8(8) <= adio_in(8);
  adio_in_8(7) <= adio_in(7);
  adio_in_8(6) <= adio_in(6);
  adio_in_8(5) <= adio_in(5);
  adio_in_8(4) <= adio_in(4);
  adio_in_8(3) <= adio_in(3);
  adio_in_8(2) <= adio_in(2);
  adio_in_8(1) <= adio_in(1);
  adio_in_8(0) <= adio_in(0);
  b_busy <= NlwRenamedSig_OI_b_busy;
  s_cbe(3) <= NlwRenamedSig_OI_s_cbe(3);
  s_cbe(2) <= NlwRenamedSig_OI_s_cbe(2);
  s_cbe(1) <= NlwRenamedSig_OI_s_cbe(1);
  s_cbe(0) <= NlwRenamedSig_OI_s_cbe(0);
  NlwRenamedSignal_pme_n <= pme_n;
  frameq_n <= NlwRenamedSig_OI_frameq_n;
  add_4(31) <= add(31);
  add_4(30) <= add(30);
  add_4(29) <= add(29);
  add_4(28) <= add(28);
  add_4(27) <= add(27);
  add_4(26) <= add(26);
  add_4(25) <= add(25);
  add_4(24) <= add(24);
  add_4(23) <= add(23);
  add_4(22) <= add(22);
  add_4(21) <= add(21);
  add_4(20) <= add(20);
  add_4(19) <= add(19);
  add_4(18) <= add(18);
  add_4(17) <= add(17);
  add_4(16) <= add(16);
  add_4(15) <= add(15);
  add_4(14) <= add(14);
  add_4(13) <= add(13);
  add_4(12) <= add(12);
  add_4(11) <= add(11);
  add_4(10) <= add(10);
  add_4(9) <= add(9);
  add_4(8) <= add(8);
  add_4(7) <= add(7);
  add_4(6) <= add(6);
  add_4(5) <= add(5);
  add_4(4) <= add(4);
  add_4(3) <= add(3);
  add_4(2) <= add(2);
  add_4(1) <= add(1);
  add_4(0) <= add(0);
  addr_vld <= NlwRenamedSig_OI_addr_vld;
  adi_3(31) <= adi(31);
  adi_3(30) <= adi(30);
  adi_3(29) <= adi(29);
  adi_3(28) <= adi(28);
  adi_3(27) <= adi(27);
  adi_3(26) <= adi(26);
  adi_3(25) <= adi(25);
  adi_3(24) <= adi(24);
  adi_3(23) <= adi(23);
  adi_3(22) <= adi(22);
  adi_3(21) <= adi(21);
  adi_3(20) <= adi(20);
  adi_3(19) <= adi(19);
  adi_3(18) <= adi(18);
  adi_3(17) <= adi(17);
  adi_3(16) <= adi(16);
  adi_3(15) <= adi(15);
  adi_3(14) <= adi(14);
  adi_3(13) <= adi(13);
  adi_3(12) <= adi(12);
  adi_3(11) <= adi(11);
  adi_3(10) <= adi(10);
  adi_3(9) <= adi(9);
  adi_3(8) <= adi(8);
  adi_3(7) <= adi(7);
  adi_3(6) <= adi(6);
  adi_3(5) <= adi(5);
  adi_3(4) <= adi(4);
  adi_3(3) <= adi(3);
  adi_3(2) <= adi(2);
  adi_3(1) <= adi(1);
  adi_3(0) <= adi(0);
  serro <= NlwRenamedSig_OI_base_hit(3);
  ado(31) <= ado_2(31);
  ado(30) <= ado_2(30);
  ado(29) <= ado_2(29);
  ado(28) <= ado_2(28);
  ado(27) <= ado_2(27);
  ado(26) <= ado_2(26);
  ado(25) <= ado_2(25);
  ado(24) <= ado_2(24);
  ado(23) <= ado_2(23);
  ado(22) <= ado_2(22);
  ado(21) <= ado_2(21);
  ado(20) <= ado_2(20);
  ado(19) <= ado_2(19);
  ado(18) <= ado_2(18);
  ado(17) <= ado_2(17);
  ado(16) <= ado_2(16);
  ado(15) <= ado_2(15);
  ado(14) <= ado_2(14);
  ado(13) <= ado_2(13);
  ado(12) <= ado_2(12);
  ado(11) <= ado_2(11);
  ado(10) <= ado_2(10);
  ado(9) <= ado_2(9);
  ado(8) <= ado_2(8);
  ado(7) <= ado_2(7);
  ado(6) <= ado_2(6);
  ado(5) <= ado_2(5);
  ado(4) <= ado_2(4);
  ado(3) <= ado_2(3);
  ado(2) <= ado_2(2);
  ado(1) <= ado_2(1);
  ado(0) <= ado_2(0);
  adt(31) <= NlwRenamedSignal_adt_24_Q;
  adt(30) <= NlwRenamedSignal_adt_24_Q;
  adt(29) <= NlwRenamedSignal_adt_24_Q;
  adt(28) <= NlwRenamedSignal_adt_24_Q;
  adt(27) <= NlwRenamedSignal_adt_24_Q;
  adt(26) <= NlwRenamedSignal_adt_24_Q;
  adt(25) <= NlwRenamedSignal_adt_24_Q;
  adt(24) <= NlwRenamedSignal_adt_24_Q;
  adt(23) <= NlwRenamedSignal_adt_16_Q;
  adt(22) <= NlwRenamedSignal_adt_16_Q;
  adt(21) <= NlwRenamedSignal_adt_16_Q;
  adt(20) <= NlwRenamedSignal_adt_16_Q;
  adt(19) <= NlwRenamedSignal_adt_16_Q;
  adt(18) <= NlwRenamedSignal_adt_16_Q;
  adt(17) <= NlwRenamedSignal_adt_16_Q;
  adt(16) <= NlwRenamedSignal_adt_16_Q;
  adt(15) <= NlwRenamedSignal_adt_10_Q;
  adt(14) <= NlwRenamedSignal_adt_10_Q;
  adt(13) <= NlwRenamedSignal_adt_10_Q;
  adt(12) <= NlwRenamedSignal_adt_10_Q;
  adt(11) <= NlwRenamedSignal_adt_10_Q;
  adt(10) <= NlwRenamedSignal_adt_10_Q;
  adt(9) <= NlwRenamedSignal_adt_10_Q;
  adt(8) <= NlwRenamedSignal_adt_10_Q;
  adt(7) <= NlwRenamedSig_OI_adt(0);
  adt(6) <= NlwRenamedSig_OI_adt(0);
  adt(5) <= NlwRenamedSig_OI_adt(0);
  adt(4) <= NlwRenamedSig_OI_adt(0);
  adt(3) <= NlwRenamedSig_OI_adt(0);
  adt(2) <= NlwRenamedSig_OI_adt(0);
  adt(1) <= NlwRenamedSig_OI_adt(0);
  adt(0) <= NlwRenamedSig_OI_adt(0);
  perrq_n <= NlwRenamedSig_OI_perrq_n;
  pci_cmd(11) <= NlwRenamedSig_OI_pci_cmd_11_Q;
  pci_cmd(10) <= NlwRenamedSig_OI_pci_cmd_10_Q;
  pci_cmd(1) <= NlwRenamedSig_OI_pci_cmd_1_Q;
  csr(39) <= NlwRenamedSig_OI_csr_39_Q;
  csr(38) <= csr_10(38);
  csr(37) <= csr_10(37);
  csr(36) <= csr_10(36);
  csr(35) <= csr_10(35);
  csr(34) <= csr_10(34);
  csr(33) <= csr_10(33);
  csr(32) <= csr_10(32);
  csr(31) <= NlwRenamedSig_OI_csr_31_Q;
  csr(30) <= NlwRenamedSig_OI_csr_30_Q;
  csr(29) <= NlwRenamedSig_OI_csr_29_Q;
  csr(28) <= NlwRenamedSig_OI_csr_28_Q;
  csr(27) <= NlwRenamedSig_OI_csr_27_Q;
  csr(26) <= NlwRenamedSig_OI_base_hit(3);
  csr(25) <= NlwRenamedSig_OI_csr_25_Q;
  csr(24) <= NlwRenamedSig_OI_csr_24_Q;
  csr(23) <= NlwRenamedSig_OI_base_hit(3);
  csr(22) <= NlwRenamedSig_OI_base_hit(3);
  csr(21) <= NlwRenamedSig_OI_cfg_100_Q;
  csr(20) <= NlwRenamedSig_OI_csr_20_Q;
  csr(19) <= NlwRenamedSig_OI_csr_19_Q;
  csr(18) <= NlwRenamedSig_OI_base_hit(3);
  csr(17) <= NlwRenamedSig_OI_base_hit(3);
  csr(16) <= NlwRenamedSig_OI_base_hit(3);
  csr(15) <= NlwRenamedSig_OI_base_hit(3);
  csr(14) <= NlwRenamedSig_OI_base_hit(3);
  csr(13) <= NlwRenamedSig_OI_base_hit(3);
  csr(12) <= NlwRenamedSig_OI_base_hit(3);
  csr(11) <= NlwRenamedSig_OI_base_hit(3);
  csr(10) <= NlwRenamedSig_OI_csr_10_Q;
  csr(9) <= NlwRenamedSig_OI_base_hit(3);
  csr(8) <= NlwRenamedSig_OI_csr_8_Q;
  csr(7) <= NlwRenamedSig_OI_base_hit(3);
  csr(6) <= NlwRenamedSig_OI_csr_6_Q;
  csr(5) <= NlwRenamedSig_OI_base_hit(3);
  csr(4) <= NlwRenamedSig_OI_base_hit(3);
  csr(3) <= NlwRenamedSig_OI_base_hit(3);
  csr(2) <= NlwRenamedSig_OI_csr_2_Q;
  csr(1) <= NlwRenamedSig_OI_csr_1_Q;
  csr(0) <= NlwRenamedSig_OI_csr_0_Q;
  cfg_hit <= NlwRenamedSig_OI_cfg_hit;
  m_data <= NlwRenamedSig_OI_m_data;
  pmeo <= NlwRenamedSig_OI_base_hit(3);
  i_idle <= NlwRenamedSig_OI_i_idle;
  pmet <= NlwRenamedSignal_pme_n;
  stopq_n <= NlwRenamedSig_OI_stopq_n;
  addr(7) <= NlwRenamedSig_OI_addr(7);
  addr(6) <= NlwRenamedSig_OI_addr(6);
  addr(5) <= NlwRenamedSig_OI_addr(5);
  addr(4) <= NlwRenamedSig_OI_addr(4);
  addr(3) <= NlwRenamedSig_OI_addr(3);
  addr(2) <= NlwRenamedSig_OI_addr(2);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_U0_ff_drive_zero_1 : FD
    port map (
      C => clk,
      D => rst,
      Q => BU2_U0_ff_drive_zero_1_2401
    );
  BU2_XST_VCC : VCC
    port map (
      P => NlwRenamedSig_OI_cfg_0_Q
    );
  BU2_XST_GND : GND
    port map (
      G => NlwRenamedSig_OI_cfg_100_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL641_F7 : MUXF7
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL6411_1987,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL641,
      S => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_NS_FAIL64
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL6412 : LUT6
    generic map(
      INIT => X"F0F0F0F000200000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(3),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(3),
      I2 => NlwRenamedSig_OI_m_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ATTEMPT64_1142,
      I5 => BU2_m_fail64,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL6411_1987
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL6411 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_m_fail64,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_MMUX_NS_FAIL641
    );
  BU2_U0_pci32_inst_PCI_LC_I_SRC_EN_S_SRC_EN_F7 : MUXF7
    port map (
      I0 => NlwRenamedSig_OI_base_hit(3),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SRC_EN_S_SRC_EN,
      S => s_ready,
      O => s_src_en
    );
  BU2_U0_pci32_inst_PCI_LC_I_SRC_EN_S_SRC_EN1 : LUT6
    generic map(
      INIT => X"5555004000400040"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NEWDATA_1265,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I5 => NlwRenamedSig_OI_s_data,
      O => BU2_U0_pci32_inst_PCI_LC_I_SRC_EN_S_SRC_EN
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_PCI64B1_INV_0 : INV
    port map (
      I => BU2_U0_ff_drive_zero_1_2401,
      O => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCI64B
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N00921_INV_0 : INV
    port map (
      I => int_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0092
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE29_G : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_N121,
      I1 => NlwRenamedSig_OI_dr_bus,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE5_1559,
      O => BU2_U0_pci32_inst_N401
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE29_F : LUT6
    generic map(
      INIT => X"FFFF0088FFFF0080"
    )
    port map (
      I0 => NlwRenamedSig_OI_dr_bus,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I2 => NlwRenamedSig_OI_csr_2_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE5_1559,
      I5 => cfg_self,
      O => BU2_U0_pci32_inst_N400
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE29 : MUXF7
    port map (
      I0 => BU2_U0_pci32_inst_N400,
      I1 => BU2_U0_pci32_inst_N401,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2728_G : LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(4),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_OLD_37_Q,
      O => BU2_U0_pci32_inst_N399
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2728_F : LUT5
    generic map(
      INIT => X"C0004000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(4),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      O => BU2_U0_pci32_inst_N398
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2728 : MUXF7
    port map (
      I0 => BU2_U0_pci32_inst_N398,
      I1 => BU2_U0_pci32_inst_N399,
      S => BU2_U0_pci32_inst_N324,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2728_1895
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2828_G : LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(5),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_OLD_37_Q,
      O => BU2_U0_pci32_inst_N397
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2828_F : LUT5
    generic map(
      INIT => X"C0004000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      O => BU2_U0_pci32_inst_N396
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2828 : MUXF7
    port map (
      I0 => BU2_U0_pci32_inst_N396,
      I1 => BU2_U0_pci32_inst_N397,
      S => BU2_U0_pci32_inst_N324,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2828_1891
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3028_G : LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(7),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_OLD_37_Q,
      O => BU2_U0_pci32_inst_N395
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3028_F : LUT5
    generic map(
      INIT => X"C0004000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(7),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      O => BU2_U0_pci32_inst_N394
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3028 : MUXF7
    port map (
      I0 => BU2_U0_pci32_inst_N394,
      I1 => BU2_U0_pci32_inst_N395,
      S => BU2_U0_pci32_inst_N324,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3028_1887
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_159 : LUT6
    generic map(
      INIT => X"AF8C8C8C8C8C8C8C"
    )
    port map (
      I0 => gnti,
      I1 => BU2_U0_pci32_inst_N392,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I3 => NlwRenamedSig_OI_devselq_n,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_FRAME_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_159_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_138_1588,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => BU2_m_fail64,
      O => BU2_U0_pci32_inst_N392
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_MMUX_NS_REQ64_161 : LUT6
    generic map(
      INIT => X"A8FCAAFFFCFCFFFF"
    )
    port map (
      I0 => gnti,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_MMUX_NS_REQ64_140_1589,
      I2 => BU2_U0_pci32_inst_N390,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I4 => NlwRenamedSig_OI_m_data,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64_1136,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_REQ64_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_MMUX_NS_REQ64_161_SW0 : LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_I_Q_1159,
      I2 => NlwRenamedSig_OI_devselq_n,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169,
      O => BU2_U0_pci32_inst_N390
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_123 : LUT6
    generic map(
      INIT => X"FFFFFFFF2AAA2AFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I3 => NlwRenamedSig_OI_s_data,
      I4 => NlwRenamedSig_OI_backoff,
      I5 => BU2_U0_pci32_inst_N388,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_123_1935
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_123_SW0 : LUT5
    generic map(
      INIT => X"FA32FF33"
    )
    port map (
      I0 => s_abort,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR_1178,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N_1086,
      O => BU2_U0_pci32_inst_N388
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_CBE6411 : LUT6
    generic map(
      INIT => X"8DFF8D8D8DFF8DFF"
    )
    port map (
      I0 => bw_detect_dis,
      I1 => bw_manual_32b,
      I2 => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIW,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152,
      O => BU2_U0_pci32_inst_CBT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE1_31 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE1_3
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12186_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(33),
      I2 => NlwRenamedSig_OI_csr_1_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_1_835,
      O => BU2_U0_pci32_inst_N246
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23186_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(34),
      I2 => NlwRenamedSig_OI_csr_2_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_2_833,
      O => BU2_U0_pci32_inst_N243
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1156_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(32),
      I2 => NlwRenamedSig_OI_csr_0_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_0_832,
      O => BU2_U0_pci32_inst_N240
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29156_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(38),
      I2 => NlwRenamedSig_OI_csr_6_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_6_838,
      O => BU2_U0_pci32_inst_N237
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(51),
      I2 => NlwRenamedSig_OI_csr_19_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_19_851,
      O => BU2_U0_pci32_inst_N234
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(52),
      I2 => NlwRenamedSig_OI_csr_20_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_20_852,
      O => BU2_U0_pci32_inst_N231
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(53),
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_21_853,
      O => BU2_U0_pci32_inst_N228
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(56),
      I2 => NlwRenamedSig_OI_csr_24_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_24_855,
      O => BU2_U0_pci32_inst_N225
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(42),
      I2 => NlwRenamedSig_OI_csr_10_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_10_841,
      O => BU2_U0_pci32_inst_N222
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(59),
      I2 => NlwRenamedSig_OI_csr_27_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_27_858,
      O => BU2_U0_pci32_inst_N219
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(60),
      I2 => NlwRenamedSig_OI_csr_28_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_28_862,
      O => BU2_U0_pci32_inst_N216
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(61),
      I2 => NlwRenamedSig_OI_csr_29_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_29_860,
      O => BU2_U0_pci32_inst_N213
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(62),
      I2 => NlwRenamedSig_OI_csr_30_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_30_861,
      O => BU2_U0_pci32_inst_N210
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25187_SW0 : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(63),
      I2 => NlwRenamedSig_OI_csr_31_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_31_863,
      O => BU2_U0_pci32_inst_N207
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_CBE1 : LUT6
    generic map(
      INIT => X"CFFFFFFF45555555"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_REQUESTQ_1155,
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_frameq_n,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => NlwRenamedSignal_cbt(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_ADO_LB6411 : LUT6
    generic map(
      INIT => X"5555FFFF0444FFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB64_Q_1194,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152,
      I3 => m_wrdn,
      I4 => NlwRenamedSig_OI_pciw_en,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => BU2_U0_pci32_inst_ADT_40_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_ADO_T6411 : LUT6
    generic map(
      INIT => X"5555FFFF0444FFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T64_Q_1192,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152,
      I3 => m_wrdn,
      I4 => NlwRenamedSig_OI_pciw_en,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => BU2_U0_pci32_inst_ADT_56_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_ADO_LT6411 : LUT6
    generic map(
      INIT => X"5555FFFF0444FFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT64_Q_1196,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152,
      I3 => m_wrdn,
      I4 => NlwRenamedSig_OI_pciw_en,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => BU2_U0_pci32_inst_ADT_48_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_CFG_VLD1 : LUT5
    generic map(
      INIT => X"0A000200"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_FRAMEQ_Q_817,
      I1 => NlwRenamedSig_OI_m_data,
      I2 => NlwRenamedSig_OI_frameq_n,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_IDSEL,
      I4 => cfg_self,
      O => cfg_vld
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OER1 : LUT6
    generic map(
      INIT => X"2000A800FFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64_1136,
      I1 => bw_detect_dis,
      I2 => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIW,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I4 => bw_manual_32b,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_REQ64_INT_1150,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OER
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_ADO_B6411 : LUT6
    generic map(
      INIT => X"5555FFFF0444FFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B64_Q_1188,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152,
      I3 => m_wrdn,
      I4 => NlwRenamedSig_OI_pciw_en,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => BU2_U0_pci32_inst_ADT_32_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000446 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000410_1608,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N00042,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N_1086,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR_1178,
      I4 => s_abort,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000442_1609,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N0004
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0103111 : LUT5
    generic map(
      INIT => X"C8C8FFC8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010369_1970,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N01032_1972,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0103
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0048_5_1 : LUT4
    generic map(
      INIT => X"FF2A"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_29_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N8,
      I3 => NlwRenamedSig_OI_csr_39_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_29_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_NS_S_TAR1 : LUT6
    generic map(
      INIT => X"8000000088888888"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => NlwRenamedSig_OI_m_data,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169,
      I3 => NlwRenamedSig_OI_devselq_n,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_NS_S_TAR
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE6_01 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6_1233,
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE6_0
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE5_01 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5_1235,
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE5_0
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE4_01 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4_1237,
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE4_0
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE1_01 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE1_0
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE15_01 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX15_1231,
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE15_0
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE6_11 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6_1233,
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE6_1
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE5_11 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5_1235,
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE5_1
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE4_11 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4_1237,
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE4_1
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE3_11 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX3_1239,
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE3_1
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE1_11 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE1_1
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE6_21 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6_1233,
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE6_2
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE5_21 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5_1235,
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE5_2
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE4_21 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4_1237,
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE4_2
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE6_31 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6_1233,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE6_3
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE5_31 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5_1235,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE5_3
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE4_31 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4_1237,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_CE4_3
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_124 : LUT6
    generic map(
      INIT => X"0000002000100030"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_CYC_1243,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR_1178,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N_1086,
      I3 => s_abort,
      I4 => c_term,
      I5 => s_term,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_124_1621
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N00121 : LUT6
    generic map(
      INIT => X"2A2AFF2AAAAAFFAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I1 => NlwRenamedSig_OI_pci_cmd_10_Q,
      I2 => NlwRenamedSig_OI_cfg_hit,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0012
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N00221 : LUT6
    generic map(
      INIT => X"2A2AFF2AAAAAFFAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => NlwRenamedSig_OI_pci_cmd_10_Q,
      I2 => NlwRenamedSig_OI_cfg_hit,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX3_1239,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0022
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N00311 : LUT6
    generic map(
      INIT => X"2A2AFF2AAAAAFFAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I1 => NlwRenamedSig_OI_pci_cmd_10_Q,
      I2 => NlwRenamedSig_OI_cfg_hit,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4_1237,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0031
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N00401 : LUT6
    generic map(
      INIT => X"2A2AFF2AAAAAFFAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I1 => NlwRenamedSig_OI_pci_cmd_10_Q,
      I2 => NlwRenamedSig_OI_cfg_hit,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5_1235,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0040
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N00491 : LUT6
    generic map(
      INIT => X"2A2AFF2AAAAAFFAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      I1 => NlwRenamedSig_OI_pci_cmd_10_Q,
      I2 => NlwRenamedSig_OI_cfg_hit,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6_1233,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0049
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N00981 : LUT6
    generic map(
      INIT => X"2A2AFF2AAAAAFFAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => NlwRenamedSig_OI_pci_cmd_10_Q,
      I2 => NlwRenamedSig_OI_cfg_hit,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX15_1231,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0098
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0048_3_Q : LUT6
    generic map(
      INIT => X"AAFAFAFA88F8F8F8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_ABORT_INT,
      I1 => NlwRenamedSig_OI_s_data,
      I2 => NlwRenamedSig_OI_csr_27_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N8,
      I4 => BU2_U0_pci32_inst_N386,
      I5 => NlwRenamedSig_OI_backoff,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_27_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0048_3_SW1 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I1 => NlwRenamedSig_OI_adio_out(27),
      I2 => NlwRenamedSig_OI_adio_out(28),
      I3 => NlwRenamedSig_OI_adio_out(29),
      I4 => NlwRenamedSig_OI_adio_out(30),
      I5 => NlwRenamedSig_OI_adio_out(31),
      O => BU2_U0_pci32_inst_N386
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN642 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => BU2_s_cycle64,
      I1 => NlwRenamedSig_OI_s_wrdn,
      I2 => NlwRenamedSig_OI_s_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN64
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N01032 : LUT5
    generic map(
      INIT => X"F7F7F777"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_hit,
      I1 => NlwRenamedSig_OI_pci_cmd_10_Q,
      I2 => NlwRenamedSig_OI_cfg_0_Q,
      I3 => NlwRenamedSig_OI_addr(6),
      I4 => NlwRenamedSig_OI_addr(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N01032_1972
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_MMUX_NS_DR_BUS1_SW0 : LUT6
    generic map(
      INIT => X"5555FFFF4440FFFF"
    )
    port map (
      I0 => gnti,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I2 => cfg_self,
      I3 => NlwRenamedSig_OI_csr_2_Q,
      I4 => NlwRenamedSig_OI_dr_bus,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      O => BU2_U0_pci32_inst_N14
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ACK64_IN_SW0 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_TACK64_I_Q_1211,
      I1 => BU2_s_cycle64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      O => BU2_U0_pci32_inst_N51
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_SET13_M_ABORT1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => NlwRenamedSig_OI_devselq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_1764,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169,
      O => NlwRenamedSig_OI_csr_39_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26172_SW0_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_3_834,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(35),
      O => BU2_U0_pci32_inst_N347
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27143_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_4_836,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(36),
      O => BU2_U0_pci32_inst_N259
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28143_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_5_837,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(37),
      O => BU2_U0_pci32_inst_N256
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30143_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_7_839,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(39),
      O => BU2_U0_pci32_inst_N253
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12186_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_1_835,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(33),
      O => BU2_U0_pci32_inst_N247
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23186_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_2_833,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(34),
      O => BU2_U0_pci32_inst_N244
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1156_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_0_832,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(32),
      O => BU2_U0_pci32_inst_N241
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29156_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_6_838,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(38),
      O => BU2_U0_pci32_inst_N238
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_19_851,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(51),
      O => BU2_U0_pci32_inst_N235
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_20_852,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(52),
      O => BU2_U0_pci32_inst_N232
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_21_853,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(53),
      O => BU2_U0_pci32_inst_N229
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_24_855,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(56),
      O => BU2_U0_pci32_inst_N226
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_10_841,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(42),
      O => BU2_U0_pci32_inst_N223
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_27_858,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(59),
      O => BU2_U0_pci32_inst_N220
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_28_862,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(60),
      O => BU2_U0_pci32_inst_N217
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_29_860,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(61),
      O => BU2_U0_pci32_inst_N214
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_30_861,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(62),
      O => BU2_U0_pci32_inst_N211
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25187_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_31_863,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(63),
      O => BU2_U0_pci32_inst_N208
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18189_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_25_859,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(57),
      O => BU2_U0_pci32_inst_N205
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0048_7_1 : LUT4
    generic map(
      INIT => X"2AFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_31_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N8,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_LC_PERR_Q_955,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_31_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0048_6_1 : LUT4
    generic map(
      INIT => X"2AFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_30_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N8,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_OE_SERR,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_30_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_MAN1 : LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I2 => gnti,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_MAN
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0048_4_1 : LUT6
    generic map(
      INIT => X"22F22222AAFAAAAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_28_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => NlwRenamedSig_OI_stopq_n,
      I4 => NlwRenamedSig_OI_devselq_n,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N8,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_28_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_NS_IREAD641 : LUT6
    generic map(
      INIT => X"0404040400000400"
    )
    port map (
      I0 => m_wrdn,
      I1 => NlwRenamedSig_OI_pciw_en,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_NS_IREAD64
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31100 : LUT6
    generic map(
      INIT => X"4446888A0002888A"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_addr(4),
      I3 => BU2_U0_pci32_inst_N384,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(8),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31100_1959
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31100_SW0 : LUT5
    generic map(
      INIT => X"FFFFFBEA"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(6),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3112_1754,
      I2 => BU2_U0_pci32_inst_N344,
      I3 => BU2_U0_pci32_inst_N343,
      I4 => NlwRenamedSig_OI_addr(7),
      O => BU2_U0_pci32_inst_N384
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18189_SW0_G : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(57),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(25),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_25_859,
      O => BU2_U0_pci32_inst_N351
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_RSTPOT : LUT6
    generic map(
      INIT => X"5555557500000020"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I1 => m_cbe_9(3),
      I2 => m_cbe_9(0),
      I3 => m_cbe_9(2),
      I4 => m_cbe_9(1),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_1764,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_RSTPOT_1763
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR156 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR136_1574,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_PAR
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64156 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64136_1567,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_PAR64
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010369 : LUT5
    generic map(
      INIT => X"11110010"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(6),
      I1 => NlwRenamedSig_OI_addr(7),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010327_1626,
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010346_1627,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010369_1970
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF37 : LUT6
    generic map(
      INIT => X"FFFFAAAAFFFF0080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N2,
      I1 => NlwRenamedSig_OI_cfg_hit,
      I2 => c_term,
      I3 => c_ready,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF34_1558,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF4_1557,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA51 : LUT6
    generic map(
      INIT => X"FF4C4C4C4F4C4E4C"
    )
    port map (
      I0 => NlwRenamedSig_OI_irdyq_n,
      I1 => BU2_U0_pci32_inst_N382,
      I2 => NlwRenamedSig_OI_frameq_n,
      I3 => NlwRenamedSig_OI_s_data,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA51_SW0 : LUT5
    generic map(
      INIT => X"AAA0AA20"
    )
    port map (
      I0 => NlwRenamedSig_OI_b_busy,
      I1 => c_term,
      I2 => NlwRenamedSig_OI_cfg_hit,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA22_1556,
      I4 => c_ready,
      O => BU2_U0_pci32_inst_N382
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26172_SW0_SW2_G : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_3_834,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(35),
      O => BU2_U0_pci32_inst_N381
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26172_SW0_SW2_F : LUT6
    generic map(
      INIT => X"DDD8DD8888D88888"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(35),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_3_834,
      O => BU2_U0_pci32_inst_N380
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26172_SW0_SW2 : MUXF7
    port map (
      I0 => BU2_U0_pci32_inst_N380,
      I1 => BU2_U0_pci32_inst_N381,
      S => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2675_1939,
      O => BU2_U0_pci32_inst_N348
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18189_SW0_F : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_25_859,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(57),
      O => BU2_U0_pci32_inst_N350
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18189_SW0 : MUXF7
    port map (
      I0 => BU2_U0_pci32_inst_N350,
      I1 => BU2_U0_pci32_inst_N351,
      S => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N204
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26223 : LUT6
    generic map(
      INIT => X"FDF5ECA031F520A0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26138_1956,
      I1 => adio_in_8(3),
      I2 => BU2_U0_pci32_inst_N348,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      I4 => BU2_U0_pci32_inst_N346,
      I5 => BU2_U0_pci32_inst_N347,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26172_SW0_SW0 : LUT5
    generic map(
      INIT => X"FDEC3120"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_3_834,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2675_1939,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(35),
      O => BU2_U0_pci32_inst_N346
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3127_SW2 : LUT6
    generic map(
      INIT => X"46EECEEEFFFFFFFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(5),
      I1 => NlwRenamedSig_OI_addr(2),
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_N344
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3127_SW1 : LUT6
    generic map(
      INIT => X"777FF7FFFFFFFFFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(5),
      I1 => NlwRenamedSig_OI_addr(3),
      I2 => NlwRenamedSig_OI_addr(2),
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_N343
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31254 : LUT6
    generic map(
      INIT => X"CDDDCFFFC888C000"
    )
    port map (
      I0 => adio_in_8(8),
      I1 => BU2_U0_pci32_inst_N190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31100_1959,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      I5 => BU2_U0_pci32_inst_N340,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31190_SW1 : LUT6
    generic map(
      INIT => X"AAAAABBBAAAAA888"
    )
    port map (
      I0 => BU2_U0_pci32_inst_N190,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31146_1948,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      I3 => NlwRenamedSig_OI_csr_8_Q,
      I4 => BU2_U0_pci32_inst_N108,
      I5 => BU2_U0_pci32_inst_N189,
      O => BU2_U0_pci32_inst_N340
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADIO_MUXOUT_10_1_SW0 : LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I3 => BU2_U0_pci32_inst_N338,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      O => BU2_U0_pci32_inst_N72
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADIO_MUXOUT_10_1_SW0_SW2 : LUT6
    generic map(
      INIT => X"99AA795ACCFF3C0F"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I2 => BU2_U0_pci32_inst_OLD_74_Q,
      I3 => BU2_U0_pci32_inst_OLD_37_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      I5 => BU2_U0_pci32_inst_OLD_0_Q,
      O => BU2_U0_pci32_inst_N338
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26138 : LUT6
    generic map(
      INIT => X"3C3C2C0C30302000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_N336,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26138_1956
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26138_SW0 : LUT6
    generic map(
      INIT => X"CCCCCCCCCC808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N37,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => BU2_U0_pci32_inst_N80,
      O => BU2_U0_pci32_inst_N336
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27108 : LUT6
    generic map(
      INIT => X"0CF00CF00CA00C00"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(4),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I5 => BU2_U0_pci32_inst_N334,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27108_1914
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27108_SW0 : LUT6
    generic map(
      INIT => X"FFFF0000ECA00000"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N37,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I5 => BU2_U0_pci32_inst_N78,
      O => BU2_U0_pci32_inst_N334
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28108 : LUT6
    generic map(
      INIT => X"0CF00CF00CA00C00"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(5),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I5 => BU2_U0_pci32_inst_N332,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28108_1913
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28108_SW0 : LUT6
    generic map(
      INIT => X"FFFF0000ECA00000"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N37,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I5 => BU2_U0_pci32_inst_N76,
      O => BU2_U0_pci32_inst_N332
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30108 : LUT6
    generic map(
      INIT => X"0CF00CF00CA00C00"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(7),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I5 => BU2_U0_pci32_inst_N330,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30108_1912
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30108_SW0 : LUT6
    generic map(
      INIT => X"FFFF0000ECA00000"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N37,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I5 => BU2_U0_pci32_inst_N74,
      O => BU2_U0_pci32_inst_N330
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3027_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      O => BU2_U0_pci32_inst_N324
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRSTIN3 : LUT6
    generic map(
      INIT => X"FDFDFDFDA8F8F8F8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO,
      I1 => BU2_U0_pci32_inst_N322,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158,
      I3 => NlwRenamedSig_OI_trdyq_n,
      I4 => NlwRenamedSig_OI_stopq_n,
      I5 => BU2_U0_pci32_inst_N321,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_N2
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRSTIN3_SW3 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => m_ready,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      O => BU2_U0_pci32_inst_N322
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRSTIN3_SW2 : LUT6
    generic map(
      INIT => X"5D5D5DDDFFFFFFFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I5 => m_ready,
      O => BU2_U0_pci32_inst_N321
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_ACKHIT1 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BH64_O_1410,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BH64_O_1299,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BH64_O_1355,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_ACKHIT
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_FRAME_NS11 : LUT5
    generic map(
      INIT => X"004000FF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_N27,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_FRAME_NS6411 : LUT5
    generic map(
      INIT => X"004000FF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_N25,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_I_Q_1159,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS64
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31146 : LUT6
    generic map(
      INIT => X"2A080A0A08080A0A"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I2 => BU2_U0_pci32_inst_N318,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(8),
      I4 => BU2_U0_pci32_inst_OLD_37_Q,
      I5 => BU2_U0_pci32_inst_N319,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31146_1948
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31146_SW1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_OLD_0_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      O => BU2_U0_pci32_inst_N319
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31146_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(8),
      I1 => BU2_U0_pci32_inst_OLD_0_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N318
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_133 : LUT6
    generic map(
      INIT => X"F333FFFFA222AAAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_112_1635,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_ACKHIT,
      I2 => NlwRenamedSig_OI_irdyq_n,
      I3 => BU2_req64q_n,
      I4 => NlwRenamedSig_OI_b_busy,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_115,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_133_1636
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12164 : LUT6
    generic map(
      INIT => X"AAAA8888AAAA8000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1103,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12147_1762,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12118_1776,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12164_1885
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23164 : LUT6
    generic map(
      INIT => X"AAAA8888AAAA8000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1103,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23147_1761,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23118_1774,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23164_1881
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1134 : LUT6
    generic map(
      INIT => X"AAAA8888AAAA8000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1103,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1117_1760,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1882_1772,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1134_1877
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29134 : LUT6
    generic map(
      INIT => X"AAAA8888AAAA8000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1103,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29117_1757,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2988_1770,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29134_1874
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1844 : LUT6
    generic map(
      INIT => X"FFFFFFFFA888AA88"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1813_1944,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT186_1945,
      I4 => BU2_U0_pci32_inst_OLD_37_Q,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1844_1840
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1275 : LUT6
    generic map(
      INIT => X"FF40FF40FF404040"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1213_1942,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1230_1943,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1275_1884
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2375 : LUT6
    generic map(
      INIT => X"FF40FF40FF404040"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2313_1940,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2330_1941,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2375_1880
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1155_1751,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1147_1750,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11110_1752
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1355_1746,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1347_1745,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13110_1747
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1455_1741,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1447_1740,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14110_1742
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1755_1736,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1747_1735,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17110_1737
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21101 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(10),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT255_1731,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT247_1730,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21101_1732
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2055_1726,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2047_1725,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20110_1727
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2155_1721,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2147_1720,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21110_1722
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2255_1716,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2247_1715,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22110_1717
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2455_1711,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2447_1710,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24110_1712
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25110 : LUT6
    generic map(
      INIT => X"6240624062404040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2555_1705,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2547_1704,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25110_1706
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2944 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(6),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2927_1756,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2944_1872
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_128 : LUT5
    generic map(
      INIT => X"FFD5D5D5"
    )
    port map (
      I0 => NlwRenamedSig_OI_b_busy,
      I1 => NlwRenamedSig_OI_irdyq_n,
      I2 => NlwRenamedSig_OI_frameq_n,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_110_1575,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_114_1576,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N01
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT272 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(4),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT272_1896
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT282 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(5),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT282_1892
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT302 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(7),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT302_1888
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(19),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11158_1869
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(20),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13158_1866
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(21),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14158_1863
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(24),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17158_1860
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(10),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2158_1857
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(27),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20158_1854
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_28_1308,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21158_1851
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_29_1312,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22158_1848
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_30_1309,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24158_1845
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25158 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_31_1303,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25158_1842
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT186 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(25),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I2 => NlwRenamedSig_OI_cfg_0_Q,
      I3 => BU2_U0_pci32_inst_OLD_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT186_1945
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1813 : LUT6
    generic map(
      INIT => X"0000C00000004000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(25),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1813_1944
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1230 : LUT6
    generic map(
      INIT => X"000000C000000040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1230_1943
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1213 : LUT6
    generic map(
      INIT => X"000000C000000040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_0_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1213_1942
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2330 : LUT6
    generic map(
      INIT => X"000000C000000040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2330_1941
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2313 : LUT6
    generic map(
      INIT => X"000000C000000040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_0_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2313_1940
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2675 : LUT6
    generic map(
      INIT => X"FAAAAAAAF8888888"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2630_1930,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N9,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_N01,
      I4 => BU2_U0_pci32_inst_N305,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2613_1929,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2675_1939
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1445_6_1_SW4 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I2 => BU2_U0_pci32_inst_OLD_74_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N305
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31190_SW0 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_N303,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_N01,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(8),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_N9,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      O => BU2_U0_pci32_inst_N108
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1445_6_1_SW3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_74_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N303
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_RSTPOT : LUT6
    generic map(
      INIT => X"DDDC8888CCCC8888"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_1618,
      I2 => NlwRenamedSig_OI_adio_out(1),
      I3 => NlwRenamedSig_OI_adio_out(0),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT0,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_RSTPOT_1768
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_RSTPOT : LUT6
    generic map(
      INIT => X"DDDC8888CCCC8888"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_1616,
      I2 => NlwRenamedSig_OI_adio_out(1),
      I3 => NlwRenamedSig_OI_adio_out(0),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT1,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_RSTPOT_1767
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_RSTPOT : LUT6
    generic map(
      INIT => X"DDDC8888CCCC8888"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_1617,
      I2 => NlwRenamedSig_OI_adio_out(1),
      I3 => NlwRenamedSig_OI_adio_out(0),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2_INT,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_RSTPOT_1766
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_1111 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAEA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_N301,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_123_1935,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_137_1664,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT0,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT1,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_DEVSEL_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_178_SW0 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      O => BU2_U0_pci32_inst_N301
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_NS_BASE_HIT211 : LUT6
    generic map(
      INIT => X"AF05BB11AA00AA00"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_N298,
      I2 => BU2_U0_pci32_inst_N299,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_INTACK,
      I4 => BU2_U0_pci32_inst_N110,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_ADDRESS_MATCH,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_NL_MEM31_SW1 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr_vld,
      I1 => NlwRenamedSig_OI_csr_1_Q,
      I2 => BU2_U0_pci32_inst_N111,
      I3 => NlwRenamedSig_OI_s_cbe(2),
      O => BU2_U0_pci32_inst_N299
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_NL_MEM31_SW0 : LUT4
    generic map(
      INIT => X"CF4F"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_1_Q,
      I1 => NlwRenamedSig_OI_s_cbe(2),
      I2 => NlwRenamedSig_OI_addr_vld,
      I3 => BU2_U0_pci32_inst_N111,
      O => BU2_U0_pci32_inst_N298
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2630 : LUT6
    generic map(
      INIT => X"000000C000000040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2630_1930
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2613 : LUT6
    generic map(
      INIT => X"000000C000000040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_0_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2613_1929
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N187,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10124_1911,
      I3 => adio_in_8(18),
      I4 => BU2_U0_pci32_inst_N296,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(18)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N187,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1026_1698,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_18_Q,
      I4 => BU2_U0_pci32_inst_N186,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N296
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N184,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15124_1910,
      I3 => adio_in_8(22),
      I4 => BU2_U0_pci32_inst_N294,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(22)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N184,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1526_1695,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_22_Q,
      I4 => BU2_U0_pci32_inst_N183,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N294
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N181,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16124_1909,
      I3 => adio_in_8(23),
      I4 => BU2_U0_pci32_inst_N292,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(23)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N181,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1626_1692,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_23_Q,
      I4 => BU2_U0_pci32_inst_N180,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N292
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N178,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19124_1908,
      I3 => adio_in_8(26),
      I4 => BU2_U0_pci32_inst_N290,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(26)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N178,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1926_1689,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_26_Q,
      I4 => BU2_U0_pci32_inst_N177,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N290
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N175,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3124_1907,
      I3 => adio_in_8(11),
      I4 => BU2_U0_pci32_inst_N288,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N175,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT326_1686,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_11_Q,
      I4 => BU2_U0_pci32_inst_N174,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N288
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N172,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32124_1906,
      I3 => adio_in_8(9),
      I4 => BU2_U0_pci32_inst_N286,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N172,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3226_1683,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_9_Q,
      I4 => BU2_U0_pci32_inst_N171,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N286
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N169,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4124_1905,
      I3 => adio_in_8(12),
      I4 => BU2_U0_pci32_inst_N284,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N169,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT426_1680,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_12_Q,
      I4 => BU2_U0_pci32_inst_N168,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N284
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N166,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5124_1904,
      I3 => adio_in_8(13),
      I4 => BU2_U0_pci32_inst_N282,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N166,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT526_1677,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_13_Q,
      I4 => BU2_U0_pci32_inst_N165,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N282
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N163,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6124_1903,
      I3 => adio_in_8(14),
      I4 => BU2_U0_pci32_inst_N280,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N163,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT626_1674,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_14_Q,
      I4 => BU2_U0_pci32_inst_N162,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N280
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N160,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7124_1902,
      I3 => adio_in_8(15),
      I4 => BU2_U0_pci32_inst_N278,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N160,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT726_1671,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_15_Q,
      I4 => BU2_U0_pci32_inst_N159,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N278
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N157,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8124_1901,
      I3 => adio_in_8(16),
      I4 => BU2_U0_pci32_inst_N276,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(16)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N157,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT826_1668,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_16_Q,
      I4 => BU2_U0_pci32_inst_N156,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N276
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9228 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_N154,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9124_1900,
      I3 => adio_in_8(17),
      I4 => BU2_U0_pci32_inst_N274,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(17)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9163_SW0 : LUT6
    generic map(
      INIT => X"CCDFCC80DFDF8080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I1 => BU2_U0_pci32_inst_N154,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT926_1665,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_17_Q,
      I4 => BU2_U0_pci32_inst_N153,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      O => BU2_U0_pci32_inst_N274
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_Q : LUT6
    generic map(
      INIT => X"0000000300000011"
    )
    port map (
      I0 => BU2_U0_pci32_inst_N271,
      I1 => BU2_U0_pci32_inst_N113,
      I2 => BU2_U0_pci32_inst_N272,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT0,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT1,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2_INT,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_Q_1184
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_SW0_SW1 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_INTACK,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N272
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_SW0_SW0 : LUT5
    generic map(
      INIT => X"F777FFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_INTACK,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      O => BU2_U0_pci32_inst_N271
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_HIT1 : LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFF8"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_INTACKQ_951,
      I2 => NlwRenamedSig_OI_base_hit(1),
      I3 => NlwRenamedSig_OI_cfg_hit,
      I4 => NlwRenamedSig_OI_base_hit(0),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BASE_HITO_1301,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N00042
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27143_SW0 : LUT6
    generic map(
      INIT => X"CACFCAC0CAC0CAC0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_4_836,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(36),
      I2 => BU2_m_fail64,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27108_1914,
      O => BU2_U0_pci32_inst_N258
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28143_SW0 : LUT6
    generic map(
      INIT => X"CACFCAC0CAC0CAC0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_5_837,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(37),
      I2 => BU2_m_fail64,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28108_1913,
      O => BU2_U0_pci32_inst_N255
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30143_SW0 : LUT6
    generic map(
      INIT => X"CACFCAC0CAC0CAC0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_7_839,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(39),
      I2 => BU2_m_fail64,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30108_1912,
      O => BU2_U0_pci32_inst_N252
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1066_1700,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10124_1911
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1566_1697,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15124_1910
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1666_1694,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16124_1909
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1966_1691,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19124_1908
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT366_1688,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(11),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3124_1907
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3266_1685,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(9),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32124_1906
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT466_1682,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(12),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4124_1905
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT566_1679,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(13),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5124_1904
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT666_1676,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(14),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6124_1903
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT766_1673,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(15),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7124_1902
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT866_1670,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8124_1901
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9124 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT966_1667,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9124_1900
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_9_Q : LUT3
    generic map(
      INIT => X"D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_adio_out(31),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_31_1413,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_9_Q : LUT3
    generic map(
      INIT => X"D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_adio_out(31),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_31_1358,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_8_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_30_1419,
      I2 => NlwRenamedSig_OI_adio_out(30),
      I3 => BU2_U0_pci32_inst_N267,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_8_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_29_1422,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_28_1418,
      I4 => NlwRenamedSig_OI_adio_out(29),
      I5 => NlwRenamedSig_OI_adio_out(28),
      O => BU2_U0_pci32_inst_N267
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_8_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_30_1364,
      I2 => NlwRenamedSig_OI_adio_out(30),
      I3 => BU2_U0_pci32_inst_N265,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_8_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_29_1367,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_28_1363,
      I4 => NlwRenamedSig_OI_adio_out(29),
      I5 => NlwRenamedSig_OI_adio_out(28),
      O => BU2_U0_pci32_inst_N265
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT27193 : LUT6
    generic map(
      INIT => X"CCCDCCCFCCC8CCC0"
    )
    port map (
      I0 => adio_in_8(4),
      I1 => BU2_U0_pci32_inst_N259,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2728_1895,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT272_1896,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      I5 => BU2_U0_pci32_inst_N258,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT28193 : LUT6
    generic map(
      INIT => X"CCCDCCCFCCC8CCC0"
    )
    port map (
      I0 => adio_in_8(5),
      I1 => BU2_U0_pci32_inst_N256,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2828_1891,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT282_1892,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      I5 => BU2_U0_pci32_inst_N255,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT30193 : LUT6
    generic map(
      INIT => X"CCCDCCCFCCC8CCC0"
    )
    port map (
      I0 => adio_in_8(7),
      I1 => BU2_U0_pci32_inst_N253,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3028_1887,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT302_1888,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      I5 => BU2_U0_pci32_inst_N252,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12237 : LUT6
    generic map(
      INIT => X"CCCCCCD8CCCCCCF0"
    )
    port map (
      I0 => adio_in_8(1),
      I1 => BU2_U0_pci32_inst_N247,
      I2 => BU2_U0_pci32_inst_N246,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1275_1884,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12164_1885,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23237 : LUT6
    generic map(
      INIT => X"CCCCCCD8CCCCCCF0"
    )
    port map (
      I0 => adio_in_8(2),
      I1 => BU2_U0_pci32_inst_N244,
      I2 => BU2_U0_pci32_inst_N243,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2375_1880,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23164_1881,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1207 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(0),
      I1 => BU2_U0_pci32_inst_N241,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1441_1759,
      I3 => BU2_U0_pci32_inst_N240,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1134_1877,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29207 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(6),
      I1 => BU2_U0_pci32_inst_N238,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2944_1872,
      I3 => BU2_U0_pci32_inst_N237,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29134_1874,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(19),
      I1 => BU2_U0_pci32_inst_N235,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11158_1869,
      I3 => BU2_U0_pci32_inst_N234,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11148_1753,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(19)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(20),
      I1 => BU2_U0_pci32_inst_N232,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13158_1866,
      I3 => BU2_U0_pci32_inst_N231,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13148_1748,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(20)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(21),
      I1 => BU2_U0_pci32_inst_N229,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14158_1863,
      I3 => BU2_U0_pci32_inst_N228,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14148_1743,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(21)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(24),
      I1 => BU2_U0_pci32_inst_N226,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17158_1860,
      I3 => BU2_U0_pci32_inst_N225,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17148_1738,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(24)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(10),
      I1 => BU2_U0_pci32_inst_N223,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2158_1857,
      I3 => BU2_U0_pci32_inst_N222,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21481_1733,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(27),
      I1 => BU2_U0_pci32_inst_N220,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20158_1854,
      I3 => BU2_U0_pci32_inst_N219,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20148_1728,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(27)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(28),
      I1 => BU2_U0_pci32_inst_N217,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21158_1851,
      I3 => BU2_U0_pci32_inst_N216,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21148_1723,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(28)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(29),
      I1 => BU2_U0_pci32_inst_N214,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22158_1848,
      I3 => BU2_U0_pci32_inst_N213,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22148_1718,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(29)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(30),
      I1 => BU2_U0_pci32_inst_N211,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24158_1845,
      I3 => BU2_U0_pci32_inst_N210,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24148_1713,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(30)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25238 : LUT6
    generic map(
      INIT => X"CCCCCDC8CCCCCFC0"
    )
    port map (
      I0 => adio_in_8(31),
      I1 => BU2_U0_pci32_inst_N208,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25158_1842,
      I3 => BU2_U0_pci32_inst_N207,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25148_1708,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(31)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18240 : LUT6
    generic map(
      INIT => X"CCCCCCD8CCCCCCF0"
    )
    port map (
      I0 => adio_in_8(25),
      I1 => BU2_U0_pci32_inst_N205,
      I2 => BU2_U0_pci32_inst_N204,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1844_1840,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18147_1790,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N7,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(25)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31197_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_8_842,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(40),
      O => BU2_U0_pci32_inst_N190
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT31197_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_8_842,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(40),
      O => BU2_U0_pci32_inst_N189
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_18_850,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(50),
      O => BU2_U0_pci32_inst_N187
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT10171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_18_850,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(50),
      O => BU2_U0_pci32_inst_N186
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_22_856,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(54),
      O => BU2_U0_pci32_inst_N184
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT15171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_22_856,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(54),
      O => BU2_U0_pci32_inst_N183
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_23_854,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(55),
      O => BU2_U0_pci32_inst_N181
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT16171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_23_854,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(55),
      O => BU2_U0_pci32_inst_N180
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_26_857,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(58),
      O => BU2_U0_pci32_inst_N178
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT19171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_26_857,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(58),
      O => BU2_U0_pci32_inst_N177
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_11_843,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(43),
      O => BU2_U0_pci32_inst_N175
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_11_843,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(43),
      O => BU2_U0_pci32_inst_N174
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_9_840,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(41),
      O => BU2_U0_pci32_inst_N172
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT32171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_9_840,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(41),
      O => BU2_U0_pci32_inst_N171
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_12_844,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(44),
      O => BU2_U0_pci32_inst_N169
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT4171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_12_844,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(44),
      O => BU2_U0_pci32_inst_N168
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_13_845,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(45),
      O => BU2_U0_pci32_inst_N166
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT5171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_13_845,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(45),
      O => BU2_U0_pci32_inst_N165
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_14_846,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(46),
      O => BU2_U0_pci32_inst_N163
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT6171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_14_846,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(46),
      O => BU2_U0_pci32_inst_N162
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_15_849,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(47),
      O => BU2_U0_pci32_inst_N160
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT7171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_15_849,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(47),
      O => BU2_U0_pci32_inst_N159
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_16_847,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(48),
      O => BU2_U0_pci32_inst_N157
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT8171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_16_847,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(48),
      O => BU2_U0_pci32_inst_N156
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9171_SW1 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => BU2_m_fail64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_17_848,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(49),
      O => BU2_U0_pci32_inst_N154
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT9171_SW0 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_17_848,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(49),
      O => BU2_U0_pci32_inst_N153
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_7_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(27),
      I2 => NlwRenamedSig_OI_adio_out(27),
      I3 => BU2_U0_pci32_inst_N151,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_7_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(26),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(25),
      I4 => NlwRenamedSig_OI_adio_out(26),
      I5 => NlwRenamedSig_OI_adio_out(25),
      O => BU2_U0_pci32_inst_N151
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_7_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(27),
      I2 => NlwRenamedSig_OI_adio_out(27),
      I3 => BU2_U0_pci32_inst_N149,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_7_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(26),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(25),
      I4 => NlwRenamedSig_OI_adio_out(26),
      I5 => NlwRenamedSig_OI_adio_out(25),
      O => BU2_U0_pci32_inst_N149
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_6_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(24),
      I2 => NlwRenamedSig_OI_adio_out(24),
      I3 => BU2_U0_pci32_inst_N147,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_6_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(23),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(22),
      I4 => NlwRenamedSig_OI_adio_out(23),
      I5 => NlwRenamedSig_OI_adio_out(22),
      O => BU2_U0_pci32_inst_N147
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_6_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(24),
      I2 => NlwRenamedSig_OI_adio_out(24),
      I3 => BU2_U0_pci32_inst_N145,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_6_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(23),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(22),
      I4 => NlwRenamedSig_OI_adio_out(23),
      I5 => NlwRenamedSig_OI_adio_out(22),
      O => BU2_U0_pci32_inst_N145
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_5_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(21),
      I2 => NlwRenamedSig_OI_adio_out(21),
      I3 => BU2_U0_pci32_inst_N143,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_5_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(20),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(19),
      I4 => NlwRenamedSig_OI_adio_out(20),
      I5 => NlwRenamedSig_OI_adio_out(19),
      O => BU2_U0_pci32_inst_N143
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_5_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(21),
      I2 => NlwRenamedSig_OI_adio_out(21),
      I3 => BU2_U0_pci32_inst_N141,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_5_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(20),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(19),
      I4 => NlwRenamedSig_OI_adio_out(20),
      I5 => NlwRenamedSig_OI_adio_out(19),
      O => BU2_U0_pci32_inst_N141
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_4_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(18),
      I2 => NlwRenamedSig_OI_adio_out(18),
      I3 => BU2_U0_pci32_inst_N139,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_4_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(17),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(16),
      I4 => NlwRenamedSig_OI_adio_out(17),
      I5 => NlwRenamedSig_OI_adio_out(16),
      O => BU2_U0_pci32_inst_N139
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_4_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(18),
      I2 => NlwRenamedSig_OI_adio_out(18),
      I3 => BU2_U0_pci32_inst_N137,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_4_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(17),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(16),
      I4 => NlwRenamedSig_OI_adio_out(17),
      I5 => NlwRenamedSig_OI_adio_out(16),
      O => BU2_U0_pci32_inst_N137
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_3_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(15),
      I2 => NlwRenamedSig_OI_adio_out(15),
      I3 => BU2_U0_pci32_inst_N135,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_3_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(14),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(13),
      I4 => NlwRenamedSig_OI_adio_out(14),
      I5 => NlwRenamedSig_OI_adio_out(13),
      O => BU2_U0_pci32_inst_N135
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_3_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(15),
      I2 => NlwRenamedSig_OI_adio_out(15),
      I3 => BU2_U0_pci32_inst_N133,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_3_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(14),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(13),
      I4 => NlwRenamedSig_OI_adio_out(14),
      I5 => NlwRenamedSig_OI_adio_out(13),
      O => BU2_U0_pci32_inst_N133
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_2_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(12),
      I2 => NlwRenamedSig_OI_adio_out(12),
      I3 => BU2_U0_pci32_inst_N131,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_2_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(11),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(10),
      I4 => NlwRenamedSig_OI_adio_out(11),
      I5 => NlwRenamedSig_OI_adio_out(10),
      O => BU2_U0_pci32_inst_N131
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_2_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(12),
      I2 => NlwRenamedSig_OI_adio_out(12),
      I3 => BU2_U0_pci32_inst_N129,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_2_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(11),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(10),
      I4 => NlwRenamedSig_OI_adio_out(11),
      I5 => NlwRenamedSig_OI_adio_out(10),
      O => BU2_U0_pci32_inst_N129
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_1_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(9),
      I2 => NlwRenamedSig_OI_adio_out(9),
      I3 => BU2_U0_pci32_inst_N127,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_1_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(8),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(7),
      I4 => NlwRenamedSig_OI_adio_out(8),
      I5 => NlwRenamedSig_OI_adio_out(7),
      O => BU2_U0_pci32_inst_N127
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_1_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(9),
      I2 => NlwRenamedSig_OI_adio_out(9),
      I3 => BU2_U0_pci32_inst_N125,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_1_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(8),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(7),
      I4 => NlwRenamedSig_OI_adio_out(8),
      I5 => NlwRenamedSig_OI_adio_out(7),
      O => BU2_U0_pci32_inst_N125
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_0_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(6),
      I2 => NlwRenamedSig_OI_adio_out(6),
      I3 => BU2_U0_pci32_inst_N123,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT_0_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(5),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(4),
      I4 => NlwRenamedSig_OI_adio_out(5),
      I5 => NlwRenamedSig_OI_adio_out(4),
      O => BU2_U0_pci32_inst_N123
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_0_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(6),
      I2 => NlwRenamedSig_OI_adio_out(6),
      I3 => BU2_U0_pci32_inst_N121,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT_0_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(5),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(4),
      I4 => NlwRenamedSig_OI_adio_out(5),
      I5 => NlwRenamedSig_OI_adio_out(4),
      O => BU2_U0_pci32_inst_N121
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_ADDR_VLD641 : LUT6
    generic map(
      INIT => X"0222000000200000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr_vld,
      I1 => BU2_req64q_n,
      I2 => bw_detect_dis,
      I3 => bw_manual_32b,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_REQ64Q_Q_816,
      I5 => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIW,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_NS_BH64_211 : LUT6
    generic map(
      INIT => X"0400000000000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_N119,
      I1 => NlwRenamedSig_OI_s_cbe(2),
      I2 => BU2_U0_pci32_inst_N47,
      I3 => NlwRenamedSig_OI_csr_1_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_ADDRESS_MATCH,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_BH64_O_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_74_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N119
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2695_SW0 : LUT5
    generic map(
      INIT => X"84800400"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(5),
      I1 => NlwRenamedSig_OI_addr(3),
      I2 => NlwRenamedSig_OI_addr(2),
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N80
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2765_SW0 : LUT5
    generic map(
      INIT => X"84800400"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(5),
      I1 => NlwRenamedSig_OI_addr(3),
      I2 => NlwRenamedSig_OI_addr(2),
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N78
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2865_SW0 : LUT5
    generic map(
      INIT => X"84800400"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(5),
      I1 => NlwRenamedSig_OI_addr(3),
      I2 => NlwRenamedSig_OI_addr(2),
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N76
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3065_SW0 : LUT5
    generic map(
      INIT => X"84800400"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(5),
      I1 => NlwRenamedSig_OI_addr(3),
      I2 => NlwRenamedSig_OI_addr(2),
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N74
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12118_SW0 : LUT6
    generic map(
      INIT => X"2FAF2FFF7FAF7FFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N88
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23118_SW0 : LUT6
    generic map(
      INIT => X"2FAF2FFF7FAF7FFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N86
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1882_SW0 : LUT6
    generic map(
      INIT => X"2FAF2FFF7FAF7FFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N84
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2988_SW0 : LUT6
    generic map(
      INIT => X"2FAF2FFF7FAF7FFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N82
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18147 : LUT6
    generic map(
      INIT => X"2808080820000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1881_1702,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18147_1790
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT18139_SW0 : LUT5
    generic map(
      INIT => X"C0004000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_74_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N01,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT26145
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_CYCLE64_INT_RSTPOT : LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE2"
    )
    port map (
      I0 => BU2_s_cycle64,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_115,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_ACKHIT,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_0,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_1,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_CYCLE64_INT_RSTPOT_1765
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_NS_BASE_HIT211_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_CFG_HIT,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N00042,
      I2 => NlwRenamedSig_OI_b_busy,
      O => BU2_U0_pci32_inst_N113
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1443_6_41 : LUT6
    generic map(
      INIT => X"8000000080008000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      I5 => BU2_U0_pci32_inst_OLD_74_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_N25
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_NL_MEM31 : LUT6
    generic map(
      INIT => X"2000750000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(2),
      I1 => BU2_U0_pci32_inst_N111,
      I2 => NlwRenamedSig_OI_csr_1_Q,
      I3 => NlwRenamedSig_OI_addr_vld,
      I4 => BU2_U0_pci32_inst_N110,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_ADDRESS_MATCH,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2_INT
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_NL_MEM31_SW3 : LUT5
    generic map(
      INIT => X"BBFFBBBF"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_OLD_74_Q,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      I4 => NlwRenamedSig_OI_s_cbe(0),
      O => BU2_U0_pci32_inst_N111
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_NL_MEM31_SW2 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_0_Q,
      I1 => NlwRenamedSig_OI_s_cbe(3),
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => BU2_U0_pci32_inst_OLD_74_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N110
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_9_Q : LUT3
    generic map(
      INIT => X"D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_adio_out(31),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_31_1303,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_8_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_30_1309,
      I2 => NlwRenamedSig_OI_adio_out(30),
      I3 => BU2_U0_pci32_inst_N106,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_8_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_29_1312,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_28_1308,
      I4 => NlwRenamedSig_OI_adio_out(29),
      I5 => NlwRenamedSig_OI_adio_out(28),
      O => BU2_U0_pci32_inst_N106
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_7_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(27),
      I2 => NlwRenamedSig_OI_adio_out(27),
      I3 => BU2_U0_pci32_inst_N104,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_7_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(26),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(25),
      I4 => NlwRenamedSig_OI_adio_out(26),
      I5 => NlwRenamedSig_OI_adio_out(25),
      O => BU2_U0_pci32_inst_N104
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_6_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(24),
      I2 => NlwRenamedSig_OI_adio_out(24),
      I3 => BU2_U0_pci32_inst_N102,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_6_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(23),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(22),
      I4 => NlwRenamedSig_OI_adio_out(23),
      I5 => NlwRenamedSig_OI_adio_out(22),
      O => BU2_U0_pci32_inst_N102
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_5_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(21),
      I2 => NlwRenamedSig_OI_adio_out(21),
      I3 => BU2_U0_pci32_inst_N100,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_5_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(20),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(19),
      I4 => NlwRenamedSig_OI_adio_out(20),
      I5 => NlwRenamedSig_OI_adio_out(19),
      O => BU2_U0_pci32_inst_N100
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_4_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(18),
      I2 => NlwRenamedSig_OI_adio_out(18),
      I3 => BU2_U0_pci32_inst_N98,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_4_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(17),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(16),
      I4 => NlwRenamedSig_OI_adio_out(17),
      I5 => NlwRenamedSig_OI_adio_out(16),
      O => BU2_U0_pci32_inst_N98
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_3_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(15),
      I2 => NlwRenamedSig_OI_adio_out(15),
      I3 => BU2_U0_pci32_inst_N96,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_3_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(14),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(13),
      I4 => NlwRenamedSig_OI_adio_out(14),
      I5 => NlwRenamedSig_OI_adio_out(13),
      O => BU2_U0_pci32_inst_N96
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_2_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(12),
      I2 => NlwRenamedSig_OI_adio_out(12),
      I3 => BU2_U0_pci32_inst_N94,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_2_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(11),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(10),
      I4 => NlwRenamedSig_OI_adio_out(11),
      I5 => NlwRenamedSig_OI_adio_out(10),
      O => BU2_U0_pci32_inst_N94
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_1_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(9),
      I2 => NlwRenamedSig_OI_adio_out(9),
      I3 => BU2_U0_pci32_inst_N92,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_1_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(8),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(7),
      I4 => NlwRenamedSig_OI_adio_out(8),
      I5 => NlwRenamedSig_OI_adio_out(7),
      O => BU2_U0_pci32_inst_N92
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_0_Q : LUT4
    generic map(
      INIT => X"00D7"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(6),
      I2 => NlwRenamedSig_OI_adio_out(6),
      I3 => BU2_U0_pci32_inst_N90,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT_0_SW0 : LUT6
    generic map(
      INIT => X"0ACEA0ECCE0AECA0"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(5),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(4),
      I4 => NlwRenamedSig_OI_adio_out(5),
      I5 => NlwRenamedSig_OI_adio_out(4),
      O => BU2_U0_pci32_inst_N90
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12118 : LUT6
    generic map(
      INIT => X"0002000000030003"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I1 => NlwRenamedSig_OI_addr(7),
      I2 => NlwRenamedSig_OI_addr(6),
      I3 => NlwRenamedSig_OI_addr(4),
      I4 => NlwRenamedSig_OI_cfg_0_Q,
      I5 => BU2_U0_pci32_inst_N88,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12118_1776
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23118 : LUT6
    generic map(
      INIT => X"0002000000030003"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I1 => NlwRenamedSig_OI_addr(7),
      I2 => NlwRenamedSig_OI_addr(6),
      I3 => NlwRenamedSig_OI_addr(4),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => BU2_U0_pci32_inst_N86,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23118_1774
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1882 : LUT6
    generic map(
      INIT => X"0002000000030003"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I1 => NlwRenamedSig_OI_addr(7),
      I2 => NlwRenamedSig_OI_addr(6),
      I3 => NlwRenamedSig_OI_addr(4),
      I4 => NlwRenamedSig_OI_cfg_0_Q,
      I5 => BU2_U0_pci32_inst_N84,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1882_1772
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2988 : LUT6
    generic map(
      INIT => X"0002000000030003"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38,
      I1 => NlwRenamedSig_OI_addr(7),
      I2 => NlwRenamedSig_OI_addr(6),
      I3 => NlwRenamedSig_OI_addr(4),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => BU2_U0_pci32_inst_N82,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2988_1770
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_RSTPOT_1768,
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_1618
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_RSTPOT_1767,
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_1616
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_RSTPOT_1766,
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_1617
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_CYCLE64_INT : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_CYCLE64_INT_RSTPOT_1765,
      Q => BU2_s_cycle64
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_RSTPOT_1763,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_MASTER_TEMP_1764
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12147 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(1),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT12147_1762
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23147 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(2),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT23147_1761
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1117 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(0),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1117_1760
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1441 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_N1445,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT127_1758,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1441_1759
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT127 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT127_1758
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29117 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(6),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT29117_1757
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2927 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_6_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_6_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2927_1756
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3089 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1103
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3112 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3112_1754
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11110_1752,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1126_1749,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT11148_1753
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1155 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1155_1751
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1147 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1147_1750
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1126 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_19_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_19_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1126_1749
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13110_1747,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1326_1744,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT13148_1748
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1355 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1355_1746
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1347 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1347_1745
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1326 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_20_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_20_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1326_1744
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14110_1742,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1426_1739,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT14148_1743
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1455 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1455_1741
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1447 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1447_1740
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1426 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_21_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_21_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1426_1739
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17110_1737,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1726_1734,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT17148_1738
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1755 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1755_1736
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1747 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1747_1735
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1726 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_24_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_24_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1726_1734
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21481 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21101_1732,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT226_1729,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21481_1733
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT255 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT255_1731
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT247 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT247_1730
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT226 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_10_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_10_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT226_1729
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20110_1727,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2026_1724,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT20148_1728
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2055 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2055_1726
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2047 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2047_1725
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2026 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_27_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_27_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2026_1724
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21110_1722,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2126_1719,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT21148_1723
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2155 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2155_1721
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2147 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2147_1720
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2126 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_28_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_28_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2126_1719
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22110_1717,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2226_1714,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT22148_1718
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2255 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2255_1716
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2247 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2247_1715
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2226 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_29_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_29_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2226_1714
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24110_1712,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2426_1709,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT24148_1713
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2455 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2455_1711
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2447 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2447_1710
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2426 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_30_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_30_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2426_1709
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25148 : LUT5
    generic map(
      INIT => X"FF808080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25110_1706,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2526_1703,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT25148_1708
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2555 : LUT5
    generic map(
      INIT => X"000E0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(2),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2555_1705
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2547 : LUT5
    generic map(
      INIT => X"E0004000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(5),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2547_1704
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2526 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_31_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_31_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT2526_1703
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1881 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1866_1701,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1881_1702
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1866 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1866_1701
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1066 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1051_1699,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1066_1700
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1051 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1051_1699
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1026 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_18_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_18_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1026_1698
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1566 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1551_1696,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1566_1697
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1551 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1551_1696
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1526 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_22_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_22_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1526_1695
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1666 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1651_1693,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1666_1694
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1651 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1651_1693
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1626 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_23_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_23_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1626_1692
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1966 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1951_1690,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1966_1691
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1951 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1951_1690
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1926 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_26_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_26_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT1926_1689
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT366 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT351_1687,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT366_1688
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT351 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT351_1687
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT326 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_11_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_11_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT326_1686
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3266 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3251_1684,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3266_1685
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3251 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3251_1684
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3226 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_9_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_9_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT3226_1683
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT466 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT451_1681,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT466_1682
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT451 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT451_1681
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT426 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_12_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_12_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT426_1680
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT566 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT551_1678,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT566_1679
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT551 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT551_1678
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT526 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_13_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_13_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT526_1677
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT666 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT651_1675,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT666_1676
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT651 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT651_1675
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT626 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_14_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_14_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT626_1674
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT766 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT751_1672,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT766_1673
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT751 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT751_1672
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT726 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_15_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_15_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT726_1671
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT866 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT851_1669,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT866_1670
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT851 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT851_1669
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT826 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_16_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_16_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT826_1668
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT966 : LUT6
    generic map(
      INIT => X"E055E00040554000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => NlwRenamedSig_OI_addr(5),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT951_1666,
      I5 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT966_1667
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT951 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT951_1666
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT926 : LUT6
    generic map(
      INIT => X"00C0AA4A00C00040"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_17_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_17_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_MMUX_ADOUT926_1665
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_137 : LUT5
    generic map(
      INIT => X"33131313"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N00042,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_CFG_HIT,
      I2 => NlwRenamedSig_OI_b_busy,
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => NlwRenamedSig_OI_frameq_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_MMUX_NS_DEVSEL_137_1664
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADIO_MUXOUT_10_1 : LUT6
    generic map(
      INIT => X"00000000009700FF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      I3 => BU2_U0_pci32_inst_N72,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N23,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_N1447,
      O => BU2_U0_pci32_inst_PCI_LC_I_N7
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT170 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_CFG_REMAP_OUT10_1655,
      I1 => BU2_U0_pci32_inst_CFG_REMAP_OUT15_1656,
      I2 => BU2_U0_pci32_inst_CFG_REMAP_OUT117_1657,
      I3 => BU2_U0_pci32_inst_CFG_REMAP_OUT122_1658,
      I4 => BU2_U0_pci32_inst_CFG_REMAP_OUT138_1659,
      I5 => BU2_U0_pci32_inst_CFG_REMAP_OUT143_1660,
      O => BU2_U0_pci32_inst_OLD_0_Q
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT143 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT143_1660
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT138 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_0_Q,
      I5 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT138_1659
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT122 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => NlwRenamedSig_OI_cfg_0_Q,
      I3 => NlwRenamedSig_OI_cfg_0_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT122_1658
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT117 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT117_1657
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT15 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_0_Q,
      I5 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT15_1656
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT10 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_0_Q,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT10_1655
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT270 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_CFG_REMAP_OUT20_1649,
      I1 => BU2_U0_pci32_inst_CFG_REMAP_OUT25_1650,
      I2 => BU2_U0_pci32_inst_CFG_REMAP_OUT217_1651,
      I3 => BU2_U0_pci32_inst_CFG_REMAP_OUT222_1652,
      I4 => BU2_U0_pci32_inst_CFG_REMAP_OUT238_1653,
      I5 => BU2_U0_pci32_inst_CFG_REMAP_OUT243_1654,
      O => BU2_U0_pci32_inst_OLD_37_Q
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT243 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT243_1654
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT238 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT238_1653
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT222 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT222_1652
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT217 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT217_1651
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT25 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT25_1650
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT20 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT20_1649
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_IOACCESSALLOWED : LUT5
    generic map(
      INIT => X"8888A888"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_IOACCESSALLOWED_INT_1276,
      I1 => BU2_U0_pci32_inst_N68,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => BU2_U0_pci32_inst_OLD_74_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => NlwRenamedSig_OI_csr_0_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_IOACCESSALLOWED_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_OLD_0_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N68
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_MEMACCESSALLOWED : LUT5
    generic map(
      INIT => X"0008CCCC"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_74_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_MEMACCESSALLOWED_INT_1277,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => BU2_U0_pci32_inst_N66,
      O => NlwRenamedSig_OI_csr_1_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_MEMACCESSALLOWED_SW0 : LUT4
    generic map(
      INIT => X"AF23"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_OLD_0_Q,
      I2 => BU2_U0_pci32_inst_OLD_37_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N66
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_MD_0_4 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(5),
      I1 => NlwRenamedSig_OI_addr(4),
      I2 => NlwRenamedSig_OI_addr(2),
      I3 => NlwRenamedSig_OI_addr(3),
      I4 => BU2_U0_pci32_inst_N64,
      I5 => NlwRenamedSig_OI_csr_20_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N36
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_MD_0_4_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(6),
      I1 => NlwRenamedSig_OI_addr(7),
      O => BU2_U0_pci32_inst_N64
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_NS_NL_MEM31 : LUT6
    generic map(
      INIT => X"008850D800000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(2),
      I1 => NlwRenamedSig_OI_csr_1_Q,
      I2 => NlwRenamedSig_OI_csr_0_Q,
      I3 => BU2_U0_pci32_inst_N59,
      I4 => BU2_U0_pci32_inst_N58,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_ADDRESS_MATCH,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT1
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_NS_NL_MEM31_SW1 : LUT6
    generic map(
      INIT => X"FF5DFF5FFFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_s_cbe(3),
      I5 => NlwRenamedSig_OI_addr_vld,
      O => BU2_U0_pci32_inst_N59
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_NS_NL_MEM31_SW0 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_s_cbe(3),
      I2 => NlwRenamedSig_OI_addr_vld,
      I3 => NlwRenamedSig_OI_s_cbe(1),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N58
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT370 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_CFG_REMAP_OUT30_1637,
      I1 => BU2_U0_pci32_inst_CFG_REMAP_OUT35_1638,
      I2 => BU2_U0_pci32_inst_CFG_REMAP_OUT317_1639,
      I3 => BU2_U0_pci32_inst_CFG_REMAP_OUT322_1640,
      I4 => BU2_U0_pci32_inst_CFG_REMAP_OUT338_1641,
      I5 => BU2_U0_pci32_inst_CFG_REMAP_OUT343_1642,
      O => BU2_U0_pci32_inst_OLD_74_Q
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT343 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT343_1642
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT338 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT338_1641
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT322 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT322_1640
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT317 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT317_1639
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT35 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT35_1638
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT30 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_CFG_REMAP_OUT30_1637
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_1107 : LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_15_1634,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_133_1636,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_0,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_1,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_ACK64_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_112 : LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
    port map (
      I0 => BU2_req64q_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      I3 => NlwRenamedSig_OI_s_data,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_ABORT_INT,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_112_1635
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_15 : LUT4
    generic map(
      INIT => X"4CCC"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(3),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_15_1634
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_NS_NL_MEM31 : LUT6
    generic map(
      INIT => X"008850D800000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(2),
      I1 => NlwRenamedSig_OI_csr_1_Q,
      I2 => NlwRenamedSig_OI_csr_0_Q,
      I3 => BU2_U0_pci32_inst_N56,
      I4 => BU2_U0_pci32_inst_N55,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_ADDRESS_MATCH,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT0
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_NS_NL_MEM31_SW1 : LUT6
    generic map(
      INIT => X"FF5DFF5FFFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_s_cbe(3),
      I5 => NlwRenamedSig_OI_addr_vld,
      O => BU2_U0_pci32_inst_N56
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_NS_NL_MEM31_SW0 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_s_cbe(3),
      I2 => NlwRenamedSig_OI_addr_vld,
      I3 => NlwRenamedSig_OI_s_cbe(1),
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N55
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      I3 => NlwRenamedSig_OI_cfg_100_Q,
      I4 => NlwRenamedSig_OI_cfg_100_Q,
      I5 => BU2_U0_pci32_inst_N53,
      O => NlwRenamedSig_OI_csr_20_Q
    );
  BU2_U0_pci32_inst_CFG_REMAP_OUT_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_N53
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ACK64_IN_Q : LUT6
    generic map(
      INIT => X"0000000000000013"
    )
    port map (
      I0 => NlwRenamedSig_OI_b_busy,
      I1 => BU2_U0_pci32_inst_N51,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_ACKHIT,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_0,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_1,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ACK64_IN_Q_1183
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010346 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(4),
      I1 => NlwRenamedSig_OI_addr(5),
      I2 => NlwRenamedSig_OI_addr(2),
      I3 => NlwRenamedSig_OI_addr(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010346_1627
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010327 : LUT6
    generic map(
      INIT => X"6E2E6A2A66266222"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_addr(4),
      I2 => NlwRenamedSig_OI_addr(3),
      I3 => BU2_U0_pci32_inst_OLD_74_Q,
      I4 => BU2_U0_pci32_inst_OLD_0_Q,
      I5 => BU2_U0_pci32_inst_OLD_37_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N010327_1626
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_NS_BH64_O : LUT6
    generic map(
      INIT => X"0800000000000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_37_Q,
      I1 => NlwRenamedSig_OI_s_cbe(2),
      I2 => BU2_U0_pci32_inst_N49,
      I3 => NlwRenamedSig_OI_csr_1_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_ADDRESS_MATCH,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_1
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_NS_BH64_O_SW0 : LUT5
    generic map(
      INIT => X"BBFFBBBF"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      I4 => NlwRenamedSig_OI_s_cbe(0),
      O => BU2_U0_pci32_inst_N49
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_BH64_O : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_1_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_ADDRESS_MATCH,
      I2 => BU2_U0_pci32_inst_OLD_74_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64,
      I4 => NlwRenamedSig_OI_s_cbe(2),
      I5 => BU2_U0_pci32_inst_N47,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2_INT
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_NS_BH64_O_SW0 : LUT5
    generic map(
      INIT => X"BBFFBBBF"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      I4 => NlwRenamedSig_OI_s_cbe(0),
      O => BU2_U0_pci32_inst_N47
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_NS_BH64_O : LUT6
    generic map(
      INIT => X"0800000000000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_0_Q,
      I1 => NlwRenamedSig_OI_s_cbe(2),
      I2 => BU2_U0_pci32_inst_N45,
      I3 => NlwRenamedSig_OI_csr_1_Q,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_ADDRESS_MATCH,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_0
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_NS_BH64_O_SW0 : LUT5
    generic map(
      INIT => X"BBFFBBBF"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      I4 => NlwRenamedSig_OI_s_cbe(0),
      O => BU2_U0_pci32_inst_N45
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_189 : LUT6
    generic map(
      INIT => X"FFFF80AAFFFF80A0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_114_1619,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_124_1621,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N0004,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_181_1620,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_15_1615,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_STOP_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_181 : LUT4
    generic map(
      INIT => X"222A"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_181_1620
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_114 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => s_ready,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_NL_MEMO_1616,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_NL_MEMO_1617,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_NL_MEMO_1618,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_114_1619
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_15 : LUT5
    generic map(
      INIT => X"FFFFBBFB"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_MMUX_NS_STOP_15_1615
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN0101 : LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAFAEA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN07_1610,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN038_1612,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN076_1614,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN046_1613,
      I4 => NlwRenamedSig_OI_base_hit(2),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN015_1611,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN0
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN076 : LUT5
    generic map(
      INIT => X"3FFF3F1F"
    )
    port map (
      I0 => NlwRenamedSig_OI_irdyq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I2 => NlwRenamedSig_OI_s_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      I4 => NlwRenamedSig_OI_frameq_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN076_1614
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN046 : LUT5
    generic map(
      INIT => X"01010301"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_hit,
      I1 => NlwRenamedSig_OI_base_hit(1),
      I2 => NlwRenamedSig_OI_base_hit(0),
      I3 => c_term,
      I4 => c_ready,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN046_1613
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN038 : LUT5
    generic map(
      INIT => X"777777F7"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => NlwRenamedSig_OI_b_busy,
      I2 => s_term,
      I3 => s_ready,
      I4 => NlwRenamedSig_OI_cfg_hit,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN038_1612
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN015 : LUT5
    generic map(
      INIT => X"FF1B1B1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_CYC_1243,
      I1 => s_ready,
      I2 => c_ready,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN015_1611
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN07 : LUT6
    generic map(
      INIT => X"FFFFFFFF40C0C0C0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I1 => NlwRenamedSig_OI_frameq_n,
      I2 => NlwRenamedSig_OI_irdyq_n,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      I4 => NlwRenamedSig_OI_s_data,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_ABORT_INT,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN07_1610
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000442 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_I_DATA_FLAG_1215,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000442_1609
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000410 : LUT5
    generic map(
      INIT => X"AAAA028A"
    )
    port map (
      I0 => NlwRenamedSig_OI_b_busy,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_CYC_1243,
      I2 => s_ready,
      I3 => c_ready,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N000410_1608
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_MMUX_S_FIRSTIN1 : LUT6
    generic map(
      INIT => X"FDB9ECA875316420"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN0,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_N42,
      I3 => BU2_U0_pci32_inst_N41,
      I4 => BU2_U0_pci32_inst_N40,
      I5 => BU2_U0_pci32_inst_N43,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRSTIN
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_MMUX_S_FIRSTIN1_SW3 : LUT5
    generic map(
      INIT => X"EEEEEAEE"
    )
    port map (
      I0 => NlwRenamedSig_OI_idle,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_N43
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_MMUX_S_FIRSTIN1_SW2 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I1 => NlwRenamedSig_OI_idle,
      O => BU2_U0_pci32_inst_N42
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_MMUX_S_FIRSTIN1_SW1 : LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I3 => NlwRenamedSig_OI_idle,
      O => BU2_U0_pci32_inst_N41
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_MMUX_S_FIRSTIN1_SW0 : LUT5
    generic map(
      INIT => X"FFFF2060"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I4 => NlwRenamedSig_OI_idle,
      O => BU2_U0_pci32_inst_N40
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_176 : LUT6
    generic map(
      INIT => X"FFC3AA82AA82FFC3"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_17_1602,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(3),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_149_1603,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_PERR_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_149 : LUT6
    generic map(
      INIT => X"0303030302030303"
    )
    port map (
      I0 => NlwRenamedSig_OI_trdyq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN64_1182,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64,
      I3 => NlwRenamedSig_OI_m_data,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IREAD64_1135,
      I5 => BU2_m_fail64,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_149_1603
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_17 : LUT6
    generic map(
      INIT => X"0303030303020303"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_Q_1162,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN_1180,
      I2 => NlwRenamedSig_OI_addr_vld,
      I3 => NlwRenamedSig_OI_trdyq_n,
      I4 => NlwRenamedSig_OI_m_data,
      I5 => m_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_NS_PERR_17_1602
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_78 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_4_1596,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_9_1597,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_25_1598,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_30_1599,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_57_1600,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_62_1601,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER64
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_62 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_S_CBE(4),
      I1 => BU2_U0_pci32_inst_S_CBE(5),
      I2 => BU2_U0_pci32_inst_ADIO_OUT(62),
      I3 => BU2_U0_pci32_inst_ADIO_OUT(63),
      I4 => BU2_U0_pci32_inst_S_CBE(6),
      I5 => BU2_U0_pci32_inst_S_CBE(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_62_1601
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_57 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_ADIO_OUT(58),
      I1 => BU2_U0_pci32_inst_ADIO_OUT(59),
      I2 => BU2_U0_pci32_inst_ADIO_OUT(56),
      I3 => BU2_U0_pci32_inst_ADIO_OUT(57),
      I4 => BU2_U0_pci32_inst_ADIO_OUT(60),
      I5 => BU2_U0_pci32_inst_ADIO_OUT(61),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_57_1600
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_30 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_ADIO_OUT(40),
      I1 => BU2_U0_pci32_inst_ADIO_OUT(41),
      I2 => BU2_U0_pci32_inst_ADIO_OUT(38),
      I3 => BU2_U0_pci32_inst_ADIO_OUT(39),
      I4 => BU2_U0_pci32_inst_ADIO_OUT(42),
      I5 => BU2_U0_pci32_inst_ADIO_OUT(43),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_30_1599
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_25 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_ADIO_OUT(34),
      I1 => BU2_U0_pci32_inst_ADIO_OUT(35),
      I2 => BU2_U0_pci32_inst_ADIO_OUT(32),
      I3 => BU2_U0_pci32_inst_ADIO_OUT(33),
      I4 => BU2_U0_pci32_inst_ADIO_OUT(36),
      I5 => BU2_U0_pci32_inst_ADIO_OUT(37),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_25_1598
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_9 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_ADIO_OUT(52),
      I1 => BU2_U0_pci32_inst_ADIO_OUT(53),
      I2 => BU2_U0_pci32_inst_ADIO_OUT(50),
      I3 => BU2_U0_pci32_inst_ADIO_OUT(51),
      I4 => BU2_U0_pci32_inst_ADIO_OUT(54),
      I5 => BU2_U0_pci32_inst_ADIO_OUT(55),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_9_1597
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_4 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_ADIO_OUT(46),
      I1 => BU2_U0_pci32_inst_ADIO_OUT(47),
      I2 => BU2_U0_pci32_inst_ADIO_OUT(44),
      I3 => BU2_U0_pci32_inst_ADIO_OUT(45),
      I4 => BU2_U0_pci32_inst_ADIO_OUT(48),
      I5 => BU2_U0_pci32_inst_ADIO_OUT(49),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER64_XO_0_4_1596
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_78 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_4_1590,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_9_1591,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_25_1592,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_30_1593,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_57_1594,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_62_1595,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_62 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(0),
      I1 => NlwRenamedSig_OI_s_cbe(1),
      I2 => NlwRenamedSig_OI_adio_out(8),
      I3 => NlwRenamedSig_OI_adio_out(9),
      I4 => NlwRenamedSig_OI_s_cbe(2),
      I5 => NlwRenamedSig_OI_s_cbe(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_62_1595
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_57 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(4),
      I1 => NlwRenamedSig_OI_adio_out(5),
      I2 => NlwRenamedSig_OI_adio_out(31),
      I3 => NlwRenamedSig_OI_adio_out(3),
      I4 => NlwRenamedSig_OI_adio_out(6),
      I5 => NlwRenamedSig_OI_adio_out(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_57_1594
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_30 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(17),
      I1 => NlwRenamedSig_OI_adio_out(18),
      I2 => NlwRenamedSig_OI_adio_out(15),
      I3 => NlwRenamedSig_OI_adio_out(16),
      I4 => NlwRenamedSig_OI_adio_out(19),
      I5 => NlwRenamedSig_OI_adio_out(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_30_1593
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_25 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(11),
      I1 => NlwRenamedSig_OI_adio_out(12),
      I2 => NlwRenamedSig_OI_adio_out(0),
      I3 => NlwRenamedSig_OI_adio_out(10),
      I4 => NlwRenamedSig_OI_adio_out(13),
      I5 => NlwRenamedSig_OI_adio_out(14),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_25_1592
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_9 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(28),
      I1 => NlwRenamedSig_OI_adio_out(29),
      I2 => NlwRenamedSig_OI_adio_out(26),
      I3 => NlwRenamedSig_OI_adio_out(27),
      I4 => NlwRenamedSig_OI_adio_out(2),
      I5 => NlwRenamedSig_OI_adio_out(30),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_9_1591
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_4 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(22),
      I1 => NlwRenamedSig_OI_adio_out(23),
      I2 => NlwRenamedSig_OI_adio_out(20),
      I3 => NlwRenamedSig_OI_adio_out(21),
      I4 => NlwRenamedSig_OI_adio_out(24),
      I5 => NlwRenamedSig_OI_adio_out(25),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MXOR_PER_XO_0_4_1590
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_MMUX_NS_REQ64_140 : LUT6
    generic map(
      INIT => X"A0A0AAAA80A0AAAA"
    )
    port map (
      I0 => m_ready,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_112_1587,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_Q_1160,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_MMUX_NS_REQ64_140_1589
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_138 : LUT6
    generic map(
      INIT => X"A0A0AAAA80A0AAAA"
    )
    port map (
      I0 => m_ready,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_112_1587,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_138_1588
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_112 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => NlwRenamedSig_OI_stopq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q,
      I2 => NlwRenamedSig_OI_time_out,
      I3 => complete,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_MMUX_NS_FRAME_112_1587
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_PRE_APERR_N1 : LUT6
    generic map(
      INIT => X"F33F5115FFFFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD64,
      I1 => NlwRenamedSig_OI_addr_vld,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(3),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER,
      I4 => BU2_U0_pci32_inst_N38,
      I5 => NlwRenamedSig_OI_csr_6_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PRE_APERR_N
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_MMUX_PRE_APERR_N1_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(3),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PER64,
      O => BU2_U0_pci32_inst_N38
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_NS_CFG_HIT : LUT6
    generic map(
      INIT => X"0000040000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(0),
      I1 => NlwRenamedSig_OI_s_cbe(1),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(3),
      I4 => BU2_U0_pci32_inst_N34,
      I5 => NlwRenamedSig_OI_addr_vld,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_CFG_HIT
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_NS_CFG_HIT_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_IDSEL,
      I1 => NlwRenamedSig_OI_adio_out(1),
      O => BU2_U0_pci32_inst_N34
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_FRAME_NS_OEF1 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_N27,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OEF
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_FRAME_NS_OEF1_SW0 : LUT5
    generic map(
      INIT => X"A8AF888F"
    )
    port map (
      I0 => gnti,
      I1 => NlwRenamedSig_OI_dr_bus,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_INT_1149,
      O => BU2_U0_pci32_inst_N27
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_FRAME_NS_OER1 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_I_Q_1159,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_N25,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OER
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_MMUX_OE_FRAME_NS_OER1_SW0 : LUT5
    generic map(
      INIT => X"A8AF888F"
    )
    port map (
      I0 => gnti,
      I1 => NlwRenamedSig_OI_dr_bus,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_REQ64_INT_1150,
      O => BU2_U0_pci32_inst_N25
    );
  BU2_U0_pci32_inst_PCI_LC_I_EOT_MMUX_OEOT_D1 : LUT5
    generic map(
      INIT => X"FFFF40C0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_N23,
      O => BU2_U0_pci32_inst_PCI_LC_I_EOT_OEOT_D
    );
  BU2_U0_pci32_inst_PCI_LC_I_EOT_MMUX_OEOT_D1_SW0 : LUT6
    generic map(
      INIT => X"40C040C0FFFF40C0"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I2 => NlwRenamedSig_OI_s_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_DL_734,
      O => BU2_U0_pci32_inst_N23
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_MMUX_NS_NEWDATA_OUT_CE1 : LUT6
    generic map(
      INIT => X"0C0C00040F0F0F0F"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I1 => NlwRenamedSig_OI_s_data,
      I2 => BU2_m_fail64,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I5 => BU2_U0_pci32_inst_N21,
      O => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NS_NEWDATA_OUT_CE
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_MMUX_NS_NEWDATA_OUT_CE1_SW0 : LUT5
    generic map(
      INIT => X"03023333"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I4 => NlwRenamedSig_OI_m_data,
      O => BU2_U0_pci32_inst_N21
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_MMUX_NS_PAR_CE1 : LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F8FA"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I2 => BU2_U0_pci32_inst_N19,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      O => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NS_PAR_CE
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_MMUX_NS_PAR_CE1_SW0 : LUT5
    generic map(
      INIT => X"FFFF888A"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I4 => BU2_m_fail64,
      O => BU2_U0_pci32_inst_N19
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_114 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_hit,
      I1 => c_term,
      I2 => c_ready,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_114_1576
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_110 : LUT5
    generic map(
      INIT => X"0101FF01"
    )
    port map (
      I0 => NlwRenamedSig_OI_base_hit(2),
      I1 => NlwRenamedSig_OI_base_hit(0),
      I2 => NlwRenamedSig_OI_base_hit(1),
      I3 => s_term,
      I4 => s_ready,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_110_1575
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR136 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR10_1568,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR21_1569,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR53_1570,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64_1571,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR115_1572,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR118_1573,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR136_1574
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR118 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(10),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(20),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR118_1573
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR115 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(31),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(1),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(21),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(11),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(0),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(30),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR115_1572
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(27),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(7),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(17),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(6),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(26),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(16),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64_1571
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR53 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(29),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(9),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(19),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(8),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(28),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(18),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR53_1570
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR21 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(23),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(3),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(13),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(22),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(12),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR21_1569
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR10 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(25),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(5),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(15),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(4),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(24),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(14),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR10_1568
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64136 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6410_1561,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6421_1562,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6453_1563,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6464_1564,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64115_1565,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64118_1566,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64136_1567
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64118 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(40),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(50),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64118_1566
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64115 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(32),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(42),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(61),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(51),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(41),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(60),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR64115_1565
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6464 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(47),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(57),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(37),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(56),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(46),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(36),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6464_1564
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6453 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(49),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(59),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(39),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(58),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(48),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(38),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6453_1563
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6421 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(53),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(63),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(43),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(33),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(62),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(52),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6421_1562
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6410 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(45),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(55),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(35),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(54),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(44),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(34),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_PAR6410_1561
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_SEL_IN : LUT6
    generic map(
      INIT => X"00080008FFFF0008"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_s_data,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I5 => BU2_U0_pci32_inst_N17,
      O => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_SEL_IN_814
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_SEL_IN_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      O => BU2_U0_pci32_inst_N17
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE5 : LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_i_idle,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q,
      I2 => NlwRenamedSig_OI_irdyq_n,
      I3 => NlwRenamedSig_OI_frameq_n,
      I4 => gnti,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE5_1559
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF34 : LUT6
    generic map(
      INIT => X"00FF00FF0008000C"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      I1 => NlwRenamedSig_OI_s_data,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I3 => NlwRenamedSig_OI_frameq_n,
      I4 => NlwRenamedSig_OI_irdyq_n,
      I5 => NlwRenamedSig_OI_backoff,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF34_1558
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF4 : LUT5
    generic map(
      INIT => X"0C0C0C08"
    )
    port map (
      I0 => NlwRenamedSig_OI_base_hit(0),
      I1 => s_term,
      I2 => s_ready,
      I3 => NlwRenamedSig_OI_base_hit(1),
      I4 => NlwRenamedSig_OI_base_hit(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF4_1557
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA22 : LUT5
    generic map(
      INIT => X"FF33FA32"
    )
    port map (
      I0 => NlwRenamedSig_OI_base_hit(0),
      I1 => s_term,
      I2 => NlwRenamedSig_OI_base_hit(1),
      I3 => s_ready,
      I4 => NlwRenamedSig_OI_base_hit(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA22_1556
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_MMUX_NS_DR_BUS1 : LUT6
    generic map(
      INIT => X"5555010555554505"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q,
      I1 => NlwRenamedSig_OI_irdyq_n,
      I2 => BU2_U0_pci32_inst_N14,
      I3 => NlwRenamedSig_OI_frameq_n,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_N121,
      I5 => BU2_U0_pci32_inst_N15,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_NS_DR_BUS
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_MMUX_NS_DR_BUS1_SW1 : LUT6
    generic map(
      INIT => X"22223222EE22FFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I1 => gnti,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I4 => NlwRenamedSig_OI_i_idle,
      I5 => NlwRenamedSig_OI_dr_bus,
      O => BU2_U0_pci32_inst_N15
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_N0038 : LUT6
    generic map(
      INIT => X"AAAAAAAA00000002"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(7),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(6),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(5),
      I4 => BU2_U0_pci32_inst_N12,
      I5 => NlwRenamedSig_OI_time_out,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_N0038_1131
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_N0038_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(4),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(3),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(1),
      O => BU2_U0_pci32_inst_N12
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B64_1 : LUT6
    generic map(
      INIT => X"FFFF555755575557"
    )
    port map (
      I0 => BU2_U0_pci32_inst_N10,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BH64_2,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BH64_O_1410,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BH64_O_1355,
      I4 => NlwRenamedSig_OI_irdyq_n,
      I5 => NlwRenamedSig_OI_frameq_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N11
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B64_1_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => NlwRenamedSig_OI_b_busy,
      I1 => s_term,
      I2 => s_ready,
      O => BU2_U0_pci32_inst_N10
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0030 : LUT6
    generic map(
      INIT => X"0504040405040504"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I2 => keepout,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT,
      I4 => BU2_U0_ff_drive_zero_1_2401,
      I5 => BU2_U0_pci32_inst_N8,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0030_1139
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0030_SW0 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ADDR_BE_Q_1143,
      I1 => request,
      I2 => NlwRenamedSig_OI_m_data,
      O => BU2_U0_pci32_inst_N8
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_DATA_NS_MDATA : LUT6
    generic map(
      INIT => X"BAAAAAAAFAFAFAFA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_N6,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => NlwRenamedSig_OI_stopq_n,
      I4 => NlwRenamedSig_OI_trdyq_n,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_DATA_NS_MDATA_1125
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_DATA_NS_MDATA_SW0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => gnti,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      O => BU2_U0_pci32_inst_N6
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_NS_OE_PERR : LUT6
    generic map(
      INIT => X"8080808080008080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_HOLD_OE_PERR_1186,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_HOLD_OE_PERR_1157,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_SET_OE_PERR,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_Q_1162,
      I4 => NlwRenamedSig_OI_m_data,
      I5 => BU2_U0_pci32_inst_N4,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_NS_OE_PERR_1144
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_NS_OE_PERR_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => NlwRenamedSig_OI_trdyq_n,
      I1 => NlwRenamedSig_OI_csr_6_Q,
      I2 => m_wrdn,
      O => BU2_U0_pci32_inst_N4
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_IDLE_NS_IDLE : LUT6
    generic map(
      INIT => X"AAAAAAAA88A8A8A8"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_N2,
      I2 => NlwRenamedSig_OI_s_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213,
      I5 => NlwRenamedSig_OI_backoff,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_IDLE_NS_IDLE_1175
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_IDLE_NS_IDLE_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => NlwRenamedSig_OI_idle,
      I1 => NlwRenamedSig_OI_irdyq_n,
      I2 => NlwRenamedSig_OI_b_busy,
      O => BU2_U0_pci32_inst_N2
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_RECONFIG1 : LUT5
    generic map(
      INIT => X"20002202"
    )
    port map (
      I0 => bm_detect_dis,
      I1 => rst,
      I2 => bm_manual_pci,
      I3 => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIX0,
      I4 => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIX1,
      O => rtr
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_MMUX_PCI_WEN11 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => bw_detect_dis,
      I1 => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIW,
      I2 => bw_manual_32b,
      O => NlwRenamedSig_OI_pciw_en
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_MMUX_PCI_XEN11 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => bm_detect_dis,
      I1 => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIX0,
      I2 => bm_manual_pci,
      O => pcix_en
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIXOK1 : LUT5
    generic map(
      INIT => X"00808080"
    )
    port map (
      I0 => devseli,
      I1 => framei,
      I2 => irdyi,
      I3 => stopi,
      I4 => trdyi,
      O => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIXOK
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_MD_0_31 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(6),
      I1 => NlwRenamedSig_OI_addr(7),
      I2 => NlwRenamedSig_OI_addr(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N34
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_MD_0_231 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(3),
      I1 => NlwRenamedSig_OI_addr(5),
      I2 => NlwRenamedSig_OI_addr(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N37
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_MD_0_241 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr(2),
      I1 => NlwRenamedSig_OI_addr(5),
      I2 => NlwRenamedSig_OI_addr(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_ROM_N38
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_MMUX_CBEOUT41 : LUT5
    generic map(
      INIT => X"FDEC3120"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_3_900,
      I3 => m_cbe_9(3),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_MMUX_CBEOUT31 : LUT5
    generic map(
      INIT => X"FDEC3120"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_2_901,
      I3 => m_cbe_9(2),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(6),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_MMUX_CBEOUT21 : LUT5
    generic map(
      INIT => X"FDEC3120"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_1_902,
      I3 => m_cbe_9(1),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_MMUX_CBEOUT11 : LUT5
    generic map(
      INIT => X"FDEC3120"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => BU2_m_fail64,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_0_903,
      I3 => m_cbe_9(0),
      I4 => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT321 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_63_894,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(63)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_62_893,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(62)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT301 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_61_895,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(61)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT291 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_60_892,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(60)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT281 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_59_891,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(59)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT271 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_58_890,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(58)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT261 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_57_889,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(57)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT251 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_56_887,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(56)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT241 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_55_886,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(55)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT231 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_54_888,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(54)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT221 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_53_884,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(53)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_52_883,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(52)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT201 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_51_885,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(51)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT191 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_50_881,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(50)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_49_880,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(49)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_48_882,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(48)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_47_879,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(47)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_46_878,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(46)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_45_877,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(45)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_44_876,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(44)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_43_874,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(43)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_42_873,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(42)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_41_875,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(41)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_40_871,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(40)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_39_870,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(39)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_38_872,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(38)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_37_868,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(37)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_36_867,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(36)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_35_869,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(35)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_34_866,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(34)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT210 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_33_865,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(33)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_MMUX_ADOUT110 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_32_864,
      O => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(32)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_27_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_31_1413,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_31_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_26_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_30_1419,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_30_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_25_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_29_1422,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_29_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_24_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_28_1418,
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_28_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_23_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(27),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_27_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_22_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(26),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_26_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_20_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(24),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_24_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_19_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(23),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_23_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_18_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(22),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_22_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_17_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(21),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_21_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_16_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(20),
      I1 => NlwRenamedSig_OI_cfg_0_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_20_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_15_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(19),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_19_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_14_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(18),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_18_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(17),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_17_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_12_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(16),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_16_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_11_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(15),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_15_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(14),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_14_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(13),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_13_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(12),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_12_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(11),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_11_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(10),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_10_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(9),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_9_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_31_4_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(6),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_6_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_27_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_31_1358,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_31_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_26_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_30_1364,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_30_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_25_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_29_1367,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_29_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_24_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_28_1363,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_28_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_23_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(27),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_27_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_22_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(26),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_26_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_20_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(24),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_24_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_19_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(23),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_23_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_18_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(22),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_22_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_17_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(21),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_21_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_16_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(20),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_20_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_15_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(19),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_19_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_14_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(18),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_18_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(17),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_17_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_12_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(16),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_16_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_11_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(15),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_15_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(14),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_14_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(13),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_13_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(12),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_12_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(11),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_11_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(10),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_10_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(9),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_9_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_31_4_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(6),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_6_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_22_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(26),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_26_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_19_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(23),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_23_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_18_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(22),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_22_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_14_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(18),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_18_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(17),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_17_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_12_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(16),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_16_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_11_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(15),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_15_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(14),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_14_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(13),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_13_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(12),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_12_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(11),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_11_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_31_4_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(9),
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_9_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0048_0_1 : LUT6
    generic map(
      INIT => X"22F22222AAFAAAAA"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_24_Q,
      I1 => NlwRenamedSig_OI_adio_out(24),
      I2 => NlwRenamedSig_OI_csr_6_Q,
      I3 => NlwRenamedSig_OI_perrq_n,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATA2Q_954,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_CE1_3,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_24_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_FFA1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I1 => NlwRenamedSig_OI_s_data,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208,
      I3 => NlwRenamedSig_OI_m_data,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      I5 => BU2_m_fail64,
      O => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_FFA
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_S_OK_N1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      O => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_S_OK_N
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_M_OK_N1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      O => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_M_OK_N
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_NS_CFG_CYC1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_CFG_HIT,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_CYC_1243,
      I2 => NlwRenamedSig_OI_idle,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_NS_CFG_CYC
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD8_3_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(0),
      I1 => NlwRenamedSig_OI_s_cbe(3),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD8
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(3),
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD0
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD12_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(2),
      I1 => NlwRenamedSig_OI_s_cbe(3),
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD12
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD4_3_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(3),
      I1 => NlwRenamedSig_OI_s_cbe(2),
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD4
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD13_3_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(0),
      I1 => NlwRenamedSig_OI_s_cbe(1),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD13
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD5_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(2),
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD5
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD14_3_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(3),
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD14
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD6_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(2),
      I1 => NlwRenamedSig_OI_s_cbe(1),
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_s_cbe(0),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD6
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD15_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(3),
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD15
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD7_3_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(0),
      I1 => NlwRenamedSig_OI_s_cbe(3),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD7
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD9_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(3),
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD9
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD1_3_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(3),
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD1
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD2_3_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(0),
      I1 => NlwRenamedSig_OI_s_cbe(1),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD2
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD3_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(1),
      I1 => NlwRenamedSig_OI_s_cbe(0),
      I2 => NlwRenamedSig_OI_s_cbe(2),
      I3 => NlwRenamedSig_OI_s_cbe(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD3
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD10_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(1),
      I1 => NlwRenamedSig_OI_s_cbe(3),
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_s_cbe(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD10
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD11_3_1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_cbe(0),
      I1 => NlwRenamedSig_OI_s_cbe(2),
      I2 => NlwRenamedSig_OI_s_cbe(1),
      I3 => NlwRenamedSig_OI_s_cbe(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD11
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N01051 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(7),
      I1 => NlwRenamedSig_OI_adio_out(6),
      I2 => NlwRenamedSig_OI_adio_out(1),
      I3 => NlwRenamedSig_OI_adio_out(0),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX31 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(2),
      I1 => NlwRenamedSig_OI_adio_out(3),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105,
      I3 => NlwRenamedSig_OI_adio_out(5),
      I4 => NlwRenamedSig_OI_adio_out(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX3
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX11 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105,
      I1 => NlwRenamedSig_OI_adio_out(2),
      I2 => NlwRenamedSig_OI_adio_out(3),
      I3 => NlwRenamedSig_OI_adio_out(5),
      I4 => NlwRenamedSig_OI_adio_out(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX1
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX151 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(2),
      I1 => NlwRenamedSig_OI_adio_out(3),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105,
      I3 => NlwRenamedSig_OI_adio_out(5),
      I4 => NlwRenamedSig_OI_adio_out(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX15
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX41 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(4),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105,
      I2 => NlwRenamedSig_OI_adio_out(2),
      I3 => NlwRenamedSig_OI_adio_out(3),
      I4 => NlwRenamedSig_OI_adio_out(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX4
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX61 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(3),
      I1 => NlwRenamedSig_OI_adio_out(4),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105,
      I3 => NlwRenamedSig_OI_adio_out(2),
      I4 => NlwRenamedSig_OI_adio_out(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX6
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX51 : LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => NlwRenamedSig_OI_adio_out(2),
      I1 => NlwRenamedSig_OI_adio_out(4),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_N0105,
      I3 => NlwRenamedSig_OI_adio_out(3),
      I4 => NlwRenamedSig_OI_adio_out(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX5
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N00381 : LUT4
    generic map(
      INIT => X"1101"
    )
    port map (
      I0 => NlwRenamedSig_OI_b_busy,
      I1 => NlwRenamedSig_OI_idle,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_I_DATA_FLAG_1215,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N0038
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_MMUX_NS_TRDY_11 : LUT5
    generic map(
      INIT => X"CCFFCC4D"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_SWAN0,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_TRDY_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N00291 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N0029
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_SET_OE_PERR1 : LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_pci_cmd_1_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      I2 => NlwRenamedSig_OI_s_data,
      I3 => NlwRenamedSig_OI_s_wrdn,
      I4 => NlwRenamedSig_OI_csr_6_Q,
      I5 => NlwRenamedSig_OI_irdyq_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_SET_OE_PERR
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B64_2 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N11,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B64_Q_1188,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B64_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT_1 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N01,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT_Q_1204,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB_1 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N01,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB_Q_1202,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T_1 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N01,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T_Q_1200,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_2 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N01,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B_Q_1198,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT64_1 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N11,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT64_Q_1196,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT64_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB64_1 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N11,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB64_Q_1194,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB64_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T64_1 : LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N11,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T64_Q_1192,
      I4 => NlwRenamedSig_OI_s_wrdn,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T64_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_ABORT_INT1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR_1178,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N_1086,
      I2 => s_abort,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_S_ABORT_INT
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLDCYC_INV1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_data,
      I1 => NlwRenamedSig_OI_backoff,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_MMUX_NS_ACK64_115
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF21 : LUT4
    generic map(
      INIT => X"2F2A"
    )
    port map (
      I0 => NlwRenamedSig_OI_b_busy,
      I1 => NlwRenamedSig_OI_irdyq_n,
      I2 => NlwRenamedSig_OI_frameq_n,
      I3 => NlwRenamedSig_OI_idle,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N2
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BUSY_NS_BUSY1 : LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N2,
      I1 => NlwRenamedSig_OI_base_hit(0),
      I2 => NlwRenamedSig_OI_base_hit(1),
      I3 => NlwRenamedSig_OI_base_hit(2),
      I4 => NlwRenamedSig_OI_cfg_hit,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BUSY_NS_BUSY
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N02381 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N_1086,
      I1 => NlwRenamedSig_OI_idle,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR_1178,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N0238
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN6411 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_wrdn,
      I1 => NlwRenamedSig_OI_s_data,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_CE_CE0_311 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => NlwRenamedSig_OI_pci_cmd_11_Q,
      I1 => NlwRenamedSig_OI_s_wrdn,
      I2 => NlwRenamedSig_OI_s_cbe(3),
      I3 => NlwRenamedSig_OI_irdyq_n,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N8
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_DEV_TO1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => NlwRenamedSig_OI_devselq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_DEV_TO_ADDR1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_DEV_TO_ADDR
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N00061 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SLOW_1165,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N0006
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N00101 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => NlwRenamedSig_OI_devselq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N0010
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRSTIN1 : LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_N2,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATAQ_953,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRSTIN
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_MMUX_NS_IRDY_11 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000080"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(3),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ATTEMPT64_1142,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_N2,
      O => BU2_U0_pci32_inst_PCI_LC_I_NS_IRDY_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_FRAME_CE1 : LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I1 => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(3),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ATTEMPT64_1142,
      O => BU2_U0_pci32_inst_PCI_LC_I_FRAME_CE
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OEF1 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_INT_1149,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OEF
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD1 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_REQUESTQ_1155,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q,
      I2 => NlwRenamedSig_OI_irdyq_n,
      I3 => NlwRenamedSig_OI_frameq_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD641 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64Q_1137,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q,
      I2 => NlwRenamedSig_OI_irdyq_n,
      I3 => NlwRenamedSig_OI_frameq_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD64
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SET_OE_PERR1 : LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
    port map (
      I0 => m_wrdn,
      I1 => NlwRenamedSig_OI_trdyq_n,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_Q_1162,
      I3 => NlwRenamedSig_OI_m_data,
      I4 => NlwRenamedSig_OI_csr_6_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SET_OE_PERR
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_ADO_T1 : LUT5
    generic map(
      INIT => X"55550444"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T_Q_1200,
      I2 => m_wrdn,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => NlwRenamedSignal_adt_24_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_ADO_LT1 : LUT5
    generic map(
      INIT => X"55550444"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT_Q_1204,
      I2 => m_wrdn,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => NlwRenamedSignal_adt_16_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_ADO_LB1 : LUT5
    generic map(
      INIT => X"55550444"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB_Q_1202,
      I2 => m_wrdn,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => NlwRenamedSignal_adt_10_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_ADO_B1 : LUT5
    generic map(
      INIT => X"55550444"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_START_AD,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B_Q_1198,
      I2 => m_wrdn,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      O => NlwRenamedSig_OI_adt(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_XFER_REQ_S11 : LUT6
    generic map(
      INIT => X"0F000F0002000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ADDR_BE_Q_1143,
      I1 => NlwRenamedSig_OI_m_data,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64Q_1137,
      I5 => BU2_U0_ff_drive_zero_1_2401,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_XFER_REQ_S1
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N00381 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I1 => keepout,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64_1136,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_XFER_REQ_S1,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0038
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N00461 : LUT5
    generic map(
      INIT => X"44554050"
    )
    port map (
      I0 => keepout,
      I1 => NlwRenamedSig_OI_m_data,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_XFER_REQ_S1,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATAQ_953,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ATTEMPT64_1142,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0046
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => cfg_self,
      I1 => NlwRenamedSig_OI_csr_2_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_NS_REQ_1 : LUT6
    generic map(
      INIT => X"FFFFFFFFABABABBB"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_S_TARQ_1090,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_X_1092,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I4 => requesthold,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_S_TAR_1089,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_NS_REQ_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_MMUX_NS_DR_BUS1131 : LUT5
    generic map(
      INIT => X"80888888"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO,
      I3 => NlwRenamedSig_OI_trdyq_n,
      I4 => NlwRenamedSig_OI_stopq_n,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_N121
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_ABE1 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      I4 => gnti,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_ABE
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_N00081 : LUT6
    generic map(
      INIT => X"5544444405040404"
    )
    port map (
      I0 => keepout,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_X_1092,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_ENABLE_INT,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATAQ_953,
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_N0008
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_OE_SERR1 : LUT5
    generic map(
      INIT => X"BBBFFFFF"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_LC_PERR_Q_955,
      I1 => NlwRenamedSig_OI_csr_6_Q,
      I2 => NlwRenamedSig_OI_pci_cmd_1_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADDR_VLDQ_956,
      I4 => NlwRenamedSig_OI_csr_8_Q,
      O => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_OE_SERR
    );
  BU2_U0_pci32_inst_PCI_LC_I_OE_INTA_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => NlwRenamedSig_OI_csr_10_Q,
      I1 => int_n,
      O => intt
    );
  BU2_U0_pci32_inst_PCI_LC_I_SRC_EN_M_SRC_EN1 : LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => m_ready,
      I2 => m_wrdn,
      I3 => BU2_m_fail64,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I5 => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NEWDATA_1265,
      O => m_src_en
    );
  BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N00081 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => NlwRenamedSig_OI_m_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N0008
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_MMUX_CBEOUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_7_898,
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_MMUX_CBEOUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_6_896,
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_MMUX_CBEOUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_5_897,
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_MMUX_CBEOUT11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_cfg_100_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_4_899,
      O => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_BASE_HIT211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BASE_HITO_1301,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_INTACKQ_951,
      O => NlwRenamedSig_OI_base_hit(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_BH64_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BH64_O_1299,
      O => BU2_U0_pci32_inst_PCI_LC_I_BH64_2
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_CSR_35_11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_stopq_n,
      I1 => NlwRenamedSig_OI_frameq_n,
      O => csr_10(35)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_CSR_32_11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => NlwRenamedSig_OI_irdyq_n,
      I1 => NlwRenamedSig_OI_trdyq_n,
      O => csr_10(32)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_CSR_34_11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => NlwRenamedSig_OI_stopq_n,
      I1 => NlwRenamedSig_OI_frameq_n,
      I2 => NlwRenamedSig_OI_trdyq_n,
      O => csr_10(34)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_CSR_38_11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_stopq_n,
      I1 => NlwRenamedSig_OI_devselq_n,
      O => csr_10(38)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_CSR_33_11 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => NlwRenamedSig_OI_stopq_n,
      I2 => NlwRenamedSig_OI_trdyq_n,
      O => csr_10(33)
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_SHADOW_CE641 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815,
      I1 => NlwRenamedSig_OI_s_data,
      I2 => NlwRenamedSig_OI_s_wrdn,
      I3 => NlwRenamedSig_OI_m_data,
      O => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_CSR_36_11 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => NlwRenamedSig_OI_trdyq_n,
      I1 => NlwRenamedSig_OI_stopq_n,
      I2 => NlwRenamedSig_OI_devselq_n,
      O => csr_10(36)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_CSR_37_11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => NlwRenamedSig_OI_trdyq_n,
      I1 => NlwRenamedSig_OI_stopq_n,
      I2 => NlwRenamedSig_OI_devselq_n,
      O => csr_10(37)
    );
  BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N00141 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => NlwRenamedSig_OI_s_data,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N0014
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1443_6_31 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221,
      O => BU2_U0_pci32_inst_PCI_LC_I_N9
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1442_6_21 : LUT4
    generic map(
      INIT => X"8808"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N01,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I2 => BU2_U0_pci32_inst_OLD_74_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      O => BU2_U0_pci32_inst_PCI_LC_I_N23
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1447_6_1 : LUT5
    generic map(
      INIT => X"0A000200"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_N01,
      I1 => BU2_U0_pci32_inst_OLD_74_Q,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_N9,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      O => BU2_U0_pci32_inst_PCI_LC_I_N1447
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1445_6_1 : LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => BU2_U0_pci32_inst_OLD_74_Q,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_N01,
      I2 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223,
      I4 => BU2_U0_pci32_inst_PCI_LC_I_N9,
      O => BU2_U0_pci32_inst_PCI_LC_I_N1445
    );
  BU2_U0_pci32_inst_PCI_LC_I_N1442_6_11 : LUT4
    generic map(
      INIT => X"AF23"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225,
      I1 => BU2_U0_pci32_inst_OLD_37_Q,
      I2 => BU2_U0_pci32_inst_OLD_0_Q,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229,
      O => BU2_U0_pci32_inst_PCI_LC_I_N01
    );
  BU2_U0_pci32_inst_PCI_LC_I_MMUX_NS_BASE_HIT2111 : LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => NlwRenamedSig_OI_addr_vld,
      I1 => NlwRenamedSig_OI_s_cbe(1),
      I2 => NlwRenamedSig_OI_s_cbe(0),
      I3 => NlwRenamedSig_OI_s_cbe(2),
      I4 => NlwRenamedSig_OI_s_cbe(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_INTACK
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_ADDR_VLD6421 : LUT4
    generic map(
      INIT => X"4404"
    )
    port map (
      I0 => NlwRenamedSig_OI_frameq_n,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_FRAMEQ_Q_817,
      I2 => NlwRenamedSig_OI_m_data,
      I3 => cfg_self,
      O => NlwRenamedSig_OI_addr_vld
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_XPCI_PCIX0 : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => NlwRenamedSig_OI_base_hit(3),
      D => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIXOK,
      G => rst,
      Q => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIX0
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_XPCI_PCIX1 : LDP
    generic map(
      INIT => '1'
    )
    port map (
      D => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIXOK,
      G => rst,
      PRE => NlwRenamedSig_OI_base_hit(3),
      Q => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIX1
    );
  BU2_U0_pci32_inst_XPCI_WATCHDOG_XPCI_PCIW : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => NlwRenamedSig_OI_base_hit(3),
      D => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCI64B,
      G => rst,
      Q => BU2_U0_pci32_inst_XPCI_WATCHDOG_PCIW
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_XPCI_CBO3 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(3),
      PRE => rst,
      Q => cbo_5(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_XPCI_CBO2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(2),
      PRE => rst,
      Q => cbo_5(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_XPCI_CBO1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(1),
      PRE => rst,
      Q => cbo_5(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBE_XPCI_CBO0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(0),
      PRE => rst,
      Q => cbo_5(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO63 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(63),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(63)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO62 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(62),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(62)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO61 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(61),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(61)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO60 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(60),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(60)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO59 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(59),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(59)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO58 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(58),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(58)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO57 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(57),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(57)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO56 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(56),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(56)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO55 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(55),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(55)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO54 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(54),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(54)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO53 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(53),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(53)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO52 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(52),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(52)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO51 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(51),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(51)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO50 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(50),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(50)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO49 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(49),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(49)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO48 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(48),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(48)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO47 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(47),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(47)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO46 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(46),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(46)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO45 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(45),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(45)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO44 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(44),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(44)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO43 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(43),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(43)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO42 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(42),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(42)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO41 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(41),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(41)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO40 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(40),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(40)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO39 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(39),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(39)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO38 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(38),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(38)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO37 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(37),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(37)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO36 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(36),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(36)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO35 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(35),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(35)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO34 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(34),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(34)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO33 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(33),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(33)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_ADH_XPCI_ADO32 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(32),
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADO(32)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO31 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(31),
      PRE => rst,
      Q => ado_2(31)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO30 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(30),
      PRE => rst,
      Q => ado_2(30)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO29 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(29),
      PRE => rst,
      Q => ado_2(29)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO28 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(28),
      PRE => rst,
      Q => ado_2(28)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO27 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(27),
      PRE => rst,
      Q => ado_2(27)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO26 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(26),
      PRE => rst,
      Q => ado_2(26)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO25 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(25),
      PRE => rst,
      Q => ado_2(25)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO24 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(24),
      PRE => rst,
      Q => ado_2(24)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO23 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(23),
      PRE => rst,
      Q => ado_2(23)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO22 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(22),
      PRE => rst,
      Q => ado_2(22)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO21 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(21),
      PRE => rst,
      Q => ado_2(21)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO20 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(20),
      PRE => rst,
      Q => ado_2(20)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO19 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(19),
      PRE => rst,
      Q => ado_2(19)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO18 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(18),
      PRE => rst,
      Q => ado_2(18)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO17 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(17),
      PRE => rst,
      Q => ado_2(17)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO16 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(16),
      PRE => rst,
      Q => ado_2(16)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO15 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(15),
      PRE => rst,
      Q => ado_2(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO14 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(14),
      PRE => rst,
      Q => ado_2(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO13 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(13),
      PRE => rst,
      Q => ado_2(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO12 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(12),
      PRE => rst,
      Q => ado_2(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO11 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(11),
      PRE => rst,
      Q => ado_2(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO10 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(10),
      PRE => rst,
      Q => ado_2(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO9 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(9),
      PRE => rst,
      Q => ado_2(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO8 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(8),
      PRE => rst,
      Q => ado_2(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO7 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(7),
      PRE => rst,
      Q => ado_2(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(6),
      PRE => rst,
      Q => ado_2(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO5 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(5),
      PRE => rst,
      Q => ado_2(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO4 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(4),
      PRE => rst,
      Q => ado_2(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO3 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(3),
      PRE => rst,
      Q => ado_2(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(2),
      PRE => rst,
      Q => ado_2(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(1),
      PRE => rst,
      Q => ado_2(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_AD_XPCI_ADO0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(0),
      PRE => rst,
      Q => ado_2(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_0 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(0),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_1 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(1),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_2 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(2),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_3 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(3),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_4 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(4),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_5 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(5),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_6 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(6),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE_7 : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE15_0,
      D => NlwRenamedSig_OI_adio_out(7),
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_IREG_INTERRUPTLINE(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_5 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(5),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_7 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(7),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_6 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(6),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_4 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(4),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_15 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(15),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_12 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(12),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_14 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(14),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_13 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(13),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_11 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(11),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_10 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(10),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_23 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(23),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(23)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_9 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(9),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_8 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(8),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_22 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(22),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(22)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_21 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(21),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(21)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_20 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(20),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(20)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_19 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(19),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(19)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_18 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(18),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(18)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_17 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(17),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(17)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_29 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(29),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_29_1422
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_16 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(16),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(16)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_30 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(30),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_30_1419
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_28 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(28),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_28_1418
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_27 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(27),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(27)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_26 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(26),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(26)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_25 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(25),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(25)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_24 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(24),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT(24)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_31 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE4_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(31),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BAR_INT_31_1413
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BASE_HITO : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT0,
      Q => NlwRenamedSig_OI_base_hit(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_BH64_O : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_0,
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR0_BH64_O_1410
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_csr_25_Q,
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(0),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_1_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(0),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_2_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(1),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_3_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(2),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_4_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(3),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_5_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(4),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_6_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(5),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(6),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_7_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(6),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_8_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(7),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(8),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY_9_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_CY(8),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR0_MCOMPAR_ADDRESS_MATCH_LUT(9),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR0_ADDRESS_MATCH
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_5 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(5),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_7 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(7),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_6 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(6),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_4 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(4),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_15 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(15),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_12 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(12),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_14 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(14),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_13 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(13),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_11 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(11),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_10 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(10),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_23 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(23),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(23)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_9 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(9),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_8 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(8),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_22 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(22),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(22)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_21 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(21),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(21)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_20 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(20),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(20)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_19 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(19),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(19)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_18 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(18),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(18)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_17 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(17),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(17)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_29 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(29),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_29_1367
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_16 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(16),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(16)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_30 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(30),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_30_1364
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_28 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(28),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_28_1363
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_27 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(27),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(27)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_26 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(26),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(26)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_25 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(25),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(25)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_24 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(24),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT(24)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_31 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE5_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(31),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BAR_INT_31_1358
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BASE_HITO : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT1,
      Q => NlwRenamedSig_OI_base_hit(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_BH64_O : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_1,
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR1_BH64_O_1355
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_csr_25_Q,
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(0),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_1_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(0),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_2_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(1),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_3_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(2),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_4_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(3),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_5_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(4),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_6_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(5),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(6),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_7_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(6),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_8_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(7),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(8),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY_9_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_CY(8),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR1_MCOMPAR_ADDRESS_MATCH_LUT(9),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR1_ADDRESS_MATCH
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_5 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(5),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_7 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(7),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_6 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(6),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_4 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(4),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_15 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(15),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_12 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(12),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_14 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(14),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_13 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(13),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_11 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(11),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_10 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(10),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_23 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(23),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(23)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_9 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(9),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_8 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(8),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_22 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(22),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(22)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_21 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(21),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(21)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_20 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(20),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(20)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_19 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(19),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(19)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_18 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(18),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(18)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_17 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(17),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(17)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_29 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(29),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_29_1312
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_16 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_2,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(16),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(16)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_30 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(30),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_30_1309
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_28 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(28),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_28_1308
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_27 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(27),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(27)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_26 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(26),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(26)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_25 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(25),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(25)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_24 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(24),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT(24)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_31 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE6_3,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(31),
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BAR_INT_31_1303
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BASE_HITO : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_BASE_HIT2_INT,
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BASE_HITO_1301
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_BH64_O : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_BH64_2_INT,
      Q => BU2_U0_pci32_inst_PCI_LC_I_BAR2_BH64_O_1299
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_csr_25_Q,
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(0),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_1_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(0),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_2_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(1),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_3_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(2),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_4_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(3),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_5_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(4),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_6_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(5),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(6),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_7_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(6),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_8_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(7),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(8),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY_9_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_CY(8),
      DI => NlwRenamedSig_OI_base_hit(3),
      S => BU2_U0_pci32_inst_PCI_LC_I_BAR2_MCOMPAR_ADDRESS_MATCH_LUT(9),
      O => BU2_U0_pci32_inst_PCI_LC_I_BAR2_ADDRESS_MATCH
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_MEMACCESSALLOWED_INT : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE1_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(1),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_MEMACCESSALLOWED_INT_1277
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PARITYERRORREPORTEN : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE1_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(6),
      Q => NlwRenamedSig_OI_csr_6_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_BUSMASTEREN : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE1_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(2),
      Q => NlwRenamedSig_OI_csr_2_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_IOACCESSALLOWED_INT : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE1_0,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(0),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_IOACCESSALLOWED_INT_1276
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_INTERRUPTDISABLE : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE1_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(10),
      Q => NlwRenamedSig_OI_csr_10_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_CSR_INT_27 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_27_Q,
      Q => NlwRenamedSig_OI_csr_27_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_CSR_INT_28 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_28_Q,
      Q => NlwRenamedSig_OI_csr_28_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_CSR_INT_29 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_29_Q,
      Q => NlwRenamedSig_OI_csr_29_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_CSR_INT_30 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_30_Q,
      Q => NlwRenamedSig_OI_csr_30_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_CSR_INT_31 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_31_Q,
      Q => NlwRenamedSig_OI_csr_31_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_SYSTEMERRORREPORTEN : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE1_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(8),
      Q => NlwRenamedSig_OI_csr_8_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_DATAPARITYERRORDET : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_PCI_CSR_OR_24_Q,
      Q => NlwRenamedSig_OI_csr_24_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_INTERRUPTSTATUS : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CSR_N0092,
      Q => NlwRenamedSig_OI_csr_19_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_PAR_CE : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NS_PAR_CE,
      Q => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_PAR_CE_818
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NEWDATA : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NS_NEWDATA_OUT_CE,
      Q => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_NEWDATA_1265
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_PCILOGIC : PCILOGICSE
    port map (
      I2 => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_FFA,
      PCI_CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      I3 => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_M_OK_N,
      TRDY => trdyi,
      IRDY => irdyi,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_S_OK_N
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD1 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD1,
      Q => NlwRenamedSig_OI_pci_cmd_1_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_WRN : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_s_cbe(0),
      Q => NlwRenamedSig_OI_s_wrdn
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD0 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD0,
      Q => pci_cmd(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD2 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD2,
      Q => pci_cmd(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD3 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD3,
      Q => pci_cmd(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD6 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD6,
      Q => pci_cmd(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD4 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD4,
      Q => pci_cmd(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD5 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD5,
      Q => pci_cmd(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD7 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD7,
      Q => pci_cmd(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD8 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD8,
      Q => pci_cmd(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD11 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD11,
      Q => NlwRenamedSig_OI_pci_cmd_11_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD9 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD9,
      Q => pci_cmd(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD10 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD10,
      Q => NlwRenamedSig_OI_pci_cmd_10_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD12 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD12,
      Q => pci_cmd(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD13 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD13,
      Q => pci_cmd(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD14 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD14,
      Q => pci_cmd(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_LCMD15 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CMD15,
      Q => pci_cmd(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_HIT : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_CFG_HIT,
      Q => NlwRenamedSig_OI_cfg_hit
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_CYC : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_NS_CFG_CYC,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LC_CFG_CYC_1243
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX1,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX1_1241
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_0 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(0),
      Q => addr(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_1 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(1),
      Q => addr(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_2 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(2),
      Q => NlwRenamedSig_OI_addr(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_3 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(3),
      Q => NlwRenamedSig_OI_addr(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_4 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(4),
      Q => NlwRenamedSig_OI_addr(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_5 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(5),
      Q => NlwRenamedSig_OI_addr(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_6 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(6),
      Q => NlwRenamedSig_OI_addr(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_7 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(7),
      Q => NlwRenamedSig_OI_addr(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_8 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(8),
      Q => addr(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_9 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(9),
      Q => addr(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_10 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(10),
      Q => addr(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_11 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(11),
      Q => addr(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_12 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(12),
      Q => addr(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_13 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(13),
      Q => addr(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_14 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(14),
      Q => addr(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_15 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(15),
      Q => addr(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_16 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(16),
      Q => addr(16)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_17 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(17),
      Q => addr(17)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_18 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(18),
      Q => addr(18)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_19 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(19),
      Q => addr(19)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_20 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(20),
      Q => addr(20)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_21 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(21),
      Q => addr(21)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_22 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(22),
      Q => addr(22)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_23 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(23),
      Q => addr(23)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_24 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(24),
      Q => addr(24)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_25 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(25),
      Q => addr(25)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_26 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(26),
      Q => addr(26)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_27 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(27),
      Q => addr(27)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_28 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(28),
      Q => addr(28)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_29 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(29),
      Q => addr(29)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_30 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(30),
      Q => addr(30)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADDR_31 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(31),
      Q => addr(31)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX3 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX3,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX3_1239
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX4,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX4_1237
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX5,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX5_1235
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX6,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX6_1233
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX15 : FDCE
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_addr_vld,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_ADX15,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_LA_LADX15_1231
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0040,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE5_Q_1229
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0022,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE3_Q_1227
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0031,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE4_Q_1225
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0049,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE6_Q_1223
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0098,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE15_Q_1221
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0103,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE_ROM_Q_1219
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_N0012,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OE_OE1_Q_1217
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_I_DATA_FLAG : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_N0038,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_I_DATA_FLAG_1215
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_STOP_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_I_Q_1212,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_STOP_TSTOP_Q_1213
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_TACK64_I_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_ACK64_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_AK64_TACK64_I_Q_1211
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_DEVSEL_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_I_Q_1209,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_DSEL_TDEVSEL_Q_1210
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_TRDY_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRSTIN,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_S_FIRST_1208
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_TRDY_TTRDY_I_Q_1205,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRDYDEL_1206
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT_Q_1204
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB_Q_1202
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T_Q_1200
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B_Q_1198
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT64_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LT64_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LT64_Q_1196
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB64_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_LB64_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_LB64_Q_1194
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T64_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_T64_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_T64_Q_1192
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_N0029,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_TRSTOPQ_1190
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B64_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_NS_OE_ADO_B64_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ADO_B64_Q_1188
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_HOLD_OE_PERR : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_SET_OE_PERR,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_HOLD_OE_PERR_1186
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_XPCI_TRDYT : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_Q_1184,
      PRE => rst,
      Q => trdyt
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_XPCI_STOPT : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_Q_1184,
      PRE => rst,
      Q => stopt
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_XPCI_DEVSELT : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_TRDY_IN_Q_1184,
      PRE => rst,
      Q => devselt
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_XPCI_ACK64T : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_OFCN_PCI_XOE_OE_ACK64_IN_Q_1183,
      PRE => rst,
      Q => BU2_ack64t
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN64 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN64,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN64_1182
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_NS_PWIN,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_TPWIN_1180
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_N0238,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_HOLD_APERR_1178
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BUSY_B_BUSY : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BUSY_NS_BUSY,
      Q => NlwRenamedSig_OI_b_busy
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_IDLE_IDLE_BE : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_IDLE_NS_IDLE_1175,
      PRE => rst,
      Q => NlwRenamedSig_OI_idle
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_S_DATA_BE : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_DATA_NS_DATA,
      Q => NlwRenamedSig_OI_s_data
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_BACKOFF : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_CNTL_PCI_TSM_PCI_BKOF_NS_BKOF,
      Q => NlwRenamedSig_OI_backoff
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N0010,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_PASS_TO_1172
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_FAST : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_DEV_TO_ADDR,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_FAST_1167
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_N0006,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SUBTRACTIVE_1169
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_FAST : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_FAST_1167,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_FAST_1166
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_MEDIUM : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_FAST_1166,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_MEDIUM_1164
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SLOW : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_MEDIUM_1164,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DEV_TO_WAS_SLOW_1165
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRSTIN,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_IRDY_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_I_Q_1161,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_IIRDY_Q_1162
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_I_Q : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_FRAME_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_REQ64_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_I_Q_1159
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_I_Q_1159,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ64_IREQ64_Q_1160
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_FRAME_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_FRAME_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_Q_1158
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_HOLD_OE_PERR : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SET_OE_PERR,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_HOLD_OE_PERR_1157
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_REQUESTQ : FDC
    port map (
      C => clk,
      CLR => rst,
      D => NlwRenamedSig_OI_csr_25_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_REQUESTQ_1155
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT_1154
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS64,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_SLOT64_INT_1152
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_INT : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OEF,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OEF,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_INT_1149
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_REQ64_INT : FDPE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OER,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OER,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_REQ64_INT_1150
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_XPCI_IRDYT : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_INT_1149,
      PRE => rst,
      Q => irdyt
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_XPCI_REQ64T : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OER,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OER,
      PRE => rst,
      Q => BU2_req64t
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_XPCI_FRAMET : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_CE_OEF,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_OE_FRAME_NS_OEF,
      PRE => rst,
      Q => framet
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_XPCI_PAR64T : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_ADT_32_Q,
      PRE => rst,
      Q => BU2_par64t
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_XPCI_PART : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => NlwRenamedSig_OI_adt(0),
      PRE => rst,
      Q => part
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_XPCI_PERRT : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_OE_FRAME_NS_OE_PERR_1144,
      PRE => rst,
      Q => perrt
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ADDR_BE_Q : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ADDR_BE_Q_1143
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ATTEMPT64 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0046,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_ATTEMPT64_1142
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0030_1139,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST_1140
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_N0038,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64_1136
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64Q : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64_1136,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFER_REQ_REQUEST64Q_1137
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_IREAD64 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_NS_IREAD64,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IREAD64_1135
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XPCI_GNTI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => gntd,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_GNT_Q
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XPCI_REQO : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_NS_REQ_Q,
      PRE => rst,
      Q => reqo
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XPCI_REQT : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => NlwRenamedSig_OI_base_hit(3),
      PRE => rst,
      Q => reqt
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_TIME_OUT : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_N0038_1131,
      Q => NlwRenamedSig_OI_time_out
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_FAIL64 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_XFERFAIL_NS_FAIL64,
      Q => BU2_m_fail64
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_S_TAR : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_NS_S_TAR,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_S_TAR_1089
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_ABE,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_ADDR_BE_1128
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_M_ADDR_Q : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_ADDR_NS_MAN,
      PRE => rst,
      Q => m_addr_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_DATA_M_DATA : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_M_DATA_NS_MDATA_1125,
      Q => NlwRenamedSig_OI_m_data
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_0_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(0),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(8),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY_0_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      DI => NlwRenamedSig_OI_csr_25_Q,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(0),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_0_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(0),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_1_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(1),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(9),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY_1_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(0),
      DI => NlwRenamedSig_OI_csr_25_Q,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_1_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(0),
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(1),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL1
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_2_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(2),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(10),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY_2_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(1),
      DI => NlwRenamedSig_OI_csr_25_Q,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_2_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(1),
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(2),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL2
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_3_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(3),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(11),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY_3_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(2),
      DI => NlwRenamedSig_OI_csr_25_Q,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_3_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(2),
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL3
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_4_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(4),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(12),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY_4_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(3),
      DI => NlwRenamedSig_OI_csr_25_Q,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_4_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(3),
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(4),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL4
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_5_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(5),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(13),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY_5_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(4),
      DI => NlwRenamedSig_OI_csr_25_Q,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_5_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(4),
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(5),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL5
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_6_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(6),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(14),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY_6_Q : MUXCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(5),
      DI => NlwRenamedSig_OI_csr_25_Q,
      S => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(6),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_6_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(5),
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(6),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL6
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT_7_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_FRAME_IFRAME_I_Q_1111,
      I1 => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(7),
      I2 => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(15),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_XOR_7_Q : XORCY
    port map (
      CI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_CY(6),
      LI => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL_LUT(7),
      O => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL7
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_0 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_1 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL1,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_2 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL2,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_3 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL3,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_4 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL4,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_5 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL5,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_6 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL6,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL_7 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_MCOUNT_CNT_VAL7,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_LAT_TIMR_CNT_VAL(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_X : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_N0008,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_X_1092
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_S_TARQ : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_STAR_S_TAR_1089,
      Q => BU2_U0_pci32_inst_PCI_LC_I_MASTER_REQ_S_TARQ_1090
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_DR_BUS : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_DR_BUS_NS_DR_BUS,
      Q => NlwRenamedSig_OI_dr_bus
    );
  BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_I_IDLE : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_MASTER_I_IDLE_NS_I_IDLE,
      PRE => rst,
      Q => NlwRenamedSig_OI_i_idle
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N : FDP
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_PRE_APERR_N,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_APERR_N_1086
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_0 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(0),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(0)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_1 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(1),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_2 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(2),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_3 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(3),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_4 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(4),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_5 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(5),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_6 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(6),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_7 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(7),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_8 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(8),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_9 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(9),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_10 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(10),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_11 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(11),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_12 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(12),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_13 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(13),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_14 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(14),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_15 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(15),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_16 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(16),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(16)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_17 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(17),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(17)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_18 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(18),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(18)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_19 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(19),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(19)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_20 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(20),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(20)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_21 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(21),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(21)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_22 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(22),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(22)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_23 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(23),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(23)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_24 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(24),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(24)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_25 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(25),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(25)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_26 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(26),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(26)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_27 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(27),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(27)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_28 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(28),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(28)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_29 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(29),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(29)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_30 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(30),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(30)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_31 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(31),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(31)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_32 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(32),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(32)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_33 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(33),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(33)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_34 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(34),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(34)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_35 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(35),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(35)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_36 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(36),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(36)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_37 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(37),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(37)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_38 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(38),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(38)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_39 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(39),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(39)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_40 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(40),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(40)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_41 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(41),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(41)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_42 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(42),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(42)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_43 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(43),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(43)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_44 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(44),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(44)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_45 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(45),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(45)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_46 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(46),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(46)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_47 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(47),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(47)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_48 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(48),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(48)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_49 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(49),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(49)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_50 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(50),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(50)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_51 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(51),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(51)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_52 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(52),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(52)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_53 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(53),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(53)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_54 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(54),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(54)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_55 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(55),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(55)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_56 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(56),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(56)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_57 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(57),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(57)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_58 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(58),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(58)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_59 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(59),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(59)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_60 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(60),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(60)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_61 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(61),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(61)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_62 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(62),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(62)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ_63 : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_ADOUT(63),
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADOUTQ(63)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADDR_VLDQ : FDC
    port map (
      C => clk,
      CLR => rst,
      D => NlwRenamedSig_OI_addr_vld,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_ADDR_VLDQ_956
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATAQ : FDC
    port map (
      C => clk,
      CLR => rst,
      D => NlwRenamedSig_OI_m_data,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATAQ_953
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_LC_PERR_Q : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_PERR_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_LC_PERR_Q_955
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATA2Q : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATAQ_953,
      Q => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_M_DATA2Q_954
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_XPCI_SERRT : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_PCI_PAR_NS_OE_SERR,
      PRE => rst,
      Q => serrt
    );
  BU2_U0_pci32_inst_PCI_LC_I_INTACKQ : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_INTACK,
      Q => BU2_U0_pci32_inst_PCI_LC_I_INTACKQ_951
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_14 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(14),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(14)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_11 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(11),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(11)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_13 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(13),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(13)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_12 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(12),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(12)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_8 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(8),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(8)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_10 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(10),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(10)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_9 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(9),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(9)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REG_0CH_15 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_CE3_1,
      CLR => rst,
      D => NlwRenamedSig_OI_adio_out(15),
      Q => BU2_U0_pci32_inst_PCI_LC_I_REG_0CH(15)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH_4 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH_5 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH_6 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH_7 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_CBH(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_32 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(32)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_33 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(33)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_34 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(34)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_35 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(35)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_36 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(36)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_37 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(37)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_38 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(38)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_39 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(39)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_40 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(40)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_41 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(41)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_42 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(42)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_43 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(43)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_44 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(44)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_45 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(45)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_46 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(46)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_47 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(47)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_48 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(48)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_49 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(49)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_50 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(50)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_51 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(51)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_52 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(52)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_53 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(53)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_54 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(54)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_55 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(55)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_56 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(56)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_57 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(57)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_58 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(58)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_59 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(59)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_60 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(60)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_61 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(61)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_62 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(62)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH_63 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_MASTER_IRDY_M_FIRST_904,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_FAIL_ADH(63)
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_0 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => m_cbe_9(0),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_0_903
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_1 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => m_cbe_9(1),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_1_902
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_2 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => m_cbe_9(2),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_2_901
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_3 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => m_cbe_9(3),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_3_900
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_4 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_4_899
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_7 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_7_898
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_5 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_5_897
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_6 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CBE_6_896
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_61 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_61_895
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_63 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_63_894
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_62 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_62_893
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_60 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_60_892
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_59 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_59_891
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_58 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_58_890
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_57 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_57_889
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_54 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_54_888
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_56 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_56_887
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_55 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_55_886
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_51 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_51_885
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_53 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_53_884
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_52 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_52_883
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_48 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_48_882
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_50 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_50_881
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_49 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_49_880
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_47 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_47_879
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_46 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_46_878
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_45 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_45_877
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_44 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_44_876
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_41 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_41_875
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_43 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_43_874
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_42 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_42_873
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_38 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_38_872
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_40 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_40_871
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_39 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_39_870
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_35 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_35_869
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_37 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_37_868
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_36 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_36_867
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_34 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_34_866
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_33 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_33_865
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_32 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => NlwRenamedSig_OI_cfg_100_Q,
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_32_864
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_31 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(31),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_31_863
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_28 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(28),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_28_862
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_30 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(30),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_30_861
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_29 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(29),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_29_860
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_25 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(25),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_25_859
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_27 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(27),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_27_858
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_26 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(26),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_26_857
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_22 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(22),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_22_856
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_24 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(24),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_24_855
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_23 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(23),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_23_854
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_21 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(21),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_21_853
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_20 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(20),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_20_852
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_19 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(19),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_19_851
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_18 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(18),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_18_850
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_15 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(15),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_15_849
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_17 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(17),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_17_848
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_16 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(16),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_16_847
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_14 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(14),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_14_846
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_13 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(13),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_13_845
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_12 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(12),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_12_844
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_11 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(11),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_11_843
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_8 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(8),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_8_842
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_10 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(10),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_10_841
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_9 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(9),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_9_840
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_7 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(7),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_7_839
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_6 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(6),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_6_838
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_5 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(5),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_5_837
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_4 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(4),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_4_836
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_1 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(1),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_1_835
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_3 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(3),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_3_834
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_2 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(2),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_2_833
    );
  BU2_U0_pci32_inst_PCI_LC_I_SHADOW_0 : FDCE
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_CE,
      CLR => rst,
      D => adio_in_8(0),
      Q => BU2_U0_pci32_inst_PCI_LC_I_SHADOW_0_832
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_IRDYI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => irdyd,
      PRE => rst,
      Q => NlwRenamedSig_OI_irdyq_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_ACK64I : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_ff_drive_zero_1_2401,
      PRE => rst,
      Q => BU2_ack64q_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_STOPI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => stopd,
      PRE => rst,
      Q => NlwRenamedSig_OI_stopq_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_PERRI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => perrd,
      PRE => rst,
      Q => NlwRenamedSig_OI_perrq_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_IDSELI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => idseld,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_IDSEL
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_FRAMEI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => framed,
      PRE => rst,
      Q => NlwRenamedSig_OI_frameq_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_IRDYO : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_IRDY_Q,
      PRE => rst,
      Q => irdyo
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_FRAMEO : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_FRAME_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_FRAME_Q,
      PRE => rst,
      Q => frameo
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_REQ64O : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_FRAME_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_REQ64_Q,
      PRE => rst,
      Q => BU2_req64o
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_REQ64I : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_ff_drive_zero_1_2401,
      PRE => rst,
      Q => BU2_req64q_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_TRDYO : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_TRDY_Q,
      PRE => rst,
      Q => trdyo
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_TRDYI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => trdyd,
      PRE => rst,
      Q => NlwRenamedSig_OI_trdyq_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_STOPO : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_STOP_Q,
      PRE => rst,
      Q => stopo
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_DEVSELO : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_DEVSEL_Q,
      PRE => rst,
      Q => devselo
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_DEVSELI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => devseld,
      PRE => rst,
      Q => NlwRenamedSig_OI_devselq_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_ACK64O : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_ACK64_Q,
      PRE => rst,
      Q => BU2_ack64o
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_SERRI : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => serrd,
      PRE => rst,
      Q => serrq_n
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_PERRO : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_PERR_Q,
      PRE => rst,
      Q => perro
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_PAR64O : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_PAR_CE_818,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_PAR64,
      PRE => rst,
      Q => BU2_par64o
    );
  BU2_U0_pci32_inst_PCI_LC_I_XPCI_PARO : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_PAR_CE_818,
      D => BU2_U0_pci32_inst_PCI_LC_I_NS_PAR,
      PRE => rst,
      Q => paro
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_FRAMEQ_Q : FDP
    port map (
      C => clk,
      D => NlwRenamedSig_OI_frameq_n,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_FRAMEQ_Q_817
    );
  BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_REQ64Q_Q : FDP
    port map (
      C => clk,
      D => BU2_req64q_n,
      PRE => rst,
      Q => BU2_U0_pci32_inst_PCI_LC_I_ADDR_VLD_REQ64Q_Q_816
    );
  BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_SEL_IN_814,
      Q => BU2_U0_pci32_inst_PCI_LC_I_OUT_SEL_OUT_SEL_815
    );
  BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_M_DATA_VLD : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N0008,
      Q => m_data_vld
    );
  BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_S_DATA_VLD : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_DATA_VLD_N0014,
      Q => s_data_vld
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_XPCI_CBO4 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(4),
      PRE => rst,
      Q => BU2_U0_pci32_inst_CBO(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_XPCI_CBO5 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(5),
      PRE => rst,
      Q => BU2_U0_pci32_inst_CBO(5)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_XPCI_CBO6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(6),
      PRE => rst,
      Q => BU2_U0_pci32_inst_CBO(6)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PCI_CBEH_XPCI_CBO7 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => BU2_U0_pci32_inst_PCI_LC_I_OUT_CE_HARD_CE,
      D => BU2_U0_pci32_inst_PCI_LC_I_CBEOUT(7),
      PRE => rst,
      Q => BU2_U0_pci32_inst_CBO(7)
    );
  BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGES_IRDY_CREATE_STAGES_1_IRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => irdyi,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGES_PAR64I_CREATE_STAGES_1_PAR64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_ff_drive_zero_1_2401,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGES_ACK64I_CREATE_STAGES_1_ACK64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_ff_drive_zero_1_2401,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGES_PARI_CREATE_STAGES_1_PAR_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => pari,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGES_STOPI_CREATE_STAGES_1_STOP_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => stopi,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGES_FRAMEI_CREATE_STAGES_1_FRAME_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => framei,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGES_REQ64I_CREATE_STAGES_1_REQ64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_ff_drive_zero_1_2401,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGES_GNT_CREATE_STAGES_1_GNT_IN_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => gnti,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGES_TRDY_CREATE_STAGES_1_TRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => trdyi,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGES_DEVSELI_CREATE_STAGES_1_DEVSEL_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => devseli,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGES_CBE_I0_CREATE_STAGES_1_CBE_I0_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => cbi_6(0),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGES_CBE_I1_CREATE_STAGES_1_CBE_I1_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => cbi_6(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGES_CBE_I2_CREATE_STAGES_1_CBE_I2_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => cbi_6(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGES_CBE_I3_CREATE_STAGES_1_CBE_I3_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => cbi_6(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGES_CBE_I4_CREATE_STAGES_1_CBE_I4_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGES_CBE_I5_CREATE_STAGES_1_CBE_I5_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGES_CBE_I6_CREATE_STAGES_1_CBE_I6_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGES_CBE_I7_CREATE_STAGES_1_CBE_I7_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => NlwRenamedSig_OI_cfg_100_Q,
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(1)
    );
  BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGES_IRDY_CREATE_STAGES_2_IRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGES_PAR64I_CREATE_STAGES_2_PAR64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGES_ACK64I_CREATE_STAGES_2_ACK64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGES_PARI_CREATE_STAGES_2_PAR_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGES_STOPI_CREATE_STAGES_2_STOP_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGES_FRAMEI_CREATE_STAGES_2_FRAME_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGES_REQ64I_CREATE_STAGES_2_REQ64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGES_GNT_CREATE_STAGES_2_GNT_IN_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGES_TRDY_CREATE_STAGES_2_TRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGES_DEVSELI_CREATE_STAGES_2_DEVSEL_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGES_CBE_I0_CREATE_STAGES_2_CBE_I0_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGES_CBE_I1_CREATE_STAGES_2_CBE_I1_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGES_CBE_I2_CREATE_STAGES_2_CBE_I2_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGES_CBE_I3_CREATE_STAGES_2_CBE_I3_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGES_CBE_I4_CREATE_STAGES_2_CBE_I4_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGES_CBE_I5_CREATE_STAGES_2_CBE_I5_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGES_CBE_I6_CREATE_STAGES_2_CBE_I6_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGES_CBE_I7_CREATE_STAGES_2_CBE_I7_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(1),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(2)
    );
  BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGES_IRDY_CREATE_STAGES_3_IRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGES_PAR64I_CREATE_STAGES_3_PAR64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGES_ACK64I_CREATE_STAGES_3_ACK64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGES_PARI_CREATE_STAGES_3_PAR_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGES_STOPI_CREATE_STAGES_3_STOP_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGES_FRAMEI_CREATE_STAGES_3_FRAME_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGES_REQ64I_CREATE_STAGES_3_REQ64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGES_GNT_CREATE_STAGES_3_GNT_IN_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGES_TRDY_CREATE_STAGES_3_TRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGES_DEVSELI_CREATE_STAGES_3_DEVSEL_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGES_CBE_I0_CREATE_STAGES_3_CBE_I0_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGES_CBE_I1_CREATE_STAGES_3_CBE_I1_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGES_CBE_I2_CREATE_STAGES_3_CBE_I2_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGES_CBE_I3_CREATE_STAGES_3_CBE_I3_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGES_CBE_I4_CREATE_STAGES_3_CBE_I4_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGES_CBE_I5_CREATE_STAGES_3_CBE_I5_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGES_CBE_I6_CREATE_STAGES_3_CBE_I6_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGES_CBE_I7_CREATE_STAGES_3_CBE_I7_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(2),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(3)
    );
  BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGES_IRDY_CREATE_STAGES_4_IRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_IRDY_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGES_PAR64I_CREATE_STAGES_4_PAR64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR64_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGES_ACK64I_CREATE_STAGES_4_ACK64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_ACK64_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGES_PARI_CREATE_STAGES_4_PAR_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_PAR_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGES_STOPI_CREATE_STAGES_4_STOP_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_STOP_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGES_FRAMEI_CREATE_STAGES_4_FRAME_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_FRAME_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGES_REQ64I_CREATE_STAGES_4_REQ64_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_REQ64_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGES_GNT_CREATE_STAGES_4_GNT_IN_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_GNT_IN_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGES_TRDY_CREATE_STAGES_4_TRDY_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_TRDY_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGES_DEVSELI_CREATE_STAGES_4_DEVSEL_I_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_DEVSEL_I_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGES_CBE_I0_CREATE_STAGES_4_CBE_I0_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I0_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGES_CBE_I1_CREATE_STAGES_4_CBE_I1_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I1_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGES_CBE_I2_CREATE_STAGES_4_CBE_I2_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I2_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGES_CBE_I3_CREATE_STAGES_4_CBE_I3_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I3_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGES_CBE_I4_CREATE_STAGES_4_CBE_I4_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I4_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGES_CBE_I5_CREATE_STAGES_4_CBE_I5_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I5_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGES_CBE_I6_CREATE_STAGES_4_CBE_I6_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I6_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGES_CBE_I7_CREATE_STAGES_4_CBE_I7_DELAY_STAGE : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(3),
      I1 => NlwRenamedSig_OI_base_hit(3),
      I2 => NlwRenamedSig_OI_base_hit(3),
      I3 => NlwRenamedSig_OI_base_hit(3),
      I4 => NlwRenamedSig_OI_base_hit(3),
      I5 => NlwRenamedSig_OI_base_hit(3),
      O => BU2_U0_pci32_inst_PCI_LC_I_CBE_I7_LUT_DELAY_STAGE(4)
    );
  BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_DL : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733,
      Q => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_DL_734
    );
  BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT : FDC
    port map (
      C => clk,
      CLR => rst,
      D => BU2_U0_pci32_inst_PCI_LC_I_EOT_OEOT_D,
      Q => BU2_U0_pci32_inst_PCI_LC_I_EOT_EOT_733
    );
  BU2_U0_pci32_inst_XPCI_CBI0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => cbd_7(0),
      PRE => rst,
      Q => NlwRenamedSig_OI_s_cbe(0)
    );
  BU2_U0_pci32_inst_XPCI_CBI1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => cbd_7(1),
      PRE => rst,
      Q => NlwRenamedSig_OI_s_cbe(1)
    );
  BU2_U0_pci32_inst_XPCI_CBI2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => cbd_7(2),
      PRE => rst,
      Q => NlwRenamedSig_OI_s_cbe(2)
    );
  BU2_U0_pci32_inst_XPCI_CBI3 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => cbd_7(3),
      PRE => rst,
      Q => NlwRenamedSig_OI_s_cbe(3)
    );
  BU2_U0_pci32_inst_XPCI_CBI4 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_S_CBE(4)
    );
  BU2_U0_pci32_inst_XPCI_CBI5 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_S_CBE(5)
    );
  BU2_U0_pci32_inst_XPCI_CBI6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_S_CBE(6)
    );
  BU2_U0_pci32_inst_XPCI_CBI7 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_S_CBE(7)
    );
  BU2_U0_pci32_inst_XPCI_ADI0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(0),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(0)
    );
  BU2_U0_pci32_inst_XPCI_ADI1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(1),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(1)
    );
  BU2_U0_pci32_inst_XPCI_ADI2 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(2),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(2)
    );
  BU2_U0_pci32_inst_XPCI_ADI3 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(3),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(3)
    );
  BU2_U0_pci32_inst_XPCI_ADI4 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(4),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(4)
    );
  BU2_U0_pci32_inst_XPCI_ADI5 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(5),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(5)
    );
  BU2_U0_pci32_inst_XPCI_ADI6 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(6),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(6)
    );
  BU2_U0_pci32_inst_XPCI_ADI7 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(7),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(7)
    );
  BU2_U0_pci32_inst_XPCI_ADI8 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(8),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(8)
    );
  BU2_U0_pci32_inst_XPCI_ADI9 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(9),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(9)
    );
  BU2_U0_pci32_inst_XPCI_ADI10 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(10),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(10)
    );
  BU2_U0_pci32_inst_XPCI_ADI11 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(11),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(11)
    );
  BU2_U0_pci32_inst_XPCI_ADI12 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(12),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(12)
    );
  BU2_U0_pci32_inst_XPCI_ADI13 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(13),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(13)
    );
  BU2_U0_pci32_inst_XPCI_ADI14 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(14),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(14)
    );
  BU2_U0_pci32_inst_XPCI_ADI15 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(15),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(15)
    );
  BU2_U0_pci32_inst_XPCI_ADI16 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(16),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(16)
    );
  BU2_U0_pci32_inst_XPCI_ADI17 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(17),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(17)
    );
  BU2_U0_pci32_inst_XPCI_ADI18 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(18),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(18)
    );
  BU2_U0_pci32_inst_XPCI_ADI19 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(19),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(19)
    );
  BU2_U0_pci32_inst_XPCI_ADI20 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(20),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(20)
    );
  BU2_U0_pci32_inst_XPCI_ADI21 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(21),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(21)
    );
  BU2_U0_pci32_inst_XPCI_ADI22 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(22),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(22)
    );
  BU2_U0_pci32_inst_XPCI_ADI23 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(23),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(23)
    );
  BU2_U0_pci32_inst_XPCI_ADI24 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(24),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(24)
    );
  BU2_U0_pci32_inst_XPCI_ADI25 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(25),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(25)
    );
  BU2_U0_pci32_inst_XPCI_ADI26 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(26),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(26)
    );
  BU2_U0_pci32_inst_XPCI_ADI27 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(27),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(27)
    );
  BU2_U0_pci32_inst_XPCI_ADI28 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(28),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(28)
    );
  BU2_U0_pci32_inst_XPCI_ADI29 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(29),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(29)
    );
  BU2_U0_pci32_inst_XPCI_ADI30 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(30),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(30)
    );
  BU2_U0_pci32_inst_XPCI_ADI31 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => add_4(31),
      PRE => rst,
      Q => NlwRenamedSig_OI_adio_out(31)
    );
  BU2_U0_pci32_inst_XPCI_ADI32 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(32)
    );
  BU2_U0_pci32_inst_XPCI_ADI33 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(33)
    );
  BU2_U0_pci32_inst_XPCI_ADI34 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(34)
    );
  BU2_U0_pci32_inst_XPCI_ADI35 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(35)
    );
  BU2_U0_pci32_inst_XPCI_ADI36 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(36)
    );
  BU2_U0_pci32_inst_XPCI_ADI37 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(37)
    );
  BU2_U0_pci32_inst_XPCI_ADI38 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(38)
    );
  BU2_U0_pci32_inst_XPCI_ADI39 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(39)
    );
  BU2_U0_pci32_inst_XPCI_ADI40 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(40)
    );
  BU2_U0_pci32_inst_XPCI_ADI41 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(41)
    );
  BU2_U0_pci32_inst_XPCI_ADI42 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(42)
    );
  BU2_U0_pci32_inst_XPCI_ADI43 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(43)
    );
  BU2_U0_pci32_inst_XPCI_ADI44 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(44)
    );
  BU2_U0_pci32_inst_XPCI_ADI45 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(45)
    );
  BU2_U0_pci32_inst_XPCI_ADI46 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(46)
    );
  BU2_U0_pci32_inst_XPCI_ADI47 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(47)
    );
  BU2_U0_pci32_inst_XPCI_ADI48 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(48)
    );
  BU2_U0_pci32_inst_XPCI_ADI49 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(49)
    );
  BU2_U0_pci32_inst_XPCI_ADI50 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(50)
    );
  BU2_U0_pci32_inst_XPCI_ADI51 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(51)
    );
  BU2_U0_pci32_inst_XPCI_ADI52 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(52)
    );
  BU2_U0_pci32_inst_XPCI_ADI53 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(53)
    );
  BU2_U0_pci32_inst_XPCI_ADI54 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(54)
    );
  BU2_U0_pci32_inst_XPCI_ADI55 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(55)
    );
  BU2_U0_pci32_inst_XPCI_ADI56 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(56)
    );
  BU2_U0_pci32_inst_XPCI_ADI57 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(57)
    );
  BU2_U0_pci32_inst_XPCI_ADI58 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(58)
    );
  BU2_U0_pci32_inst_XPCI_ADI59 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(59)
    );
  BU2_U0_pci32_inst_XPCI_ADI60 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(60)
    );
  BU2_U0_pci32_inst_XPCI_ADI61 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(61)
    );
  BU2_U0_pci32_inst_XPCI_ADI62 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(62)
    );
  BU2_U0_pci32_inst_XPCI_ADI63 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => NlwRenamedSig_OI_csr_25_Q,
      D => NlwRenamedSig_OI_cfg_100_Q,
      PRE => rst,
      Q => BU2_U0_pci32_inst_ADIO_OUT(63)
    );
  BU2_U0_pci32_inst_XST_GND : GND
    port map (
      G => NlwRenamedSig_OI_base_hit(3)
    );
  BU2_U0_pci32_inst_XST_VCC : VCC
    port map (
      P => NlwRenamedSig_OI_csr_25_Q
    );

end STRUCTURE;

