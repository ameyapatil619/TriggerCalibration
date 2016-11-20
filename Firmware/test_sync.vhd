-- Vhdl test bench created from schematic C:\Xilinx Projects\Firmware\Sync.sch - Sun Aug 10 18:45:57 2014
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
ENTITY Sync_Sync_sch_tb IS
END Sync_Sync_sch_tb;
ARCHITECTURE behavioral OF Sync_Sync_sch_tb IS 

   COMPONENT Sync
   PORT( clk_80M	:	IN	STD_LOGIC; 
          clk_20	:	IN	STD_LOGIC; 
          clk_1	:	IN	STD_LOGIC; 
          clk_1M	:	OUT	STD_LOGIC; 
          clk_20M	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk_80M	:	STD_LOGIC;
   SIGNAL clk_20	:	STD_LOGIC;
   SIGNAL clk_1	:	STD_LOGIC;
   SIGNAL clk_1M	:	STD_LOGIC;
   SIGNAL clk_20M	:	STD_LOGIC;
	
	constant clk_80M_period : 	time 	:= 12.5 ns;
	constant clk_20_period	:	time	:= 50 ns;
	constant clk_1_period	:	time	:= 1600 ns;

BEGIN

   UUT: Sync PORT MAP(
		clk_80M => clk_80M, 
		clk_20 => clk_20, 
		clk_1 => clk_1, 
		clk_1M => clk_1M, 
		clk_20M => clk_20M
   );
	
	clk_80M_proc : process
	begin
		clk_80M <= '0';
		wait for clk_80M_period/2;
		clk_80M <= '1';
		wait for clk_80M_period/2;
	end process;
	
	clk_20_proc : process
	begin
		clk_20 <= '1';
		wait for clk_20_period/2;
		clk_20 <= '0';
		wait for clk_20_period/2;
	end process;
	
	clk_1_proc : process
	begin
		clk_1 <= '0';
		wait for clk_1_period/2;
		clk_1 <= '1';
		wait for clk_1_period/2;
	end process;

END;
