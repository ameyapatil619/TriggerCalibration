--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : MEMORY_BLOCK_NEW.vhf
-- /___/   /\     Timestamp : 11/25/2016 20:13:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3a -flat -suppress -vhdl /home/ameya/Desktop/Indi_Research/Firmware/MEMORY_BLOCK_NEW.vhf -w /home/ameya/Desktop/Indi_Research/Firmware/MEMORY_BLOCK_NEW.sch
--Design Name: MEMORY_BLOCK_NEW
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

entity MEMORY_BLOCK_NEW is
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
end MEMORY_BLOCK_NEW;

architecture BEHAVIORAL of MEMORY_BLOCK_NEW is
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


