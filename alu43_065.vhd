----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2024 09:29:25
-- Design Name: 
-- Module Name: alu43_065 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu43_065 is
    Port ( a,b : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0);
           z : out STD_LOGIC_VECTOR (7 downto 0));
end alu43_065;

architecture Behavioral of alu43_065 is

begin
y<=a + b when s="000" else
   a - b when s="001" else
   a and b when s="010" else
   a or b when s="011" else
   a nand b when s="100" else
   a xor b when s="110" else
   a nor b when s="111";
z<=a*b when s="101";
end Behavioral;
