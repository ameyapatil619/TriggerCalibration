-- Vhdl test bench created from schematic C:\Xilinx Projects\Firmware\stoplatch_SCH.sch - Thu Aug 28 18:56:23 2014
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
ENTITY stoplatch_SCH_stoplatch_SCH_sch_tb IS
END stoplatch_SCH_stoplatch_SCH_sch_tb;
ARCHITECTURE behavioral OF stoplatch_SCH_stoplatch_SCH_sch_tb IS 

   COMPONENT stoplatch_SCH
   PORT( 	trigger	:	IN	STD_LOGIC; 
				stop	:	OUT	STD_LOGIC; 
				clk	:	IN	STD_LOGIC; 
				reset	:	IN	STD_LOGIC 
				--reset_STOP	:	OUT	STD_LOGIC; 
				--reset_MBED	:	OUT	STD_LOGIC
				);
   END COMPONENT;

   SIGNAL trigger	:	STD_LOGIC;
   SIGNAL stop	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   --SIGNAL reset_STOP	:	STD_LOGIC;
   --SIGNAL reset_MBED	:	STD_LOGIC;

BEGIN

   UUT: stoplatch_SCH PORT MAP(
		trigger => trigger, 
		stop => stop, 
		clk => clk, 
		reset => reset 
		--reset_STOP => reset_STOP, 
		--reset_MBED => reset_MBED
   );

	clk_proc : process
	begin
		clk <= '0';
		wait for 25 ns;
		clk <= '1';
		wait for 25 ns;
	end process;
	
	reset_proc : process
	begin
		reset <= '0';
		wait for 800 ns;
		reset <= '1';
		wait for 1.8 us;
	end process;
	
	trig_proc : process
	begin
		trigger <= '0';
		wait for 600 ns;
		trigger <= '1';
		wait for 50 ns;
	end process;

END;
