----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2019 18:42:20
-- Design Name: 
-- Module Name: flip_flop_synchronizer - Behavioral
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

entity flip_flop_synchronizer is
    generic (
      SYNC_STAGES : integer := 2
    );
    Port ( 
      sig         : in std_logic;
      from_clk    : in std_logic;
      sig_sync    : out std_logic;
      to_clk      : in std_logic
    );
end flip_flop_synchronizer;

architecture Behavioral of flip_flop_synchronizer is
    signal A_q : std_logic;
    signal B : std_logic_vector(SYNC_STAGES-1 downto 0);
begin
A_proc : process(from_clk)
    begin
      if rising_edge(from_clk) then
        A_q <= sig;
      end if;
    end process;
 
B_proc : process(to_clk)
    begin
      if rising_edge(to_clk) then
        B(0) <= A_q;
        for i in 1 to SYNC_STAGES-1 loop
          B(i) <= B(i-1);
        end loop;
      end if;
    end process;

sig_sync <= B(SYNC_STAGES-1);

end Behavioral;
