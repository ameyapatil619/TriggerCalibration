----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:40 08/10/2014 
-- Design Name: 
-- Module Name:    CS_gen - Behavioral 
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

entity CS_gen is
    Port ( 
-- en is the chip enable signal
-- clk_1M is the slower clock
-- clk_20M is the faster clock
-- rst is the reset signal from the MBED
-- ADC_clk is the ADC read clock output to the ADC
-- SST-rck is the SST read clock output to the SST
-- CS_n is the active low chip select to the ADC
-- RAM_sync is the memory synchronizing signal 
			  en : in  STD_LOGIC;
           clk_1M : in  STD_LOGIC;
           clk_20M : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  ADC_clk : out  STD_LOGIC;
			  SST_rck : out STD_LOGIC;
           CS_n : out  STD_LOGIC;
           RAM_sync : out  STD_LOGIC);
end CS_gen;

architecture Behavioral of CS_gen is
-- declaring local signals used in the code for conditioning
	signal enable1 : STD_LOGIC := '0';
	signal enable2 : STD_LOGIC := '0';
begin
	
-- use the chip enable signal to condition a switching signal	
	enable1_proc : process(clk_1M, en, rst) begin
		if rst = '1' then
			enable1 <= '0';
		else
			if en = '1' then
				if rising_edge(clk_1M) then
					enable1 <= '1';
				end if;
			else
				enable1 <= '0';
			end if;
		end if;
	end process;
	
-- use the first level switching signal to generate another switching signal
	enable2_proc : process(clk_1M, enable1, rst) begin
		if rst = '1' then
			enable2 <= '0';
		else
			if enable1 = '1' then
				if rising_edge(clk_1M) then
					enable2 <= '1';
				end if;
			else
				enable2 <= '0';
			end if;
		end if;
	end process;
	
-- signals to start at the first switching signal
	SST_signal_gen : process (enable1, rst) begin
		if rst = '1' then
			CS_n		<= '1';
			SST_rck 	<= '1';
			ADC_clk 	<= '0';
		else
			if enable1 = '0' then
				CS_n		<= '1';
				SST_rck 	<= '1';
				ADC_clk 	<= '0';
			else
				SST_rck 	<= clk_1M;
				CS_n		<= clk_1M;
				ADC_clk 	<= clk_20M;
			end if;
		end if;
	end process;

-- signals to start at the second switching signal
	Others_signal_gen : process (enable2, rst) begin
		if rst = '1' then
			RAM_sync <= '0';
		else
			if enable2 = '0' then
				RAM_sync <= '0';
			else
				RAM_sync <= not clk_1M;
			end if;
		end if;
	end process;
	
end Behavioral;

