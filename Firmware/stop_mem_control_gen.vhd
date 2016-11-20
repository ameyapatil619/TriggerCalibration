----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:23:42 08/13/2014 
-- Design Name: 
-- Module Name:    STOP_mem_control_gen - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity STOP_mem_control_gen is
    Port ( en : in STD_LOGIC;
			  rst : in  STD_LOGIC;
           re : in  STD_LOGIC;
           start : inout  STD_LOGIC;
			  clk : in STD_LOGIC;
           address : out  STD_LOGIC_VECTOR (7 downto 0);
           full : out  STD_LOGIC;
           done : out  STD_LOGIC;
           wait_sig : out  STD_LOGIC;
			  we : out STD_LOGIC);
end STOP_mem_control_gen;

architecture Behavioral of STOP_mem_control_gen is
	signal addr : std_logic_vector (7 downto 0) := "00000000";
	signal full_f : std_logic := '0';
	signal done_f : std_logic := '0';
	signal wait_f : std_logic := '0';
begin

	main_proc : process(clk, rst, re, start, en, full_f, done_f) begin
		if rst = '1' then
			addr <= "00000000";
			full_f <= '0';
			done_f <= '0';
			wait_f <= '0';
		else
			if falling_edge(clk) then
				if en = '1' then
					if start = '1' then
						case re is
							when '0' => if addr < "11111111" then -- 255
												addr <= addr + 1;
												--full_f <= '0';
												--done_f <= '0'; --asynchronous change ONLY
												--wait_f <= '0'; --asynchronous change ONLY
											else
												addr <= "00000000";
												full_f <= '1';
												--done_f <= '0'; --asynchronous change ONLY
												wait_f <= '1';
											end if;
							when '1' => if addr < "11111111" then -- 255
												addr <= addr + 1;
											else
												addr <= "00000000";
												--full_f <= '0';
												done_f <= '1';
												wait_f <= '1';
											end if;
							when others => addr <= "00000000";
												--full_f <= '0';
												done_f <= '0';
												wait_f <= '0';
						end case;
					else
						addr <= "00000000";
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
	
	--address <= addr;
	--full <= full_f;
	--done <= done_f;
	--wait_sig <= wait_f;
	--start <= not wait_f;
	--we <= not re;
	
	end process;

	sig_gen_proc : process (addr,full_f,done_f,wait_f,re) begin
		address <= addr;
		full <= full_f;
		done <= done_f;
		wait_sig <= wait_f;
		start <= not wait_f;
		we <= not re;
	end process;

end Behavioral;

