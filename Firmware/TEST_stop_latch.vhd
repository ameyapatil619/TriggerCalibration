--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:02:32 08/28/2014
-- Design Name:   
-- Module Name:   C:/Xilinx Projects/Firmware/TEST_stop_latch.vhd
-- Project Name:  Firmware
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: stop_latch
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TEST_stop_latch IS
END TEST_stop_latch;
 
ARCHITECTURE behavior OF TEST_stop_latch IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT stop_latch
    PORT(
         trigger_in : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         stop : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal trigger_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal stop : std_logic;

   -- Clock period definitions
   constant clk_period : time := 6.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: stop_latch PORT MAP (
          trigger_in => trigger_in,
          clk => clk,
          rst => rst,
          stop => stop
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	trig : process
	begin
		trigger_in <= '0';
		wait for 500 ns;
		trigger_in <= '1';
		wait for 12.5 ns;
	end process;
	
	reset : process
	begin
		rst <= '0';
		wait for 800 ns;
		rst <= '1';
		wait for 10 ns;
	end process;

END;
