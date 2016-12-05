--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:52:40 12/05/2016
-- Design Name:   
-- Module Name:   C:/Users/yorkL/Desktop/EECS 199Individual study/TriggerCalibration-master/Firmware/top_trigg_cnt_tb.vhd
-- Project Name:  Firmware
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_trigg_cnt
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
 
ENTITY top_trigg_cnt_tb IS
END top_trigg_cnt_tb;
 
ARCHITECTURE behavior OF top_trigg_cnt_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_trigg_cnt
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         enable : IN  std_logic;
         trig_0H : IN  std_logic;
         trig_0L : IN  std_logic;
         trig_1H : IN  std_logic;
         trig_1L : IN  std_logic;
         trig_2H : IN  std_logic;
         trig_2L : IN  std_logic;
         trig_3H : IN  std_logic;
         trig_3L : IN  std_logic;
         trig_ct_0H : OUT  std_logic_vector(31 downto 0);
         trig_ct_0L : OUT  std_logic_vector(31 downto 0);
         trig_ct_1H : OUT  std_logic_vector(31 downto 0);
         trig_ct_1L : OUT  std_logic_vector(31 downto 0);
         trig_ct_2H : OUT  std_logic_vector(31 downto 0);
         trig_ct_2L : OUT  std_logic_vector(31 downto 0);
         trig_ct_3H : OUT  std_logic_vector(31 downto 0);
         trig_ct_3L : OUT  std_logic_vector(31 downto 0);
         dac_flag_0H : OUT  std_logic_vector(1 downto 0);
         dac_flag_0L : OUT  std_logic_vector(1 downto 0);
         dac_flag_1H : OUT  std_logic_vector(1 downto 0);
         dac_flag_1L : OUT  std_logic_vector(1 downto 0);
         dac_flag_2H : OUT  std_logic_vector(1 downto 0);
         dac_flag_2L : OUT  std_logic_vector(1 downto 0);
         dac_flag_3H : OUT  std_logic_vector(1 downto 0);
         dac_flag_3L : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal enable : std_logic := '0';
   signal trig_0H : std_logic := '0';
   signal trig_0L : std_logic := '0';
   signal trig_1H : std_logic := '0';
   signal trig_1L : std_logic := '0';
   signal trig_2H : std_logic := '0';
   signal trig_2L : std_logic := '0';
   signal trig_3H : std_logic := '0';
   signal trig_3L : std_logic := '0';

 	--Outputs
   signal trig_ct_0H : std_logic_vector(31 downto 0);
   signal trig_ct_0L : std_logic_vector(31 downto 0);
   signal trig_ct_1H : std_logic_vector(31 downto 0);
   signal trig_ct_1L : std_logic_vector(31 downto 0);
   signal trig_ct_2H : std_logic_vector(31 downto 0);
   signal trig_ct_2L : std_logic_vector(31 downto 0);
   signal trig_ct_3H : std_logic_vector(31 downto 0);
   signal trig_ct_3L : std_logic_vector(31 downto 0);
   signal dac_flag_0H : std_logic_vector(1 downto 0);
   signal dac_flag_0L : std_logic_vector(1 downto 0);
   signal dac_flag_1H : std_logic_vector(1 downto 0);
   signal dac_flag_1L : std_logic_vector(1 downto 0);
   signal dac_flag_2H : std_logic_vector(1 downto 0);
   signal dac_flag_2L : std_logic_vector(1 downto 0);
   signal dac_flag_3H : std_logic_vector(1 downto 0);
   signal dac_flag_3L : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_trigg_cnt PORT MAP (
          clk => clk,
          rst => rst,
          enable => enable,
          trig_0H => trig_0H,
          trig_0L => trig_0L,
          trig_1H => trig_1H,
          trig_1L => trig_1L,
          trig_2H => trig_2H,
          trig_2L => trig_2L,
          trig_3H => trig_3H,
          trig_3L => trig_3L,
          trig_ct_0H => trig_ct_0H,
          trig_ct_0L => trig_ct_0L,
          trig_ct_1H => trig_ct_1H,
          trig_ct_1L => trig_ct_1L,
          trig_ct_2H => trig_ct_2H,
          trig_ct_2L => trig_ct_2L,
          trig_ct_3H => trig_ct_3H,
          trig_ct_3L => trig_ct_3L,
          dac_flag_0H => dac_flag_0H,
          dac_flag_0L => dac_flag_0L,
          dac_flag_1H => dac_flag_1H,
          dac_flag_1L => dac_flag_1L,
          dac_flag_2H => dac_flag_2H,
          dac_flag_2L => dac_flag_2L,
          dac_flag_3H => dac_flag_3H,
          dac_flag_3L => dac_flag_3L
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
	
	enable_process: process
	begin
	wait for 20ns;
	enable <= '1';
	end process;
	
		trig_0H_process :process
   	begin
		wait for 30ns;
		trig_0H <= '1';
		wait for 25ns;
		trig_0H <= '0';
	  end process;
	 

		trig_0L_process :process
   	begin
		wait for 40ns;
		trig_0L <= '1';
		wait for 30ns;
		trig_0L <= '0';
	  end process;

		trig_1H_process :process
   	begin
		wait for 35ns;
		trig_1H <= '1';
		wait for 25ns;
		trig_1H <= '0';
	  end process;
	 
 trig_1L_process :process
   	begin
		wait for 30ns;
		trig_1L <= '1';
		wait for 30ns;
		trig_1L <= '0';
		   end process;

		trig_2H_process :process
   	begin
		wait for 30ns;
		trig_2H <= '1';
		wait for 25ns;
		trig_2H <= '0';
		end process;

		trig_2L_process :process
   	begin
		wait for 45ns;
		trig_2L <= '1';
		wait for 25ns;
		trig_2L <= '0';
		   end process;

		
		trig_3H_process :process
   	begin
		wait for 45ns;
		trig_3H <= '1';
		wait for 30ns;
		trig_3H <= '0';
		end process;
		
	   trig_3L_process :process
   	begin
		wait for 10ns;
		trig_3L <= '1';
		wait for 15ns;
		trig_3L <= '0';
		end process;
END;
