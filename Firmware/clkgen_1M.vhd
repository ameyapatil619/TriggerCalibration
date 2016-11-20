----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:41 05/01/2014 
-- Design Name: 
-- Module Name:    clkgen_1M - Behavioral 
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

entity clkgen_1M is
    Port (
-- clk_in is the input clock
-- clk_out is the output clock
        clk_in : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end clkgen_1M;

architecture Behavioral of clkgen_1M is
-- declaring local signals for counting and signal conditioning
    signal temporal: STD_LOGIC := '0';
    signal counter : integer range 0 to 15 := 0;
begin
-- count the input clock 16 times and then switch, giving rise to
-- a divide by 32 clock as output
    frequency_divider: process (clk_in,counter,temporal) begin
        if rising_edge(clk_in) then
            if (counter = 15) then
                temporal <= NOT(temporal);
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    clk_out <= temporal;
end Behavioral;
