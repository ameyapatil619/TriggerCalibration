----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:23:42 11/05/2016 
-- Design Name: 
-- Module Name:    cntr_trigg - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cntr_trigg is

generic(N : integer := 32);

port(

rst : in STD_LOGIC;
clk : in STD_LOGIC;

trigger: in STD_LOGIC;

enable: in STD_LOGIC;


--ovrflw: out STD_LOGIC;
q : out STD_LOGIC_VECTOR (N-1 downto 0)

	
		);
		
end cntr_trigg;

architecture Behavioural of cntr_trigg is


--signal counter_local: STD_LOGIC_VECTOR (N-1 downto 0):= (others => '0');
signal count_trigg: STD_LOGIC_VECTOR (N-1 downto 0):= (others => '0');
signal flag: STD_LOGIC:= '0';
signal count_local: integer range 0 to 80e6;

begin

process(clk,rst,enable,count_local)

--variable count : integer := 0;

begin

if rst = '1' then

	q<= (others => '0');
	
	count_trigg <= (others => '0');
	
	--ovrflw <= '0';
	
	--count := 0;
	count_local <= 0;

elsif enable = '1' and clk'event and clk = '1' and rst /= '1' then

	

		if (count_local < 80e6)  then
	
			if trigger = '1' and flag = '1' and (count_trigg(N-1) /= '1') then
					
					count_trigg <= count_trigg + 1;
					flag <= '0';
			elsif trigger = '0' then

					flag <= '1';
			end if;
		--count := count+1;
		count_local <= count_local + 1;
		
		else
		
		--count := 0;
		count_local <= 0;
		q (N-1 downto 0) <= count_trigg(N-1 downto 0);
		--if( count_trigg(N-1) = '1') then
		--ovrflw <= '1';
		--end if;
		count_trigg <= (others => '0');
	
	
		end if;

	

end if;

end process;

end Behavioural;

