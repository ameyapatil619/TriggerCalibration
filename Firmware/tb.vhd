--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:15:36 12/04/2016
-- Design Name:   
-- Module Name:   C:/Users/yorkL/Desktop/EECS 199Individual study/TriggerCalibration-master/Firmware/tb.vhd
-- Project Name:  Firmware
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_psi_trigg
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
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_psi_trigg
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
         enable : IN  std_logic;
         prl_in_0H : IN  std_logic_vector(31 downto 0);
         prl_in_0L : IN  std_logic_vector(31 downto 0);
         prl_in_1H : IN  std_logic_vector(31 downto 0);
         prl_in_1L : IN  std_logic_vector(31 downto 0);
         prl_in_2H : IN  std_logic_vector(31 downto 0);
         prl_in_2L : IN  std_logic_vector(31 downto 0);
         prl_in_3H : IN  std_logic_vector(31 downto 0);
         prl_in_3L : IN  std_logic_vector(31 downto 0);
         ser_start : IN  std_logic;
         eoc_0H : OUT  std_logic;
         ser_out_0H : OUT  std_logic;
         eoc_0L : OUT  std_logic;
         ser_out_0L : OUT  std_logic;
         eoc_1H : OUT  std_logic;
         ser_out_1H : OUT  std_logic;
         eoc_1L : OUT  std_logic;
         ser_out_1L : OUT  std_logic;
         eoc_2H : OUT  std_logic;
         ser_out_2H : OUT  std_logic;
         eoc_2L : OUT  std_logic;
         ser_out_2L : OUT  std_logic;
         eoc_3H : OUT  std_logic;
         ser_out_3H : OUT  std_logic;
         eoc_3L : OUT  std_logic;
         ser_out_3L : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal prl_in_0H : std_logic_vector(31 downto 0) := (others => '0');
   signal prl_in_0L : std_logic_vector(31 downto 0) := (others => '0');
   signal prl_in_1H : std_logic_vector(31 downto 0) := (others => '0');
   signal prl_in_1L : std_logic_vector(31 downto 0) := (others => '0');
   signal prl_in_2H : std_logic_vector(31 downto 0) := (others => '0');
   signal prl_in_2L : std_logic_vector(31 downto 0) := (others => '0');
   signal prl_in_3H : std_logic_vector(31 downto 0) := (others => '0');
   signal prl_in_3L : std_logic_vector(31 downto 0) := (others => '0');
   signal ser_start : std_logic := '0';

 	--Outputs
   signal eoc_0H : std_logic;
   signal ser_out_0H : std_logic;
   signal eoc_0L : std_logic;
   signal ser_out_0L : std_logic;
   signal eoc_1H : std_logic;
   signal ser_out_1H : std_logic;
   signal eoc_1L : std_logic;
   signal ser_out_1L : std_logic;
   signal eoc_2H : std_logic;
   signal ser_out_2H : std_logic;
   signal eoc_2L : std_logic;
   signal ser_out_2L : std_logic;
   signal eoc_3H : std_logic;
   signal ser_out_3H : std_logic;
   signal eoc_3L : std_logic;
   signal ser_out_3L : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_psi_trigg PORT MAP (
          rst => rst,
          clk => clk,
          enable => enable,
          prl_in_0H => prl_in_0H,
          prl_in_0L => prl_in_0L,
          prl_in_1H => prl_in_1H,
          prl_in_1L => prl_in_1L,
          prl_in_2H => prl_in_2H,
          prl_in_2L => prl_in_2L,
          prl_in_3H => prl_in_3H,
          prl_in_3L => prl_in_3L,
          ser_start => ser_start,
          eoc_0H => eoc_0H,
          ser_out_0H => ser_out_0H,
          eoc_0L => eoc_0L,
          ser_out_0L => ser_out_0L,
          eoc_1H => eoc_1H,
          ser_out_1H => ser_out_1H,
          eoc_1L => eoc_1L,
          ser_out_1L => ser_out_1L,
          eoc_2H => eoc_2H,
          ser_out_2H => ser_out_2H,
          eoc_2L => eoc_2L,
          ser_out_2L => ser_out_2L,
          eoc_3H => eoc_3H,
          ser_out_3H => ser_out_3H,
          eoc_3L => eoc_3L,
          ser_out_3L => ser_out_3L
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
