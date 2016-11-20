----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Mahshid
-- 
-- Create Date:    13:28:28 11/14/2011 
-- Design Name: 
-- Module Name:    demux - Behavioral 
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

entity demux is
port(
	clk : in std_logic; 
	sel0 : in std_logic; 
	sel1 : in std_logic; 
	
	cout0 : out std_logic; 
	cout1 : out std_logic;
	cout2 : out std_logic;	
	cout3 : out std_logic
);
end demux;

architecture Behavioral of demux is

begin

	demux : process (clk)
	begin
	
		if rising_edge(clk) then
			cout0 <= (not sel0) and (not sel1);	-- any one
			cout1 <= sel0 and (not sel1);			-- any two
			cout2 <= (not sel0) and sel1;			-- any three
			cout3 <= sel0 and sel1;					-- any four
		end if;
		
	end process; 
end Behavioral;