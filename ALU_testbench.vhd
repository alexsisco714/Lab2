--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:16:09 02/09/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Alex.Sisco/Documents/ISE Projects/Lab2/ALU_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY ALU_testbench IS
END ALU_testbench;
 
ARCHITECTURE behavior OF ALU_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A2 : IN  std_logic_vector(3 downto 0);
         B2 : IN  std_logic_vector(3 downto 0);
         Cin2 : IN  std_logic;
			V : OUT  std_logic;
         Cout2 : OUT  std_logic;
         F2 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A2 : std_logic_vector(3 downto 0) := (others => '0');
   signal B2 : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin2 : std_logic := '0';

 	--Outputs
	signal V : std_logic;
   signal Cout2 : std_logic;
   signal F2 : std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A2 => A2,
          B2 => B2,
          Cin2 => Cin2,
			 V => V,
          Cout2 => Cout2,
          F2 => F2
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
	--summation test
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A2<="0000";
		B2<="0000";
		Cin2<='0';
		For i in 0 to 15 loop
			for j in 0 to 15 loop
				wait for 10 ns;
					assert (F2=A2 + B2) report "summation test" severity Error;
					B2<= B2 + "0001";
			end loop;
			A2<=A2+"0001";
		end loop;
--subtraction test
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A2<="0000";
		B2<="0000";
		Cin2<='1';
		For i in 0 to 15 loop
			for j in 0 to 15 loop
				wait for 10 ns;
					assert (F2=A2 - B2) report "subtraction test" severity Error;
					B2<= B2 + "0001";
			end loop;
			A2<=A2+"0001";
		end loop;
		report "test completed";
      

      wait;
   end process;

END;
