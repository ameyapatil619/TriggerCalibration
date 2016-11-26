----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:20 11/24/2016 
-- Design Name: 
-- Module Name:    top_psi_trigg - Behavioral 
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

entity top_psi_trigg is

generic(N : integer := 32);

port(
rst : in STD_LOGIC;
clk : in STD_LOGIC;
enable: in STD_LOGIC;

prl_in_0H : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_0H: in STD_LOGIC;
prl_in_0L : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_0L: in STD_LOGIC;
prl_in_1H : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_1H: in STD_LOGIC;
prl_in_1L : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_1L: in STD_LOGIC;
prl_in_2H : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_2H: in STD_LOGIC;
prl_in_2L : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_2L: in STD_LOGIC;
prl_in_3H : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_3H: in STD_LOGIC;
prl_in_3L : in STD_LOGIC_VECTOR (N-1 downto 0);
--ser_strt_3L: in STD_LOGIC;

ser_start: in STD_LOGIC;

eoc_0H: out STD_LOGIC;
ser_out_0H: out STD_LOGIC;
eoc_0L: out STD_LOGIC;
ser_out_0L: out STD_LOGIC;

eoc_1H: out STD_LOGIC;
ser_out_1H: out STD_LOGIC;
eoc_1L: out STD_LOGIC;
ser_out_1L: out STD_LOGIC;

eoc_2H: out STD_LOGIC;
ser_out_2H: out STD_LOGIC;
eoc_2L: out STD_LOGIC;
ser_out_2L: out STD_LOGIC;

eoc_3H: out STD_LOGIC;
ser_out_3H: out STD_LOGIC;
eoc_3L: out STD_LOGIC;
ser_out_3L: out STD_LOGIC
--eoc_3L: out STD_LOGIC
--ser_out: out STD_LOGIC

		);


end top_psi_trigg;

architecture Behavioral of top_psi_trigg is

signal eoc_0H_temp: STD_LOGIC;
signal eoc_0L_temp: STD_LOGIC;
signal eoc_1H_temp: STD_LOGIC;
signal eoc_1L_temp: STD_LOGIC;
signal eoc_2H_temp: STD_LOGIC;
signal eoc_2L_temp: STD_LOGIC;
signal eoc_3H_temp: STD_LOGIC;

component psi_trigg is 


port(parallel_in : in STD_LOGIC_VECTOR (N-1 downto 0);
rst, clk, enable, ser_strt: IN STD_LOGIC;
eoc, ser_out: out STD_LOGIC);
end component;

begin

psi1: psi_trigg port map(parallel_in(31 downto 0) => prl_in_0H(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => ser_start, eoc => eoc_0H_temp, ser_out => ser_out_0H);
eoc_0H <= eoc_0H_temp;
psi2: psi_trigg port map(parallel_in(31 downto 0) => prl_in_0L(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => eoc_0H_temp, eoc => eoc_0L_temp, ser_out => ser_out_0L);
eoc_0L <= eoc_0L_temp;
psi3: psi_trigg port map(parallel_in(31 downto 0) => prl_in_1H(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => eoc_0L_temp, eoc => eoc_1H_temp, ser_out => ser_out_1H);
eoc_1H <= eoc_1H_temp;
psi4: psi_trigg port map(parallel_in(31 downto 0) => prl_in_1L(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => eoc_1H_temp, eoc => eoc_1L_temp, ser_out => ser_out_1L);
eoc_1L <= eoc_1L_temp;
psi5: psi_trigg port map(parallel_in(31 downto 0) => prl_in_2H(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => eoc_1L_temp, eoc => eoc_2H_temp, ser_out => ser_out_2H);
eoc_2H <= eoc_2H_temp;
psi6: psi_trigg port map(parallel_in(31 downto 0) => prl_in_2L(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => eoc_2H_temp, eoc => eoc_2L_temp, ser_out => ser_out_2L);
eoc_2L <= eoc_2L_temp;
psi7: psi_trigg port map(parallel_in(31 downto 0) => prl_in_3H(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => eoc_2L_temp, eoc => eoc_3H_temp, ser_out => ser_out_3H);
eoc_3H <= eoc_3H_temp;
psi8: psi_trigg port map(parallel_in(31 downto 0) => prl_in_3L(31 downto 0), rst => rst, clk =>clk, enable => enable, ser_strt => eoc_3H_temp, eoc => eoc_3L, ser_out => ser_out_3L);
end Behavioral;

