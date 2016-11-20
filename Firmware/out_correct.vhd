----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:32 05/01/2014 
-- Design Name: 
-- Module Name:    out_correct - Behavioral 
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

entity out_correct is
    Port ( sig_in : in  STD_LOGIC;
           sig_out : out  STD_LOGIC);
end out_correct;

architecture Behavioral of out_correct is

begin

	process (sig_in)
	begin
		case sig_in is
			when '1'|'0' => sig_out <= sig_in;
			when others => sig_out <= '0';
		end case;
	end process; 

end Behavioral;

