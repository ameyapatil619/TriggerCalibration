----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:21:42 11/05/2016 
-- Design Name: 
-- Module Name:    parallel_to_serial_conv - Behavioral 
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

entity psi_trigg is

generic(N : integer := 32);

port(

parallel_in : in STD_LOGIC_VECTOR (N-1 downto 0);
rst : in STD_LOGIC;
clk : in STD_LOGIC;
enable: in STD_LOGIC;
ser_strt: in STD_LOGIC;

eoc: out STD_LOGIC;
ser_out: out STD_LOGIC
		);

end psi_trigg;

architecture Behavioral of psi_trigg is


signal buffer_reg: STD_LOGIC_VECTOR (N-1 downto 0);
signal data: STD_LOGIC := '0';
signal conv_flag: STD_LOGIC := '0';
--signal count_local: integer range 0 to 80e6;


begin

process(clk, rst, enable, ser_strt, parallel_in)

variable i : integer := 0;

begin


if rst = '1' or ser_strt ='0' then

buffer_reg <= (others => '0');
data <= '0';
conv_flag <= '0';
i := 0;

elsif ser_strt ='1' then

if enable = '1' and clk'event and clk = '1' then
--if enable = '1' and rising_edge(clk) then
--	if load_val = '1' then

	if i = 0 then
	
	buffer_reg(N-1 downto 0) <= parallel_in(N-1 downto 0);
	
	elsif i /= 0 and i < N then

		data <= buffer_reg(N-1);
		
		buffer_reg(N-1 downto 1)<= buffer_reg(N-2 downto 0);

		buffer_reg(0) <= '0';

		i := i+1;

	elsif i = N then 
		conv_flag <= '1';
		
	end if;

end if;

end if;

end process;

eoc <= conv_flag;
ser_out <= data;


end Behavioral;

