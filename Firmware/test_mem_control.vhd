-- Vhdl test bench created from schematic C:\Xilinx Projects\test_setup\mem_control.sch - Tue Apr 22 01:50:19 2014
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
ENTITY mem_control_mem_control_sch_tb IS
END mem_control_mem_control_sch_tb;
ARCHITECTURE behavioral OF mem_control_mem_control_sch_tb IS 

   COMPONENT mem_control
   PORT( en	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          re	:	IN	STD_LOGIC; 
          addr	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0);
			 start:	OUT STD_LOGIC;
			 full	:	OUT STD_LOGIC;
			 we	:	OUT STD_LOGIC;
          done	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL en	:	STD_LOGIC := '1';
   SIGNAL clk	:	STD_LOGIC := '1';
   SIGNAL rst	:	STD_LOGIC := '0';
   SIGNAL re	:	STD_LOGIC := '0';
   SIGNAL addr	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
	SIGNAL start : STD_LOGIC;
	SIGNAL full	: 	STD_LOGIC;
	SIGNAL we	: 	STD_LOGIC;
   SIGNAL done	:	STD_LOGIC;
	
	constant clk_period : time := 50 ns;

BEGIN

   UUT: mem_control PORT MAP(
		en => en, 
		clk => clk, 
		rst => rst, 
		re => re, 
		addr => addr,
		start => start,
		full => full,
		we => we,
		done => done
   );

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
		wait for clk_period*4500;
		re <= '1';
		wait for clk_period*20000;
	end process;
	
	enable :process
	begin
		en <= '1';
		wait for clk_period*20000;
		en <= '0';
		wait for clk_period;
	end process;

END;
