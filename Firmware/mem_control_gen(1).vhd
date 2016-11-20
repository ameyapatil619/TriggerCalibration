----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:23:42 08/13/2014 
-- Design Name: 
-- Module Name:    mem_control_gen - Behavioral 
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
use IEEE.std_logic_unsigned.all;

entity mem_control_gen is
    Port ( 
-- en is the enable signal
-- rst is the reset signal
-- re is the read enable signal to determine whether to read or write
-- start is an intermediate in/out signal for waiting on input
-- clk is the system clock
-- address is 12 bit integer output used by the memory
-- full is a flag signal to indicate memory full
-- done is a flag signal to indicate process completion
-- wait_sig is used to throttle the memory when waiting
-- we is write enable output used by the memory
			  en : in STD_LOGIC;
			  rst : in  STD_LOGIC;
           re : in  STD_LOGIC;
           start : inout  STD_LOGIC;
			  clk : in STD_LOGIC;
           address : out  STD_LOGIC_VECTOR (11 downto 0);
           full : out  STD_LOGIC;
           done : out  STD_LOGIC;
           wait_sig : out  STD_LOGIC;
			  we : out STD_LOGIC);
end mem_control_gen;

architecture Behavioral of mem_control_gen is
-- local signals used to condition and generate the outputs
	signal addr : std_logic_vector (11 downto 0) := "000000000000";
	signal full_f : std_logic := '0';
	signal done_f : std_logic := '0';
	signal wait_f : std_logic := '0';
begin

-- count to 4095 from 0 and then wait until read enable is set
-- upon read enable being set
-- count to 4095 from 0 and then wait until reset
	main_proc : process(clk, rst, re, start, en, full_f, done_f) begin
		if rst = '1' then
			addr <= "000000000000";
			full_f <= '0';
			done_f <= '0';
			wait_f <= '0';
		else
			if falling_edge(clk) then
				if en = '1' then
					if start = '1' then
						case re is
							when '0' => if addr < "111111111111" then -- 4095
												addr <= addr + 1;
											else
												addr <= "000000000000";
												full_f <= '1';
												wait_f <= '1';
											end if;
							when '1' => if addr < "111111111111" then -- 4095
												addr <= addr + 1;
											else
												addr <= "000000000000";
												done_f <= '1';
												wait_f <= '1';
											end if;
							when others => null;
						end case;
					else
						addr <= "000000000000";
						if re = '0' and full_f = '1' then
							wait_f <= '1';
						elsif re = '1' and done_f = '1' then
							wait_f <= '1';
						else
							wait_f <= '0';
						end if;
					end if;
				else
					wait_f <= '1';
				end if;
			end if;
		end if;
	end process;

-- passign the conditioned signals onto the outputs
	sig_gen : process(addr, full_f,done_f,wait_f,re) begin
		address <= addr;
		full <= full_f;
		done <= done_f;
		wait_sig <= wait_f;
		start <= not wait_f;
		we <= not re;
	end process;

end Behavioral;

