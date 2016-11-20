--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : trigger_ch.vhf
-- /___/   /\     Timestamp : 10/09/2014 19:00:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl "C:/Xilinx Projects/Firmware/trigger_ch.vhf" -w "C:/Xilinx Projects/Firmware/trigger_ch.sch"
--Design Name: trigger_ch
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

entity trigger_ch is
   port ( and_or_sel  : in    std_logic; 
          diff_select : in    std_logic; 
          Trigger_0H  : in    std_logic; 
          Trigger_0L  : in    std_logic; 
          Trigger_1H  : in    std_logic; 
          Trigger_1L  : in    std_logic; 
          Trigger_2H  : in    std_logic; 
          Trigger_2L  : in    std_logic; 
          Trigger_3H  : in    std_logic; 
          Trigger_3L  : in    std_logic; 
          Channel_0   : out   std_logic; 
          Channel_1   : out   std_logic; 
          Channel_2   : out   std_logic; 
          Channel_3   : out   std_logic);
end trigger_ch;

architecture BEHAVIORAL of trigger_ch is
   attribute BOX_TYPE   : string ;
   signal XLXN_53     : std_logic;
   signal XLXN_54     : std_logic;
   signal XLXN_55     : std_logic;
   signal XLXN_56     : std_logic;
   signal XLXN_100    : std_logic;
   signal XLXN_104    : std_logic;
   signal XLXN_112    : std_logic;
   signal XLXN_113    : std_logic;
   signal XLXN_114    : std_logic;
   signal XLXN_115    : std_logic;
   signal XLXN_116    : std_logic;
   signal XLXN_117    : std_logic;
   signal XLXN_118    : std_logic;
   signal XLXN_119    : std_logic;
   signal XLXN_120    : std_logic;
   signal XLXN_121    : std_logic;
   signal XLXN_122    : std_logic;
   signal XLXN_123    : std_logic;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_7 : OR2
      port map (I0=>Trigger_0L,
                I1=>Trigger_0H,
                O=>XLXN_53);
   
   XLXI_8 : OR2
      port map (I0=>Trigger_1L,
                I1=>Trigger_1H,
                O=>XLXN_54);
   
   XLXI_9 : OR2
      port map (I0=>Trigger_2L,
                I1=>Trigger_2H,
                O=>XLXN_55);
   
   XLXI_10 : OR2
      port map (I0=>Trigger_3L,
                I1=>Trigger_3H,
                O=>XLXN_56);
   
   XLXI_59 : AND3
      port map (I0=>XLXN_100,
                I1=>XLXN_104,
                I2=>XLXN_53,
                O=>XLXN_112);
   
   XLXI_60 : AND3
      port map (I0=>XLXN_100,
                I1=>XLXN_104,
                I2=>XLXN_54,
                O=>XLXN_115);
   
   XLXI_61 : AND3
      port map (I0=>XLXN_100,
                I1=>XLXN_104,
                I2=>XLXN_55,
                O=>XLXN_116);
   
   XLXI_62 : AND3
      port map (I0=>XLXN_100,
                I1=>XLXN_104,
                I2=>XLXN_56,
                O=>XLXN_117);
   
   XLXI_63 : AND4
      port map (I0=>XLXN_100,
                I1=>and_or_sel,
                I2=>Trigger_0L,
                I3=>Trigger_0H,
                O=>XLXN_113);
   
   XLXI_64 : AND4
      port map (I0=>XLXN_100,
                I1=>and_or_sel,
                I2=>Trigger_1L,
                I3=>Trigger_1H,
                O=>XLXN_118);
   
   XLXI_65 : AND4
      port map (I0=>XLXN_100,
                I1=>and_or_sel,
                I2=>Trigger_2L,
                I3=>Trigger_2H,
                O=>XLXN_119);
   
   XLXI_66 : AND4
      port map (I0=>XLXN_100,
                I1=>and_or_sel,
                I2=>Trigger_3L,
                I3=>Trigger_3H,
                O=>XLXN_120);
   
   XLXI_67 : INV
      port map (I=>diff_select,
                O=>XLXN_100);
   
   XLXI_68 : INV
      port map (I=>and_or_sel,
                O=>XLXN_104);
   
   XLXI_69 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_0L,
                O=>XLXN_114);
   
   XLXI_70 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_1L,
                O=>XLXN_121);
   
   XLXI_71 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_2L,
                O=>XLXN_122);
   
   XLXI_72 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_3L,
                O=>XLXN_123);
   
   XLXI_93 : OR3
      port map (I0=>XLXN_114,
                I1=>XLXN_113,
                I2=>XLXN_112,
                O=>Channel_0);
   
   XLXI_94 : OR3
      port map (I0=>XLXN_121,
                I1=>XLXN_118,
                I2=>XLXN_115,
                O=>Channel_1);
   
   XLXI_95 : OR3
      port map (I0=>XLXN_122,
                I1=>XLXN_119,
                I2=>XLXN_116,
                O=>Channel_2);
   
   XLXI_96 : OR3
      port map (I0=>XLXN_123,
                I1=>XLXN_120,
                I2=>XLXN_117,
                O=>Channel_3);
   
end BEHAVIORAL;


