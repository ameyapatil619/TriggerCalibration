--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : majority_sys.vhf
-- /___/   /\     Timestamp : 11/25/2016 20:13:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl /home/ameya/Desktop/Indi_Research/Firmware/majority_sys.vhf -w /home/ameya/Desktop/Indi_Research/Firmware/majority_sys.sch
--Design Name: majority_sys
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_majority_sys -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_majority_sys is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_majority_sys;

architecture OR6_HXILINX_majority_sys_V of OR6_HXILINX_majority_sys is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_majority_sys_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity majority_logic_MUSER_majority_sys is
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
end majority_logic_MUSER_majority_sys;

architecture BEHAVIORAL of majority_logic_MUSER_majority_sys is
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
   
   component OR6_HXILINX_majority_sys
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
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_14";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_15";
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
   
   XLXI_13 : OR6_HXILINX_majority_sys
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
   
   XLXI_26 : OR6_HXILINX_majority_sys
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity trigger_ch_MUSER_majority_sys is
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
end trigger_ch_MUSER_majority_sys;

architecture BEHAVIORAL of trigger_ch_MUSER_majority_sys is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity majority_sys is
   port ( and_or_sel_M       : in    std_logic; 
          clk                : in    std_logic; 
          diff_select_M      : in    std_logic; 
          enable_thermal_tri : in    std_logic; 
          ex_tri             : in    std_logic; 
          force_tri          : in    std_logic; 
          mbed_sel0          : in    std_logic; 
          mbed_sel1          : in    std_logic; 
          Trigger_0_H        : in    std_logic; 
          Trigger_0_L        : in    std_logic; 
          Trigger_1_H        : in    std_logic; 
          Trigger_1_L        : in    std_logic; 
          Trigger_2_H        : in    std_logic; 
          Trigger_2_L        : in    std_logic; 
          Trigger_3_H        : in    std_logic; 
          Trigger_3_L        : in    std_logic; 
          and_or_sel_SST     : out   std_logic; 
          diff_select_SST    : out   std_logic; 
          Trigger_out        : out   std_logic);
end majority_sys;

architecture BEHAVIORAL of majority_sys is
   attribute BOX_TYPE   : string ;
   signal XLXN_18            : std_logic;
   signal XLXN_19            : std_logic;
   signal XLXN_20            : std_logic;
   signal XLXN_21            : std_logic;
   component majority_logic_MUSER_majority_sys
      port ( tri_in1            : in    std_logic; 
             tri_in2            : in    std_logic; 
             tri_in3            : in    std_logic; 
             tri_in4            : in    std_logic; 
             clk                : in    std_logic; 
             mbed_sel0          : in    std_logic; 
             mbed_sel1          : in    std_logic; 
             enable_thermal_tri : in    std_logic; 
             ex_tri             : in    std_logic; 
             force_tri          : in    std_logic; 
             input_tri          : out   std_logic);
   end component;
   
   component trigger_ch_MUSER_majority_sys
      port ( Trigger_1L  : in    std_logic; 
             Trigger_0H  : in    std_logic; 
             Trigger_0L  : in    std_logic; 
             Trigger_2H  : in    std_logic; 
             Trigger_2L  : in    std_logic; 
             Trigger_3H  : in    std_logic; 
             Trigger_3L  : in    std_logic; 
             and_or_sel  : in    std_logic; 
             diff_select : in    std_logic; 
             Trigger_1H  : in    std_logic; 
             Channel_0   : out   std_logic; 
             Channel_1   : out   std_logic; 
             Channel_2   : out   std_logic; 
             Channel_3   : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_2 : majority_logic_MUSER_majority_sys
      port map (clk=>clk,
                enable_thermal_tri=>enable_thermal_tri,
                ex_tri=>ex_tri,
                force_tri=>force_tri,
                mbed_sel0=>mbed_sel0,
                mbed_sel1=>mbed_sel1,
                tri_in1=>XLXN_21,
                tri_in2=>XLXN_20,
                tri_in3=>XLXN_19,
                tri_in4=>XLXN_18,
                input_tri=>Trigger_out);
   
   XLXI_3 : trigger_ch_MUSER_majority_sys
      port map (and_or_sel=>and_or_sel_M,
                diff_select=>diff_select_M,
                Trigger_0H=>Trigger_0_H,
                Trigger_0L=>Trigger_0_L,
                Trigger_1H=>Trigger_1_H,
                Trigger_1L=>Trigger_1_L,
                Trigger_2H=>Trigger_2_H,
                Trigger_2L=>Trigger_2_L,
                Trigger_3H=>Trigger_3_H,
                Trigger_3L=>Trigger_3_L,
                Channel_0=>XLXN_21,
                Channel_1=>XLXN_20,
                Channel_2=>XLXN_19,
                Channel_3=>XLXN_18);
   
   XLXI_6 : BUF
      port map (I=>and_or_sel_M,
                O=>and_or_sel_SST);
   
   XLXI_7 : BUF
      port map (I=>diff_select_M,
                O=>diff_select_SST);
   
end BEHAVIORAL;


