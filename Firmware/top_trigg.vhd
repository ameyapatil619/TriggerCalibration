----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:29 11/24/2016 
-- Design Name: 
-- Module Name:    top_trigg - Behavioral 
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

entity top_trigg is

generic(N : integer := 32);

port(

rst : in STD_LOGIC;
clk : in STD_LOGIC;
enable: in STD_LOGIC;

trig_0H: in STD_LOGIC;
trig_0L: in STD_LOGIC;
trig_1H: in STD_LOGIC;
trig_1L: in STD_LOGIC;
trig_2H: in STD_LOGIC;
trig_2L: in STD_LOGIC;
trig_3H: in STD_LOGIC;
trig_3L: in STD_LOGIC;

--ovrflw: out STD_LOGIC;
trig_cnt_0H : out STD_LOGIC_VECTOR (N-1 downto 0);
trig_cnt_0L : out STD_LOGIC_VECTOR (N-1 downto 0);
trig_cnt_1H : out STD_LOGIC_VECTOR (N-1 downto 0);
trig_cnt_1L : out STD_LOGIC_VECTOR (N-1 downto 0);
trig_cnt_2H : out STD_LOGIC_VECTOR (N-1 downto 0);
trig_cnt_2L : out STD_LOGIC_VECTOR (N-1 downto 0);
trig_cnt_3H : out STD_LOGIC_VECTOR (N-1 downto 0);
trig_cnt_3L : out STD_LOGIC_VECTOR (N-1 downto 0)
	
		);


end top_trigg;



architecture Behavioral of top_trigg is

component cntr_trigg is 

port( rst, clk, trigger, enable: in STD_LOGIC;
q: out STD_LOGIC_VECTOR (N-1 downto 0));

end component;

begin

counter1: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_0H, enable => enable, q => trig_cnt_0H);
counter2: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_0L, enable => enable, q => trig_cnt_0L);
counter3: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_1H, enable => enable, q => trig_cnt_1H);
counter4: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_1L, enable => enable, q => trig_cnt_1L);
counter5: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_2H, enable => enable, q => trig_cnt_2H);
counter6: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_2L, enable => enable, q => trig_cnt_2L);
counter7: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_3H, enable => enable, q => trig_cnt_3H);
counter8: cntr_trigg port map(rst => rst, clk => clk, trigger => trig_3L, enable => enable, q => trig_cnt_3L);

end Behavioral;


