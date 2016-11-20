----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:17 11/10/2016 
-- Design Name: 
-- Module Name:    trigg_comp - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trigg_comp is

generic(N : integer := 32);

port(


trigg_ct: in STD_LOGIC_VECTOR(N-1 downto 0);
--target_ct: in integer;
enable: in STD_LOGIC;
rst: in STD_LOGIC;
flag: out std_logic_vector(1 downto 0)

);

end trigg_comp;

architecture Behavioral of trigg_comp is

-- count: integer range 0 to 131071;



begin

process (enable,trigg_ct,rst)

variable count : integer := 0; 

begin

count := to_integer(unsigned(trigg_ct(N-1 downto 0)));

if enable = '1' and rst /= '1' then

	if (count < 30e6) then --target_ct set at 30MHz

	flag(1 downto 0) <= "00";

	elsif (count > 30e6) then

	flag(1 downto 0) <= "01";

	else
	
	flag(1 downto 0) <= "10";
	
	end if;

else

flag(1 downto 0) <="11";

end if;
end process;



end Behavioral;

