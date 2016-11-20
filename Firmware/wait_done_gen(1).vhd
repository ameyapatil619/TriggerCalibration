----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:41 04/15/2014 
-- Design Name: 
-- Module Name:    wait_done_gen - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity wait_done_gen is
    Port ( full_flag : in  STD_LOGIC;
           re : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           wait_sig : out  STD_LOGIC;
           done : out  STD_LOGIC);
end wait_done_gen;

architecture Behavioral of wait_done_gen is
begin
	
	wait_done_control : process (full_flag,re,rst)
	begin
		if rst = '1' then
			wait_sig <= '0';
			done <= '0';
		else		
		case re is
			when '0' => done <= '0';
							case full_flag is
								when '1' => wait_sig <= '1';
								when '0' => wait_sig <= '0';
								when others => null;
							end case;
							
			when '1' => wait_sig <= '0';
							case full_flag is
								when '1' => done <= '0';
								when '0' => done <= '1';
												wait_sig <= '1';
								when others => null;
							end case;
			when others => null;
		end case;
		end if;
		
		--case rst is -- when reset is high reset the flags
		--	when '1' => wait_sig <= '0';
		--					done <= '0';
		--	when '0' => null;
		--	when others => null;
		--end case;
	end process;

end Behavioral;

