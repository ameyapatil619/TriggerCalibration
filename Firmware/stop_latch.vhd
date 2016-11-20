----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:44:09 04/24/2014 
-- Design Name: 
-- Module Name:    stop_latch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity stop_latch is
    Port ( 
-- trigger_in is the incoming trigger signal
-- clk is the clock signal to which the code is synchronized
-- rst is the reset signal to clear the latch
-- stop is the stop signal to the SST to stop sampling
			  trigger_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           stop : out  STD_LOGIC);
end stop_latch;

architecture Behavioral of stop_latch is
-- local signal for signal switching
	signal enable_stop : STD_LOGIC := '0';
begin

-- as soon as a rising edge is detected in the trigger
-- the stop is generated
	stop_gen : process (rst, trigger_in) begin
		if rst = '1' then
			enable_stop <= '0';
		else
			if rising_edge (trigger_in) then
				enable_stop <= '1';
			end if;
		end if;
	end process;
	
-- the generated stop signal is passed onto the output
	stop_proc : process (enable_stop) begin
		stop <= enable_stop;
	end process;
	
end Behavioral;

