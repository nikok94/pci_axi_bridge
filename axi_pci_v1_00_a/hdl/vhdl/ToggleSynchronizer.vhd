----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2019 14:28:41
-- Design Name: 
-- Module Name: ToggleSynchronizer - Behavioral
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

entity ToggleSynchronizer is
    generic ( 
        SYNC_STAGES : integer := 2
        );
    Port (
      sign      : in std_logic;
      from_clk  : in std_logic;
      sign_sync : out std_logic;
      to_clk    : in std_logic
    );
end ToggleSynchronizer;

architecture Behavioral of ToggleSynchronizer is
    signal B : std_logic_vector(0 to SYNC_STAGES);
    signal Ain  : std_logic:= '0';
    signal Aout : std_logic:= '0';

begin

A_inst : process(from_clk)
      begin
        if rising_edge(from_clk) then 
          Aout <= Ain;
        end if;
      end process;

Ain <= not Aout when sign = '1' else Aout;

B_inst : process(to_clk)
    begin
      if rising_edge(to_clk) then
        B(0) <= Aout;
          for i in 1 to SYNC_STAGES loop
            B(i) <= B(i-1);
          end loop;
      end if;
    end process;
    sign_sync <= B(SYNC_STAGES) xor B(SYNC_STAGES-1);
    
end Behavioral;
