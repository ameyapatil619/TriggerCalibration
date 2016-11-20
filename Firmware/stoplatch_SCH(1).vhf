--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : stoplatch_SCH.vhf
-- /___/   /\     Timestamp : 10/09/2014 19:00:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl "C:/Xilinx Projects/Firmware/stoplatch_SCH.vhf" -w "C:/Xilinx Projects/Firmware/stoplatch_SCH.sch"
--Design Name: stoplatch_SCH
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

entity stoplatch_SCH is
   port ( clk     : in    std_logic; 
          reset   : in    std_logic; 
          trigger : in    std_logic; 
          stop    : out   std_logic);
end stoplatch_SCH;

architecture BEHAVIORAL of stoplatch_SCH is
   attribute BOX_TYPE   : string ;
   signal XLXN_161 : std_logic;
   signal XLXN_163 : std_logic;
   signal XLXN_164 : std_logic;
   signal XLXN_167 : std_logic;
   component stop_latch
      port ( trigger_in : in    std_logic; 
             clk        : in    std_logic; 
             rst        : in    std_logic; 
             stop       : out   std_logic);
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component FD_1
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD_1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : stop_latch
      port map (clk=>clk,
                rst=>XLXN_167,
                trigger_in=>trigger,
                stop=>XLXN_161);
   
   XLXI_32 : FD
      port map (C=>clk,
                D=>reset,
                Q=>XLXN_164);
   
   XLXI_33 : FD
      port map (C=>clk,
                D=>XLXN_164,
                Q=>XLXN_163);
   
   XLXI_48 : OR5
      port map (I0=>XLXN_161,
                I1=>XLXN_167,
                I2=>XLXN_163,
                I3=>XLXN_164,
                I4=>reset,
                O=>stop);
   
   XLXI_49 : FD_1
      port map (C=>clk,
                D=>XLXN_163,
                Q=>XLXN_167);
   
end BEHAVIORAL;


