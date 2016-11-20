--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:21 08/10/2014
-- Design Name:   
-- Module Name:   C:/Xilinx Projects/Firmware/test_CS_gen.vhd
-- Project Name:  Firmware
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CS_gen
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
 
ENTITY test_CS_gen IS
END test_CS_gen;
 
ARCHITECTURE behavior OF test_CS_gen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CS_gen
    PORT(
         en : IN  std_logic;
         clk_1M : IN  std_logic;
         clk_20M : IN  std_logic;
         rst : IN  std_logic;
			ADC_clk : OUT std_logic;
			SST_rck : OUT std_logic;
         CS_n : OUT  std_logic;
         --CS : OUT  std_logic;
         RAM_sync : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '1';
   signal clk_1M : std_logic := '1';
   signal clk_20M : std_logic := '1';
   signal rst : std_logic := '0';

 	--Outputs
   signal CS_n : std_logic;
   --signal CS : std_logic;
   signal RAM_sync : std_logic;
	signal ADC_clk : std_logic;
	signal SST_rck : std_logic;

   -- Clock period definitions
   constant clk_1M_period : time := 1.6 us;
   constant clk_20M_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CS_gen PORT MAP (
          en => en,
          clk_1M => clk_1M,
          clk_20M => clk_20M,
          rst => rst,
			 ADC_clk => ADC_clk,
			 SST_rck => SST_rck,
          CS_n => CS_n,
          --CS => CS,
          RAM_sync => RAM_sync
        );

   -- Clock process definitions
   clk_1M_process :process
   begin
		clk_1M <= '1';
		wait for clk_1M_period/2;
		clk_1M <= '0';
		wait for clk_1M_period/2;
   end process;
 
   clk_20M_process :process
   begin
		clk_20M <= '1';
		wait for clk_20M_period/2;
		clk_20M <= '0';
		wait for clk_20M_period/2;
   end process;
	
	ena : process
	begin
		en <= '0';
		wait for 500 ns;
		en <= '1';
		wait for 5000 ns;
	end process;

END;
