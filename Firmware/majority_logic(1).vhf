--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : majority_logic.vhf
-- /___/   /\     Timestamp : 10/09/2014 19:00:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl "C:/Xilinx Projects/Firmware/majority_logic.vhf" -w "C:/Xilinx Projects/Firmware/majority_logic.sch"
--Design Name: majority_logic
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_majority_logic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_majority_logic is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_majority_logic;

architecture OR6_HXILINX_majority_logic_V of OR6_HXILINX_majority_logic is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_majority_logic_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity majority_logic is
   port ( clk                : in    std_logic; 
          enable_thermal_tri : in    std_logic; 
          ex_tri             : in    std_logic; 
          force_tri          : in    std_logic; 
          mbed_sel0          : in    std_logic; 
          mbed_sel1          : in    std_logic; 
          tri_in1            : in    std_logic; 
          tri_in2            : in    std_logic; 
          tri_in3            : in    std_logic; 
          tri_in4            : in    std_logic; 
          input_tri          : out   std_logic);
end majority_logic;

architecture BEHAVIORAL of majority_logic is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_5             : std_logic;
   signal XLXN_6             : std_logic;
   signal XLXN_7             : std_logic;
   signal XLXN_8             : std_logic;
   signal XLXN_9             : std_logic;
   signal XLXN_10            : std_logic;
   signal XLXN_11            : std_logic;
   signal XLXN_12            : std_logic;
   signal XLXN_13            : std_logic;
   signal XLXN_14            : std_logic;
   signal XLXN_15            : std_logic;
   signal XLXN_16            : std_logic;
   signal XLXN_18            : std_logic;
   signal XLXN_19            : std_logic;
   signal XLXN_21            : std_logic;
   signal XLXN_22            : std_logic;
   signal XLXN_23            : std_logic;
   signal XLXN_36            : std_logic;
   signal XLXN_56            : std_logic;
   signal XLXN_66            : std_logic;
   signal XLXN_67            : std_logic;
   signal XLXN_69            : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
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
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR6_HXILINX_majority_logic
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component demux
      port ( clk   : in    std_logic; 
             sel0  : in    std_logic; 
             sel1  : in    std_logic; 
             cout0 : out   std_logic; 
             cout1 : out   std_logic; 
             cout2 : out   std_logic; 
             cout3 : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_4";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_5";
begin
   XLXI_1 : AND2
      port map (I0=>tri_in2,
                I1=>tri_in1,
                O=>XLXN_7);
   
   XLXI_2 : AND2
      port map (I0=>tri_in3,
                I1=>tri_in1,
                O=>XLXN_8);
   
   XLXI_3 : AND2
      port map (I0=>tri_in4,
                I1=>tri_in1,
                O=>XLXN_9);
   
   XLXI_4 : AND2
      port map (I0=>tri_in3,
                I1=>tri_in2,
                O=>XLXN_10);
   
   XLXI_5 : AND2
      port map (I0=>tri_in4,
                I1=>tri_in2,
                O=>XLXN_11);
   
   XLXI_6 : AND2
      port map (I0=>tri_in4,
                I1=>tri_in3,
                O=>XLXN_12);
   
   XLXI_7 : AND3
      port map (I0=>tri_in3,
                I1=>tri_in2,
                I2=>tri_in1,
                O=>XLXN_13);
   
   XLXI_8 : AND3
      port map (I0=>tri_in4,
                I1=>tri_in2,
                I2=>tri_in1,
                O=>XLXN_14);
   
   XLXI_9 : AND3
      port map (I0=>tri_in4,
                I1=>tri_in3,
                I2=>tri_in1,
                O=>XLXN_15);
   
   XLXI_10 : AND3
      port map (I0=>tri_in4,
                I1=>tri_in3,
                I2=>tri_in2,
                O=>XLXN_16);
   
   XLXI_11 : AND4
      port map (I0=>tri_in4,
                I1=>tri_in3,
                I2=>tri_in2,
                I3=>tri_in1,
                O=>XLXN_18);
   
   XLXI_12 : OR4
      port map (I0=>tri_in4,
                I1=>tri_in3,
                I2=>tri_in2,
                I3=>tri_in1,
                O=>XLXN_5);
   
   XLXI_13 : OR6_HXILINX_majority_logic
      port map (I0=>XLXN_12,
                I1=>XLXN_11,
                I2=>XLXN_10,
                I3=>XLXN_9,
                I4=>XLXN_8,
                I5=>XLXN_7,
                O=>XLXN_6);
   
   XLXI_14 : OR4
      port map (I0=>XLXN_16,
                I1=>XLXN_15,
                I2=>XLXN_14,
                I3=>XLXN_13,
                O=>XLXN_67);
   
   XLXI_21 : demux
      port map (clk=>clk,
                sel0=>mbed_sel0,
                sel1=>mbed_sel1,
                cout0=>XLXN_19,
                cout1=>XLXN_69,
                cout2=>XLXN_21,
                cout3=>XLXN_22);
   
   XLXI_26 : OR6_HXILINX_majority_logic
      port map (I0=>force_tri,
                I1=>ex_tri,
                I2=>XLXN_56,
                I3=>XLXN_36,
                I4=>XLXN_66,
                I5=>XLXN_23,
                O=>input_tri);
   
   XLXI_27 : AND3
      port map (I0=>enable_thermal_tri,
                I1=>XLXN_19,
                I2=>XLXN_5,
                O=>XLXN_23);
   
   XLXI_28 : AND3
      port map (I0=>enable_thermal_tri,
                I1=>XLXN_69,
                I2=>XLXN_6,
                O=>XLXN_66);
   
   XLXI_29 : AND3
      port map (I0=>enable_thermal_tri,
                I1=>XLXN_22,
                I2=>XLXN_18,
                O=>XLXN_56);
   
   XLXI_32 : AND3
      port map (I0=>enable_thermal_tri,
                I1=>XLXN_21,
                I2=>XLXN_67,
                O=>XLXN_36);
   
end BEHAVIORAL;


