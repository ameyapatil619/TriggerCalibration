--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Firmware_Top.vhf
-- /___/   /\     Timestamp : 11/25/2016 20:17:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl /home/ameya/Desktop/Indi_Research/Firmware/Firmware_Top.vhf -w /home/ameya/Desktop/Indi_Research/Firmware/Firmware_Top.sch
--Design Name: Firmware_Top
--Device: spartan3a
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_Firmware_Top -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_Firmware_Top is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_Firmware_Top;

architecture OR6_HXILINX_Firmware_Top_V of OR6_HXILINX_Firmware_Top is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_Firmware_Top_V;
----- CELL M2_1_HXILINX_Firmware_Top -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Firmware_Top is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Firmware_Top;

architecture M2_1_HXILINX_Firmware_Top_V of M2_1_HXILINX_Firmware_Top is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Firmware_Top_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top_trigg_MUSER_Firmware_Top is
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
end top_trigg_MUSER_Firmware_Top;

architecture BEHAVIORAL of top_trigg_MUSER_Firmware_Top is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MEMORY_BLOCK_NEW_MUSER_Firmware_Top is
   port ( clk           : in    std_logic; 
          di_1          : in    std_logic; 
          di_2          : in    std_logic; 
          di_3          : in    std_logic; 
          di_4          : in    std_logic; 
          en            : in    std_logic; 
          re            : in    std_logic; 
          rst           : in    std_logic; 
          stop_clk      : in    std_logic; 
          stop_data_in  : in    std_logic; 
          address_1     : out   std_logic_vector (11 downto 0); 
          address_2     : out   std_logic_vector (11 downto 0); 
          address_3     : out   std_logic_vector (11 downto 0); 
          address_4     : out   std_logic_vector (11 downto 0); 
          done_1        : out   std_logic; 
          done_2        : out   std_logic; 
          done_3        : out   std_logic; 
          done_4        : out   std_logic; 
          do_1          : out   std_logic; 
          do_2          : out   std_logic; 
          do_3          : out   std_logic; 
          do_4          : out   std_logic; 
          full_1        : out   std_logic; 
          full_2        : out   std_logic; 
          full_3        : out   std_logic; 
          full_4        : out   std_logic; 
          stop_address  : out   std_logic_vector (7 downto 0); 
          stop_data_out : out   std_logic; 
          stop_done     : out   std_logic; 
          stop_full     : out   std_logic; 
          stop_wait     : out   std_logic; 
          wait_sig_1    : out   std_logic; 
          wait_sig_2    : out   std_logic; 
          wait_sig_3    : out   std_logic; 
          wait_sig_4    : out   std_logic; 
          start_1       : inout std_logic; 
          start_2       : inout std_logic; 
          start_3       : inout std_logic; 
          start_4       : inout std_logic; 
          stop_start    : inout std_logic);
end MEMORY_BLOCK_NEW_MUSER_Firmware_Top;

architecture BEHAVIORAL of MEMORY_BLOCK_NEW_MUSER_Firmware_Top is
   signal XLXN_24            : std_logic;
   signal XLXN_89            : std_logic;
   signal XLXN_94            : std_logic;
   signal XLXN_101           : std_logic;
   signal XLXN_114           : std_logic;
   signal address_1_DUMMY    : std_logic_vector (11 downto 0);
   signal address_2_DUMMY    : std_logic_vector (11 downto 0);
   signal address_3_DUMMY    : std_logic_vector (11 downto 0);
   signal address_4_DUMMY    : std_logic_vector (11 downto 0);
   signal stop_address_DUMMY : std_logic_vector (7 downto 0);
   signal done_1_DUMMY       : std_logic;
   signal done_2_DUMMY       : std_logic;
   signal done_3_DUMMY       : std_logic;
   signal done_4_DUMMY       : std_logic;
   component mem_control_gen
      port ( en       : in    std_logic; 
             clk      : in    std_logic; 
             re       : in    std_logic; 
             rst      : in    std_logic; 
             we       : out   std_logic; 
             start    : inout std_logic; 
             address  : out   std_logic_vector (11 downto 0); 
             done     : out   std_logic; 
             full     : out   std_logic; 
             wait_sig : out   std_logic);
   end component;
   
   component ram_fifo_1ch
      port ( clk  : in    std_logic; 
             we   : in    std_logic; 
             en   : in    std_logic; 
             di   : in    std_logic; 
             addr : in    std_logic_vector (11 downto 0); 
             do   : out   std_logic);
   end component;
   
   component STOP_mem_control_gen
      port ( en       : in    std_logic; 
             rst      : in    std_logic; 
             re       : in    std_logic; 
             clk      : in    std_logic; 
             start    : inout std_logic; 
             full     : out   std_logic; 
             done     : out   std_logic; 
             wait_sig : out   std_logic; 
             we       : out   std_logic; 
             address  : out   std_logic_vector (7 downto 0));
   end component;
   
   component stop_ram_fifo_1ch
      port ( clk  : in    std_logic; 
             we   : in    std_logic; 
             en   : in    std_logic; 
             di   : in    std_logic; 
             addr : in    std_logic_vector (7 downto 0); 
             do   : out   std_logic);
   end component;
   
begin
   address_1(11 downto 0) <= address_1_DUMMY(11 downto 0);
   address_2(11 downto 0) <= address_2_DUMMY(11 downto 0);
   address_3(11 downto 0) <= address_3_DUMMY(11 downto 0);
   address_4(11 downto 0) <= address_4_DUMMY(11 downto 0);
   done_1 <= done_1_DUMMY;
   done_2 <= done_2_DUMMY;
   done_3 <= done_3_DUMMY;
   done_4 <= done_4_DUMMY;
   stop_address(7 downto 0) <= stop_address_DUMMY(7 downto 0);
   XLXI_1 : mem_control_gen
      port map (clk=>clk,
                en=>en,
                re=>re,
                rst=>rst,
                address(11 downto 0)=>address_1_DUMMY(11 downto 0),
                done=>done_1_DUMMY,
                full=>full_1,
                wait_sig=>wait_sig_1,
                we=>XLXN_24,
                start=>start_1);
   
   XLXI_2 : ram_fifo_1ch
      port map (addr(11 downto 0)=>address_1_DUMMY(11 downto 0),
                clk=>clk,
                di=>di_1,
                en=>start_1,
                we=>XLXN_24,
                do=>do_1);
   
   XLXI_10 : mem_control_gen
      port map (clk=>clk,
                en=>en,
                re=>done_1_DUMMY,
                rst=>rst,
                address(11 downto 0)=>address_2_DUMMY(11 downto 0),
                done=>done_2_DUMMY,
                full=>full_2,
                wait_sig=>wait_sig_2,
                we=>XLXN_89,
                start=>start_2);
   
   XLXI_11 : ram_fifo_1ch
      port map (addr(11 downto 0)=>address_2_DUMMY(11 downto 0),
                clk=>clk,
                di=>di_2,
                en=>start_2,
                we=>XLXN_89,
                do=>do_2);
   
   XLXI_13 : mem_control_gen
      port map (clk=>clk,
                en=>en,
                re=>done_2_DUMMY,
                rst=>rst,
                address(11 downto 0)=>address_3_DUMMY(11 downto 0),
                done=>done_3_DUMMY,
                full=>full_3,
                wait_sig=>wait_sig_3,
                we=>XLXN_94,
                start=>start_3);
   
   XLXI_14 : ram_fifo_1ch
      port map (addr(11 downto 0)=>address_3_DUMMY(11 downto 0),
                clk=>clk,
                di=>di_3,
                en=>start_3,
                we=>XLXN_94,
                do=>do_3);
   
   XLXI_22 : mem_control_gen
      port map (clk=>clk,
                en=>en,
                re=>done_3_DUMMY,
                rst=>rst,
                address(11 downto 0)=>address_4_DUMMY(11 downto 0),
                done=>done_4_DUMMY,
                full=>full_4,
                wait_sig=>wait_sig_4,
                we=>XLXN_101,
                start=>start_4);
   
   XLXI_23 : ram_fifo_1ch
      port map (addr(11 downto 0)=>address_4_DUMMY(11 downto 0),
                clk=>clk,
                di=>di_4,
                en=>start_4,
                we=>XLXN_101,
                do=>do_4);
   
   XLXI_25 : STOP_mem_control_gen
      port map (clk=>stop_clk,
                en=>en,
                re=>done_4_DUMMY,
                rst=>rst,
                address(7 downto 0)=>stop_address_DUMMY(7 downto 0),
                done=>stop_done,
                full=>stop_full,
                wait_sig=>stop_wait,
                we=>XLXN_114,
                start=>stop_start);
   
   XLXI_26 : stop_ram_fifo_1ch
      port map (addr(7 downto 0)=>stop_address_DUMMY(7 downto 0),
                clk=>stop_clk,
                di=>stop_data_in,
                en=>stop_start,
                we=>XLXN_114,
                do=>stop_data_out);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stoplatch_SCH_MUSER_Firmware_Top is
   port ( clk     : in    std_logic; 
          reset   : in    std_logic; 
          trigger : in    std_logic; 
          stop    : out   std_logic);
end stoplatch_SCH_MUSER_Firmware_Top;

architecture BEHAVIORAL of stoplatch_SCH_MUSER_Firmware_Top is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity majority_logic_MUSER_Firmware_Top is
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
end majority_logic_MUSER_Firmware_Top;

architecture BEHAVIORAL of majority_logic_MUSER_Firmware_Top is
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
   
   component OR6_HXILINX_Firmware_Top
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
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_0";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_1";
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
   
   XLXI_13 : OR6_HXILINX_Firmware_Top
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
   
   XLXI_26 : OR6_HXILINX_Firmware_Top
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

entity trigger_ch_MUSER_Firmware_Top is
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
end trigger_ch_MUSER_Firmware_Top;

architecture BEHAVIORAL of trigger_ch_MUSER_Firmware_Top is
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

entity majority_sys_MUSER_Firmware_Top is
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
end majority_sys_MUSER_Firmware_Top;

architecture BEHAVIORAL of majority_sys_MUSER_Firmware_Top is
   attribute BOX_TYPE   : string ;
   signal XLXN_18            : std_logic;
   signal XLXN_19            : std_logic;
   signal XLXN_20            : std_logic;
   signal XLXN_21            : std_logic;
   component majority_logic_MUSER_Firmware_Top
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
   
   component trigger_ch_MUSER_Firmware_Top
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
   XLXI_2 : majority_logic_MUSER_Firmware_Top
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
   
   XLXI_3 : trigger_ch_MUSER_Firmware_Top
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity stop_gen_block_MUSER_Firmware_Top is
   port ( and_or_sel_M       : in    std_logic; 
          clk                : in    std_logic; 
          clk_160M           : in    std_logic; 
          diff_select_M      : in    std_logic; 
          enable_thermal_tri : in    std_logic; 
          ex_tri             : in    std_logic; 
          force_tri          : in    std_logic; 
          mbed_sel0          : in    std_logic; 
          mbed_sel1          : in    std_logic; 
          rst                : in    std_logic; 
          trig_0H            : in    std_logic; 
          trig_0L            : in    std_logic; 
          trig_1H            : in    std_logic; 
          trig_1L            : in    std_logic; 
          trig_2H            : in    std_logic; 
          trig_2L            : in    std_logic; 
          trig_3H            : in    std_logic; 
          trig_3L            : in    std_logic; 
          and_or_sel_SST     : out   std_logic; 
          diff_select_SST    : out   std_logic; 
          reset_SST          : out   std_logic; 
          stop               : out   std_logic);
end stop_gen_block_MUSER_Firmware_Top;

architecture BEHAVIORAL of stop_gen_block_MUSER_Firmware_Top is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_51            : std_logic;
   signal XLXN_109           : std_logic;
   signal XLXN_121           : std_logic;
   signal XLXN_184           : std_logic;
   signal XLXN_185           : std_logic;
   component majority_sys_MUSER_Firmware_Top
      port ( Trigger_0_H        : in    std_logic; 
             Trigger_0_L        : in    std_logic; 
             Trigger_1_H        : in    std_logic; 
             Trigger_1_L        : in    std_logic; 
             Trigger_2_H        : in    std_logic; 
             Trigger_2_L        : in    std_logic; 
             Trigger_3_H        : in    std_logic; 
             Trigger_3_L        : in    std_logic; 
             clk                : in    std_logic; 
             mbed_sel0          : in    std_logic; 
             mbed_sel1          : in    std_logic; 
             ex_tri             : in    std_logic; 
             enable_thermal_tri : in    std_logic; 
             force_tri          : in    std_logic; 
             and_or_sel_M       : in    std_logic; 
             diff_select_M      : in    std_logic; 
             and_or_sel_SST     : out   std_logic; 
             diff_select_SST    : out   std_logic; 
             Trigger_out        : out   std_logic);
   end component;
   
   component SRL16
      -- synopsys translate_off
      generic( INIT : bit_vector :=  x"0000");
      -- synopsys translate_on
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             CLK : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of SRL16 : component is "0000";
   attribute BOX_TYPE of SRL16 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component stoplatch_SCH_MUSER_Firmware_Top
      port ( trigger : in    std_logic; 
             clk     : in    std_logic; 
             reset   : in    std_logic; 
             stop    : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_2 : majority_sys_MUSER_Firmware_Top
      port map (and_or_sel_M=>and_or_sel_M,
                clk=>clk,
                diff_select_M=>diff_select_M,
                enable_thermal_tri=>enable_thermal_tri,
                ex_tri=>ex_tri,
                force_tri=>force_tri,
                mbed_sel0=>mbed_sel0,
                mbed_sel1=>mbed_sel1,
                Trigger_0_H=>trig_0H,
                Trigger_0_L=>trig_0L,
                Trigger_1_H=>trig_1H,
                Trigger_1_L=>trig_1L,
                Trigger_2_H=>trig_2H,
                Trigger_2_L=>trig_2L,
                Trigger_3_H=>trig_3H,
                Trigger_3_L=>trig_3L,
                and_or_sel_SST=>and_or_sel_SST,
                diff_select_SST=>diff_select_SST,
                Trigger_out=>XLXN_109);
   
   XLXI_6 : SRL16
      port map (A0=>XLXN_185,
                A1=>XLXN_185,
                A2=>XLXN_184,
                A3=>XLXN_185,
                CLK=>clk_160M,
                D=>XLXN_109,
                Q=>XLXN_51);
   
   XLXI_7 : SRL16
      port map (A0=>XLXN_184,
                A1=>XLXN_184,
                A2=>XLXN_185,
                A3=>XLXN_185,
                CLK=>clk_160M,
                D=>XLXN_51,
                Q=>XLXN_121);
   
   XLXI_18 : VCC
      port map (P=>XLXN_184);
   
   XLXI_19 : GND
      port map (G=>XLXN_185);
   
   XLXI_27 : stoplatch_SCH_MUSER_Firmware_Top
      port map (clk=>clk,
                reset=>rst,
                trigger=>XLXN_121,
                stop=>stop);
   
   XLXI_44 : BUF
      port map (I=>rst,
                O=>reset_SST);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Sync_MUSER_Firmware_Top is
   port ( clk_1   : in    std_logic; 
          clk_20  : in    std_logic; 
          clk_80M : in    std_logic; 
          clk_1M  : out   std_logic; 
          clk_20M : out   std_logic);
end Sync_MUSER_Firmware_Top;

architecture BEHAVIORAL of Sync_MUSER_Firmware_Top is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Firmware_Top is
   port ( and_or_sel_M       : in    std_logic; 
          clk                : in    std_logic; 
          diff_select_M      : in    std_logic; 
          di_ch0             : in    std_logic; 
          di_ch1             : in    std_logic; 
          di_ch2             : in    std_logic; 
          di_ch3             : in    std_logic; 
          enable_thermal_tri : in    std_logic; 
          ex_tri             : in    std_logic; 
          force_tri          : in    std_logic; 
          in_heartbeat       : in    std_logic; 
          mbed_sel0          : in    std_logic; 
          mbed_sel1          : in    std_logic; 
          re                 : in    std_logic; 
          rst                : in    std_logic; 
          SPI_SCLK           : in    std_logic; 
          stop_data_in       : in    std_logic; 
          trigg_enable       : in    std_logic; 
          trig_0H            : in    std_logic; 
          trig_0L            : in    std_logic; 
          trig_1H            : in    std_logic; 
          trig_1L            : in    std_logic; 
          trig_2H            : in    std_logic; 
          trig_2L            : in    std_logic; 
          trig_3H            : in    std_logic; 
          trig_3L            : in    std_logic; 
          ADC_clk            : out   std_logic; 
          and_or_sel_SST     : out   std_logic; 
          CS_n               : out   std_logic; 
          diff_select_SST    : out   std_logic; 
          done_stop          : out   std_logic; 
          full               : out   std_logic; 
          HSCLK_Ctrl         : out   std_logic; 
          out_heartbeat      : out   std_logic; 
          reset_SST          : out   std_logic; 
          SPI_MISO           : out   std_logic; 
          SST_read_clk       : out   std_logic; 
          stop_SST           : out   std_logic);
end Firmware_Top;

architecture BEHAVIORAL of Firmware_Top is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   attribute IOSTANDARD : string ;
   attribute SLEW       : string ;
   attribute DRIVE      : string ;
   signal clk_test_stop      : std_logic;
   signal clk_1M             : std_logic;
   signal clk_20M            : std_logic;
   signal data_0             : std_logic;
   signal data_1             : std_logic;
   signal data_2             : std_logic;
   signal data_3             : std_logic;
   signal full_3             : std_logic;
   signal or_data            : std_logic;
   signal RAM_sync           : std_logic;
   signal stop_data          : std_logic;
   signal trigg_rst          : std_logic;
   signal tri_ctrl           : std_logic;
   signal XLXN_32            : std_logic;
   signal XLXN_33            : std_logic;
   signal XLXN_147           : std_logic;
   signal XLXN_424           : std_logic;
   signal XLXN_426           : std_logic;
   signal XLXN_427           : std_logic;
   signal XLXN_429           : std_logic;
   signal XLXN_431           : std_logic;
   signal XLXN_442           : std_logic;
   signal XLXN_469           : std_logic;
   signal XLXN_487           : std_logic;
   signal XLXN_488           : std_logic;
   signal XLXN_522           : std_logic;
   signal XLXN_658           : std_logic;
   signal XLXN_710           : std_logic;
   signal XLXN_711           : std_logic;
   signal XLXN_712           : std_logic;
   signal XLXN_713           : std_logic;
   signal XLXN_714           : std_logic;
   signal XLXN_715           : std_logic;
   signal XLXN_716           : std_logic;
   signal XLXN_717           : std_logic;
   signal XLXN_718           : std_logic;
   signal XLXN_719           : std_logic;
   signal XLXN_720           : std_logic;
   signal XLXN_721           : std_logic;
   signal XLXN_722           : std_logic;
   signal XLXN_723           : std_logic;
   signal XLXN_724           : std_logic;
   signal XLXN_725           : std_logic;
   signal XLXN_726           : std_logic;
   signal XLXN_727           : std_logic;
   signal XLXN_728           : std_logic;
   signal XLXN_729           : std_logic;
   signal XLXN_730           : std_logic;
   signal XLXN_731           : std_logic;
   signal XLXN_763           : std_logic;
   signal XLXN_781           : std_logic;
   signal XLXN_782           : std_logic_vector (31 downto 0);
   signal XLXN_784           : std_logic_vector (31 downto 0);
   signal XLXN_785           : std_logic_vector (31 downto 0);
   signal XLXN_786           : std_logic_vector (31 downto 0);
   signal XLXN_787           : std_logic_vector (31 downto 0);
   signal XLXN_788           : std_logic_vector (31 downto 0);
   signal XLXN_789           : std_logic_vector (31 downto 0);
   signal XLXN_790           : std_logic_vector (31 downto 0);
   signal stop_SST_DUMMY     : std_logic;
   signal ADC_clk_DUMMY      : std_logic;
   component dcm_clkgen
      port ( CLKIN_IN        : in    std_logic; 
             STATUS_OUT      : out   std_logic_vector (7 downto 0); 
             LOCKED_OUT      : out   std_logic; 
             CLKDV_OUT       : out   std_logic; 
             CLK2X_OUT       : out   std_logic; 
             CLKIN_IBUFG_OUT : out   std_logic; 
             CLK0_OUT        : out   std_logic);
   end component;
   
   component clkgen_1M
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component CS_gen
      port ( en       : in    std_logic; 
             clk_1M   : in    std_logic; 
             clk_20M  : in    std_logic; 
             rst      : in    std_logic; 
             ADC_clk  : out   std_logic; 
             SST_rck  : out   std_logic; 
             CS_n     : out   std_logic; 
             RAM_sync : out   std_logic);
   end component;
   
   component M2_1_HXILINX_Firmware_Top
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component Sync_MUSER_Firmware_Top
      port ( clk_80M : in    std_logic; 
             clk_20  : in    std_logic; 
             clk_1   : in    std_logic; 
             clk_1M  : out   std_logic; 
             clk_20M : out   std_logic);
   end component;
   
   component MEMORY_BLOCK_NEW_MUSER_Firmware_Top
      port ( en            : in    std_logic; 
             clk           : in    std_logic; 
             rst           : in    std_logic; 
             re            : in    std_logic; 
             di_1          : in    std_logic; 
             di_2          : in    std_logic; 
             di_3          : in    std_logic; 
             di_4          : in    std_logic; 
             stop_clk      : in    std_logic; 
             stop_data_in  : in    std_logic; 
             start_1       : inout std_logic; 
             start_2       : inout std_logic; 
             start_3       : inout std_logic; 
             start_4       : inout std_logic; 
             stop_start    : inout std_logic; 
             address_1     : out   std_logic_vector (11 downto 0); 
             done_1        : out   std_logic; 
             full_1        : out   std_logic; 
             wait_sig_1    : out   std_logic; 
             address_3     : out   std_logic_vector (11 downto 0); 
             address_2     : out   std_logic_vector (11 downto 0); 
             address_4     : out   std_logic_vector (11 downto 0); 
             done_2        : out   std_logic; 
             full_2        : out   std_logic; 
             wait_sig_2    : out   std_logic; 
             done_3        : out   std_logic; 
             full_3        : out   std_logic; 
             wait_sig_3    : out   std_logic; 
             done_4        : out   std_logic; 
             full_4        : out   std_logic; 
             wait_sig_4    : out   std_logic; 
             stop_address  : out   std_logic_vector (7 downto 0); 
             stop_done     : out   std_logic; 
             stop_full     : out   std_logic; 
             stop_wait     : out   std_logic; 
             stop_data_out : out   std_logic; 
             do_4          : out   std_logic; 
             do_3          : out   std_logic; 
             do_2          : out   std_logic; 
             do_1          : out   std_logic);
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OBUFT
      port ( I : in    std_logic; 
             T : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUFT : component is "DEFAULT";
   attribute SLEW of OBUFT : component is "SLOW";
   attribute DRIVE of OBUFT : component is "12";
   attribute BOX_TYPE of OBUFT : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component stop_gen_block_MUSER_Firmware_Top
      port ( force_tri          : in    std_logic; 
             enable_thermal_tri : in    std_logic; 
             ex_tri             : in    std_logic; 
             mbed_sel1          : in    std_logic; 
             mbed_sel0          : in    std_logic; 
             trig_3L            : in    std_logic; 
             trig_3H            : in    std_logic; 
             trig_2L            : in    std_logic; 
             trig_2H            : in    std_logic; 
             trig_1L            : in    std_logic; 
             trig_1H            : in    std_logic; 
             trig_0L            : in    std_logic; 
             trig_0H            : in    std_logic; 
             diff_select_M      : in    std_logic; 
             and_or_sel_M       : in    std_logic; 
             clk                : in    std_logic; 
             rst                : in    std_logic; 
             and_or_sel_SST     : out   std_logic; 
             diff_select_SST    : out   std_logic; 
             stop               : out   std_logic; 
             reset_SST          : out   std_logic; 
             clk_160M           : in    std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component top_psi_trigg
      port ( rst        : in    std_logic; 
             clk        : in    std_logic; 
             enable     : in    std_logic; 
             ser_start  : in    std_logic; 
             prl_in_0H  : in    std_logic_vector (31 downto 0); 
             prl_in_0L  : in    std_logic_vector (31 downto 0); 
             prl_in_1H  : in    std_logic_vector (31 downto 0); 
             prl_in_1L  : in    std_logic_vector (31 downto 0); 
             prl_in_2H  : in    std_logic_vector (31 downto 0); 
             prl_in_2L  : in    std_logic_vector (31 downto 0); 
             prl_in_3H  : in    std_logic_vector (31 downto 0); 
             prl_in_3L  : in    std_logic_vector (31 downto 0); 
             eoc_0H     : out   std_logic; 
             ser_out_0H : out   std_logic; 
             eoc_0L     : out   std_logic; 
             ser_out_0L : out   std_logic; 
             eoc_1H     : out   std_logic; 
             ser_out_1H : out   std_logic; 
             eoc_1L     : out   std_logic; 
             ser_out_1L : out   std_logic; 
             eoc_2H     : out   std_logic; 
             ser_out_2H : out   std_logic; 
             eoc_2L     : out   std_logic; 
             ser_out_2L : out   std_logic; 
             eoc_3H     : out   std_logic; 
             ser_out_3H : out   std_logic; 
             eoc_3L     : out   std_logic; 
             ser_out_3L : out   std_logic);
   end component;
   
   component top_trigg_MUSER_Firmware_Top
      port ( rst        : in    std_logic; 
             clk        : in    std_logic; 
             enable     : in    std_logic; 
             trig_0H    : in    std_logic; 
             trig_0L    : in    std_logic; 
             trig_1H    : in    std_logic; 
             trig_1L    : in    std_logic; 
             trig_2H    : in    std_logic; 
             trig_2L    : in    std_logic; 
             trig_3L    : in    std_logic; 
             trig_3H    : in    std_logic; 
             trig_ct_0H : out   std_logic_vector (31 downto 0); 
             trig_ct_0L : out   std_logic_vector (31 downto 0); 
             trig_ct_1H : out   std_logic_vector (31 downto 0); 
             trig_ct_1L : out   std_logic_vector (31 downto 0); 
             trig_ct_2H : out   std_logic_vector (31 downto 0); 
             trig_ct_2L : out   std_logic_vector (31 downto 0); 
             trig_ct_3H : out   std_logic_vector (31 downto 0); 
             trig_ct_3L : out   std_logic_vector (31 downto 0));
   end component;
   
   attribute HU_SET of XLXI_11 : label is "XLXI_11_3";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_2";
   attribute HU_SET of XLXI_103 : label is "XLXI_103_4";
   attribute HU_SET of XLXI_132 : label is "XLXI_132_5";
   attribute HU_SET of XLXI_133 : label is "XLXI_133_6";
   attribute HU_SET of XLXI_134 : label is "XLXI_134_7";
   attribute HU_SET of XLXI_135 : label is "XLXI_135_8";
   attribute HU_SET of XLXI_136 : label is "XLXI_136_9";
   attribute HU_SET of XLXI_137 : label is "XLXI_137_10";
   attribute HU_SET of XLXI_138 : label is "XLXI_138_11";
begin
   ADC_clk <= ADC_clk_DUMMY;
   stop_SST <= stop_SST_DUMMY;
   XLXI_2 : dcm_clkgen
      port map (CLKIN_IN=>clk,
                CLKDV_OUT=>clk_20M,
                CLKIN_IBUFG_OUT=>open,
                CLK0_OUT=>XLXN_781,
                CLK2X_OUT=>XLXN_442,
                LOCKED_OUT=>open,
                STATUS_OUT=>open);
   
   XLXI_3 : clkgen_1M
      port map (clk_in=>clk_20M,
                clk_out=>clk_1M);
   
   XLXI_5 : CS_gen
      port map (clk_1M=>XLXN_33,
                clk_20M=>XLXN_32,
                en=>stop_SST_DUMMY,
                rst=>trigg_rst,
                ADC_clk=>ADC_clk_DUMMY,
                CS_n=>CS_n,
                RAM_sync=>RAM_sync,
                SST_rck=>SST_read_clk);
   
   XLXI_11 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_424,
                D1=>SPI_SCLK,
                S0=>re,
                O=>XLXN_658);
   
   XLXI_12 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_427,
                D1=>SPI_SCLK,
                S0=>re,
                O=>clk_test_stop);
   
   XLXI_18 : Sync_MUSER_Firmware_Top
      port map (clk_1=>clk_1M,
                clk_20=>clk_20M,
                clk_80M=>XLXN_781,
                clk_1M=>XLXN_33,
                clk_20M=>XLXN_32);
   
   XLXI_21 : MEMORY_BLOCK_NEW_MUSER_Firmware_Top
      port map (clk=>XLXN_658,
                di_1=>di_ch0,
                di_2=>di_ch1,
                di_3=>di_ch2,
                di_4=>di_ch3,
                en=>stop_SST_DUMMY,
                re=>re,
                rst=>trigg_rst,
                stop_clk=>clk_test_stop,
                stop_data_in=>stop_data_in,
                address_1=>open,
                address_2=>open,
                address_3=>open,
                address_4=>open,
                done_1=>open,
                done_2=>open,
                done_3=>open,
                done_4=>open,
                do_1=>data_0,
                do_2=>data_1,
                do_3=>data_2,
                do_4=>data_3,
                full_1=>open,
                full_2=>open,
                full_3=>open,
                full_4=>full_3,
                stop_address=>open,
                stop_data_out=>stop_data,
                stop_done=>XLXN_763,
                stop_full=>XLXN_429,
                stop_wait=>open,
                wait_sig_1=>open,
                wait_sig_2=>open,
                wait_sig_3=>open,
                wait_sig_4=>open,
                start_1=>open,
                start_2=>open,
                start_3=>open,
                start_4=>open,
                stop_start=>open);
   
   XLXI_23 : OR5
      port map (I0=>stop_data,
                I1=>data_3,
                I2=>data_2,
                I3=>data_1,
                I4=>data_0,
                O=>or_data);
   
   XLXI_31 : OBUFT
      port map (I=>or_data,
                T=>tri_ctrl,
                O=>XLXN_522);
   
   XLXI_32 : OR2
      port map (I0=>XLXN_763,
                I1=>XLXN_147,
                O=>tri_ctrl);
   
   XLXI_34 : INV
      port map (I=>re,
                O=>XLXN_147);
   
   XLXI_37 : BUFG
      port map (I=>rst,
                O=>trigg_rst);
   
   XLXI_38 : stop_gen_block_MUSER_Firmware_Top
      port map (and_or_sel_M=>and_or_sel_M,
                clk=>XLXN_781,
                clk_160M=>XLXN_442,
                diff_select_M=>diff_select_M,
                enable_thermal_tri=>enable_thermal_tri,
                ex_tri=>ex_tri,
                force_tri=>force_tri,
                mbed_sel0=>mbed_sel0,
                mbed_sel1=>mbed_sel1,
                rst=>trigg_rst,
                trig_0H=>trig_0H,
                trig_0L=>trig_0L,
                trig_1H=>trig_1H,
                trig_1L=>trig_1L,
                trig_2H=>trig_2H,
                trig_2L=>trig_2L,
                trig_3H=>trig_3H,
                trig_3L=>trig_3L,
                and_or_sel_SST=>and_or_sel_SST,
                diff_select_SST=>diff_select_SST,
                reset_SST=>reset_SST,
                stop=>stop_SST_DUMMY);
   
   XLXI_39 : AND2
      port map (I0=>XLXN_429,
                I1=>full_3,
                O=>full);
   
   XLXI_41 : VCC
      port map (P=>HSCLK_Ctrl);
   
   XLXI_42 : AND3
      port map (I0=>ADC_clk_DUMMY,
                I1=>RAM_sync,
                I2=>XLXN_426,
                O=>XLXN_424);
   
   XLXI_43 : INV
      port map (I=>full_3,
                O=>XLXN_426);
   
   XLXI_44 : AND2
      port map (I0=>RAM_sync,
                I1=>XLXN_431,
                O=>XLXN_427);
   
   XLXI_45 : INV
      port map (I=>XLXN_429,
                O=>XLXN_431);
   
   XLXI_59 : AND2
      port map (I0=>XLXN_469,
                I1=>in_heartbeat,
                O=>out_heartbeat);
   
   XLXI_70 : INV
      port map (I=>XLXN_488,
                O=>XLXN_469);
   
   XLXI_94 : BUFG
      port map (I=>in_heartbeat,
                O=>XLXN_487);
   
   XLXI_95 : BUFG
      port map (I=>XLXN_487,
                O=>XLXN_488);
   
   XLXI_103 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_522,
                D1=>XLXN_716,
                S0=>XLXN_763,
                O=>SPI_MISO);
   
   XLXI_131 : top_psi_trigg
      port map (clk=>XLXN_658,
                enable=>trigg_enable,
                prl_in_0H(31 downto 0)=>XLXN_782(31 downto 0),
                prl_in_0L(31 downto 0)=>XLXN_784(31 downto 0),
                prl_in_1H(31 downto 0)=>XLXN_785(31 downto 0),
                prl_in_1L(31 downto 0)=>XLXN_786(31 downto 0),
                prl_in_2H(31 downto 0)=>XLXN_787(31 downto 0),
                prl_in_2L(31 downto 0)=>XLXN_788(31 downto 0),
                prl_in_3H(31 downto 0)=>XLXN_789(31 downto 0),
                prl_in_3L(31 downto 0)=>XLXN_790(31 downto 0),
                rst=>trigg_rst,
                ser_start=>XLXN_763,
                eoc_0H=>XLXN_727,
                eoc_0L=>XLXN_731,
                eoc_1H=>XLXN_730,
                eoc_1L=>XLXN_729,
                eoc_2H=>XLXN_728,
                eoc_2L=>XLXN_720,
                eoc_3H=>XLXN_719,
                eoc_3L=>done_stop,
                ser_out_0H=>XLXN_726,
                ser_out_0L=>XLXN_725,
                ser_out_1H=>XLXN_724,
                ser_out_1L=>XLXN_723,
                ser_out_2H=>XLXN_722,
                ser_out_2L=>XLXN_721,
                ser_out_3H=>XLXN_718,
                ser_out_3L=>XLXN_717);
   
   XLXI_132 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_726,
                D1=>XLXN_715,
                S0=>XLXN_727,
                O=>XLXN_716);
   
   XLXI_133 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_725,
                D1=>XLXN_714,
                S0=>XLXN_731,
                O=>XLXN_715);
   
   XLXI_134 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_724,
                D1=>XLXN_713,
                S0=>XLXN_730,
                O=>XLXN_714);
   
   XLXI_135 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_723,
                D1=>XLXN_712,
                S0=>XLXN_729,
                O=>XLXN_713);
   
   XLXI_136 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_722,
                D1=>XLXN_711,
                S0=>XLXN_728,
                O=>XLXN_712);
   
   XLXI_137 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_721,
                D1=>XLXN_710,
                S0=>XLXN_720,
                O=>XLXN_711);
   
   XLXI_138 : M2_1_HXILINX_Firmware_Top
      port map (D0=>XLXN_718,
                D1=>XLXN_717,
                S0=>XLXN_719,
                O=>XLXN_710);
   
   XLXI_139 : top_trigg_MUSER_Firmware_Top
      port map (clk=>XLXN_781,
                enable=>trigg_enable,
                rst=>trigg_rst,
                trig_0H=>trig_0H,
                trig_0L=>trig_0L,
                trig_1H=>trig_1H,
                trig_1L=>trig_1L,
                trig_2H=>trig_2H,
                trig_2L=>trig_2L,
                trig_3H=>trig_3H,
                trig_3L=>trig_3L,
                trig_ct_0H(31 downto 0)=>XLXN_782(31 downto 0),
                trig_ct_0L(31 downto 0)=>XLXN_784(31 downto 0),
                trig_ct_1H(31 downto 0)=>XLXN_785(31 downto 0),
                trig_ct_1L(31 downto 0)=>XLXN_786(31 downto 0),
                trig_ct_2H(31 downto 0)=>XLXN_787(31 downto 0),
                trig_ct_2L(31 downto 0)=>XLXN_788(31 downto 0),
                trig_ct_3H(31 downto 0)=>XLXN_789(31 downto 0),
                trig_ct_3L(31 downto 0)=>XLXN_790(31 downto 0));
   
end BEHAVIORAL;


