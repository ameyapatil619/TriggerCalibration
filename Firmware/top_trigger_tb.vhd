-- Vhdl test bench created from schematic C:\Users\yorkL\Desktop\EECS 199Individual study\TriggerCalibration-master\Firmware\top_trigg.sch - Sun Dec 04 20:59:48 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
use ieee.math_real.all;

ENTITY top_trigg_top_trigg_sch_tb IS
END top_trigg_top_trigg_sch_tb;
ARCHITECTURE behavioral OF top_trigg_top_trigg_sch_tb IS 

   COMPONENT top_trigg
   PORT( rst	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          enable	:	IN	STD_LOGIC; 
          trig_0H	:	IN	STD_LOGIC; 
          trig_0L	:	IN	STD_LOGIC; 
          trig_1H	:	IN	STD_LOGIC; 
          trig_1L	:	IN	STD_LOGIC; 
          trig_2H	:	IN	STD_LOGIC; 
          trig_2L	:	IN	STD_LOGIC; 
          trig_3L	:	IN	STD_LOGIC; 
          trig_3H	:	IN	STD_LOGIC; 
          trig_ct_0H	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          trig_ct_0L	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          trig_ct_1H	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          trig_ct_1L	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          trig_ct_2H	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          trig_ct_2L	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          trig_ct_3H	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          trig_ct_3L	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT;

   SIGNAL rst	:	STD_LOGIC:= '0';
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL enable	:	STD_LOGIC;
   SIGNAL trig_0H	:	STD_LOGIC;
   SIGNAL trig_0L	:	STD_LOGIC;
   SIGNAL trig_1H	:	STD_LOGIC;
   SIGNAL trig_1L	:	STD_LOGIC;
   SIGNAL trig_2H	:	STD_LOGIC;
   SIGNAL trig_2L	:	STD_LOGIC;
   SIGNAL trig_3L	:	STD_LOGIC;
   SIGNAL trig_3H	:	STD_LOGIC;
   SIGNAL trig_ct_0H	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL trig_ct_0L	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL trig_ct_1H	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL trig_ct_1L	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL trig_ct_2H	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL trig_ct_2L	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL trig_ct_3H	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL trig_ct_3L	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   constant clk_period : time := 10 ns;
BEGIN

   UUT: top_trigg PORT MAP(
		rst => rst, 
		clk => clk, 
		enable => enable, 
		trig_0H => trig_0H, 
		trig_0L => trig_0L, 
		trig_1H => trig_1H, 
		trig_1L => trig_1L, 
		trig_2H => trig_2H, 
		trig_2L => trig_2L, 
		trig_3L => trig_3L, 
		trig_3H => trig_3H, 
		trig_ct_0H => trig_ct_0H, 
		trig_ct_0L => trig_ct_0L, 
		trig_ct_1H => trig_ct_1H, 
		trig_ct_1L => trig_ct_1L, 
		trig_ct_2H => trig_ct_2H, 
		trig_ct_2L => trig_ct_2L, 
		trig_ct_3H => trig_ct_3H, 
		trig_ct_3L => trig_ct_3L
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
		wait for 35ns;
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
