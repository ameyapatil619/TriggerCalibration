--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:31:43 11/06/2016
-- Design Name:   
-- Module Name:   /home/ameya/Downloads/Shared/Firmware/counter_trigg_tb.vhd
-- Project Name:  Firmware
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_trigg
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
 
ENTITY trigg_tb IS
END trigg_tb;
 
ARCHITECTURE behavior OF trigg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cntr_trigg
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
			trigger: IN STD_LOGIC;
         enable : IN  std_logic;
			--ovrflw : OUT STD_LOGIC;
			
         q : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
	signal trigger: std_logic := '0';
 	--Outputs
   
	--signal ovrflw : STD_LOGIC;
	signal q : std_logic_vector(31 downto 0);
	
   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
	constant clk_period : time := 12.5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cntr_trigg PORT MAP (
          rst => rst,
          clk => clk,
			 trigger => trigger,
          enable => enable,
--			 ovrflw => ovrflw,
          
			 q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	trigger_process: process
	begin
	
		trigger <= '0';
		wait for clk_period;
		trigger <= '1';
		wait for clk_period;
	end process;
 

   -- Stimulus process
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
     -- wait for 100 ns;	

    --  wait for clk_period*10;

      -- insert stimulus here 

     -- wait;
  -- end process;
	
	enable_process: process
	begin
	
	wait for 25ns;
	enable <= '1';
	wait for 10000000ns;
	enable <= '0';
	
	end process;
	
	rst_process: process
	begin
	
	rst <= '1';
	wait for 25ns;
	rst <= '0';
	wait for 10000000ns;
	
	end process;

END;
