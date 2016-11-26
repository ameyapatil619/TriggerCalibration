--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_trigg.vhf
-- /___/   /\     Timestamp : 11/25/2016 20:13:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl /home/ameya/Desktop/Indi_Research/Firmware/top_trigg.vhf -w /home/ameya/Desktop/Indi_Research/Firmware/top_trigg.sch
--Design Name: top_trigg
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top_trigg is
   port ( clk        : in    std_logic; 
          enable     : in    std_logic; 
          rst        : in    std_logic; 
          trig_0H    : in    std_logic; 
          trig_0L    : in    std_logic; 
          trig_1H    : in    std_logic; 
          trig_1L    : in    std_logic; 
          trig_2H    : in    std_logic; 
          trig_2L    : in    std_logic; 
          trig_3H    : in    std_logic; 
          trig_3L    : in    std_logic; 
          trig_ct_0H : out   std_logic_vector (31 downto 0); 
          trig_ct_0L : out   std_logic_vector (31 downto 0); 
          trig_ct_1H : out   std_logic_vector (31 downto 0); 
          trig_ct_1L : out   std_logic_vector (31 downto 0); 
          trig_ct_2H : out   std_logic_vector (31 downto 0); 
          trig_ct_2L : out   std_logic_vector (31 downto 0); 
          trig_ct_3H : out   std_logic_vector (31 downto 0); 
          trig_ct_3L : out   std_logic_vector (31 downto 0));
end top_trigg;

architecture BEHAVIORAL of top_trigg is
   component cntr_trigg
      port ( rst     : in    std_logic; 
             clk     : in    std_logic; 
             trigger : in    std_logic; 
             enable  : in    std_logic; 
             q       : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_0H,
                q(31 downto 0)=>trig_ct_0H(31 downto 0));
   
   XLXI_2 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_0L,
                q(31 downto 0)=>trig_ct_0L(31 downto 0));
   
   XLXI_3 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_1H,
                q(31 downto 0)=>trig_ct_1H(31 downto 0));
   
   XLXI_5 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_2H,
                q(31 downto 0)=>trig_ct_2H(31 downto 0));
   
   XLXI_6 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_2L,
                q(31 downto 0)=>trig_ct_2L(31 downto 0));
   
   XLXI_7 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_3H,
                q(31 downto 0)=>trig_ct_3H(31 downto 0));
   
   XLXI_29 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_3L,
                q(31 downto 0)=>trig_ct_3L(31 downto 0));
   
   XLXI_46 : cntr_trigg
      port map (clk=>clk,
                enable=>enable,
                rst=>rst,
                trigger=>trig_1L,
                q(31 downto 0)=>trig_ct_1L(31 downto 0));
   
end BEHAVIORAL;


