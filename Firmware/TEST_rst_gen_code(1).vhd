--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:45:17 09/04/2014
-- Design Name:   
-- Module Name:   C:/Xilinx Projects/Firmware/TEST_rst_gen_code.vhd
-- Project Name:  Firmware
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: periodic_rst_gen_code
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
 
ENTITY TEST_rst_gen_code IS
END TEST_rst_gen_code;
 
ARCHITECTURE behavior OF TEST_rst_gen_code IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT periodic_rst_gen_code
    PORT(
         en : IN  std_logic;
         clk : IN  std_logic;
         rst_sig : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal rst_sig : std_logic;

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: periodic_rst_gen_code PORT MAP (
          en => en,
          clk => clk,
          rst_sig => rst_sig
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	
	en_proc : process
	begin
		en <= '0';
		wait for 450 ns;
		en <= '1';
		wait for 2000 ms;
	end process;

END;
