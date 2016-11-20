----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:33:06 11/11/2016 
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

entity cntr_trigg_comp is

generic(N : integer := 32);

port (

clk: in STD_LOGIC;
rst: in STD_LOGIC;
enable: in STD_LOGIC;
trigg: in STD_LOGIC;
--load_val: in STD_LOGIC;
--trigg_overflow: out std_logic;
--trgt_ct: in integer;
trigg_ct: out STD_LOGIC_VECTOR (N-1 downto 0);
--eoc: out STD_LOGIC;
--ser_out: out STD_LOGIC;
dac_flag: out STD_LOGIC_VECTOR(1 downto 0)
		);
		
end cntr_trigg_comp;

architecture Behavioral of cntr_trigg_comp is

signal trigg_ct_x: STD_LOGIC_VECTOR (N-1 downto 0);

component cntr_trigg is 

port( rst, clk, trigger, enable : in STD_LOGIC;
--ovrflw: out STD_LOGIC;
q : out STD_LOGIC_VECTOR (N-1 downto 0));

end component;

component trigg_comp is

port( trigg_ct: in STD_LOGIC_VECTOR (N-1 downto 0);
--target_ct: in integer;
enable: in STD_LOGIC;
rst: in STD_LOGIC;
flag: out STD_LOGIC_VECTOR(1 downto 0));

end component;



begin

counter: cntr_trigg port map( rst => rst, clk => clk, trigger => trigg, enable => enable, q => trigg_ct_x);
comp: trigg_comp port map(trigg_ct => trigg_ct_x, enable => enable, rst => rst, flag => dac_flag);

trigg_ct <= trigg_ct_x;

end Behavioral;

 