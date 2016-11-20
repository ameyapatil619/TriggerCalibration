-- Vhdl test bench created from schematic C:\Xilinx Projects\test_setup\MEMORY_BLOCK_NEW.sch - Wed Aug 13 10:15:17 2014
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
ENTITY MEMORY_BLOCK_NEW_MEMORY_BLOCK_NEW_sch_tb IS
END MEMORY_BLOCK_NEW_MEMORY_BLOCK_NEW_sch_tb;
ARCHITECTURE behavioral OF MEMORY_BLOCK_NEW_MEMORY_BLOCK_NEW_sch_tb IS 

   COMPONENT MEMORY_BLOCK_NEW
   PORT( 	en				:	IN		STD_LOGIC;
				clk			:	IN		STD_LOGIC; 
				rst			:	IN		STD_LOGIC;
				re				:	IN		STD_LOGIC;	
				start_1		:	INOUT	STD_LOGIC;
				address_1	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
				di_1			:	IN		STD_LOGIC;
				full_1		:	OUT	STD_LOGIC; 
				wait_sig_1	:	OUT	STD_LOGIC;
				do_1			:	OUT	STD_LOGIC;
				done_1		:	OUT	STD_LOGIC;
				start_2		:	INOUT	STD_LOGIC;
				address_2	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
				di_2			:	IN		STD_LOGIC;
				full_2		:	OUT	STD_LOGIC; 
				wait_sig_2	:	OUT	STD_LOGIC;
				do_2			:	OUT	STD_LOGIC;
				done_2		:	OUT	STD_LOGIC;
				start_3		:	INOUT	STD_LOGIC;
				address_3	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
				di_3			:	IN		STD_LOGIC;
				full_3		:	OUT	STD_LOGIC; 
				wait_sig_3	:	OUT	STD_LOGIC;
				do_3			:	OUT	STD_LOGIC;
				done_3		:	OUT	STD_LOGIC;
				start_4		:	INOUT	STD_LOGIC;
				address_4	:	OUT	STD_LOGIC_VECTOR (11 DOWNTO 0); 
				di_4			:	IN		STD_LOGIC;
				full_4		:	OUT	STD_LOGIC; 
				wait_sig_4	:	OUT	STD_LOGIC;
				do_4			:	OUT	STD_LOGIC;
				done_4		:	OUT	STD_LOGIC
				);
   END COMPONENT;

   SIGNAL en			:	STD_LOGIC := '1';
	SIGNAL clk			:	STD_LOGIC;
	SIGNAL rst			:	STD_LOGIC;
	SIGNAL re			:	STD_LOGIC;
	SIGNAL start_1		:	STD_LOGIC;
   SIGNAL address_1	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL di_1			:	STD_LOGIC;
   SIGNAL full_1		:	STD_LOGIC;
   SIGNAL wait_sig_1	:	STD_LOGIC;
   SIGNAL do_1			:	STD_LOGIC;   
   SIGNAL done_1		:	STD_LOGIC;
	SIGNAL start_2		:	STD_LOGIC;
   SIGNAL address_2	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL di_2			:	STD_LOGIC;
   SIGNAL full_2		:	STD_LOGIC;
   SIGNAL wait_sig_2	:	STD_LOGIC;
   SIGNAL do_2			:	STD_LOGIC;   
   SIGNAL done_2		:	STD_LOGIC;
	SIGNAL start_3		:	STD_LOGIC;
   SIGNAL address_3	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL di_3			:	STD_LOGIC;
   SIGNAL full_3		:	STD_LOGIC;
   SIGNAL wait_sig_3	:	STD_LOGIC;
   SIGNAL do_3			:	STD_LOGIC;   
   SIGNAL done_3		:	STD_LOGIC;
	SIGNAL start_4		:	STD_LOGIC;
   SIGNAL address_4	:	STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL di_4			:	STD_LOGIC;
   SIGNAL full_4		:	STD_LOGIC;
   SIGNAL wait_sig_4	:	STD_LOGIC;
   SIGNAL do_4			:	STD_LOGIC;   
   SIGNAL done_4		:	STD_LOGIC;
	
	constant clk_period : time := 50 ns;

BEGIN

   UUT: MEMORY_BLOCK_NEW PORT MAP(
		en => en, 
		clk => clk, 
		rst => rst, 
		re => re, 
		start_1 => start_1, 
		address_1 => address_1, 
		di_1 => di_1,
		full_1 => full_1,
		wait_sig_1 => wait_sig_1, 
		do_1 => do_1,		
		done_1 => done_1, 
		start_2 => start_2, 
		address_2 => address_2, 
		di_2 => di_2,
		full_2 => full_2,
		wait_sig_2 => wait_sig_2, 
		do_2 => do_2,		
		done_2 => done_2,
		start_3 => start_3, 
		address_3 => address_3, 
		di_3 => di_3,
		full_3 => full_3,
		wait_sig_3 => wait_sig_3, 
		do_3 => do_3,		
		done_3 => done_3,
		start_4 => start_4, 
		address_4 => address_4, 
		di_4 => di_4,
		full_4 => full_4,
		wait_sig_4 => wait_sig_4, 
		do_4 => do_4,		
		done_4 => done_4
	);

	-- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset_proc : process
	begin
		rst <= '1';
		wait for 100 us;
		rst <= '0';
		wait for 3000 us;
	end process;
	
	read_proc : process
	begin
		re <= '0';
		wait for 1000 us;
		re <= '1';
		wait for 1000 us;
	end process;
	
	data : process
	begin
		di_1 <= '1';
		di_2 <= '0';
		di_3 <= '1';
		di_4 <= '0';
		wait for 100 ns;
		di_1 <= '0';
		di_2 <= '1';
		di_3 <= '0';
		di_4 <= '1';
		wait for 100 ns;
	end process;

END;
