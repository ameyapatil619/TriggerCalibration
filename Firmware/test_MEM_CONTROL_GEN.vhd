--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:50:33 08/13/2014
-- Design Name:   
-- Module Name:   C:/Xilinx Projects/test_setup/test_MEM_CONTROL_GEN.vhd
-- Project Name:  test_setup
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mem_control_gen
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
 
ENTITY test_MEM_CONTROL_GEN IS
END test_MEM_CONTROL_GEN;
 
ARCHITECTURE behavior OF test_MEM_CONTROL_GEN IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mem_control_gen
    PORT(en : IN std_logic;
         rst : IN  std_logic;
         re : IN  std_logic;
         start : INOUT  std_logic;
         clk : IN  std_logic;
         address : OUT  std_logic_vector(11 downto 0);
         full : OUT  std_logic;
         done : OUT  std_logic;
         wait_sig : OUT  std_logic;
         we : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal en : std_logic := '1';
   signal rst : std_logic := '0';
   signal re : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal start : std_logic;

 	--Outputs
   signal address : std_logic_vector(11 downto 0);
   signal full : std_logic;
   signal done : std_logic;
   signal wait_sig : std_logic;
   signal we : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mem_control_gen PORT MAP (
          en => en,
			 rst => rst,
          re => re,
          start => start,
          clk => clk,
          address => address,
          full => full,
          done => done,
          wait_sig => wait_sig,
          we => we
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset_proc : process
	begin
		rst <= '1';
		wait for 100 us;
		rst <= '0';
		wait for 3000 us;
	end process;
	
	read_proc : process
	begin
		re <= '0';
		wait for 1000 us;
		re <= '1';
		wait for 1000 us;
	end process;

END;
