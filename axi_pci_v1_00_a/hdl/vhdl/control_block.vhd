----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2019 14:30:16
-- Design Name: 
-- Module Name: control_block - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library work;
use work.axi_ipif;

entity control_block is
    generic(
      
      C_AXIBAR2PCIBAR_0             : std_logic_vector(31 downto 0):= x"12340000";
      C_AXIBAR2PCIBAR_1             : std_logic_vector(31 downto 0):= x"23460000";
      C_S_AXI_CTL_ADDR_WIDTH        : integer := 32;
      C_S_AXI_CTL_DATA_WIDTH        : integer := 32
    );
    port (
      s_axi_ctl_aresetn             : in std_logic;                                     
      s_axi_ctl_aclk                : in std_logic;                                                                                             
      s_axi_ctl_awvalid             : in std_logic;                                     
      s_axi_ctl_awaddr              : in std_logic_vector(c_s_axi_ctl_addr_width-1 downto 0);
      s_axi_ctl_awready             : out std_logic;                                    
      s_axi_ctl_wvalid              : in std_logic;                                     
      s_axi_ctl_wdata               : in std_logic_vector(c_s_axi_ctl_data_width-1 downto 0);                 
      s_axi_ctl_wstrb               : in std_logic_vector((c_s_axi_ctl_data_width/8)-1 downto 0);                  
      s_axi_ctl_wready              : out std_logic;                                    
      s_axi_ctl_bvalid              : out std_logic;                                    
      s_axi_ctl_bresp               : out std_logic_vector(1 downto 0);                 
      s_axi_ctl_bready              : in std_logic;                                     
      s_axi_ctl_arvalid             : in std_logic;                                     
      s_axi_ctl_araddr              : in std_logic_vector(c_s_axi_ctl_addr_width-1 downto 0);
      s_axi_ctl_arready             : out std_logic;                                    
      s_axi_ctl_rvalid              : out std_logic;                                    
      s_axi_ctl_rresp               : out std_logic_vector(1 downto 0);                 
      s_axi_ctl_rdata               : out std_logic_vector(c_s_axi_ctl_data_width-1 downto 0);                
      s_axi_ctl_rready              : in std_logic ;
        
      axibar_control_out            : out std_logic_vector(31 downto 0);
      axibar2pcibar0_out            : out std_logic_vector(31 downto 0);
      axibar2pcibar1_out            : out std_logic_vector(31 downto 0)
    );
end control_block;

architecture Behavioral of control_block is
    constant address_width            : integer := 10;
    constant id_register              : std_logic_vector(31 downto 0):= x"FBCE_2019";
    signal up_wreq                    : std_logic;
    signal up_waddr                   : std_logic_vector(address_width-1 downto 0);
    signal up_wdata                   : std_logic_vector(31 downto 0); 
    signal up_wack                    : std_logic;
    signal up_rreq                    : std_logic;                                 
    signal up_raddr                   : std_logic_vector(address_width-1 downto 0);
    signal up_rdata                   : std_logic_vector(31 downto 0);             
    signal up_rack                    : std_logic;
    signal pci_bar_control_reg        : std_logic_vector(31 downto 0):= (others => '0');
    signal axibar2pcibar_0            : std_logic_vector(31 downto 0):= C_AXIBAR2PCIBAR_0;
    signal axibar2pcibar_1            : std_logic_vector(31 downto 0):= C_AXIBAR2PCIBAR_1;
    signal wr_addr                    : std_logic_vector(7 downto 0);
    signal rd_addr                    : std_logic_vector(7 downto 0);

begin

rer_out_proc : process( s_axi_ctl_aclk)
    begin
      if rising_edge( s_axi_ctl_aclk) then
          axibar_control_out <= pci_bar_control_reg;
          axibar2pcibar0_out <= axibar2pcibar_0;
          axibar2pcibar1_out <= axibar2pcibar_1;
      end if;
    end process;

wr_addr <= up_waddr(address_width-1 downto 2);
rd_addr <= up_raddr(address_width-1 downto 2);

up_write_proc   : process ( s_axi_ctl_aclk, s_axi_ctl_aresetn, up_wreq, wr_addr)
    begin
      if rising_edge( s_axi_ctl_aclk) then
        if ( s_axi_ctl_aresetn = '0') then
          up_wack <= '0';
          pci_bar_control_reg <= (others => '0');
          axibar2pcibar_0 <= (others => '0');
          axibar2pcibar_1 <= (others => '0');
        elsif up_wreq = '1' then
          case wr_addr is
            when x"01" =>
              up_wack <= '1';
              pci_bar_control_reg <= up_wdata;
            when x"02" =>
              up_wack <= '1';
              axibar2pcibar_0 <= up_wdata;
            when x"03" => 
              up_wack <= '1';
              axibar2pcibar_1 <= up_wdata;
            when others =>
              up_wack <= '0';
          end case;
        end if;
      end if;
    end process;

up_read_proc    : process( s_axi_ctl_aclk, s_axi_ctl_aresetn, up_rreq, rd_addr)
    begin
      if rising_edge( s_axi_ctl_aclk) then
        if ( s_axi_ctl_aresetn = '0') then
            up_rdata <= (others => '1');
            up_rack   <= '0';
        elsif (up_rreq = '1') then
          case rd_addr is
            when x"00" =>
              up_rack <= '1';
              up_rdata<= id_register;
            when x"01" =>
              up_rack <= '1';
              up_rdata<= pci_bar_control_reg;
            when x"02" =>
              up_rack <= '1';
              up_rdata<= axibar2pcibar_0;
            when x"03" =>
              up_rack <= '1';
              up_rdata<= axibar2pcibar_1;
            when others =>
              up_rack <= '0';
          end case;
        end if;
      end if;
    end process;

axi_ipif_inst   :   entity work.axi_ipif
    generic map( 
      address_width       => address_width,
      axi_address_width   => 32
    )
    port map(
      up_rstn             => s_axi_ctl_aresetn,
      up_clk              => s_axi_ctl_aclk,
      -- axi interface    
      up_axi_awvalid      => s_axi_ctl_awvalid,
      up_axi_awaddr       => s_axi_ctl_awaddr ,
      up_axi_awready      => s_axi_ctl_awready,
      up_axi_wvalid       => s_axi_ctl_wvalid ,
      up_axi_wdata        => s_axi_ctl_wdata  ,
      up_axi_wstrb        => s_axi_ctl_wstrb  ,
      up_axi_wready       => s_axi_ctl_wready ,
      up_axi_bvalid       => s_axi_ctl_bvalid ,
      up_axi_bresp        => s_axi_ctl_bresp  ,
      up_axi_bready       => s_axi_ctl_bready ,
      up_axi_arvalid      => s_axi_ctl_arvalid,
      up_axi_araddr       => s_axi_ctl_araddr ,
      up_axi_arready      => s_axi_ctl_arready,
      up_axi_rvalid       => s_axi_ctl_rvalid ,
      up_axi_rresp        => s_axi_ctl_rresp  ,
      up_axi_rdata        => s_axi_ctl_rdata  ,
      up_axi_rready       => s_axi_ctl_rready ,
      -- pcore  interface 
      up_wreq             => up_wreq ,
      up_waddr            => up_waddr,
      up_wdata            => up_wdata,
      up_wack             => up_wack ,
      up_rreq             => up_rreq ,
      up_raddr            => up_raddr,
      up_rdata            => up_rdata,
      up_rack             => up_rack 
    ); 



end Behavioral;
