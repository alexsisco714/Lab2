----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:47 02/09/2014 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A2 : in  STD_LOGIC_VECTOR (3 downto 0);
           B2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin2 : in  STD_LOGIC;
           Cout2 : out  STD_LOGIC;
           F2 : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU;
V <= '1' WHEN (signed(A2) + signed(B2) <0) or (((not signed(A2)) + (not signed(B2)))>0) ELSE '0';
architecture Behavioral of ALU is
COMPONENT Full_Adder is
	port(A : in STD_LOGIC;
		  B : in STD_LOGIC;
		  Cin : in STD_LOGIC;
		  V : out STD_LOGIC;
		  Cout : out STD_LOGIC;
		  F : out STD_LOGIC);
END COMPONENT Full_Adder;
signal C,I : STD_LOGIC_VECTOR(3 downto 0);

begin
I <= not B2 WHEN (Cin2='1')ELSE B2;
Bit0: component Full_Adder
	port map(A => A2(0),
				B => I(0),
				Cin => Cin2,
				Cout => C(0),
				F => F2(0));
Bit1: component Full_Adder
	port map(A => A2(1),
				B => I(1),
				Cin => C(0),
				Cout => C(1),
				F => F2(1));
Bit2: component Full_Adder
	port map(A => A2(2),
				B => I(2),
				Cin => C(1),
				Cout => C(2),
				F => F2(2));
Bit3: component Full_Adder
	port map(A => A2(3),
				B => I(3),
				Cin => C(2),
				Cout => Cout2,
				F => F2(3));
V <= '1' WHEN (unsigned(A2) + unsigned(B2) <0) or (((not unsigned(A2)) + (not unsigned(B2)))>0) ELSE '0';

end Behavioral;

