--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Sync.vhf
-- /___/   /\     Timestamp : 11/25/2016 20:13:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl /home/ameya/Desktop/Indi_Research/Firmware/Sync.vhf -w /home/ameya/Desktop/Indi_Research/Firmware/Sync.sch
--Design Name: Sync
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

entity Sync is
   port ( clk_1   : in    std_logic; 
          clk_20  : in    std_logic; 
          clk_80M : in    std_logic; 
          clk_1M  : out   std_logic; 
          clk_20M : out   std_logic);
end Sync;

architecture BEHAVIORAL of Sync is
   attribute BOX_TYPE   : string ;
   signal XLXN_7        : std_logic;
   signal XLXN_8        : std_logic;
   signal clk_20M_DUMMY : std_logic;
   component FD_1
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD_1 : component is "BLACK_BOX";
   
begin
   clk_20M <= clk_20M_DUMMY;
   XLXI_8 : FD_1
      port map (C=>clk_80M,
                D=>clk_20,
                Q=>clk_20M_DUMMY);
   
   XLXI_11 : FD_1
      port map (C=>clk_20M_DUMMY,
                D=>clk_1,
                Q=>XLXN_7);
   
   XLXI_18 : FD_1
      port map (C=>clk_20M_DUMMY,
                D=>XLXN_7,
                Q=>XLXN_8);
   
   XLXI_19 : FD_1
      port map (C=>clk_20M_DUMMY,
                D=>XLXN_8,
                Q=>clk_1M);
   
end BEHAVIORAL;


