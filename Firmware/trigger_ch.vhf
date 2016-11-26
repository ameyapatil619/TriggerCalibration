--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : trigger_ch.vhf
-- /___/   /\     Timestamp : 11/25/2016 20:13:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl /home/ameya/Desktop/Indi_Research/Firmware/trigger_ch.vhf -w /home/ameya/Desktop/Indi_Research/Firmware/trigger_ch.sch
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
   signal XLXN_159    : std_logic;
   signal XLXN_160    : std_logic;
   signal XLXN_196    : std_logic;
   signal XLXN_197    : std_logic;
   signal XLXN_198    : std_logic;
   signal XLXN_199    : std_logic;
   signal XLXN_200    : std_logic;
   signal XLXN_201    : std_logic;
   signal XLXN_202    : std_logic;
   signal XLXN_203    : std_logic;
   signal XLXN_204    : std_logic;
   signal XLXN_205    : std_logic;
   signal XLXN_206    : std_logic;
   signal XLXN_207    : std_logic;
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
      port map (I0=>XLXN_160,
                I1=>XLXN_159,
                I2=>XLXN_53,
                O=>XLXN_196);
   
   XLXI_60 : AND3
      port map (I0=>XLXN_160,
                I1=>XLXN_159,
                I2=>XLXN_54,
                O=>XLXN_199);
   
   XLXI_61 : AND3
      port map (I0=>XLXN_160,
                I1=>XLXN_159,
                I2=>XLXN_55,
                O=>XLXN_200);
   
   XLXI_62 : AND3
      port map (I0=>XLXN_160,
                I1=>XLXN_159,
                I2=>XLXN_56,
                O=>XLXN_201);
   
   XLXI_63 : AND4
      port map (I0=>XLXN_160,
                I1=>and_or_sel,
                I2=>Trigger_0L,
                I3=>Trigger_0H,
                O=>XLXN_197);
   
   XLXI_64 : AND4
      port map (I0=>XLXN_160,
                I1=>and_or_sel,
                I2=>Trigger_1L,
                I3=>Trigger_1H,
                O=>XLXN_202);
   
   XLXI_65 : AND4
      port map (I0=>XLXN_160,
                I1=>and_or_sel,
                I2=>Trigger_2L,
                I3=>Trigger_2H,
                O=>XLXN_203);
   
   XLXI_66 : AND4
      port map (I0=>XLXN_160,
                I1=>and_or_sel,
                I2=>Trigger_3L,
                I3=>Trigger_3H,
                O=>XLXN_204);
   
   XLXI_67 : INV
      port map (I=>diff_select,
                O=>XLXN_160);
   
   XLXI_68 : INV
      port map (I=>and_or_sel,
                O=>XLXN_159);
   
   XLXI_69 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_0L,
                O=>XLXN_198);
   
   XLXI_70 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_1L,
                O=>XLXN_205);
   
   XLXI_71 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_2L,
                O=>XLXN_206);
   
   XLXI_72 : AND2
      port map (I0=>diff_select,
                I1=>Trigger_3L,
                O=>XLXN_207);
   
   XLXI_93 : OR3
      port map (I0=>XLXN_198,
                I1=>XLXN_197,
                I2=>XLXN_196,
                O=>Channel_0);
   
   XLXI_94 : OR3
      port map (I0=>XLXN_205,
                I1=>XLXN_202,
                I2=>XLXN_199,
                O=>Channel_1);
   
   XLXI_95 : OR3
      port map (I0=>XLXN_206,
                I1=>XLXN_203,
                I2=>XLXN_200,
                O=>Channel_2);
   
   XLXI_96 : OR3
      port map (I0=>XLXN_207,
                I1=>XLXN_204,
                I2=>XLXN_201,
                O=>Channel_3);
   
end BEHAVIORAL;


