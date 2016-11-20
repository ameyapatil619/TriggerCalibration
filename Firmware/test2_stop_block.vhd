-- Vhdl test bench created from schematic C:\Xilinx Projects\test_setup\stop_block.sch - Wed Apr 23 17:19:35 2014
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
ENTITY stop_block_stop_block_sch_tb IS
END stop_block_stop_block_sch_tb;
ARCHITECTURE behavioral OF stop_block_stop_block_sch_tb IS 

   COMPONENT stop_block
   PORT( en	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          re	:	IN	STD_LOGIC; 
          stop_data_in	:	IN	STD_LOGIC; 
          stop_data_out	:	OUT	STD_LOGIC; 
          done_stop	:	OUT	STD_LOGIC; 
          full_stop	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL en	:	STD_LOGIC := '1';
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL re	:	STD_LOGIC;
   SIGNAL stop_data_in	:	STD_LOGIC;
   SIGNAL stop_data_out	:	STD_LOGIC;
   SIGNAL done_stop	:	STD_LOGIC;
   SIGNAL full_stop	:	STD_LOGIC;
	
	constant clk_period : time := 50 ns;

BEGIN

   UUT: stop_block PORT MAP(
		en => en, 
		clk => clk, 
		rst => rst, 
		re => re, 
		stop_data_in => stop_data_in, 
		stop_data_out => stop_data_out, 
		done_stop => done_stop, 
		full_stop => full_stop
   );
	
	data_gen :process
	begin
		stop_data_in <= '1';
		wait for clk_period;
		stop_data_in <= '0';
		wait for clk_period;
	end process;
	
	clk_gen :process
	begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
	end process;
	
	write_read :process
	begin
		re <= '0';
		wait for 1500 us;
		re <= '1';
		wait for 500 us;
	end process;
	
	reset : process
	begin
		rst <= '1';
		wait for 50 us;
		rst <= '0';
		wait for 1700 us;
	end process;

END;
