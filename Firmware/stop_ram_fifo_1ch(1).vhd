----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:27 12/18/2013 
-- Design Name: 
-- Module Name:    stop_ram_fifo_1ch - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stop_ram_fifo_1ch is
    Port ( clk : in  STD_LOGIC;
			  we : in std_logic;
			  en : in std_logic;
           di : in  STD_LOGIC;
           do : out  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (7 downto 0));
end stop_ram_fifo_1ch;

architecture Behavioral of stop_ram_fifo_1ch is
type ram_type is array (0 to 255) of std_logic;
signal RAM: ram_type;
attribute ram_style: string;
attribute ram_style of RAM : signal is "block";
begin

	process (clk, en, we)
	begin
		if rising_edge(clk) then
			if en = '1' then
				do <= RAM(conv_integer(addr));
				if we = '1' then
					RAM(conv_integer(addr)) <= di;					
				end if;
				--do <= RAM(conv_integer(addr));
			else
				do <= '0';
			end if;
		end if;
	end process;
	
end Behavioral;