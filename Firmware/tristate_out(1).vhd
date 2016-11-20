----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:25 04/16/2014 
-- Design Name: 
-- Module Name:    tristate_out - Behavioral 
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

entity tristate_out is
    Port ( data_out : in  STD_LOGIC;
           start : in  STD_LOGIC;
           we : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           do : out  STD_LOGIC);
end tristate_out;

architecture Behavioral of tristate_out is
begin

--	readout_tristate_control : process(data_out,start,we)
--	begin
--		if start = '1' then
--			if data_out = 'U' then
--				do <= 'Z';
--			else
--				do <= data_out;
--			end if;
--		else
--			do <= 'Z';
--		end if;
--		
--		if we = '1' then
--			do <= 'Z';
--		end if;
--	end process;
	
	readout_tristate_control : process(data_out,start,we, rst)
	begin
		case start is
			when '1' =>	case data_out is
								when '1'|'0' => do <= data_out;
								when others => do <= '0';
							end case;
			when others => do <= '0';
		end case;
		
		case we is
			when '1' => do <= '0';
			when others => null;
		end case;
		
		if rst = '1' then
			do <= '0';
		end if;
	end process;

end Behavioral;

