----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2024 09:42:07
-- Design Name: 
-- Module Name: alu43_065_tb - Behavioral
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu43_065_tb is
--  Port ( );
end alu43_065_tb;

architecture Behavioral of alu43_065_tb is
component alu43_065 is
    Port ( a,b : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0);
           z : out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal y: std_logic_vector(3 downto 0);
signal z: std_logic_vector(7 downto 0);
signal a,b: std_logic_vector(3 downto 0);
signal s: std_logic_vector(2 downto 0);           
begin
uut: alu43_065 port map(a=>a,b=>b,s=>s,y=>y,z=>z);
process
begin
a<="1001"; b<="0110";
s<="000"; wait for 50 ns;
s<="001"; wait for 50 ns;
s<="010"; wait for 50 ns;
s<="011"; wait for 50 ns;
s<="100"; wait for 50 ns;
s<="101"; wait for 50 ns;
s<="110"; wait for 50 ns;
s<="111"; wait for 50 ns;
end process;
end Behavioral;
