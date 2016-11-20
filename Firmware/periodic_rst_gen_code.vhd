----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:33:45 09/04/2014 
-- Design Name: 
-- Module Name:    periodic_rst_gen_code - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Periodically (period set by the counter in resolution of 12.5ns/80MHz) send a reset ~100ns wide to the SST when the SST is running(i.e. NOT stopped)
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

entity periodic_rst_gen_code is
    Port ( en : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst_sig : out  STD_LOGIC);
end periodic_rst_gen_code;

architecture Behavioral of periodic_rst_gen_code is
	signal sig : std_logic := '0';
	signal counter : integer range 1 to 80000000 := 1; -- 80000000 for 1s, 80000 for 1ms, 80 for 1us when incoming clock is 80MHz
begin

	proc: process (en,clk) begin
		if en = '1' then
			if rising_edge(clk) then
				case counter is
					when 1 to 79999991		=>	sig <= '0'; -- 79999991 for 1s, 79991 for 1ms, 71 for 1us
														counter <= counter + 1;
					when 79999992 to 79999999	=> sig <= '1'; -- 79999992|79999999 for 1s, 79992|79999 for 1ms, 72|79 for 1us
														counter <= counter + 1;
					when 80000000				=> sig <= '0'; -- 80000000 for 1s, 80000 for 1ms, 80 for 1us
														counter <= 1;
					when others					=> counter <= 1;
				end case;
			end if;
		else
			sig <= '0';
		end if;
	end process;
	
	sig_gen: process(sig) begin
		rst_sig <= sig;
	end process;

end Behavioral;

