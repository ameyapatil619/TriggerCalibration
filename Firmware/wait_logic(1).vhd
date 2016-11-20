----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:54 04/15/2014 
-- Design Name: 
-- Module Name:    wait_logic - Behavioral 
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

entity wait_logic is
    Port ( en : in  STD_LOGIC; 
           rst : in  STD_LOGIC;
           wait_sig : in  STD_LOGIC;
           start : out  STD_LOGIC);
end wait_logic;

architecture Behavioral of wait_logic is
begin
	
	start_logic : process (en,rst,wait_sig) -- enable and reset logic generation
	begin	
		if rst = '1' then
			start <= '1';
		else
		case en is
			when '1' =>	case wait_sig is
								when '0' => start <= '1'; -- when wait signal low start operations
								when '1' => start <= '0'; -- when wait signal high halt operations and wait
								when others => start <= '1';
							end case;
			when '0' => start <= '0';
			when others => start <= '1';
		end case;
		end if;
		
		--case rst is -- reset is high start operations at all conditions
		--	when '1' => start <= '1';
		--	when '0' => null;
		--	when others => null;
		--end case;
							
	end process;

end Behavioral;