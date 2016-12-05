--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:11:27 12/04/2016
-- Design Name:   
-- Module Name:   C:/Users/yorkL/Desktop/EECS 199Individual study/TriggerCalibration-master/Firmware/top_psi_trigg_tb.vhd
-- Project Name:  Firmware
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: psi_trigg
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
 
ENTITY top_psi_trigg_tb IS
END top_psi_trigg_tb;
 
ARCHITECTURE behavior OF top_psi_trigg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT psi_trigg
    PORT(
         parallel_in : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         enable : IN  std_logic;
         ser_strt : IN  std_logic;
         eoc : OUT  std_logic;
         ser_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal parallel_in : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal ser_strt : std_logic := '0';

 	--Outputs
   signal eoc : std_logic;
   signal ser_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: psi_trigg PORT MAP (
          parallel_in => parallel_in,
          rst => rst,
          clk => clk,
          enable => enable,
          ser_strt => ser_strt,
          eoc => eoc,
          ser_out => ser_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
