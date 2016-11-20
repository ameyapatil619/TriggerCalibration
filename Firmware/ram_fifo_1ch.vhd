----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:27 12/18/2013 
-- Design Name: 
-- Module Name:    ram_fifo - Behavioral 
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

entity ram_fifo_1ch is
    Port ( 
-- clk is the system clock
-- we is the write enable signal for the memory
-- en is an enable signal for the entire memory unit
-- di is the data input
-- do is the data output
-- addr is the 12 bit address integer
			  clk : in  STD_LOGIC;
			  we : in std_logic;
			  en : in std_logic;
           di : in  STD_LOGIC;
           do : out  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (11 downto 0));
end ram_fifo_1ch;

architecture Behavioral of ram_fifo_1ch is
-- declaring the RAM type to enforce blockRAM usage
type ram_type is array (0 to 4095) of std_logic;
signal RAM: ram_type;
attribute ram_style: string;
attribute ram_style of RAM : signal is "block";
begin

-- the data is sampled at the rising clock edge
-- and put onto the output always
-- data is written onto the memory only if the we control is high
-- otherwise outputs a '0' if the memory is OFF 
-- but the the memory is clocked. This is done to avoid
-- unknown memory output conditions
-- generates a read_first memory as can be checked from the summary report
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