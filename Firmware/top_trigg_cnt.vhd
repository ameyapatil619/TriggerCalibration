----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:28 11/24/2016 
-- Design Name: 
-- Module Name:    top_trigg_cnt - Behavioral 
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

entity top_trigg_cnt is

generic(N : integer := 32);

port (

clk: in STD_LOGIC;
rst: in STD_LOGIC;
enable: in STD_LOGIC;
trig_0H: in STD_LOGIC;
trig_0L: in STD_LOGIC;
trig_1H: in STD_LOGIC;
trig_1L: in STD_LOGIC;
trig_2H: in STD_LOGIC;
trig_2L: in STD_LOGIC;
trig_3H: in STD_LOGIC;
trig_3L: in STD_LOGIC;
--load_val: in STD_LOGIC;
--trigg_overflow: out std_logic;
--trgt_ct: in integer;
trig_ct_0H: out STD_LOGIC_VECTOR (N-1 downto 0);
trig_ct_0L: out STD_LOGIC_VECTOR (N-1 downto 0);
trig_ct_1H: out STD_LOGIC_VECTOR (N-1 downto 0);
trig_ct_1L: out STD_LOGIC_VECTOR (N-1 downto 0);
trig_ct_2H: out STD_LOGIC_VECTOR (N-1 downto 0);
trig_ct_2L: out STD_LOGIC_VECTOR (N-1 downto 0);
trig_ct_3H: out STD_LOGIC_VECTOR (N-1 downto 0);
trig_ct_3L: out STD_LOGIC_VECTOR (N-1 downto 0);
--eoc: out STD_LOGIC;
--ser_out: out STD_LOGIC;
dac_flag_0H: out STD_LOGIC_VECTOR(1 downto 0);
dac_flag_0L: out STD_LOGIC_VECTOR(1 downto 0);
dac_flag_1H: out STD_LOGIC_VECTOR(1 downto 0);
dac_flag_1L: out STD_LOGIC_VECTOR(1 downto 0);
dac_flag_2H: out STD_LOGIC_VECTOR(1 downto 0);
dac_flag_2L: out STD_LOGIC_VECTOR(1 downto 0);
dac_flag_3H: out STD_LOGIC_VECTOR(1 downto 0);
dac_flag_3L: out STD_LOGIC_VECTOR(1 downto 0)

		);

end top_trigg_cnt;

architecture Behavioral of top_trigg_cnt is

component cntr_trigg_comp is

port( clk, rst, enable, trigg: IN STD_LOGIC;
trigg_ct: out STD_LOGIC_VECTOR (N-1 downto 0);
dac_flag: out STD_LOGIC_VECTOR(1 downto 0));

end component;

begin 
counter1: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_0H, trigg_ct => trig_ct_0H, dac_flag => dac_flag_0H);
counter2: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_0L, trigg_ct => trig_ct_0L, dac_flag => dac_flag_0L);
counter3: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_1H, trigg_ct => trig_ct_1H, dac_flag => dac_flag_1H);
counter4: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_1L, trigg_ct => trig_ct_1L, dac_flag => dac_flag_1L);
counter5: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_2H, trigg_ct => trig_ct_2H, dac_flag => dac_flag_2H);
counter6: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_2L, trigg_ct => trig_ct_2L, dac_flag => dac_flag_2L);
counter7: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_3H, trigg_ct => trig_ct_3H, dac_flag => dac_flag_3H);
counter8: cntr_trigg_comp port map (clk => clk, rst => rst, enable => enable, trigg => trig_3L, trigg_ct => trig_ct_3L, dac_flag => dac_flag_3L);

end Behavioral;

