--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Firmware_Top_synthesis.vhd
-- /___/   /\     Timestamp: Sun Nov 20 01:27:50 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Firmware_Top -w -dir netgen/synthesis -ofmt vhdl -sim Firmware_Top.ngc Firmware_Top_synthesis.vhd 
-- Device	: xc3s50an-4-tqg144
-- Input file	: Firmware_Top.ngc
-- Output file	: /home/ameya/Desktop/Indi_Research/Firmware/netgen/synthesis/Firmware_Top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Firmware_Top
-- Xilinx	: /home/ameya/Desktop/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Firmware_Top is
  port (
    SPI_MISO : out STD_LOGIC; 
    CS_n : out STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    ex_tri : in STD_LOGIC := 'X'; 
    and_or_sel_SST : out STD_LOGIC; 
    trigg_rst : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    mbed_sel0 : in STD_LOGIC := 'X'; 
    mbed_sel1 : in STD_LOGIC := 'X'; 
    stop_SST : out STD_LOGIC; 
    reset_SST : out STD_LOGIC; 
    and_or_sel_M : in STD_LOGIC := 'X'; 
    stop_data_in : in STD_LOGIC := 'X'; 
    in_heartbeat : in STD_LOGIC := 'X'; 
    enable_thermal_tri : in STD_LOGIC := 'X'; 
    re : in STD_LOGIC := 'X'; 
    trig_0H : in STD_LOGIC := 'X'; 
    trig_0L : in STD_LOGIC := 'X'; 
    trig_1H : in STD_LOGIC := 'X'; 
    out_heartbeat : out STD_LOGIC; 
    trigg_enable : in STD_LOGIC := 'X'; 
    SST_read_clk : out STD_LOGIC; 
    trig_1L : in STD_LOGIC := 'X'; 
    trig_2H : in STD_LOGIC := 'X'; 
    trig_2L : in STD_LOGIC := 'X'; 
    trig_3H : in STD_LOGIC := 'X'; 
    trig_3L : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    HSCLK_Ctrl : out STD_LOGIC; 
    di_ch0 : in STD_LOGIC := 'X'; 
    di_ch1 : in STD_LOGIC := 'X'; 
    di_ch2 : in STD_LOGIC := 'X'; 
    di_ch3 : in STD_LOGIC := 'X'; 
    diff_select_SST : out STD_LOGIC; 
    diff_select_M : in STD_LOGIC := 'X'; 
    ADC_clk : out STD_LOGIC; 
    force_tri : in STD_LOGIC := 'X'; 
    done_stop : out STD_LOGIC; 
    SPI_SCLK : in STD_LOGIC := 'X'; 
    trigg_cmp_flag : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end Firmware_Top;

architecture Structure of Firmware_Top is
  signal ADC_clk_OBUF_29 : STD_LOGIC; 
  signal CS_n_OBUF_31 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal SPI_MISO_OBUF_45 : STD_LOGIC; 
  signal SPI_SCLK_IBUF_47 : STD_LOGIC; 
  signal XLXI_18_Mshreg_XLXI_19_49 : STD_LOGIC; 
  signal XLXI_18_XLXI_19_50 : STD_LOGIC; 
  signal XLXI_18_XLXI_8_51 : STD_LOGIC; 
  signal XLXI_2_CLK0_BUF : STD_LOGIC; 
  signal XLXI_2_CLK2X_BUF : STD_LOGIC; 
  signal XLXI_2_CLKDV_BUF : STD_LOGIC; 
  signal XLXI_2_CLKIN_IBUFG : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_10_rt_58 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_1_rt_60 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_2_rt_62 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_3_rt_64 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_4_rt_66 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_5_rt_68 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_6_rt_70 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_7_rt_72 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_8_rt_74 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_9_rt_76 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_11_rt_78 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_done_f_121 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_done_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_full_f_123 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_full_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_wait_f_125 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_wait_f_mux0002 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_wait_f_mux00021_127 : STD_LOGIC; 
  signal XLXI_21_XLXI_1_wait_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_10_rt_131 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_1_rt_133 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_2_rt_135 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_3_rt_137 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_4_rt_139 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_5_rt_141 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_6_rt_143 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_7_rt_145 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_8_rt_147 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_9_rt_149 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_11_rt_151 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_done_f_194 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_done_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_full_f_196 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_full_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_wait_f_198 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_wait_f_mux0002 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_wait_f_mux00021_200 : STD_LOGIC; 
  signal XLXI_21_XLXI_10_wait_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_11_we_0 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_10_rt_205 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_1_rt_207 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_2_rt_209 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_3_rt_211 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_4_rt_213 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_5_rt_215 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_6_rt_217 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_7_rt_219 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_8_rt_221 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_9_rt_223 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_11_rt_225 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_done_f_268 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_done_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_full_f_270 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_full_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_wait_f_272 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_wait_f_mux0002 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_wait_f_mux00021_274 : STD_LOGIC; 
  signal XLXI_21_XLXI_13_wait_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_14_we_0 : STD_LOGIC; 
  signal XLXI_21_XLXI_2_we_0 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_10_rt_280 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_1_rt_282 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_2_rt_284 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_3_rt_286 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_4_rt_288 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_5_rt_290 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_6_rt_292 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_7_rt_294 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_8_rt_296 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_9_rt_298 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_11_rt_300 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_done_f_343 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_done_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_full_f_345 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_full_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_wait_f_347 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_wait_f_mux0002 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_wait_f_mux00021_349 : STD_LOGIC; 
  signal XLXI_21_XLXI_22_wait_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_23_we_0 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_N01 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_N13 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_N3 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_addr_mux0002_1_1_365 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_addr_mux0002_4_1_369 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_done_f_373 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_done_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_full_f_375 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_full_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_wait_f_377 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_wait_f_mux0002 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_wait_f_mux00021_379 : STD_LOGIC; 
  signal XLXI_21_XLXI_25_wait_f_not0001 : STD_LOGIC; 
  signal XLXI_21_XLXI_26_we_0 : STD_LOGIC; 
  signal XLXI_3_temporal_386 : STD_LOGIC; 
  signal XLXI_3_temporal_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_3_temporal_not0001 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_1 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_390 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_and0000_norst : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout1_392 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout2_393 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout3_394 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_21_sel0_inv : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_10 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_11 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_12 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_18 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_23 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_36 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_5 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_56 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_6 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_66 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_67 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_7 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_8 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXN_9 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXN_18 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXN_19 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXN_20 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXN_21 : STD_LOGIC; 
  signal XLXI_38_XLXI_27_XLXI_1_enable_stop_414 : STD_LOGIC; 
  signal XLXI_38_XLXI_27_XLXI_32_415 : STD_LOGIC; 
  signal XLXI_38_XLXI_27_XLXI_33_416 : STD_LOGIC; 
  signal XLXI_38_XLXI_27_XLXI_49_417 : STD_LOGIC; 
  signal XLXI_38_XLXN_109 : STD_LOGIC; 
  signal XLXI_38_XLXN_121 : STD_LOGIC; 
  signal XLXI_38_XLXN_184 : STD_LOGIC; 
  signal XLXI_38_XLXN_185 : STD_LOGIC; 
  signal XLXI_38_XLXN_51 : STD_LOGIC; 
  signal XLXI_5_enable1_423 : STD_LOGIC; 
  signal XLXI_5_enable1_or0000 : STD_LOGIC; 
  signal XLXI_5_enable2_425 : STD_LOGIC; 
  signal XLXI_5_enable2_or0000 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_6_rt_436 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_0_Q_440 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_10_Q_441 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_11_Q : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_1_Q_443 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_2_Q_444 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_3_Q_445 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_4_Q_446 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_5_Q_447 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_7_Q_448 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_8_Q_449 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_9_Q_450 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_4_rt_456 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_0_Q_462 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_1_Q_463 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_2_Q_464 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_3_Q_465 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_5_Q_466 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_6_Q_467 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_7_Q_468 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_8_Q_469 : STD_LOGIC; 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_9_Q : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_10_rt_473 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_11_rt_475 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_12_rt_477 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_13_rt_479 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_14_rt_481 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_15_rt_483 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_16_rt_485 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_17_rt_487 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_18_rt_489 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_19_rt_491 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_1_rt_493 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_20_rt_495 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_21_rt_497 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_22_rt_499 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_23_rt_501 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_24_rt_503 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_25_rt_505 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_26_rt_507 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_27_rt_509 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_28_rt_511 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_29_rt_513 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_2_rt_515 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_30_rt_517 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_3_rt_519 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_4_rt_521 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_5_rt_523 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_6_rt_525 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_7_rt_527 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_8_rt_529 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy_9_rt_531 : STD_LOGIC; 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_xor_31_rt_533 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_Q_534 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_rt_535 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_rt_537 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_1_Q_538 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_2_Q_539 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_3_Q_540 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_Q_541 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_rt_542 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_5_Q_543 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_Q_544 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_rt_545 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_7_Q_546 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_8_Q_547 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_1_Q : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_2_Q_549 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_3_Q : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_5_Q_551 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_7_Q_552 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_8_Q_553 : STD_LOGIC; 
  signal XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_9_Q_554 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local1 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local10 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local11 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local12 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local13 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local14 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local15 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local16 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local17 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local18 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local19 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local2 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local20 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local21 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local22 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local23 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local24 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local25 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local26 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local3 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local4 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local5 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local6 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local7 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local8 : STD_LOGIC; 
  signal XLXI_96_counter_Mcount_count_local9 : STD_LOGIC; 
  signal XLXI_96_counter_count_local_not0001_inv : STD_LOGIC; 
  signal XLXI_96_counter_count_trigg_not0001_759 : STD_LOGIC; 
  signal XLXI_96_counter_flag_760 : STD_LOGIC; 
  signal XLXI_96_counter_flag_and0000_761 : STD_LOGIC; 
  signal XLXI_96_counter_flag_mux0000 : STD_LOGIC; 
  signal XLXI_96_counter_q_not0001 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_10_rt_798 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_11_rt_800 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_12_rt_802 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_13_rt_804 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_14_rt_806 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_15_rt_808 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_16_rt_810 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_17_rt_812 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_18_rt_814 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_19_rt_816 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_1_rt_818 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_20_rt_820 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_21_rt_822 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_22_rt_824 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_23_rt_826 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_24_rt_828 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_25_rt_830 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_26_rt_832 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_27_rt_834 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_28_rt_836 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_29_rt_838 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_2_rt_840 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_30_rt_842 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_3_rt_844 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_4_rt_846 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_5_rt_848 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_6_rt_850 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_7_rt_852 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_8_rt_854 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_cy_9_rt_856 : STD_LOGIC; 
  signal XLXI_97_Mcount_i_xor_31_rt_858 : STD_LOGIC; 
  signal XLXI_97_buffer_reg_4_cmp_eq0000 : STD_LOGIC; 
  signal XLXI_97_buffer_reg_4_not0001 : STD_LOGIC; 
  signal XLXI_97_buffer_reg_4_or0000 : STD_LOGIC; 
  signal XLXI_97_conv_flag_909 : STD_LOGIC; 
  signal XLXI_97_conv_flag_not0001 : STD_LOGIC; 
  signal XLXN_424 : STD_LOGIC; 
  signal XLXN_427 : STD_LOGIC; 
  signal XLXN_441 : STD_LOGIC; 
  signal XLXN_442 : STD_LOGIC; 
  signal XLXN_487 : STD_LOGIC; 
  signal XLXN_488 : STD_LOGIC; 
  signal XLXN_522 : STD_LOGIC; 
  signal and_or_sel_M_IBUF_951 : STD_LOGIC; 
  signal and_or_sel_SST_OBUF_953 : STD_LOGIC; 
  signal clk_20M : STD_LOGIC; 
  signal clk_80M : STD_LOGIC; 
  signal clk_test_mem : STD_LOGIC; 
  signal clk_test_stop : STD_LOGIC; 
  signal data_0 : STD_LOGIC; 
  signal data_1 : STD_LOGIC; 
  signal data_2 : STD_LOGIC; 
  signal data_3 : STD_LOGIC; 
  signal di_ch0_IBUF_964 : STD_LOGIC; 
  signal di_ch1_IBUF_966 : STD_LOGIC; 
  signal di_ch2_IBUF_968 : STD_LOGIC; 
  signal di_ch3_IBUF_970 : STD_LOGIC; 
  signal diff_select_M_IBUF_972 : STD_LOGIC; 
  signal diff_select_SST_OBUF_974 : STD_LOGIC; 
  signal enable_thermal_tri_IBUF_977 : STD_LOGIC; 
  signal ex_tri_IBUF_979 : STD_LOGIC; 
  signal force_tri_IBUF_981 : STD_LOGIC; 
  signal full_OBUF_983 : STD_LOGIC; 
  signal in_heartbeat_IBUFG_985 : STD_LOGIC; 
  signal mbed_sel0_IBUF_987 : STD_LOGIC; 
  signal mbed_sel1_IBUF_989 : STD_LOGIC; 
  signal or_data : STD_LOGIC; 
  signal out_heartbeat_OBUF_992 : STD_LOGIC; 
  signal re_IBUF_994 : STD_LOGIC; 
  signal reset_SST_OBUF_996 : STD_LOGIC; 
  signal rst_IBUFG_998 : STD_LOGIC; 
  signal stop_SST_OBUF_1000 : STD_LOGIC; 
  signal stop_data : STD_LOGIC; 
  signal stop_data_in_IBUF_1003 : STD_LOGIC; 
  signal tri_ctrl : STD_LOGIC; 
  signal trig_0H_IBUF_1006 : STD_LOGIC; 
  signal trig_0L_IBUF_1008 : STD_LOGIC; 
  signal trig_1H_IBUF_1010 : STD_LOGIC; 
  signal trig_1L_IBUF_1012 : STD_LOGIC; 
  signal trig_2H_IBUF_1014 : STD_LOGIC; 
  signal trig_2L_IBUF_1016 : STD_LOGIC; 
  signal trig_3H_IBUF_1018 : STD_LOGIC; 
  signal trig_3L_IBUF_1020 : STD_LOGIC; 
  signal trigg_cmp_flag_0_OBUF_1023 : STD_LOGIC; 
  signal trigg_cmp_flag_1_OBUF_1024 : STD_LOGIC; 
  signal trigg_enable_IBUF_1026 : STD_LOGIC; 
  signal trigg_rst_IBUF_1028 : STD_LOGIC; 
  signal XLXI_11_O1_10 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_13_N01 : STD_LOGIC; 
  signal XLXI_38_XLXI_2_XLXI_2_XLXI_26_N01 : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_CLKFX_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_2_DCM_SP_INST_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_CLKB_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ENB_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_SSRB_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_0_UNCONNECTED : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_21_XLXI_1_Madd_addr_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_1_addr : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_1_addr_addsub0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_1_addr_mux0002 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_21_XLXI_10_Madd_addr_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_10_addr : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_10_addr_addsub0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_10_addr_mux0002 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_21_XLXI_13_Madd_addr_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_13_addr : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_13_addr_addsub0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_13_addr_mux0002 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal XLXI_21_XLXI_22_Madd_addr_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_21_XLXI_22_addr : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_22_addr_addsub0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_22_addr_mux0002 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_21_XLXI_25_addr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_21_XLXI_25_addr_mux0002 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_3_counter : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_96_counter_Madd_count_trigg_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_96_counter_Mcount_count_local_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal XLXI_96_counter_Mcount_count_local_lut : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal XLXI_96_counter_count_local : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal XLXI_96_counter_count_trigg : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_96_counter_count_trigg_addsub0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_96_counter_count_trigg_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_96_counter_q : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_97_Mcount_i_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal XLXI_97_Mcount_i_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal XLXI_97_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal XLXI_97_i : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XLXI_3_temporal : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_20M,
      CE => XLXI_3_temporal_cmp_eq0000,
      D => XLXI_3_temporal_not0001,
      Q => XLXI_3_temporal_386
    );
  XLXI_18_XLXI_8 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      D => clk_20M,
      Q => XLXI_18_XLXI_8_51
    );
  XLXI_38_XLXI_27_XLXI_32 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      D => XLXN_441,
      Q => XLXI_38_XLXI_27_XLXI_32_415
    );
  XLXI_38_XLXI_27_XLXI_33 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      D => XLXI_38_XLXI_27_XLXI_32_415,
      Q => XLXI_38_XLXI_27_XLXI_33_416
    );
  XLXI_38_XLXI_27_XLXI_49 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      D => XLXI_38_XLXI_27_XLXI_33_416,
      Q => XLXI_38_XLXI_27_XLXI_49_417
    );
  XLXI_38_XLXI_27_XLXI_1_enable_stop : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXI_38_XLXN_121,
      CLR => XLXI_38_XLXI_27_XLXI_49_417,
      D => XLXI_38_XLXN_184,
      Q => XLXI_38_XLXI_27_XLXI_1_enable_stop_414
    );
  XLXI_3_counter_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_20M,
      D => Result(0),
      R => XLXI_3_temporal_cmp_eq0000,
      Q => XLXI_3_counter(0)
    );
  XLXI_3_counter_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_20M,
      D => Result(1),
      R => XLXI_3_temporal_cmp_eq0000,
      Q => XLXI_3_counter(1)
    );
  XLXI_3_counter_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_20M,
      D => Result(2),
      R => XLXI_3_temporal_cmp_eq0000,
      Q => XLXI_3_counter(2)
    );
  XLXI_3_counter_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_20M,
      D => Result(3),
      R => XLXI_3_temporal_cmp_eq0000,
      Q => XLXI_3_counter(3)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_96_counter_q(0),
      I1 => XLXI_96_counter_q(1),
      I2 => XLXI_96_counter_q(2),
      I3 => XLXI_96_counter_q(3),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_0_Q_440
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_0_Q_440,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(0)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_1_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_96_counter_q(4),
      I1 => XLXI_96_counter_q(5),
      I2 => XLXI_96_counter_q(6),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_1_Q_443
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_1_Q_443,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(1)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_2_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_96_counter_q(7),
      I1 => XLXI_96_counter_q(8),
      I2 => XLXI_96_counter_q(9),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_2_Q_444
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(1),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_2_Q_444,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(2)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_96_counter_q(10),
      I1 => XLXI_96_counter_q(11),
      I2 => XLXI_96_counter_q(12),
      I3 => XLXI_96_counter_q(13),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_3_Q_445
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_3_Q_445,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(3)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_4_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_96_counter_q(14),
      I1 => XLXI_96_counter_q(15),
      I2 => XLXI_96_counter_q(16),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_4_Q_446
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(3),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_4_Q_446,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(4)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_q(17),
      I1 => XLXI_96_counter_q(18),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_5_Q_447
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_5_Q_447,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(5)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(5),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_6_rt_436,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(6)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_q(20),
      I1 => XLXI_96_counter_q(21),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_7_Q_448
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_7_Q_448,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(7)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_8_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_96_counter_q(22),
      I1 => XLXI_96_counter_q(23),
      I2 => XLXI_96_counter_q(24),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_8_Q_449
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(7),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_8_Q_449,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(8)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_96_counter_q(25),
      I1 => XLXI_96_counter_q(26),
      I2 => XLXI_96_counter_q(27),
      I3 => XLXI_96_counter_q(28),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_9_Q_450
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_9_Q_450,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(9)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_10_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_q(29),
      I1 => XLXI_96_counter_q(30),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_10_Q_441
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_10_Q_441,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(10)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(10),
      DI => XLXI_96_counter_q(31),
      S => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_11_Q,
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(11)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_0_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_96_counter_q(7),
      I1 => XLXI_96_counter_q(8),
      I2 => XLXI_96_counter_q(9),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_0_Q_462
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_0_Q_462,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(0)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_96_counter_q(10),
      I1 => XLXI_96_counter_q(11),
      I2 => XLXI_96_counter_q(12),
      I3 => XLXI_96_counter_q(13),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_1_Q_463
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(0),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_1_Q_463,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(1)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_2_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_96_counter_q(14),
      I1 => XLXI_96_counter_q(15),
      I2 => XLXI_96_counter_q(16),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_2_Q_464
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_2_Q_464,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(2)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_q(17),
      I1 => XLXI_96_counter_q(18),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_3_Q_465
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(2),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_3_Q_465,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(3)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_4_rt_456,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(4)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_q(20),
      I1 => XLXI_96_counter_q(21),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_5_Q_466
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(4),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_5_Q_466,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(5)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_6_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => XLXI_96_counter_q(22),
      I1 => XLXI_96_counter_q(23),
      I2 => XLXI_96_counter_q(24),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_6_Q_467
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_6_Q_467,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(6)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_96_counter_q(25),
      I1 => XLXI_96_counter_q(26),
      I2 => XLXI_96_counter_q(27),
      I3 => XLXI_96_counter_q(28),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_7_Q_468
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(6),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_7_Q_468,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(7)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_q(29),
      I1 => XLXI_96_counter_q(30),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_8_Q_469
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(7),
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_8_Q_469,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(8)
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_9_Q,
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(9)
    );
  XLXI_23 : OR5
    port map (
      I0 => stop_data,
      I1 => data_3,
      I2 => data_2,
      I3 => data_1,
      I4 => data_0,
      O => or_data
    );
  XLXI_31 : OBUFT
    generic map(
      DRIVE => 12,
      IOSTANDARD => "DEFAULT",
      SLEW => "20"
    )
    port map (
      I => or_data,
      T => tri_ctrl,
      O => XLXN_522
    );
  XLXI_37 : BUFG
    port map (
      I => rst_IBUFG_998,
      O => XLXN_441
    );
  XLXI_39 : AND2
    port map (
      I0 => XLXI_21_XLXI_25_full_f_375,
      I1 => XLXI_21_XLXI_22_full_f_345,
      O => full_OBUF_983
    );
  XLXI_94 : BUFG
    port map (
      I => in_heartbeat_IBUFG_985,
      O => XLXN_487
    );
  XLXI_95 : BUFG
    port map (
      I => XLXN_487,
      O => XLXN_488
    );
  XLXI_2_DCM_SP_INST : DCM_SP
    generic map(
      CLKDV_DIVIDE => 4.000000,
      CLKFX_DIVIDE => 1,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 12.500000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE,
      FACTORY_JF => X"C080"
    )
    port map (
      CLKIN => XLXI_2_CLKIN_IBUFG,
      CLKFB => clk_80M,
      RST => XLXI_38_XLXN_185,
      DSSEN => XLXI_38_XLXN_185,
      PSINCDEC => XLXI_38_XLXN_185,
      PSEN => XLXI_38_XLXN_185,
      PSCLK => XLXI_38_XLXN_185,
      CLK0 => XLXI_2_CLK0_BUF,
      CLK90 => NLW_XLXI_2_DCM_SP_INST_CLK90_UNCONNECTED,
      CLK180 => NLW_XLXI_2_DCM_SP_INST_CLK180_UNCONNECTED,
      CLK270 => NLW_XLXI_2_DCM_SP_INST_CLK270_UNCONNECTED,
      CLK2X => XLXI_2_CLK2X_BUF,
      CLK2X180 => NLW_XLXI_2_DCM_SP_INST_CLK2X180_UNCONNECTED,
      CLKDV => XLXI_2_CLKDV_BUF,
      CLKFX => NLW_XLXI_2_DCM_SP_INST_CLKFX_UNCONNECTED,
      CLKFX180 => NLW_XLXI_2_DCM_SP_INST_CLKFX180_UNCONNECTED,
      LOCKED => NLW_XLXI_2_DCM_SP_INST_LOCKED_UNCONNECTED,
      PSDONE => NLW_XLXI_2_DCM_SP_INST_PSDONE_UNCONNECTED,
      STATUS(7) => NLW_XLXI_2_DCM_SP_INST_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_XLXI_2_DCM_SP_INST_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_XLXI_2_DCM_SP_INST_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_XLXI_2_DCM_SP_INST_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_XLXI_2_DCM_SP_INST_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_XLXI_2_DCM_SP_INST_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_XLXI_2_DCM_SP_INST_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_XLXI_2_DCM_SP_INST_STATUS_0_UNCONNECTED
    );
  XLXI_2_CLK2X_BUFG_INST : BUFG
    port map (
      I => XLXI_2_CLK2X_BUF,
      O => XLXN_442
    );
  XLXI_2_CLK0_BUFG_INST : BUFG
    port map (
      I => XLXI_2_CLK0_BUF,
      O => clk_80M
    );
  XLXI_2_CLKIN_IBUFG_INST : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clk,
      O => XLXI_2_CLKIN_IBUFG
    );
  XLXI_2_CLKDV_BUFG_INST : BUFG
    port map (
      I => XLXI_2_CLKDV_BUF,
      O => clk_20M
    );
  XLXI_38_XLXI_2_XLXI_6 : BUF
    port map (
      I => and_or_sel_M_IBUF_951,
      O => and_or_sel_SST_OBUF_953
    );
  XLXI_38_XLXI_2_XLXI_7 : BUF
    port map (
      I => diff_select_M_IBUF_972,
      O => diff_select_SST_OBUF_974
    );
  XLXI_38_XLXI_27_XLXI_48 : OR5
    port map (
      I0 => XLXI_38_XLXI_27_XLXI_1_enable_stop_414,
      I1 => XLXI_38_XLXI_27_XLXI_49_417,
      I2 => XLXI_38_XLXI_27_XLXI_33_416,
      I3 => XLXI_38_XLXI_27_XLXI_32_415,
      I4 => XLXN_441,
      O => stop_SST_OBUF_1000
    );
  XLXI_38_XLXI_44 : BUF
    port map (
      I => XLXN_441,
      O => reset_SST_OBUF_996
    );
  XLXI_38_XLXI_19 : GND
    port map (
      G => XLXI_38_XLXN_185
    );
  XLXI_38_XLXI_18 : VCC
    port map (
      P => XLXI_38_XLXN_184
    );
  XLXI_38_XLXI_7 : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => XLXI_38_XLXN_184,
      A1 => XLXI_38_XLXN_184,
      A2 => XLXI_38_XLXN_185,
      A3 => XLXI_38_XLXN_185,
      CLK => XLXN_442,
      D => XLXI_38_XLXN_51,
      Q => XLXI_38_XLXN_121
    );
  XLXI_38_XLXI_6 : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => XLXI_38_XLXN_185,
      A1 => XLXI_38_XLXN_185,
      A2 => XLXI_38_XLXN_184,
      A3 => XLXI_38_XLXN_185,
      CLK => XLXN_442,
      D => XLXI_38_XLXN_109,
      Q => XLXI_38_XLXN_51
    );
  XLXI_5_enable2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXI_18_XLXI_19_50,
      CLR => XLXI_5_enable2_or0000,
      D => XLXI_38_XLXN_184,
      Q => XLXI_5_enable2_425
    );
  XLXI_5_enable1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXI_18_XLXI_19_50,
      CLR => XLXI_5_enable1_or0000,
      D => XLXI_38_XLXN_184,
      Q => XLXI_5_enable1_423
    );
  XLXI_97_Mcount_i_xor_31_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(30),
      LI => XLXI_97_Mcount_i_xor_31_rt_858,
      O => XLXI_97_Result(31)
    );
  XLXI_97_Mcount_i_xor_30_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(29),
      LI => XLXI_97_Mcount_i_cy_30_rt_842,
      O => XLXI_97_Result(30)
    );
  XLXI_97_Mcount_i_cy_30_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(29),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_30_rt_842,
      O => XLXI_97_Mcount_i_cy(30)
    );
  XLXI_97_Mcount_i_xor_29_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(28),
      LI => XLXI_97_Mcount_i_cy_29_rt_838,
      O => XLXI_97_Result(29)
    );
  XLXI_97_Mcount_i_cy_29_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(28),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_29_rt_838,
      O => XLXI_97_Mcount_i_cy(29)
    );
  XLXI_97_Mcount_i_xor_28_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(27),
      LI => XLXI_97_Mcount_i_cy_28_rt_836,
      O => XLXI_97_Result(28)
    );
  XLXI_97_Mcount_i_cy_28_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(27),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_28_rt_836,
      O => XLXI_97_Mcount_i_cy(28)
    );
  XLXI_97_Mcount_i_xor_27_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(26),
      LI => XLXI_97_Mcount_i_cy_27_rt_834,
      O => XLXI_97_Result(27)
    );
  XLXI_97_Mcount_i_cy_27_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(26),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_27_rt_834,
      O => XLXI_97_Mcount_i_cy(27)
    );
  XLXI_97_Mcount_i_xor_26_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(25),
      LI => XLXI_97_Mcount_i_cy_26_rt_832,
      O => XLXI_97_Result(26)
    );
  XLXI_97_Mcount_i_cy_26_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(25),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_26_rt_832,
      O => XLXI_97_Mcount_i_cy(26)
    );
  XLXI_97_Mcount_i_xor_25_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(24),
      LI => XLXI_97_Mcount_i_cy_25_rt_830,
      O => XLXI_97_Result(25)
    );
  XLXI_97_Mcount_i_cy_25_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(24),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_25_rt_830,
      O => XLXI_97_Mcount_i_cy(25)
    );
  XLXI_97_Mcount_i_xor_24_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(23),
      LI => XLXI_97_Mcount_i_cy_24_rt_828,
      O => XLXI_97_Result(24)
    );
  XLXI_97_Mcount_i_cy_24_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(23),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_24_rt_828,
      O => XLXI_97_Mcount_i_cy(24)
    );
  XLXI_97_Mcount_i_xor_23_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(22),
      LI => XLXI_97_Mcount_i_cy_23_rt_826,
      O => XLXI_97_Result(23)
    );
  XLXI_97_Mcount_i_cy_23_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(22),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_23_rt_826,
      O => XLXI_97_Mcount_i_cy(23)
    );
  XLXI_97_Mcount_i_xor_22_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(21),
      LI => XLXI_97_Mcount_i_cy_22_rt_824,
      O => XLXI_97_Result(22)
    );
  XLXI_97_Mcount_i_cy_22_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(21),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_22_rt_824,
      O => XLXI_97_Mcount_i_cy(22)
    );
  XLXI_97_Mcount_i_xor_21_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(20),
      LI => XLXI_97_Mcount_i_cy_21_rt_822,
      O => XLXI_97_Result(21)
    );
  XLXI_97_Mcount_i_cy_21_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(20),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_21_rt_822,
      O => XLXI_97_Mcount_i_cy(21)
    );
  XLXI_97_Mcount_i_xor_20_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(19),
      LI => XLXI_97_Mcount_i_cy_20_rt_820,
      O => XLXI_97_Result(20)
    );
  XLXI_97_Mcount_i_cy_20_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(19),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_20_rt_820,
      O => XLXI_97_Mcount_i_cy(20)
    );
  XLXI_97_Mcount_i_xor_19_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(18),
      LI => XLXI_97_Mcount_i_cy_19_rt_816,
      O => XLXI_97_Result(19)
    );
  XLXI_97_Mcount_i_cy_19_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(18),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_19_rt_816,
      O => XLXI_97_Mcount_i_cy(19)
    );
  XLXI_97_Mcount_i_xor_18_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(17),
      LI => XLXI_97_Mcount_i_cy_18_rt_814,
      O => XLXI_97_Result(18)
    );
  XLXI_97_Mcount_i_cy_18_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(17),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_18_rt_814,
      O => XLXI_97_Mcount_i_cy(18)
    );
  XLXI_97_Mcount_i_xor_17_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(16),
      LI => XLXI_97_Mcount_i_cy_17_rt_812,
      O => XLXI_97_Result(17)
    );
  XLXI_97_Mcount_i_cy_17_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(16),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_17_rt_812,
      O => XLXI_97_Mcount_i_cy(17)
    );
  XLXI_97_Mcount_i_xor_16_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(15),
      LI => XLXI_97_Mcount_i_cy_16_rt_810,
      O => XLXI_97_Result(16)
    );
  XLXI_97_Mcount_i_cy_16_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(15),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_16_rt_810,
      O => XLXI_97_Mcount_i_cy(16)
    );
  XLXI_97_Mcount_i_xor_15_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(14),
      LI => XLXI_97_Mcount_i_cy_15_rt_808,
      O => XLXI_97_Result(15)
    );
  XLXI_97_Mcount_i_cy_15_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(14),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_15_rt_808,
      O => XLXI_97_Mcount_i_cy(15)
    );
  XLXI_97_Mcount_i_xor_14_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(13),
      LI => XLXI_97_Mcount_i_cy_14_rt_806,
      O => XLXI_97_Result(14)
    );
  XLXI_97_Mcount_i_cy_14_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(13),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_14_rt_806,
      O => XLXI_97_Mcount_i_cy(14)
    );
  XLXI_97_Mcount_i_xor_13_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(12),
      LI => XLXI_97_Mcount_i_cy_13_rt_804,
      O => XLXI_97_Result(13)
    );
  XLXI_97_Mcount_i_cy_13_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(12),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_13_rt_804,
      O => XLXI_97_Mcount_i_cy(13)
    );
  XLXI_97_Mcount_i_xor_12_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(11),
      LI => XLXI_97_Mcount_i_cy_12_rt_802,
      O => XLXI_97_Result(12)
    );
  XLXI_97_Mcount_i_cy_12_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(11),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_12_rt_802,
      O => XLXI_97_Mcount_i_cy(12)
    );
  XLXI_97_Mcount_i_xor_11_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(10),
      LI => XLXI_97_Mcount_i_cy_11_rt_800,
      O => XLXI_97_Result(11)
    );
  XLXI_97_Mcount_i_cy_11_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(10),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_11_rt_800,
      O => XLXI_97_Mcount_i_cy(11)
    );
  XLXI_97_Mcount_i_xor_10_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(9),
      LI => XLXI_97_Mcount_i_cy_10_rt_798,
      O => XLXI_97_Result(10)
    );
  XLXI_97_Mcount_i_cy_10_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_10_rt_798,
      O => XLXI_97_Mcount_i_cy(10)
    );
  XLXI_97_Mcount_i_xor_9_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(8),
      LI => XLXI_97_Mcount_i_cy_9_rt_856,
      O => XLXI_97_Result(9)
    );
  XLXI_97_Mcount_i_cy_9_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_9_rt_856,
      O => XLXI_97_Mcount_i_cy(9)
    );
  XLXI_97_Mcount_i_xor_8_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(7),
      LI => XLXI_97_Mcount_i_cy_8_rt_854,
      O => XLXI_97_Result(8)
    );
  XLXI_97_Mcount_i_cy_8_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(7),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_8_rt_854,
      O => XLXI_97_Mcount_i_cy(8)
    );
  XLXI_97_Mcount_i_xor_7_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(6),
      LI => XLXI_97_Mcount_i_cy_7_rt_852,
      O => XLXI_97_Result(7)
    );
  XLXI_97_Mcount_i_cy_7_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_7_rt_852,
      O => XLXI_97_Mcount_i_cy(7)
    );
  XLXI_97_Mcount_i_xor_6_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(5),
      LI => XLXI_97_Mcount_i_cy_6_rt_850,
      O => XLXI_97_Result(6)
    );
  XLXI_97_Mcount_i_cy_6_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_6_rt_850,
      O => XLXI_97_Mcount_i_cy(6)
    );
  XLXI_97_Mcount_i_xor_5_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(4),
      LI => XLXI_97_Mcount_i_cy_5_rt_848,
      O => XLXI_97_Result(5)
    );
  XLXI_97_Mcount_i_cy_5_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_5_rt_848,
      O => XLXI_97_Mcount_i_cy(5)
    );
  XLXI_97_Mcount_i_xor_4_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(3),
      LI => XLXI_97_Mcount_i_cy_4_rt_846,
      O => XLXI_97_Result(4)
    );
  XLXI_97_Mcount_i_cy_4_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_4_rt_846,
      O => XLXI_97_Mcount_i_cy(4)
    );
  XLXI_97_Mcount_i_xor_3_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(2),
      LI => XLXI_97_Mcount_i_cy_3_rt_844,
      O => XLXI_97_Result(3)
    );
  XLXI_97_Mcount_i_cy_3_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_3_rt_844,
      O => XLXI_97_Mcount_i_cy(3)
    );
  XLXI_97_Mcount_i_xor_2_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(1),
      LI => XLXI_97_Mcount_i_cy_2_rt_840,
      O => XLXI_97_Result(2)
    );
  XLXI_97_Mcount_i_cy_2_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_2_rt_840,
      O => XLXI_97_Mcount_i_cy(2)
    );
  XLXI_97_Mcount_i_xor_1_Q : XORCY
    port map (
      CI => XLXI_97_Mcount_i_cy(0),
      LI => XLXI_97_Mcount_i_cy_1_rt_818,
      O => XLXI_97_Result(1)
    );
  XLXI_97_Mcount_i_cy_1_Q : MUXCY
    port map (
      CI => XLXI_97_Mcount_i_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_Mcount_i_cy_1_rt_818,
      O => XLXI_97_Mcount_i_cy(1)
    );
  XLXI_97_Mcount_i_xor_0_Q : XORCY
    port map (
      CI => XLXI_38_XLXN_185,
      LI => XLXI_97_Mcount_i_lut(0),
      O => XLXI_97_Result(0)
    );
  XLXI_97_Mcount_i_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_185,
      DI => XLXI_38_XLXN_184,
      S => XLXI_97_Mcount_i_lut(0),
      O => XLXI_97_Mcount_i_cy(0)
    );
  XLXI_97_i_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(31),
      Q => XLXI_97_i(31)
    );
  XLXI_97_i_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(30),
      Q => XLXI_97_i(30)
    );
  XLXI_97_i_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(29),
      Q => XLXI_97_i(29)
    );
  XLXI_97_i_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(28),
      Q => XLXI_97_i(28)
    );
  XLXI_97_i_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(27),
      Q => XLXI_97_i(27)
    );
  XLXI_97_i_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(26),
      Q => XLXI_97_i(26)
    );
  XLXI_97_i_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(25),
      Q => XLXI_97_i(25)
    );
  XLXI_97_i_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(24),
      Q => XLXI_97_i(24)
    );
  XLXI_97_i_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(23),
      Q => XLXI_97_i(23)
    );
  XLXI_97_i_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(22),
      Q => XLXI_97_i(22)
    );
  XLXI_97_i_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(21),
      Q => XLXI_97_i(21)
    );
  XLXI_97_i_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(20),
      Q => XLXI_97_i(20)
    );
  XLXI_97_i_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(19),
      Q => XLXI_97_i(19)
    );
  XLXI_97_i_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(18),
      Q => XLXI_97_i(18)
    );
  XLXI_97_i_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(17),
      Q => XLXI_97_i(17)
    );
  XLXI_97_i_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(16),
      Q => XLXI_97_i(16)
    );
  XLXI_97_i_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(15),
      Q => XLXI_97_i(15)
    );
  XLXI_97_i_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(14),
      Q => XLXI_97_i(14)
    );
  XLXI_97_i_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(13),
      Q => XLXI_97_i(13)
    );
  XLXI_97_i_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(12),
      Q => XLXI_97_i(12)
    );
  XLXI_97_i_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(11),
      Q => XLXI_97_i(11)
    );
  XLXI_97_i_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(10),
      Q => XLXI_97_i(10)
    );
  XLXI_97_i_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(9),
      Q => XLXI_97_i(9)
    );
  XLXI_97_i_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(8),
      Q => XLXI_97_i(8)
    );
  XLXI_97_i_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(7),
      Q => XLXI_97_i(7)
    );
  XLXI_97_i_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(6),
      Q => XLXI_97_i(6)
    );
  XLXI_97_i_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(5),
      Q => XLXI_97_i(5)
    );
  XLXI_97_i_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(4),
      Q => XLXI_97_i(4)
    );
  XLXI_97_i_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(3),
      Q => XLXI_97_i(3)
    );
  XLXI_97_i_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(2),
      Q => XLXI_97_i(2)
    );
  XLXI_97_i_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(1),
      Q => XLXI_97_i(1)
    );
  XLXI_97_i_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_buffer_reg_4_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_97_Result(0),
      Q => XLXI_97_i(0)
    );
  XLXI_97_conv_flag : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_97_conv_flag_not0001,
      CLR => XLXI_97_buffer_reg_4_or0000,
      D => XLXI_38_XLXN_184,
      Q => XLXI_97_conv_flag_909
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_7_Q_546,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_8_Q_553,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_8_Q_547
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_96_counter_count_local(22),
      I1 => XLXI_96_counter_count_local(23),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_8_Q_553
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_Q_544,
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_7_Q_552,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_7_Q_546
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_7_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => XLXI_96_counter_count_local(19),
      I1 => XLXI_96_counter_count_local(20),
      I2 => XLXI_96_counter_count_local(21),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_7_Q_552
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_5_Q_543,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_rt_545,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_Q_544
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_Q_541,
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_5_Q_551,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_5_Q_543
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_count_local(16),
      I1 => XLXI_96_counter_count_local(17),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_5_Q_551
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_3_Q_540,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_rt_542,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_Q_541
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_2_Q_539,
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_3_Q,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_3_Q_540
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_1_Q_538,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_2_Q_549,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_2_Q_539
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_96_counter_count_local(12),
      I1 => XLXI_96_counter_count_local(13),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_2_Q_549
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_Q_534,
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_1_Q,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_1_Q_538
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_rt_535,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_Q_534
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_31_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(30),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_xor_31_rt_533,
      O => XLXI_96_counter_count_trigg_addsub0000(31)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_30_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(29),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_30_rt_517,
      O => XLXI_96_counter_count_trigg_addsub0000(30)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_30_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(29),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_30_rt_517,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(30)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_29_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(28),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_29_rt_513,
      O => XLXI_96_counter_count_trigg_addsub0000(29)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_29_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(28),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_29_rt_513,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(29)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_28_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(27),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_28_rt_511,
      O => XLXI_96_counter_count_trigg_addsub0000(28)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_28_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(27),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_28_rt_511,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(28)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_27_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(26),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_27_rt_509,
      O => XLXI_96_counter_count_trigg_addsub0000(27)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_27_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(26),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_27_rt_509,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(27)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_26_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(25),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_26_rt_507,
      O => XLXI_96_counter_count_trigg_addsub0000(26)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_26_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(25),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_26_rt_507,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(26)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_25_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(24),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_25_rt_505,
      O => XLXI_96_counter_count_trigg_addsub0000(25)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(24),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_25_rt_505,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(25)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_24_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(23),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_24_rt_503,
      O => XLXI_96_counter_count_trigg_addsub0000(24)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(23),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_24_rt_503,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(24)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_23_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(22),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_23_rt_501,
      O => XLXI_96_counter_count_trigg_addsub0000(23)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(22),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_23_rt_501,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(23)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_22_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(21),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_22_rt_499,
      O => XLXI_96_counter_count_trigg_addsub0000(22)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(21),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_22_rt_499,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(22)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_21_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(20),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_21_rt_497,
      O => XLXI_96_counter_count_trigg_addsub0000(21)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(20),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_21_rt_497,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(21)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_20_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(19),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_20_rt_495,
      O => XLXI_96_counter_count_trigg_addsub0000(20)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(19),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_20_rt_495,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(20)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_19_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(18),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_19_rt_491,
      O => XLXI_96_counter_count_trigg_addsub0000(19)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(18),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_19_rt_491,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(19)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_18_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(17),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_18_rt_489,
      O => XLXI_96_counter_count_trigg_addsub0000(18)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(17),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_18_rt_489,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(18)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_17_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(16),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_17_rt_487,
      O => XLXI_96_counter_count_trigg_addsub0000(17)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(16),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_17_rt_487,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(17)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_16_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(15),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_16_rt_485,
      O => XLXI_96_counter_count_trigg_addsub0000(16)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(15),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_16_rt_485,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(16)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_15_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(14),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_15_rt_483,
      O => XLXI_96_counter_count_trigg_addsub0000(15)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(14),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_15_rt_483,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(15)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_14_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(13),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_14_rt_481,
      O => XLXI_96_counter_count_trigg_addsub0000(14)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(13),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_14_rt_481,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(14)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_13_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(12),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_13_rt_479,
      O => XLXI_96_counter_count_trigg_addsub0000(13)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(12),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_13_rt_479,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(13)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_12_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(11),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_12_rt_477,
      O => XLXI_96_counter_count_trigg_addsub0000(12)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(11),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_12_rt_477,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(12)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(10),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_11_rt_475,
      O => XLXI_96_counter_count_trigg_addsub0000(11)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(10),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_11_rt_475,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(11)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(9),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_10_rt_473,
      O => XLXI_96_counter_count_trigg_addsub0000(10)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_10_rt_473,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(10)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(8),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_9_rt_531,
      O => XLXI_96_counter_count_trigg_addsub0000(9)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_9_rt_531,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(9)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(7),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_8_rt_529,
      O => XLXI_96_counter_count_trigg_addsub0000(8)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(7),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_8_rt_529,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(8)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(6),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_7_rt_527,
      O => XLXI_96_counter_count_trigg_addsub0000(7)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_7_rt_527,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(7)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(5),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_6_rt_525,
      O => XLXI_96_counter_count_trigg_addsub0000(6)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_6_rt_525,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(6)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(4),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_5_rt_523,
      O => XLXI_96_counter_count_trigg_addsub0000(5)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_5_rt_523,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(5)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(3),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_4_rt_521,
      O => XLXI_96_counter_count_trigg_addsub0000(4)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_4_rt_521,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(4)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(2),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_3_rt_519,
      O => XLXI_96_counter_count_trigg_addsub0000(3)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_3_rt_519,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(3)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(1),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_2_rt_515,
      O => XLXI_96_counter_count_trigg_addsub0000(2)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_2_rt_515,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(2)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(0),
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_1_rt_493,
      O => XLXI_96_counter_count_trigg_addsub0000(1)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_1_rt_493,
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(1)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_0_Q : XORCY
    port map (
      CI => XLXI_38_XLXN_185,
      LI => XLXI_96_counter_Madd_count_trigg_addsub0000_lut(0),
      O => XLXI_96_counter_count_trigg_addsub0000(0)
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_185,
      DI => XLXI_38_XLXN_184,
      S => XLXI_96_counter_Madd_count_trigg_addsub0000_lut(0),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy(0)
    );
  XLXI_96_counter_count_local_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local26,
      Q => XLXI_96_counter_count_local(26)
    );
  XLXI_96_counter_count_local_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local25,
      Q => XLXI_96_counter_count_local(25)
    );
  XLXI_96_counter_count_local_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local24,
      Q => XLXI_96_counter_count_local(24)
    );
  XLXI_96_counter_count_local_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local23,
      Q => XLXI_96_counter_count_local(23)
    );
  XLXI_96_counter_count_local_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local22,
      Q => XLXI_96_counter_count_local(22)
    );
  XLXI_96_counter_count_local_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local21,
      Q => XLXI_96_counter_count_local(21)
    );
  XLXI_96_counter_count_local_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local20,
      Q => XLXI_96_counter_count_local(20)
    );
  XLXI_96_counter_count_local_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local19,
      Q => XLXI_96_counter_count_local(19)
    );
  XLXI_96_counter_count_local_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local18,
      Q => XLXI_96_counter_count_local(18)
    );
  XLXI_96_counter_count_local_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local17,
      Q => XLXI_96_counter_count_local(17)
    );
  XLXI_96_counter_count_local_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local16,
      Q => XLXI_96_counter_count_local(16)
    );
  XLXI_96_counter_count_local_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local15,
      Q => XLXI_96_counter_count_local(15)
    );
  XLXI_96_counter_count_local_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local14,
      Q => XLXI_96_counter_count_local(14)
    );
  XLXI_96_counter_count_local_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local13,
      Q => XLXI_96_counter_count_local(13)
    );
  XLXI_96_counter_count_local_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local12,
      Q => XLXI_96_counter_count_local(12)
    );
  XLXI_96_counter_count_local_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local11,
      Q => XLXI_96_counter_count_local(11)
    );
  XLXI_96_counter_count_local_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local10,
      Q => XLXI_96_counter_count_local(10)
    );
  XLXI_96_counter_count_local_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local9,
      Q => XLXI_96_counter_count_local(9)
    );
  XLXI_96_counter_count_local_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local8,
      Q => XLXI_96_counter_count_local(8)
    );
  XLXI_96_counter_count_local_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local7,
      Q => XLXI_96_counter_count_local(7)
    );
  XLXI_96_counter_count_local_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local6,
      Q => XLXI_96_counter_count_local(6)
    );
  XLXI_96_counter_count_local_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local5,
      Q => XLXI_96_counter_count_local(5)
    );
  XLXI_96_counter_count_local_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local4,
      Q => XLXI_96_counter_count_local(4)
    );
  XLXI_96_counter_count_local_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local3,
      Q => XLXI_96_counter_count_local(3)
    );
  XLXI_96_counter_count_local_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local2,
      Q => XLXI_96_counter_count_local(2)
    );
  XLXI_96_counter_count_local_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local1,
      Q => XLXI_96_counter_count_local(1)
    );
  XLXI_96_counter_count_local_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => trigg_enable_IBUF_1026,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_Mcount_count_local,
      Q => XLXI_96_counter_count_local(0)
    );
  XLXI_96_counter_Mcount_count_local_xor_26_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(25),
      LI => XLXI_96_counter_Mcount_count_local_lut(26),
      O => XLXI_96_counter_Mcount_count_local26
    );
  XLXI_96_counter_Mcount_count_local_lut_26_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_local(26),
      I2 => XLXI_38_XLXN_185,
      O => XLXI_96_counter_Mcount_count_local_lut(26)
    );
  XLXI_96_counter_Mcount_count_local_xor_25_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(24),
      LI => XLXI_96_counter_Mcount_count_local_lut(25),
      O => XLXI_96_counter_Mcount_count_local25
    );
  XLXI_96_counter_Mcount_count_local_cy_25_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(24),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(25),
      O => XLXI_96_counter_Mcount_count_local_cy(25)
    );
  XLXI_96_counter_Mcount_count_local_lut_25_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(25),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(25)
    );
  XLXI_96_counter_Mcount_count_local_xor_24_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(23),
      LI => XLXI_96_counter_Mcount_count_local_lut(24),
      O => XLXI_96_counter_Mcount_count_local24
    );
  XLXI_96_counter_Mcount_count_local_cy_24_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(23),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(24),
      O => XLXI_96_counter_Mcount_count_local_cy(24)
    );
  XLXI_96_counter_Mcount_count_local_lut_24_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(24),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(24)
    );
  XLXI_96_counter_Mcount_count_local_xor_23_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(22),
      LI => XLXI_96_counter_Mcount_count_local_lut(23),
      O => XLXI_96_counter_Mcount_count_local23
    );
  XLXI_96_counter_Mcount_count_local_cy_23_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(22),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(23),
      O => XLXI_96_counter_Mcount_count_local_cy(23)
    );
  XLXI_96_counter_Mcount_count_local_lut_23_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(23),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(23)
    );
  XLXI_96_counter_Mcount_count_local_xor_22_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(21),
      LI => XLXI_96_counter_Mcount_count_local_lut(22),
      O => XLXI_96_counter_Mcount_count_local22
    );
  XLXI_96_counter_Mcount_count_local_cy_22_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(21),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(22),
      O => XLXI_96_counter_Mcount_count_local_cy(22)
    );
  XLXI_96_counter_Mcount_count_local_lut_22_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(22),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(22)
    );
  XLXI_96_counter_Mcount_count_local_xor_21_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(20),
      LI => XLXI_96_counter_Mcount_count_local_lut(21),
      O => XLXI_96_counter_Mcount_count_local21
    );
  XLXI_96_counter_Mcount_count_local_cy_21_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(20),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(21),
      O => XLXI_96_counter_Mcount_count_local_cy(21)
    );
  XLXI_96_counter_Mcount_count_local_lut_21_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(21),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(21)
    );
  XLXI_96_counter_Mcount_count_local_xor_20_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(19),
      LI => XLXI_96_counter_Mcount_count_local_lut(20),
      O => XLXI_96_counter_Mcount_count_local20
    );
  XLXI_96_counter_Mcount_count_local_cy_20_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(19),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(20),
      O => XLXI_96_counter_Mcount_count_local_cy(20)
    );
  XLXI_96_counter_Mcount_count_local_lut_20_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(20),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(20)
    );
  XLXI_96_counter_Mcount_count_local_xor_19_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(18),
      LI => XLXI_96_counter_Mcount_count_local_lut(19),
      O => XLXI_96_counter_Mcount_count_local19
    );
  XLXI_96_counter_Mcount_count_local_cy_19_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(18),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(19),
      O => XLXI_96_counter_Mcount_count_local_cy(19)
    );
  XLXI_96_counter_Mcount_count_local_lut_19_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(19),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(19)
    );
  XLXI_96_counter_Mcount_count_local_xor_18_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(17),
      LI => XLXI_96_counter_Mcount_count_local_lut(18),
      O => XLXI_96_counter_Mcount_count_local18
    );
  XLXI_96_counter_Mcount_count_local_cy_18_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(17),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(18),
      O => XLXI_96_counter_Mcount_count_local_cy(18)
    );
  XLXI_96_counter_Mcount_count_local_lut_18_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(18),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(18)
    );
  XLXI_96_counter_Mcount_count_local_xor_17_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(16),
      LI => XLXI_96_counter_Mcount_count_local_lut(17),
      O => XLXI_96_counter_Mcount_count_local17
    );
  XLXI_96_counter_Mcount_count_local_cy_17_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(16),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(17),
      O => XLXI_96_counter_Mcount_count_local_cy(17)
    );
  XLXI_96_counter_Mcount_count_local_lut_17_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(17),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(17)
    );
  XLXI_96_counter_Mcount_count_local_xor_16_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(15),
      LI => XLXI_96_counter_Mcount_count_local_lut(16),
      O => XLXI_96_counter_Mcount_count_local16
    );
  XLXI_96_counter_Mcount_count_local_cy_16_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(15),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(16),
      O => XLXI_96_counter_Mcount_count_local_cy(16)
    );
  XLXI_96_counter_Mcount_count_local_lut_16_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(16),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(16)
    );
  XLXI_96_counter_Mcount_count_local_xor_15_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(14),
      LI => XLXI_96_counter_Mcount_count_local_lut(15),
      O => XLXI_96_counter_Mcount_count_local15
    );
  XLXI_96_counter_Mcount_count_local_cy_15_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(14),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(15),
      O => XLXI_96_counter_Mcount_count_local_cy(15)
    );
  XLXI_96_counter_Mcount_count_local_lut_15_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(15),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(15)
    );
  XLXI_96_counter_Mcount_count_local_xor_14_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(13),
      LI => XLXI_96_counter_Mcount_count_local_lut(14),
      O => XLXI_96_counter_Mcount_count_local14
    );
  XLXI_96_counter_Mcount_count_local_cy_14_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(13),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(14),
      O => XLXI_96_counter_Mcount_count_local_cy(14)
    );
  XLXI_96_counter_Mcount_count_local_lut_14_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(14),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(14)
    );
  XLXI_96_counter_Mcount_count_local_xor_13_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(12),
      LI => XLXI_96_counter_Mcount_count_local_lut(13),
      O => XLXI_96_counter_Mcount_count_local13
    );
  XLXI_96_counter_Mcount_count_local_cy_13_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(12),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(13),
      O => XLXI_96_counter_Mcount_count_local_cy(13)
    );
  XLXI_96_counter_Mcount_count_local_lut_13_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(13),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(13)
    );
  XLXI_96_counter_Mcount_count_local_xor_12_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(11),
      LI => XLXI_96_counter_Mcount_count_local_lut(12),
      O => XLXI_96_counter_Mcount_count_local12
    );
  XLXI_96_counter_Mcount_count_local_cy_12_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(11),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(12),
      O => XLXI_96_counter_Mcount_count_local_cy(12)
    );
  XLXI_96_counter_Mcount_count_local_lut_12_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(12),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(12)
    );
  XLXI_96_counter_Mcount_count_local_xor_11_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(10),
      LI => XLXI_96_counter_Mcount_count_local_lut(11),
      O => XLXI_96_counter_Mcount_count_local11
    );
  XLXI_96_counter_Mcount_count_local_cy_11_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(10),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(11),
      O => XLXI_96_counter_Mcount_count_local_cy(11)
    );
  XLXI_96_counter_Mcount_count_local_lut_11_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(11),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(11)
    );
  XLXI_96_counter_Mcount_count_local_xor_10_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(9),
      LI => XLXI_96_counter_Mcount_count_local_lut(10),
      O => XLXI_96_counter_Mcount_count_local10
    );
  XLXI_96_counter_Mcount_count_local_cy_10_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(10),
      O => XLXI_96_counter_Mcount_count_local_cy(10)
    );
  XLXI_96_counter_Mcount_count_local_lut_10_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(10),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(10)
    );
  XLXI_96_counter_Mcount_count_local_xor_9_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(8),
      LI => XLXI_96_counter_Mcount_count_local_lut(9),
      O => XLXI_96_counter_Mcount_count_local9
    );
  XLXI_96_counter_Mcount_count_local_cy_9_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(9),
      O => XLXI_96_counter_Mcount_count_local_cy(9)
    );
  XLXI_96_counter_Mcount_count_local_lut_9_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(9),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(9)
    );
  XLXI_96_counter_Mcount_count_local_xor_8_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(7),
      LI => XLXI_96_counter_Mcount_count_local_lut(8),
      O => XLXI_96_counter_Mcount_count_local8
    );
  XLXI_96_counter_Mcount_count_local_cy_8_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(7),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(8),
      O => XLXI_96_counter_Mcount_count_local_cy(8)
    );
  XLXI_96_counter_Mcount_count_local_lut_8_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(8),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(8)
    );
  XLXI_96_counter_Mcount_count_local_xor_7_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(6),
      LI => XLXI_96_counter_Mcount_count_local_lut(7),
      O => XLXI_96_counter_Mcount_count_local7
    );
  XLXI_96_counter_Mcount_count_local_cy_7_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(7),
      O => XLXI_96_counter_Mcount_count_local_cy(7)
    );
  XLXI_96_counter_Mcount_count_local_lut_7_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(7),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(7)
    );
  XLXI_96_counter_Mcount_count_local_xor_6_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(5),
      LI => XLXI_96_counter_Mcount_count_local_lut(6),
      O => XLXI_96_counter_Mcount_count_local6
    );
  XLXI_96_counter_Mcount_count_local_cy_6_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(6),
      O => XLXI_96_counter_Mcount_count_local_cy(6)
    );
  XLXI_96_counter_Mcount_count_local_lut_6_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(6),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(6)
    );
  XLXI_96_counter_Mcount_count_local_xor_5_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(4),
      LI => XLXI_96_counter_Mcount_count_local_lut(5),
      O => XLXI_96_counter_Mcount_count_local5
    );
  XLXI_96_counter_Mcount_count_local_cy_5_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(5),
      O => XLXI_96_counter_Mcount_count_local_cy(5)
    );
  XLXI_96_counter_Mcount_count_local_lut_5_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(5),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(5)
    );
  XLXI_96_counter_Mcount_count_local_xor_4_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(3),
      LI => XLXI_96_counter_Mcount_count_local_lut(4),
      O => XLXI_96_counter_Mcount_count_local4
    );
  XLXI_96_counter_Mcount_count_local_cy_4_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(4),
      O => XLXI_96_counter_Mcount_count_local_cy(4)
    );
  XLXI_96_counter_Mcount_count_local_lut_4_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(4),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(4)
    );
  XLXI_96_counter_Mcount_count_local_xor_3_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(2),
      LI => XLXI_96_counter_Mcount_count_local_lut(3),
      O => XLXI_96_counter_Mcount_count_local3
    );
  XLXI_96_counter_Mcount_count_local_cy_3_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(3),
      O => XLXI_96_counter_Mcount_count_local_cy(3)
    );
  XLXI_96_counter_Mcount_count_local_lut_3_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(3),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(3)
    );
  XLXI_96_counter_Mcount_count_local_xor_2_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(1),
      LI => XLXI_96_counter_Mcount_count_local_lut(2),
      O => XLXI_96_counter_Mcount_count_local2
    );
  XLXI_96_counter_Mcount_count_local_cy_2_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(2),
      O => XLXI_96_counter_Mcount_count_local_cy(2)
    );
  XLXI_96_counter_Mcount_count_local_lut_2_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(2),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(2)
    );
  XLXI_96_counter_Mcount_count_local_xor_1_Q : XORCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(0),
      LI => XLXI_96_counter_Mcount_count_local_lut(1),
      O => XLXI_96_counter_Mcount_count_local1
    );
  XLXI_96_counter_Mcount_count_local_cy_1_Q : MUXCY
    port map (
      CI => XLXI_96_counter_Mcount_count_local_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(1),
      O => XLXI_96_counter_Mcount_count_local_cy(1)
    );
  XLXI_96_counter_Mcount_count_local_lut_1_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(1),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(1)
    );
  XLXI_96_counter_Mcount_count_local_xor_0_Q : XORCY
    port map (
      CI => XLXI_96_counter_count_local_not0001_inv,
      LI => XLXI_96_counter_Mcount_count_local_lut(0),
      O => XLXI_96_counter_Mcount_count_local
    );
  XLXI_96_counter_Mcount_count_local_cy_0_Q : MUXCY
    port map (
      CI => XLXI_96_counter_count_local_not0001_inv,
      DI => XLXI_38_XLXN_185,
      S => XLXI_96_counter_Mcount_count_local_lut(0),
      O => XLXI_96_counter_Mcount_count_local_cy(0)
    );
  XLXI_96_counter_Mcount_count_local_lut_0_Q : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_96_counter_count_local(0),
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_Mcount_count_local_lut(0)
    );
  XLXI_96_counter_q_31 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(31),
      Q => XLXI_96_counter_q(31)
    );
  XLXI_96_counter_q_30 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(30),
      Q => XLXI_96_counter_q(30)
    );
  XLXI_96_counter_q_29 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(29),
      Q => XLXI_96_counter_q(29)
    );
  XLXI_96_counter_q_28 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(28),
      Q => XLXI_96_counter_q(28)
    );
  XLXI_96_counter_q_27 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(27),
      Q => XLXI_96_counter_q(27)
    );
  XLXI_96_counter_q_26 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(26),
      Q => XLXI_96_counter_q(26)
    );
  XLXI_96_counter_q_25 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(25),
      Q => XLXI_96_counter_q(25)
    );
  XLXI_96_counter_q_24 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(24),
      Q => XLXI_96_counter_q(24)
    );
  XLXI_96_counter_q_23 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(23),
      Q => XLXI_96_counter_q(23)
    );
  XLXI_96_counter_q_22 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(22),
      Q => XLXI_96_counter_q(22)
    );
  XLXI_96_counter_q_21 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(21),
      Q => XLXI_96_counter_q(21)
    );
  XLXI_96_counter_q_20 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(20),
      Q => XLXI_96_counter_q(20)
    );
  XLXI_96_counter_q_19 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(19),
      Q => XLXI_96_counter_q(19)
    );
  XLXI_96_counter_q_18 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(18),
      Q => XLXI_96_counter_q(18)
    );
  XLXI_96_counter_q_17 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(17),
      Q => XLXI_96_counter_q(17)
    );
  XLXI_96_counter_q_16 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(16),
      Q => XLXI_96_counter_q(16)
    );
  XLXI_96_counter_q_15 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(15),
      Q => XLXI_96_counter_q(15)
    );
  XLXI_96_counter_q_14 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(14),
      Q => XLXI_96_counter_q(14)
    );
  XLXI_96_counter_q_13 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(13),
      Q => XLXI_96_counter_q(13)
    );
  XLXI_96_counter_q_12 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(12),
      Q => XLXI_96_counter_q(12)
    );
  XLXI_96_counter_q_11 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(11),
      Q => XLXI_96_counter_q(11)
    );
  XLXI_96_counter_q_10 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(10),
      Q => XLXI_96_counter_q(10)
    );
  XLXI_96_counter_q_9 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(9),
      Q => XLXI_96_counter_q(9)
    );
  XLXI_96_counter_q_8 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(8),
      Q => XLXI_96_counter_q(8)
    );
  XLXI_96_counter_q_7 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(7),
      Q => XLXI_96_counter_q(7)
    );
  XLXI_96_counter_q_6 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(6),
      Q => XLXI_96_counter_q(6)
    );
  XLXI_96_counter_q_5 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(5),
      Q => XLXI_96_counter_q(5)
    );
  XLXI_96_counter_q_4 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(4),
      Q => XLXI_96_counter_q(4)
    );
  XLXI_96_counter_q_3 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(3),
      Q => XLXI_96_counter_q(3)
    );
  XLXI_96_counter_q_2 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(2),
      Q => XLXI_96_counter_q(2)
    );
  XLXI_96_counter_q_1 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(1),
      Q => XLXI_96_counter_q(1)
    );
  XLXI_96_counter_q_0 : FDCE
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_q_not0001,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg(0),
      Q => XLXI_96_counter_q(0)
    );
  XLXI_96_counter_count_trigg_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(31),
      Q => XLXI_96_counter_count_trigg(31)
    );
  XLXI_96_counter_count_trigg_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(30),
      Q => XLXI_96_counter_count_trigg(30)
    );
  XLXI_96_counter_count_trigg_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(29),
      Q => XLXI_96_counter_count_trigg(29)
    );
  XLXI_96_counter_count_trigg_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(28),
      Q => XLXI_96_counter_count_trigg(28)
    );
  XLXI_96_counter_count_trigg_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(27),
      Q => XLXI_96_counter_count_trigg(27)
    );
  XLXI_96_counter_count_trigg_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(26),
      Q => XLXI_96_counter_count_trigg(26)
    );
  XLXI_96_counter_count_trigg_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(25),
      Q => XLXI_96_counter_count_trigg(25)
    );
  XLXI_96_counter_count_trigg_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(24),
      Q => XLXI_96_counter_count_trigg(24)
    );
  XLXI_96_counter_count_trigg_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(23),
      Q => XLXI_96_counter_count_trigg(23)
    );
  XLXI_96_counter_count_trigg_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(22),
      Q => XLXI_96_counter_count_trigg(22)
    );
  XLXI_96_counter_count_trigg_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(21),
      Q => XLXI_96_counter_count_trigg(21)
    );
  XLXI_96_counter_count_trigg_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(20),
      Q => XLXI_96_counter_count_trigg(20)
    );
  XLXI_96_counter_count_trigg_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(19),
      Q => XLXI_96_counter_count_trigg(19)
    );
  XLXI_96_counter_count_trigg_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(18),
      Q => XLXI_96_counter_count_trigg(18)
    );
  XLXI_96_counter_count_trigg_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(17),
      Q => XLXI_96_counter_count_trigg(17)
    );
  XLXI_96_counter_count_trigg_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(16),
      Q => XLXI_96_counter_count_trigg(16)
    );
  XLXI_96_counter_count_trigg_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(15),
      Q => XLXI_96_counter_count_trigg(15)
    );
  XLXI_96_counter_count_trigg_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(14),
      Q => XLXI_96_counter_count_trigg(14)
    );
  XLXI_96_counter_count_trigg_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(13),
      Q => XLXI_96_counter_count_trigg(13)
    );
  XLXI_96_counter_count_trigg_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(12),
      Q => XLXI_96_counter_count_trigg(12)
    );
  XLXI_96_counter_count_trigg_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(11),
      Q => XLXI_96_counter_count_trigg(11)
    );
  XLXI_96_counter_count_trigg_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(10),
      Q => XLXI_96_counter_count_trigg(10)
    );
  XLXI_96_counter_count_trigg_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(9),
      Q => XLXI_96_counter_count_trigg(9)
    );
  XLXI_96_counter_count_trigg_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(8),
      Q => XLXI_96_counter_count_trigg(8)
    );
  XLXI_96_counter_count_trigg_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(7),
      Q => XLXI_96_counter_count_trigg(7)
    );
  XLXI_96_counter_count_trigg_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(6),
      Q => XLXI_96_counter_count_trigg(6)
    );
  XLXI_96_counter_count_trigg_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(5),
      Q => XLXI_96_counter_count_trigg(5)
    );
  XLXI_96_counter_count_trigg_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(4),
      Q => XLXI_96_counter_count_trigg(4)
    );
  XLXI_96_counter_count_trigg_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(3),
      Q => XLXI_96_counter_count_trigg(3)
    );
  XLXI_96_counter_count_trigg_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(2),
      Q => XLXI_96_counter_count_trigg(2)
    );
  XLXI_96_counter_count_trigg_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(1),
      Q => XLXI_96_counter_count_trigg(1)
    );
  XLXI_96_counter_count_trigg_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_count_trigg_not0001_759,
      CLR => trigg_rst_IBUF_1028,
      D => XLXI_96_counter_count_trigg_mux0000(0),
      Q => XLXI_96_counter_count_trigg(0)
    );
  XLXI_96_counter_flag : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_80M,
      CE => XLXI_96_counter_flag_and0000_761,
      D => XLXI_96_counter_flag_mux0000,
      Q => XLXI_96_counter_flag_760
    );
  XLXI_21_XLXI_25_wait_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => XLXI_21_XLXI_25_wait_f_not0001,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_wait_f_mux0002,
      Q => XLXI_21_XLXI_25_wait_f_377
    );
  XLXI_21_XLXI_25_full_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => XLXI_21_XLXI_25_full_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_25_full_f_375
    );
  XLXI_21_XLXI_25_done_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => XLXI_21_XLXI_25_done_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_25_done_f_373
    );
  XLXI_21_XLXI_25_addr_0 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(7),
      Q => XLXI_21_XLXI_25_addr(0)
    );
  XLXI_21_XLXI_25_addr_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(6),
      Q => XLXI_21_XLXI_25_addr(1)
    );
  XLXI_21_XLXI_25_addr_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(5),
      Q => XLXI_21_XLXI_25_addr(2)
    );
  XLXI_21_XLXI_25_addr_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(4),
      Q => XLXI_21_XLXI_25_addr(3)
    );
  XLXI_21_XLXI_25_addr_4 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(3),
      Q => XLXI_21_XLXI_25_addr(4)
    );
  XLXI_21_XLXI_25_addr_5 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(2),
      Q => XLXI_21_XLXI_25_addr(5)
    );
  XLXI_21_XLXI_25_addr_6 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(1),
      Q => XLXI_21_XLXI_25_addr(6)
    );
  XLXI_21_XLXI_25_addr_7 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_stop,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_25_addr_mux0002(0),
      Q => XLXI_21_XLXI_25_addr(7)
    );
  XLXI_21_XLXI_1_wait_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_1_wait_f_not0001,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_wait_f_mux0002,
      Q => XLXI_21_XLXI_1_wait_f_125
    );
  XLXI_21_XLXI_1_full_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_1_full_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_1_full_f_123
    );
  XLXI_21_XLXI_1_done_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_1_done_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_1_done_f_121
    );
  XLXI_21_XLXI_1_addr_0 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(11),
      Q => XLXI_21_XLXI_1_addr(0)
    );
  XLXI_21_XLXI_1_addr_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(10),
      Q => XLXI_21_XLXI_1_addr(1)
    );
  XLXI_21_XLXI_1_addr_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(9),
      Q => XLXI_21_XLXI_1_addr(2)
    );
  XLXI_21_XLXI_1_addr_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(8),
      Q => XLXI_21_XLXI_1_addr(3)
    );
  XLXI_21_XLXI_1_addr_4 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(7),
      Q => XLXI_21_XLXI_1_addr(4)
    );
  XLXI_21_XLXI_1_addr_5 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(6),
      Q => XLXI_21_XLXI_1_addr(5)
    );
  XLXI_21_XLXI_1_addr_6 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(5),
      Q => XLXI_21_XLXI_1_addr(6)
    );
  XLXI_21_XLXI_1_addr_7 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(4),
      Q => XLXI_21_XLXI_1_addr(7)
    );
  XLXI_21_XLXI_1_addr_8 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(3),
      Q => XLXI_21_XLXI_1_addr(8)
    );
  XLXI_21_XLXI_1_addr_9 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(2),
      Q => XLXI_21_XLXI_1_addr(9)
    );
  XLXI_21_XLXI_1_addr_10 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(1),
      Q => XLXI_21_XLXI_1_addr(10)
    );
  XLXI_21_XLXI_1_addr_11 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_1_addr_mux0002(0),
      Q => XLXI_21_XLXI_1_addr(11)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_185,
      DI => XLXI_38_XLXN_184,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(0)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_0_Q : XORCY
    port map (
      CI => XLXI_38_XLXN_185,
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_1_addr_addsub0000(0)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_1_rt_60,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(1)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(0),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_1_rt_60,
      O => XLXI_21_XLXI_1_addr_addsub0000(1)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_2_rt_62,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(2)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(1),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_2_rt_62,
      O => XLXI_21_XLXI_1_addr_addsub0000(2)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_3_rt_64,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(3)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(2),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_3_rt_64,
      O => XLXI_21_XLXI_1_addr_addsub0000(3)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_4_rt_66,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(4)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(3),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_4_rt_66,
      O => XLXI_21_XLXI_1_addr_addsub0000(4)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_5_rt_68,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(5)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(4),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_5_rt_68,
      O => XLXI_21_XLXI_1_addr_addsub0000(5)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_6_rt_70,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(6)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(5),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_6_rt_70,
      O => XLXI_21_XLXI_1_addr_addsub0000(6)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_7_rt_72,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(7)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(6),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_7_rt_72,
      O => XLXI_21_XLXI_1_addr_addsub0000(7)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(7),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_8_rt_74,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(8)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(7),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_8_rt_74,
      O => XLXI_21_XLXI_1_addr_addsub0000(8)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_9_rt_76,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(9)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(8),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_9_rt_76,
      O => XLXI_21_XLXI_1_addr_addsub0000(9)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_10_rt_58,
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(10)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(9),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_10_rt_58,
      O => XLXI_21_XLXI_1_addr_addsub0000(10)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy(10),
      LI => XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_11_rt_78,
      O => XLXI_21_XLXI_1_addr_addsub0000(11)
    );
  XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(0),
      I1 => XLXI_21_XLXI_1_addr(1),
      I2 => XLXI_21_XLXI_1_addr(2),
      I3 => XLXI_21_XLXI_1_addr(3),
      O => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut(0)
    );
  XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut(0),
      O => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(0)
    );
  XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(4),
      I1 => XLXI_21_XLXI_1_addr(5),
      I2 => XLXI_21_XLXI_1_addr(6),
      I3 => XLXI_21_XLXI_1_addr(7),
      O => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut(1)
    );
  XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut(1),
      O => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(1)
    );
  XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(8),
      I1 => XLXI_21_XLXI_1_addr(9),
      I2 => XLXI_21_XLXI_1_addr(10),
      I3 => XLXI_21_XLXI_1_addr(11),
      O => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut(2)
    );
  XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_lut(2),
      O => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2)
    );
  XLXI_21_XLXI_10_wait_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_10_wait_f_not0001,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_wait_f_mux0002,
      Q => XLXI_21_XLXI_10_wait_f_198
    );
  XLXI_21_XLXI_10_full_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_10_full_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_10_full_f_196
    );
  XLXI_21_XLXI_10_done_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_10_done_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_10_done_f_194
    );
  XLXI_21_XLXI_10_addr_0 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(11),
      Q => XLXI_21_XLXI_10_addr(0)
    );
  XLXI_21_XLXI_10_addr_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(10),
      Q => XLXI_21_XLXI_10_addr(1)
    );
  XLXI_21_XLXI_10_addr_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(9),
      Q => XLXI_21_XLXI_10_addr(2)
    );
  XLXI_21_XLXI_10_addr_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(8),
      Q => XLXI_21_XLXI_10_addr(3)
    );
  XLXI_21_XLXI_10_addr_4 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(7),
      Q => XLXI_21_XLXI_10_addr(4)
    );
  XLXI_21_XLXI_10_addr_5 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(6),
      Q => XLXI_21_XLXI_10_addr(5)
    );
  XLXI_21_XLXI_10_addr_6 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(5),
      Q => XLXI_21_XLXI_10_addr(6)
    );
  XLXI_21_XLXI_10_addr_7 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(4),
      Q => XLXI_21_XLXI_10_addr(7)
    );
  XLXI_21_XLXI_10_addr_8 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(3),
      Q => XLXI_21_XLXI_10_addr(8)
    );
  XLXI_21_XLXI_10_addr_9 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(2),
      Q => XLXI_21_XLXI_10_addr(9)
    );
  XLXI_21_XLXI_10_addr_10 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(1),
      Q => XLXI_21_XLXI_10_addr(10)
    );
  XLXI_21_XLXI_10_addr_11 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_10_addr_mux0002(0),
      Q => XLXI_21_XLXI_10_addr(11)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_185,
      DI => XLXI_38_XLXN_184,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(0)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_0_Q : XORCY
    port map (
      CI => XLXI_38_XLXN_185,
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_10_addr_addsub0000(0)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_1_rt_133,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(1)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(0),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_1_rt_133,
      O => XLXI_21_XLXI_10_addr_addsub0000(1)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_2_rt_135,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(2)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(1),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_2_rt_135,
      O => XLXI_21_XLXI_10_addr_addsub0000(2)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_3_rt_137,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(3)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(2),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_3_rt_137,
      O => XLXI_21_XLXI_10_addr_addsub0000(3)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_4_rt_139,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(4)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(3),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_4_rt_139,
      O => XLXI_21_XLXI_10_addr_addsub0000(4)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_5_rt_141,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(5)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(4),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_5_rt_141,
      O => XLXI_21_XLXI_10_addr_addsub0000(5)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_6_rt_143,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(6)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(5),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_6_rt_143,
      O => XLXI_21_XLXI_10_addr_addsub0000(6)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_7_rt_145,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(7)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(6),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_7_rt_145,
      O => XLXI_21_XLXI_10_addr_addsub0000(7)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(7),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_8_rt_147,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(8)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(7),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_8_rt_147,
      O => XLXI_21_XLXI_10_addr_addsub0000(8)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_9_rt_149,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(9)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(8),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_9_rt_149,
      O => XLXI_21_XLXI_10_addr_addsub0000(9)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_10_rt_131,
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(10)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(9),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_10_rt_131,
      O => XLXI_21_XLXI_10_addr_addsub0000(10)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy(10),
      LI => XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_11_rt_151,
      O => XLXI_21_XLXI_10_addr_addsub0000(11)
    );
  XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(0),
      I1 => XLXI_21_XLXI_10_addr(1),
      I2 => XLXI_21_XLXI_10_addr(2),
      I3 => XLXI_21_XLXI_10_addr(3),
      O => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut(0)
    );
  XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut(0),
      O => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(0)
    );
  XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(4),
      I1 => XLXI_21_XLXI_10_addr(5),
      I2 => XLXI_21_XLXI_10_addr(6),
      I3 => XLXI_21_XLXI_10_addr(7),
      O => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut(1)
    );
  XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut(1),
      O => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(1)
    );
  XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(8),
      I1 => XLXI_21_XLXI_10_addr(9),
      I2 => XLXI_21_XLXI_10_addr(10),
      I3 => XLXI_21_XLXI_10_addr(11),
      O => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut(2)
    );
  XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_lut(2),
      O => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2)
    );
  XLXI_21_XLXI_13_wait_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_13_wait_f_not0001,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_wait_f_mux0002,
      Q => XLXI_21_XLXI_13_wait_f_272
    );
  XLXI_21_XLXI_13_full_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_13_full_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_13_full_f_270
    );
  XLXI_21_XLXI_13_done_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_13_done_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_13_done_f_268
    );
  XLXI_21_XLXI_13_addr_0 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(11),
      Q => XLXI_21_XLXI_13_addr(0)
    );
  XLXI_21_XLXI_13_addr_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(10),
      Q => XLXI_21_XLXI_13_addr(1)
    );
  XLXI_21_XLXI_13_addr_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(9),
      Q => XLXI_21_XLXI_13_addr(2)
    );
  XLXI_21_XLXI_13_addr_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(8),
      Q => XLXI_21_XLXI_13_addr(3)
    );
  XLXI_21_XLXI_13_addr_4 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(7),
      Q => XLXI_21_XLXI_13_addr(4)
    );
  XLXI_21_XLXI_13_addr_5 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(6),
      Q => XLXI_21_XLXI_13_addr(5)
    );
  XLXI_21_XLXI_13_addr_6 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(5),
      Q => XLXI_21_XLXI_13_addr(6)
    );
  XLXI_21_XLXI_13_addr_7 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(4),
      Q => XLXI_21_XLXI_13_addr(7)
    );
  XLXI_21_XLXI_13_addr_8 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(3),
      Q => XLXI_21_XLXI_13_addr(8)
    );
  XLXI_21_XLXI_13_addr_9 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(2),
      Q => XLXI_21_XLXI_13_addr(9)
    );
  XLXI_21_XLXI_13_addr_10 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(1),
      Q => XLXI_21_XLXI_13_addr(10)
    );
  XLXI_21_XLXI_13_addr_11 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_13_addr_mux0002(0),
      Q => XLXI_21_XLXI_13_addr(11)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_185,
      DI => XLXI_38_XLXN_184,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(0)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_0_Q : XORCY
    port map (
      CI => XLXI_38_XLXN_185,
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_13_addr_addsub0000(0)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_1_rt_207,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(1)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(0),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_1_rt_207,
      O => XLXI_21_XLXI_13_addr_addsub0000(1)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_2_rt_209,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(2)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(1),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_2_rt_209,
      O => XLXI_21_XLXI_13_addr_addsub0000(2)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_3_rt_211,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(3)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(2),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_3_rt_211,
      O => XLXI_21_XLXI_13_addr_addsub0000(3)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_4_rt_213,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(4)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(3),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_4_rt_213,
      O => XLXI_21_XLXI_13_addr_addsub0000(4)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_5_rt_215,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(5)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(4),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_5_rt_215,
      O => XLXI_21_XLXI_13_addr_addsub0000(5)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_6_rt_217,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(6)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(5),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_6_rt_217,
      O => XLXI_21_XLXI_13_addr_addsub0000(6)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_7_rt_219,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(7)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(6),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_7_rt_219,
      O => XLXI_21_XLXI_13_addr_addsub0000(7)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(7),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_8_rt_221,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(8)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(7),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_8_rt_221,
      O => XLXI_21_XLXI_13_addr_addsub0000(8)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_9_rt_223,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(9)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(8),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_9_rt_223,
      O => XLXI_21_XLXI_13_addr_addsub0000(9)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_10_rt_205,
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(10)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(9),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_10_rt_205,
      O => XLXI_21_XLXI_13_addr_addsub0000(10)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy(10),
      LI => XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_11_rt_225,
      O => XLXI_21_XLXI_13_addr_addsub0000(11)
    );
  XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(0),
      I1 => XLXI_21_XLXI_13_addr(1),
      I2 => XLXI_21_XLXI_13_addr(2),
      I3 => XLXI_21_XLXI_13_addr(3),
      O => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut(0)
    );
  XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut(0),
      O => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(0)
    );
  XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(4),
      I1 => XLXI_21_XLXI_13_addr(5),
      I2 => XLXI_21_XLXI_13_addr(6),
      I3 => XLXI_21_XLXI_13_addr(7),
      O => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut(1)
    );
  XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut(1),
      O => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(1)
    );
  XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(8),
      I1 => XLXI_21_XLXI_13_addr(9),
      I2 => XLXI_21_XLXI_13_addr(10),
      I3 => XLXI_21_XLXI_13_addr(11),
      O => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut(2)
    );
  XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_lut(2),
      O => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2)
    );
  XLXI_21_XLXI_22_wait_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_22_wait_f_not0001,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_wait_f_mux0002,
      Q => XLXI_21_XLXI_22_wait_f_347
    );
  XLXI_21_XLXI_22_full_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_22_full_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_22_full_f_345
    );
  XLXI_21_XLXI_22_done_f : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => XLXI_21_XLXI_22_done_f_not0001,
      CLR => XLXN_441,
      D => XLXI_38_XLXN_184,
      Q => XLXI_21_XLXI_22_done_f_343
    );
  XLXI_21_XLXI_22_addr_0 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(11),
      Q => XLXI_21_XLXI_22_addr(0)
    );
  XLXI_21_XLXI_22_addr_1 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(10),
      Q => XLXI_21_XLXI_22_addr(1)
    );
  XLXI_21_XLXI_22_addr_2 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(9),
      Q => XLXI_21_XLXI_22_addr(2)
    );
  XLXI_21_XLXI_22_addr_3 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(8),
      Q => XLXI_21_XLXI_22_addr(3)
    );
  XLXI_21_XLXI_22_addr_4 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(7),
      Q => XLXI_21_XLXI_22_addr(4)
    );
  XLXI_21_XLXI_22_addr_5 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(6),
      Q => XLXI_21_XLXI_22_addr(5)
    );
  XLXI_21_XLXI_22_addr_6 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(5),
      Q => XLXI_21_XLXI_22_addr(6)
    );
  XLXI_21_XLXI_22_addr_7 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(4),
      Q => XLXI_21_XLXI_22_addr(7)
    );
  XLXI_21_XLXI_22_addr_8 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(3),
      Q => XLXI_21_XLXI_22_addr(8)
    );
  XLXI_21_XLXI_22_addr_9 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(2),
      Q => XLXI_21_XLXI_22_addr(9)
    );
  XLXI_21_XLXI_22_addr_10 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(1),
      Q => XLXI_21_XLXI_22_addr(10)
    );
  XLXI_21_XLXI_22_addr_11 : FDCE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_test_mem,
      CE => stop_SST_OBUF_1000,
      CLR => XLXN_441,
      D => XLXI_21_XLXI_22_addr_mux0002(0),
      Q => XLXI_21_XLXI_22_addr(11)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_185,
      DI => XLXI_38_XLXN_184,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(0)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_0_Q : XORCY
    port map (
      CI => XLXI_38_XLXN_185,
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_lut(0),
      O => XLXI_21_XLXI_22_addr_addsub0000(0)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_1_rt_282,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(1)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_1_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(0),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_1_rt_282,
      O => XLXI_21_XLXI_22_addr_addsub0000(1)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_2_rt_284,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(2)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_2_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(1),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_2_rt_284,
      O => XLXI_21_XLXI_22_addr_addsub0000(2)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_3_rt_286,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(3)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_3_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(2),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_3_rt_286,
      O => XLXI_21_XLXI_22_addr_addsub0000(3)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_4_rt_288,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(4)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_4_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(3),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_4_rt_288,
      O => XLXI_21_XLXI_22_addr_addsub0000(4)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_5_rt_290,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(5)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_5_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(4),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_5_rt_290,
      O => XLXI_21_XLXI_22_addr_addsub0000(5)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_6_rt_292,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(6)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_6_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(5),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_6_rt_292,
      O => XLXI_21_XLXI_22_addr_addsub0000(6)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_7_rt_294,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(7)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_7_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(6),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_7_rt_294,
      O => XLXI_21_XLXI_22_addr_addsub0000(7)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(7),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_8_rt_296,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(8)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_8_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(7),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_8_rt_296,
      O => XLXI_21_XLXI_22_addr_addsub0000(8)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(8),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_9_rt_298,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(9)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_9_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(8),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_9_rt_298,
      O => XLXI_21_XLXI_22_addr_addsub0000(9)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(9),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_10_rt_280,
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(10)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_10_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(9),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_10_rt_280,
      O => XLXI_21_XLXI_22_addr_addsub0000(10)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_11_Q : XORCY
    port map (
      CI => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy(10),
      LI => XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_11_rt_300,
      O => XLXI_21_XLXI_22_addr_addsub0000(11)
    );
  XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(0),
      I1 => XLXI_21_XLXI_22_addr(1),
      I2 => XLXI_21_XLXI_22_addr(2),
      I3 => XLXI_21_XLXI_22_addr(3),
      O => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut(0)
    );
  XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut(0),
      O => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(0)
    );
  XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(4),
      I1 => XLXI_21_XLXI_22_addr(5),
      I2 => XLXI_21_XLXI_22_addr(6),
      I3 => XLXI_21_XLXI_22_addr(7),
      O => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut(1)
    );
  XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut(1),
      O => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(1)
    );
  XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(8),
      I1 => XLXI_21_XLXI_22_addr(9),
      I2 => XLXI_21_XLXI_22_addr(10),
      I3 => XLXI_21_XLXI_22_addr(11),
      O => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut(2)
    );
  XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_lut(2),
      O => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2)
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_32 : AND3
    port map (
      I0 => enable_thermal_tri_IBUF_977,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout2_393,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_67,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_36
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_29 : AND3
    port map (
      I0 => enable_thermal_tri_IBUF_977,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout3_394,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_18,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_56
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_28 : AND3
    port map (
      I0 => enable_thermal_tri_IBUF_977,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout1_392,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_6,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_66
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_27 : AND3
    port map (
      I0 => enable_thermal_tri_IBUF_977,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_390,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_5,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_23
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_12 : OR4
    port map (
      I0 => XLXI_38_XLXI_2_XLXN_18,
      I1 => XLXI_38_XLXI_2_XLXN_19,
      I2 => XLXI_38_XLXI_2_XLXN_20,
      I3 => XLXI_38_XLXI_2_XLXN_21,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_5
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_11 : AND4
    port map (
      I0 => XLXI_38_XLXI_2_XLXN_18,
      I1 => XLXI_38_XLXI_2_XLXN_19,
      I2 => XLXI_38_XLXI_2_XLXN_20,
      I3 => XLXI_38_XLXI_2_XLXN_21,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_18
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0 : FDR
    port map (
      C => clk_80M,
      D => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_and0000_norst,
      R => mbed_sel0_IBUF_987,
      Q => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_390
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout1 : FDR
    port map (
      C => clk_80M,
      D => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_and0000_norst,
      R => XLXI_38_XLXI_2_XLXI_2_XLXI_21_sel0_inv,
      Q => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout1_392
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout2 : FDR
    port map (
      C => clk_80M,
      D => mbed_sel1_IBUF_989,
      R => mbed_sel0_IBUF_987,
      Q => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout2_393
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout3 : FDR
    port map (
      C => clk_80M,
      D => mbed_sel1_IBUF_989,
      R => XLXI_38_XLXI_2_XLXI_2_XLXI_21_sel0_inv,
      Q => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout3_394
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_97_i(8),
      I1 => XLXI_97_i(9),
      I2 => XLXI_97_i(7),
      I3 => XLXI_97_i(10),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(0)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => XLXI_38_XLXN_184,
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(0),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(0)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_97_i(11),
      I1 => XLXI_97_i(12),
      I2 => XLXI_97_i(6),
      I3 => XLXI_97_i(13),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(1)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(0),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(1),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(1)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => XLXI_97_i(14),
      I1 => XLXI_97_i(15),
      I2 => XLXI_97_i(5),
      I3 => XLXI_97_i(16),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(2)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(1),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(2),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(2)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_97_i(17),
      I1 => XLXI_97_i(18),
      I2 => XLXI_97_i(4),
      I3 => XLXI_97_i(19),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(3)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(2),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(3),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(3)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_97_i(20),
      I1 => XLXI_97_i(21),
      I2 => XLXI_97_i(3),
      I3 => XLXI_97_i(22),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(4)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(3),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(4),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(4)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_97_i(23),
      I1 => XLXI_97_i(24),
      I2 => XLXI_97_i(2),
      I3 => XLXI_97_i(25),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(5)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(4),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(5),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(5)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_97_i(26),
      I1 => XLXI_97_i(27),
      I2 => XLXI_97_i(1),
      I3 => XLXI_97_i(28),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(6)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(5),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(6),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(6)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => XLXI_97_i(29),
      I1 => XLXI_97_i(30),
      I2 => XLXI_97_i(0),
      I3 => XLXI_97_i(31),
      O => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(7)
    );
  XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => XLXI_97_buffer_reg_4_cmp_eq0000_wg_cy(6),
      DI => XLXI_38_XLXN_185,
      S => XLXI_97_buffer_reg_4_cmp_eq0000_wg_lut(7),
      O => XLXI_97_buffer_reg_4_cmp_eq0000
    );
  XLXI_97_buffer_reg_4_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_21_XLXI_25_done_f_373,
      I1 => trigg_rst_IBUF_1028,
      O => XLXI_97_buffer_reg_4_or0000
    );
  XLXI_5_enable2_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => XLXI_5_enable1_423,
      I1 => XLXN_441,
      O => XLXI_5_enable2_or0000
    );
  XLXI_5_enable1_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => stop_SST_OBUF_1000,
      I1 => XLXN_441,
      O => XLXI_5_enable1_or0000
    );
  XLXI_3_Mcount_counter_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => XLXI_3_counter(1),
      I1 => XLXI_3_counter(0),
      O => Result(1)
    );
  XLXI_3_Mcount_counter_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => XLXI_3_counter(2),
      I1 => XLXI_3_counter(1),
      I2 => XLXI_3_counter(0),
      O => Result(2)
    );
  XLXI_3_Mcount_counter_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => XLXI_3_counter(3),
      I1 => XLXI_3_counter(1),
      I2 => XLXI_3_counter(0),
      I3 => XLXI_3_counter(2),
      O => Result(3)
    );
  XLXI_3_temporal_cmp_eq00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => XLXI_3_counter(0),
      I1 => XLXI_3_counter(3),
      I2 => XLXI_3_counter(2),
      I3 => XLXI_3_counter(1),
      O => XLXI_3_temporal_cmp_eq0000
    );
  XLXI_5_SST_rck1 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => XLXI_18_XLXI_19_50,
      I1 => XLXN_441,
      I2 => XLXI_5_enable1_423,
      O => CS_n_OBUF_31
    );
  XLXI_5_ADC_clk1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => XLXI_18_XLXI_8_51,
      I1 => XLXI_5_enable1_423,
      I2 => XLXN_441,
      O => ADC_clk_OBUF_29
    );
  XLXI_21_XLXI_25_addr_mux0002_7_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_21_XLXI_25_wait_f_377,
      I1 => XLXI_21_XLXI_25_addr(0),
      O => XLXI_21_XLXI_25_addr_mux0002(7)
    );
  XLXI_96_counter_flag_mux00001 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => XLXI_96_counter_flag_760,
      I1 => XLXI_96_counter_count_trigg(31),
      I2 => trig_0H_IBUF_1006,
      O => XLXI_96_counter_flag_mux0000
    );
  XLXI_21_XLXI_25_addr_mux0002_6_1 : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => XLXI_21_XLXI_25_wait_f_377,
      I1 => XLXI_21_XLXI_25_addr(0),
      I2 => XLXI_21_XLXI_25_addr(1),
      O => XLXI_21_XLXI_25_addr_mux0002(6)
    );
  XLXI_21_XLXI_25_addr_mux0002_5_1 : LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      I0 => XLXI_21_XLXI_25_wait_f_377,
      I1 => XLXI_21_XLXI_25_addr(2),
      I2 => XLXI_21_XLXI_25_addr(0),
      I3 => XLXI_21_XLXI_25_addr(1),
      O => XLXI_21_XLXI_25_addr_mux0002(5)
    );
  XLXI_21_XLXI_25_addr_mux0002_3_2 : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => XLXI_21_XLXI_25_wait_f_377,
      I1 => XLXI_21_XLXI_25_addr(4),
      I2 => XLXI_21_XLXI_25_N3,
      O => XLXI_21_XLXI_25_addr_mux0002(3)
    );
  XLXI_21_XLXI_25_addr_mux0002_2_1 : LUT4
    generic map(
      INIT => X"4414"
    )
    port map (
      I0 => XLXI_21_XLXI_25_wait_f_377,
      I1 => XLXI_21_XLXI_25_addr(5),
      I2 => XLXI_21_XLXI_25_addr(4),
      I3 => XLXI_21_XLXI_25_N3,
      O => XLXI_21_XLXI_25_addr_mux0002(2)
    );
  XLXI_21_XLXI_25_addr_mux0002_0_2 : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => XLXI_21_XLXI_25_wait_f_377,
      I1 => XLXI_21_XLXI_25_addr(7),
      I2 => XLXI_21_XLXI_25_N01,
      O => XLXI_21_XLXI_25_addr_mux0002(0)
    );
  XLXI_21_XLXI_25_wait_f_not00011 : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => stop_SST_OBUF_1000,
      I1 => XLXI_21_XLXI_25_addr(7),
      I2 => XLXI_21_XLXI_25_N01,
      I3 => XLXI_21_XLXI_25_wait_f_377,
      O => XLXI_21_XLXI_25_wait_f_not0001
    );
  XLXI_21_XLXI_25_full_f_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_21_XLXI_22_done_f_343,
      I1 => N38,
      O => XLXI_21_XLXI_25_full_f_not0001
    );
  XLXI_21_XLXI_25_done_f_not00012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_21_XLXI_22_done_f_343,
      I1 => XLXI_21_XLXI_25_N13,
      O => XLXI_21_XLXI_25_done_f_not0001
    );
  XLXI_21_XLXI_25_addr_mux0002_0_11 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => XLXI_21_XLXI_25_addr(4),
      I1 => XLXI_21_XLXI_25_addr(6),
      I2 => XLXI_21_XLXI_25_addr(5),
      I3 => N39,
      O => XLXI_21_XLXI_25_N01
    );
  XLXI_97_conv_flag_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_97_buffer_reg_4_cmp_eq0000,
      I1 => trigg_enable_IBUF_1026,
      O => XLXI_97_conv_flag_not0001
    );
  XLXI_97_buffer_reg_4_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_97_buffer_reg_4_cmp_eq0000,
      I1 => trigg_enable_IBUF_1026,
      O => XLXI_97_buffer_reg_4_not0001
    );
  XLXI_96_counter_flag_and0000_SW0 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => XLXI_96_counter_flag_760,
      I1 => trig_0H_IBUF_1006,
      I2 => XLXI_96_counter_count_trigg(31),
      O => N16
    );
  XLXI_21_XLXI_26_we1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_21_XLXI_22_done_f_343,
      I1 => XLXI_21_XLXI_25_wait_f_377,
      O => XLXI_21_XLXI_26_we_0
    );
  XLXI_21_XLXI_2_we1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => re_IBUF_994,
      I1 => XLXI_21_XLXI_1_wait_f_125,
      O => XLXI_21_XLXI_2_we_0
    );
  XLXI_21_XLXI_14_we1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_21_XLXI_10_done_f_194,
      I1 => XLXI_21_XLXI_13_wait_f_272,
      O => XLXI_21_XLXI_14_we_0
    );
  XLXI_96_counter_count_trigg_not0001_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => trig_0H_IBUF_1006,
      I1 => XLXI_96_counter_count_trigg(31),
      O => N18
    );
  XLXI_21_XLXI_23_we1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_21_XLXI_13_done_f_268,
      I1 => XLXI_21_XLXI_22_wait_f_347,
      O => XLXI_21_XLXI_23_we_0
    );
  XLXI_21_XLXI_11_we1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_21_XLXI_1_done_f_121,
      I1 => XLXI_21_XLXI_10_wait_f_198,
      O => XLXI_21_XLXI_11_we_0
    );
  XLXI_96_counter_count_trigg_mux0000_30_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_96_counter_count_local_not0001_inv,
      I1 => XLXI_96_counter_count_trigg_addsub0000(30),
      O => XLXI_96_counter_count_trigg_mux0000(30)
    );
  XLXI_96_counter_count_trigg_mux0000_31_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_96_counter_count_local_not0001_inv,
      I1 => XLXI_96_counter_count_trigg_addsub0000(31),
      O => XLXI_96_counter_count_trigg_mux0000(31)
    );
  ex_tri_IBUF : IBUF
    port map (
      I => ex_tri,
      O => ex_tri_IBUF_979
    );
  trigg_rst_IBUF : IBUF
    port map (
      I => trigg_rst,
      O => trigg_rst_IBUF_1028
    );
  rst_IBUFG : IBUFG
    port map (
      I => rst,
      O => rst_IBUFG_998
    );
  mbed_sel0_IBUF : IBUF
    port map (
      I => mbed_sel0,
      O => mbed_sel0_IBUF_987
    );
  mbed_sel1_IBUF : IBUF
    port map (
      I => mbed_sel1,
      O => mbed_sel1_IBUF_989
    );
  and_or_sel_M_IBUF : IBUF
    port map (
      I => and_or_sel_M,
      O => and_or_sel_M_IBUF_951
    );
  stop_data_in_IBUF : IBUF
    port map (
      I => stop_data_in,
      O => stop_data_in_IBUF_1003
    );
  in_heartbeat_IBUFG : IBUFG
    port map (
      I => in_heartbeat,
      O => in_heartbeat_IBUFG_985
    );
  enable_thermal_tri_IBUF : IBUF
    port map (
      I => enable_thermal_tri,
      O => enable_thermal_tri_IBUF_977
    );
  re_IBUF : IBUF
    port map (
      I => re,
      O => re_IBUF_994
    );
  trig_0H_IBUF : IBUF
    port map (
      I => trig_0H,
      O => trig_0H_IBUF_1006
    );
  trig_0L_IBUF : IBUF
    port map (
      I => trig_0L,
      O => trig_0L_IBUF_1008
    );
  trig_1H_IBUF : IBUF
    port map (
      I => trig_1H,
      O => trig_1H_IBUF_1010
    );
  trigg_enable_IBUF : IBUF
    port map (
      I => trigg_enable,
      O => trigg_enable_IBUF_1026
    );
  trig_1L_IBUF : IBUF
    port map (
      I => trig_1L,
      O => trig_1L_IBUF_1012
    );
  trig_2H_IBUF : IBUF
    port map (
      I => trig_2H,
      O => trig_2H_IBUF_1014
    );
  trig_2L_IBUF : IBUF
    port map (
      I => trig_2L,
      O => trig_2L_IBUF_1016
    );
  trig_3H_IBUF : IBUF
    port map (
      I => trig_3H,
      O => trig_3H_IBUF_1018
    );
  trig_3L_IBUF : IBUF
    port map (
      I => trig_3L,
      O => trig_3L_IBUF_1020
    );
  di_ch0_IBUF : IBUF
    port map (
      I => di_ch0,
      O => di_ch0_IBUF_964
    );
  di_ch1_IBUF : IBUF
    port map (
      I => di_ch1,
      O => di_ch1_IBUF_966
    );
  di_ch2_IBUF : IBUF
    port map (
      I => di_ch2,
      O => di_ch2_IBUF_968
    );
  di_ch3_IBUF : IBUF
    port map (
      I => di_ch3,
      O => di_ch3_IBUF_970
    );
  diff_select_M_IBUF : IBUF
    port map (
      I => diff_select_M,
      O => diff_select_M_IBUF_972
    );
  force_tri_IBUF : IBUF
    port map (
      I => force_tri,
      O => force_tri_IBUF_981
    );
  SPI_SCLK_IBUF : IBUF
    port map (
      I => SPI_SCLK,
      O => SPI_SCLK_IBUF_47
    );
  SPI_MISO_OBUF : OBUF
    port map (
      I => SPI_MISO_OBUF_45,
      O => SPI_MISO
    );
  CS_n_OBUF : OBUF
    port map (
      I => CS_n_OBUF_31,
      O => CS_n
    );
  and_or_sel_SST_OBUF : OBUF
    port map (
      I => and_or_sel_SST_OBUF_953,
      O => and_or_sel_SST
    );
  stop_SST_OBUF : OBUF
    port map (
      I => stop_SST_OBUF_1000,
      O => stop_SST
    );
  reset_SST_OBUF : OBUF
    port map (
      I => reset_SST_OBUF_996,
      O => reset_SST
    );
  out_heartbeat_OBUF : OBUF
    port map (
      I => out_heartbeat_OBUF_992,
      O => out_heartbeat
    );
  SST_read_clk_OBUF : OBUF
    port map (
      I => CS_n_OBUF_31,
      O => SST_read_clk
    );
  full_OBUF : OBUF
    port map (
      I => full_OBUF_983,
      O => full
    );
  HSCLK_Ctrl_OBUF : OBUF
    port map (
      I => XLXI_38_XLXN_184,
      O => HSCLK_Ctrl
    );
  diff_select_SST_OBUF : OBUF
    port map (
      I => diff_select_SST_OBUF_974,
      O => diff_select_SST
    );
  ADC_clk_OBUF : OBUF
    port map (
      I => ADC_clk_OBUF_29,
      O => ADC_clk
    );
  done_stop_OBUF : OBUF
    port map (
      I => XLXI_97_conv_flag_909,
      O => done_stop
    );
  trigg_cmp_flag_1_OBUF : OBUF
    port map (
      I => trigg_cmp_flag_1_OBUF_1024,
      O => trigg_cmp_flag(1)
    );
  trigg_cmp_flag_0_OBUF : OBUF
    port map (
      I => trigg_cmp_flag_0_OBUF_1023,
      O => trigg_cmp_flag(0)
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_q(19),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy_6_rt_436
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_q(19),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy_4_rt_456
    );
  XLXI_97_Mcount_i_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(30),
      O => XLXI_97_Mcount_i_cy_30_rt_842
    );
  XLXI_97_Mcount_i_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(29),
      O => XLXI_97_Mcount_i_cy_29_rt_838
    );
  XLXI_97_Mcount_i_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(28),
      O => XLXI_97_Mcount_i_cy_28_rt_836
    );
  XLXI_97_Mcount_i_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(27),
      O => XLXI_97_Mcount_i_cy_27_rt_834
    );
  XLXI_97_Mcount_i_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(26),
      O => XLXI_97_Mcount_i_cy_26_rt_832
    );
  XLXI_97_Mcount_i_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(25),
      O => XLXI_97_Mcount_i_cy_25_rt_830
    );
  XLXI_97_Mcount_i_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(24),
      O => XLXI_97_Mcount_i_cy_24_rt_828
    );
  XLXI_97_Mcount_i_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(23),
      O => XLXI_97_Mcount_i_cy_23_rt_826
    );
  XLXI_97_Mcount_i_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(22),
      O => XLXI_97_Mcount_i_cy_22_rt_824
    );
  XLXI_97_Mcount_i_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(21),
      O => XLXI_97_Mcount_i_cy_21_rt_822
    );
  XLXI_97_Mcount_i_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(20),
      O => XLXI_97_Mcount_i_cy_20_rt_820
    );
  XLXI_97_Mcount_i_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(19),
      O => XLXI_97_Mcount_i_cy_19_rt_816
    );
  XLXI_97_Mcount_i_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(18),
      O => XLXI_97_Mcount_i_cy_18_rt_814
    );
  XLXI_97_Mcount_i_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(17),
      O => XLXI_97_Mcount_i_cy_17_rt_812
    );
  XLXI_97_Mcount_i_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(16),
      O => XLXI_97_Mcount_i_cy_16_rt_810
    );
  XLXI_97_Mcount_i_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(15),
      O => XLXI_97_Mcount_i_cy_15_rt_808
    );
  XLXI_97_Mcount_i_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(14),
      O => XLXI_97_Mcount_i_cy_14_rt_806
    );
  XLXI_97_Mcount_i_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(13),
      O => XLXI_97_Mcount_i_cy_13_rt_804
    );
  XLXI_97_Mcount_i_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(12),
      O => XLXI_97_Mcount_i_cy_12_rt_802
    );
  XLXI_97_Mcount_i_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(11),
      O => XLXI_97_Mcount_i_cy_11_rt_800
    );
  XLXI_97_Mcount_i_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(10),
      O => XLXI_97_Mcount_i_cy_10_rt_798
    );
  XLXI_97_Mcount_i_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(9),
      O => XLXI_97_Mcount_i_cy_9_rt_856
    );
  XLXI_97_Mcount_i_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(8),
      O => XLXI_97_Mcount_i_cy_8_rt_854
    );
  XLXI_97_Mcount_i_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(7),
      O => XLXI_97_Mcount_i_cy_7_rt_852
    );
  XLXI_97_Mcount_i_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(6),
      O => XLXI_97_Mcount_i_cy_6_rt_850
    );
  XLXI_97_Mcount_i_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(5),
      O => XLXI_97_Mcount_i_cy_5_rt_848
    );
  XLXI_97_Mcount_i_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(4),
      O => XLXI_97_Mcount_i_cy_4_rt_846
    );
  XLXI_97_Mcount_i_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(3),
      O => XLXI_97_Mcount_i_cy_3_rt_844
    );
  XLXI_97_Mcount_i_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(2),
      O => XLXI_97_Mcount_i_cy_2_rt_840
    );
  XLXI_97_Mcount_i_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(1),
      O => XLXI_97_Mcount_i_cy_1_rt_818
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_local(26),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_rt_537
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_local(18),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_6_rt_545
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_local(15),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_4_rt_542
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_local(10),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_0_rt_535
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(30),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_30_rt_517
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(29),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_29_rt_513
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(28),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_28_rt_511
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(27),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_27_rt_509
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(26),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_26_rt_507
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(25),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_25_rt_505
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(24),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_24_rt_503
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(23),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_23_rt_501
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(22),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_22_rt_499
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(21),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_21_rt_497
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(20),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_20_rt_495
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(19),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_19_rt_491
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(18),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_18_rt_489
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(17),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_17_rt_487
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(16),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_16_rt_485
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(15),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_15_rt_483
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(14),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_14_rt_481
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(13),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_13_rt_479
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(12),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_12_rt_477
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(11),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_11_rt_475
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(10),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_10_rt_473
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(9),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_9_rt_531
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(8),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_8_rt_529
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(7),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_7_rt_527
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(6),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_6_rt_525
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(5),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_5_rt_523
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(4),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_4_rt_521
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(3),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_3_rt_519
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(2),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_2_rt_515
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(1),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_cy_1_rt_493
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(1),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_1_rt_60
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(2),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_2_rt_62
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(3),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_3_rt_64
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(4),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_4_rt_66
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(5),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_5_rt_68
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(6),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_6_rt_70
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(7),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_7_rt_72
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(8),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_8_rt_74
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(9),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_9_rt_76
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(10),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_cy_10_rt_58
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(1),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_1_rt_133
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(2),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_2_rt_135
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(3),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_3_rt_137
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(4),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_4_rt_139
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(5),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_5_rt_141
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(6),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_6_rt_143
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(7),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_7_rt_145
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(8),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_8_rt_147
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(9),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_9_rt_149
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(10),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_cy_10_rt_131
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(1),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_1_rt_207
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(2),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_2_rt_209
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(3),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_3_rt_211
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(4),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_4_rt_213
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(5),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_5_rt_215
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(6),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_6_rt_217
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(7),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_7_rt_219
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(8),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_8_rt_221
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(9),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_9_rt_223
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(10),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_cy_10_rt_205
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(1),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_1_rt_282
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(2),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_2_rt_284
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(3),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_3_rt_286
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(4),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_4_rt_288
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(5),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_5_rt_290
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(6),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_6_rt_292
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(7),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_7_rt_294
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(8),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_8_rt_296
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(9),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_9_rt_298
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(10),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_cy_10_rt_280
    );
  XLXI_97_Mcount_i_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_97_i(31),
      O => XLXI_97_Mcount_i_xor_31_rt_858
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_96_counter_count_trigg(31),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_xor_31_rt_533
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_1_addr(11),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_xor_11_rt_78
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_10_addr(11),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_xor_11_rt_151
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_13_addr(11),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_xor_11_rt_225
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_21_XLXI_22_addr(11),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_xor_11_rt_300
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_14 : LUT4
    generic map(
      INIT => X"E880"
    )
    port map (
      I0 => XLXI_38_XLXI_2_XLXN_18,
      I1 => XLXI_38_XLXI_2_XLXN_19,
      I2 => XLXI_38_XLXI_2_XLXN_20,
      I3 => XLXI_38_XLXI_2_XLXN_21,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_67
    );
  XLXI_32 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => re_IBUF_994,
      I1 => XLXI_21_XLXI_25_done_f_373,
      O => tri_ctrl
    );
  XLXI_44 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => XLXI_21_XLXI_25_full_f_375,
      I1 => XLXI_18_XLXI_19_50,
      I2 => XLXI_5_enable2_425,
      I3 => XLXN_441,
      O => XLXN_427
    );
  XLXI_59 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXN_488,
      I1 => in_heartbeat_IBUFG_985,
      O => out_heartbeat_OBUF_992
    );
  XLXI_21_XLXI_22_done_f_not00011 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_13_done_f_268,
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_done_f_not0001
    );
  XLXI_21_XLXI_13_done_f_not00011 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_10_done_f_194,
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_done_f_not0001
    );
  XLXI_21_XLXI_10_done_f_not00011 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_1_done_f_121,
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_done_f_not0001
    );
  XLXI_21_XLXI_1_done_f_not00011 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => re_IBUF_994,
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_done_f_not0001
    );
  XLXI_96_counter_flag_and0000 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => trigg_rst_IBUF_1028,
      I1 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I2 => trigg_enable_IBUF_1026,
      I3 => N16,
      O => XLXI_96_counter_flag_and0000_761
    );
  XLXI_96_counter_count_trigg_not0001 : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => trigg_enable_IBUF_1026,
      I1 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I2 => XLXI_96_counter_flag_760,
      I3 => N18,
      O => XLXI_96_counter_count_trigg_not0001_759
    );
  XLXI_21_XLXI_22_full_f_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => XLXI_21_XLXI_13_done_f_268,
      I1 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_22_wait_f_347,
      O => XLXI_21_XLXI_22_full_f_not0001
    );
  XLXI_21_XLXI_13_full_f_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => XLXI_21_XLXI_10_done_f_194,
      I1 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_13_wait_f_272,
      O => XLXI_21_XLXI_13_full_f_not0001
    );
  XLXI_21_XLXI_10_full_f_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => XLXI_21_XLXI_1_done_f_121,
      I1 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_10_wait_f_198,
      O => XLXI_21_XLXI_10_full_f_not0001
    );
  XLXI_21_XLXI_1_full_f_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => re_IBUF_994,
      I1 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_1_wait_f_125,
      O => XLXI_21_XLXI_1_full_f_not0001
    );
  XLXI_96_counter_q_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => trigg_enable_IBUF_1026,
      O => XLXI_96_counter_q_not0001
    );
  XLXI_96_counter_count_trigg_mux0000_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(5),
      O => XLXI_96_counter_count_trigg_mux0000(5)
    );
  XLXI_96_counter_count_trigg_mux0000_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(4),
      O => XLXI_96_counter_count_trigg_mux0000(4)
    );
  XLXI_96_counter_count_trigg_mux0000_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(3),
      O => XLXI_96_counter_count_trigg_mux0000(3)
    );
  XLXI_96_counter_count_trigg_mux0000_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(2),
      O => XLXI_96_counter_count_trigg_mux0000(2)
    );
  XLXI_96_counter_count_trigg_mux0000_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(1),
      O => XLXI_96_counter_count_trigg_mux0000(1)
    );
  XLXI_96_counter_count_trigg_mux0000_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(0),
      O => XLXI_96_counter_count_trigg_mux0000(0)
    );
  XLXI_21_XLXI_22_wait_f_not00011 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      I1 => XLXI_21_XLXI_22_wait_f_347,
      I2 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_22_wait_f_not0001
    );
  XLXI_21_XLXI_13_wait_f_not00011 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      I1 => XLXI_21_XLXI_13_wait_f_272,
      I2 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_13_wait_f_not0001
    );
  XLXI_21_XLXI_10_wait_f_not00011 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      I1 => XLXI_21_XLXI_10_wait_f_198,
      I2 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_10_wait_f_not0001
    );
  XLXI_21_XLXI_1_wait_f_not00011 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      I1 => XLXI_21_XLXI_1_wait_f_125,
      I2 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_1_wait_f_not0001
    );
  XLXI_96_counter_count_trigg_mux0000_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(6),
      O => XLXI_96_counter_count_trigg_mux0000(6)
    );
  XLXI_96_counter_count_trigg_mux0000_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(7),
      O => XLXI_96_counter_count_trigg_mux0000(7)
    );
  XLXI_96_counter_count_trigg_mux0000_8_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(8),
      O => XLXI_96_counter_count_trigg_mux0000(8)
    );
  XLXI_96_counter_count_trigg_mux0000_9_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(9),
      O => XLXI_96_counter_count_trigg_mux0000(9)
    );
  XLXI_96_counter_count_trigg_mux0000_10_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(10),
      O => XLXI_96_counter_count_trigg_mux0000(10)
    );
  XLXI_96_counter_count_trigg_mux0000_11_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(11),
      O => XLXI_96_counter_count_trigg_mux0000(11)
    );
  XLXI_96_counter_count_trigg_mux0000_12_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(12),
      O => XLXI_96_counter_count_trigg_mux0000(12)
    );
  XLXI_96_counter_count_trigg_mux0000_13_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(13),
      O => XLXI_96_counter_count_trigg_mux0000(13)
    );
  XLXI_96_counter_count_trigg_mux0000_14_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(14),
      O => XLXI_96_counter_count_trigg_mux0000(14)
    );
  XLXI_96_counter_count_trigg_mux0000_15_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(15),
      O => XLXI_96_counter_count_trigg_mux0000(15)
    );
  XLXI_96_counter_count_trigg_mux0000_16_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(16),
      O => XLXI_96_counter_count_trigg_mux0000(16)
    );
  XLXI_96_counter_count_trigg_mux0000_29_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(29),
      O => XLXI_96_counter_count_trigg_mux0000(29)
    );
  XLXI_96_counter_count_trigg_mux0000_28_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(28),
      O => XLXI_96_counter_count_trigg_mux0000(28)
    );
  XLXI_96_counter_count_trigg_mux0000_27_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(27),
      O => XLXI_96_counter_count_trigg_mux0000(27)
    );
  XLXI_96_counter_count_trigg_mux0000_26_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(26),
      O => XLXI_96_counter_count_trigg_mux0000(26)
    );
  XLXI_96_counter_count_trigg_mux0000_25_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(25),
      O => XLXI_96_counter_count_trigg_mux0000(25)
    );
  XLXI_96_counter_count_trigg_mux0000_24_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(24),
      O => XLXI_96_counter_count_trigg_mux0000(24)
    );
  XLXI_96_counter_count_trigg_mux0000_23_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(23),
      O => XLXI_96_counter_count_trigg_mux0000(23)
    );
  XLXI_96_counter_count_trigg_mux0000_22_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(22),
      O => XLXI_96_counter_count_trigg_mux0000(22)
    );
  XLXI_96_counter_count_trigg_mux0000_21_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(21),
      O => XLXI_96_counter_count_trigg_mux0000(21)
    );
  XLXI_96_counter_count_trigg_mux0000_20_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(20),
      O => XLXI_96_counter_count_trigg_mux0000(20)
    );
  XLXI_96_counter_count_trigg_mux0000_19_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(19),
      O => XLXI_96_counter_count_trigg_mux0000(19)
    );
  XLXI_96_counter_count_trigg_mux0000_18_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(18),
      O => XLXI_96_counter_count_trigg_mux0000(18)
    );
  XLXI_96_counter_count_trigg_mux0000_17_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      I1 => XLXI_96_counter_count_trigg_addsub0000(17),
      O => XLXI_96_counter_count_trigg_mux0000(17)
    );
  XLXI_96_comp_flag_1_1 : LUT4
    generic map(
      INIT => X"F8FF"
    )
    port map (
      I0 => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(11),
      I1 => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(9),
      I2 => trigg_rst_IBUF_1028,
      I3 => trigg_enable_IBUF_1026,
      O => trigg_cmp_flag_1_OBUF_1024
    );
  XLXI_96_comp_flag_0_1 : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => trigg_enable_IBUF_1026,
      I1 => XLXI_96_comp_Mcompar_flag_cmp_lt0000_cy(9),
      I2 => XLXI_96_comp_Mcompar_flag_cmp_gt0000_cy(11),
      I3 => trigg_rst_IBUF_1028,
      O => trigg_cmp_flag_0_OBUF_1023
    );
  XLXI_21_XLXI_22_addr_mux0002_11_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(0),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(11)
    );
  XLXI_21_XLXI_13_addr_mux0002_11_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(0),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(11)
    );
  XLXI_21_XLXI_10_addr_mux0002_11_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(0),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(11)
    );
  XLXI_21_XLXI_1_addr_mux0002_11_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(0),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(11)
    );
  XLXI_21_XLXI_22_addr_mux0002_10_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(1),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(10)
    );
  XLXI_21_XLXI_13_addr_mux0002_10_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(1),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(10)
    );
  XLXI_21_XLXI_10_addr_mux0002_10_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(1),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(10)
    );
  XLXI_21_XLXI_1_addr_mux0002_10_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(1),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(10)
    );
  XLXI_21_XLXI_22_addr_mux0002_9_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(2),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(9)
    );
  XLXI_21_XLXI_13_addr_mux0002_9_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(2),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(9)
    );
  XLXI_21_XLXI_10_addr_mux0002_9_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(2),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(9)
    );
  XLXI_21_XLXI_1_addr_mux0002_9_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(2),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(9)
    );
  XLXI_21_XLXI_22_addr_mux0002_8_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(3),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(8)
    );
  XLXI_21_XLXI_13_addr_mux0002_8_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(3),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(8)
    );
  XLXI_21_XLXI_10_addr_mux0002_8_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(3),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(8)
    );
  XLXI_21_XLXI_1_addr_mux0002_8_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(3),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(8)
    );
  XLXI_21_XLXI_22_addr_mux0002_7_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(4),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(7)
    );
  XLXI_21_XLXI_13_addr_mux0002_7_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(4),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(7)
    );
  XLXI_21_XLXI_10_addr_mux0002_7_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(4),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(7)
    );
  XLXI_21_XLXI_1_addr_mux0002_7_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(4),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(7)
    );
  XLXI_21_XLXI_22_addr_mux0002_6_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(5),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(6)
    );
  XLXI_21_XLXI_13_addr_mux0002_6_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(5),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(6)
    );
  XLXI_21_XLXI_10_addr_mux0002_6_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(5),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(6)
    );
  XLXI_21_XLXI_1_addr_mux0002_6_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(5),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(6)
    );
  XLXI_21_XLXI_22_addr_mux0002_5_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(6),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(5)
    );
  XLXI_21_XLXI_13_addr_mux0002_5_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(6),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(5)
    );
  XLXI_21_XLXI_10_addr_mux0002_5_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(6),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(5)
    );
  XLXI_21_XLXI_1_addr_mux0002_5_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(6),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(5)
    );
  XLXI_21_XLXI_22_addr_mux0002_4_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(7),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(4)
    );
  XLXI_21_XLXI_13_addr_mux0002_4_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(7),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(4)
    );
  XLXI_21_XLXI_10_addr_mux0002_4_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(7),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(4)
    );
  XLXI_21_XLXI_1_addr_mux0002_4_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(7),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(4)
    );
  XLXI_21_XLXI_22_addr_mux0002_3_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(8),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(3)
    );
  XLXI_21_XLXI_13_addr_mux0002_3_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(8),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(3)
    );
  XLXI_21_XLXI_10_addr_mux0002_3_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(8),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(3)
    );
  XLXI_21_XLXI_1_addr_mux0002_3_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(8),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(3)
    );
  XLXI_21_XLXI_22_addr_mux0002_0_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(11),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(0)
    );
  XLXI_21_XLXI_13_addr_mux0002_0_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(11),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(0)
    );
  XLXI_21_XLXI_10_addr_mux0002_0_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(11),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(0)
    );
  XLXI_21_XLXI_1_addr_mux0002_0_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(11),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(0)
    );
  XLXI_21_XLXI_22_addr_mux0002_1_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(10),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(1)
    );
  XLXI_21_XLXI_13_addr_mux0002_1_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(10),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(1)
    );
  XLXI_21_XLXI_10_addr_mux0002_1_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(10),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(1)
    );
  XLXI_21_XLXI_1_addr_mux0002_1_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(10),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(1)
    );
  XLXI_21_XLXI_22_addr_mux0002_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_22_wait_f_347,
      I1 => XLXI_21_XLXI_22_addr_addsub0000(9),
      I2 => XLXI_21_XLXI_22_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_22_addr_mux0002(2)
    );
  XLXI_21_XLXI_13_addr_mux0002_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_13_wait_f_272,
      I1 => XLXI_21_XLXI_13_addr_addsub0000(9),
      I2 => XLXI_21_XLXI_13_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_13_addr_mux0002(2)
    );
  XLXI_21_XLXI_10_addr_mux0002_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_10_wait_f_198,
      I1 => XLXI_21_XLXI_10_addr_addsub0000(9),
      I2 => XLXI_21_XLXI_10_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_10_addr_mux0002(2)
    );
  XLXI_21_XLXI_1_addr_mux0002_2_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => XLXI_21_XLXI_1_wait_f_125,
      I1 => XLXI_21_XLXI_1_addr_addsub0000(9),
      I2 => XLXI_21_XLXI_1_Mcompar_full_f_cmp_lt0000_cy(2),
      O => XLXI_21_XLXI_1_addr_mux0002(2)
    );
  XLXI_42_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => XLXI_5_enable2_425,
      I1 => XLXI_18_XLXI_19_50,
      I2 => XLXI_18_XLXI_8_51,
      O => N36
    );
  XLXI_42 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => XLXN_441,
      I1 => XLXI_21_XLXI_22_full_f_345,
      I2 => XLXI_5_enable1_423,
      I3 => N36,
      O => XLXN_424
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_6 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => diff_select_M_IBUF_972,
      I1 => trig_3L_IBUF_1020,
      I2 => XLXI_38_XLXI_2_XLXN_19,
      I3 => N28,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_12
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_5 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => diff_select_M_IBUF_972,
      I1 => trig_3L_IBUF_1020,
      I2 => XLXI_38_XLXI_2_XLXN_20,
      I3 => N28,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_11
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_4 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => diff_select_M_IBUF_972,
      I1 => trig_2L_IBUF_1016,
      I2 => XLXI_38_XLXI_2_XLXN_20,
      I3 => N30,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_10
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_3 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => diff_select_M_IBUF_972,
      I1 => trig_3L_IBUF_1020,
      I2 => XLXI_38_XLXI_2_XLXN_21,
      I3 => N28,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_9
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_2 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => diff_select_M_IBUF_972,
      I1 => trig_2L_IBUF_1016,
      I2 => XLXI_38_XLXI_2_XLXN_21,
      I3 => N30,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_8
    );
  XLXI_38_XLXI_2_XLXI_3_XLXI_96_SW1 : LUT4
    generic map(
      INIT => X"54D4"
    )
    port map (
      I0 => and_or_sel_M_IBUF_951,
      I1 => trig_3L_IBUF_1020,
      I2 => trig_3H_IBUF_1018,
      I3 => diff_select_M_IBUF_972,
      O => N28
    );
  XLXI_38_XLXI_2_XLXI_3_XLXI_95_SW1 : LUT4
    generic map(
      INIT => X"54D4"
    )
    port map (
      I0 => and_or_sel_M_IBUF_951,
      I1 => trig_2L_IBUF_1016,
      I2 => trig_2H_IBUF_1014,
      I3 => diff_select_M_IBUF_972,
      O => N30
    );
  XLXI_38_XLXI_2_XLXI_3_XLXI_93 : LUT4
    generic map(
      INIT => X"A8AE"
    )
    port map (
      I0 => trig_0L_IBUF_1008,
      I1 => trig_0H_IBUF_1006,
      I2 => diff_select_M_IBUF_972,
      I3 => and_or_sel_M_IBUF_951,
      O => XLXI_38_XLXI_2_XLXN_21
    );
  XLXI_38_XLXI_2_XLXI_3_XLXI_96 : LUT4
    generic map(
      INIT => X"A8AE"
    )
    port map (
      I0 => trig_3L_IBUF_1020,
      I1 => trig_3H_IBUF_1018,
      I2 => diff_select_M_IBUF_972,
      I3 => and_or_sel_M_IBUF_951,
      O => XLXI_38_XLXI_2_XLXN_18
    );
  XLXI_38_XLXI_2_XLXI_3_XLXI_95 : LUT4
    generic map(
      INIT => X"A8AE"
    )
    port map (
      I0 => trig_2L_IBUF_1016,
      I1 => trig_2H_IBUF_1014,
      I2 => diff_select_M_IBUF_972,
      I3 => and_or_sel_M_IBUF_951,
      O => XLXI_38_XLXI_2_XLXN_19
    );
  XLXI_38_XLXI_2_XLXI_3_XLXI_94 : LUT4
    generic map(
      INIT => X"A8AE"
    )
    port map (
      I0 => trig_1L_IBUF_1012,
      I1 => trig_1H_IBUF_1010,
      I2 => diff_select_M_IBUF_972,
      I3 => and_or_sel_M_IBUF_951,
      O => XLXI_38_XLXI_2_XLXN_20
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_1 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_9_Q_554,
      I1 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_rt_537,
      I2 => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_8_Q_547,
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q
    );
  XLXI_97_Mcount_i_lut_0_INV_0 : INV
    port map (
      I => XLXI_97_i(0),
      O => XLXI_97_Mcount_i_lut(0)
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_inv_INV_0 : INV
    port map (
      I => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_cy_10_Q,
      O => XLXI_96_counter_count_local_not0001_inv
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_3_INV_0 : INV
    port map (
      I => XLXI_96_counter_count_local(14),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_3_Q
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_1_INV_0 : INV
    port map (
      I => XLXI_96_counter_count_local(11),
      O => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_1_Q
    );
  XLXI_96_counter_Madd_count_trigg_addsub0000_lut_0_INV_0 : INV
    port map (
      I => XLXI_96_counter_count_trigg(0),
      O => XLXI_96_counter_Madd_count_trigg_addsub0000_lut(0)
    );
  XLXI_21_XLXI_1_Madd_addr_addsub0000_lut_0_INV_0 : INV
    port map (
      I => XLXI_21_XLXI_1_addr(0),
      O => XLXI_21_XLXI_1_Madd_addr_addsub0000_lut(0)
    );
  XLXI_21_XLXI_10_Madd_addr_addsub0000_lut_0_INV_0 : INV
    port map (
      I => XLXI_21_XLXI_10_addr(0),
      O => XLXI_21_XLXI_10_Madd_addr_addsub0000_lut(0)
    );
  XLXI_21_XLXI_13_Madd_addr_addsub0000_lut_0_INV_0 : INV
    port map (
      I => XLXI_21_XLXI_13_addr(0),
      O => XLXI_21_XLXI_13_Madd_addr_addsub0000_lut(0)
    );
  XLXI_21_XLXI_22_Madd_addr_addsub0000_lut_0_INV_0 : INV
    port map (
      I => XLXI_21_XLXI_22_addr(0),
      O => XLXI_21_XLXI_22_Madd_addr_addsub0000_lut(0)
    );
  XLXI_3_temporal_not00011_INV_0 : INV
    port map (
      I => XLXI_3_temporal_386,
      O => XLXI_3_temporal_not0001
    );
  XLXI_3_Mcount_counter_xor_0_11_INV_0 : INV
    port map (
      I => XLXI_3_counter(0),
      O => Result(0)
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_and0000_norst1_INV_0 : INV
    port map (
      I => mbed_sel1_IBUF_989,
      O => XLXI_38_XLXI_2_XLXI_2_XLXI_21_cout0_and0000_norst
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_21_sel0_inv1_INV_0 : INV
    port map (
      I => mbed_sel0_IBUF_987,
      O => XLXI_38_XLXI_2_XLXI_2_XLXI_21_sel0_inv
    );
  XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_11_1_INV_0 : INV
    port map (
      I => XLXI_96_counter_q(31),
      O => XLXI_96_comp_Mcompar_flag_cmp_gt0000_lut_11_Q
    );
  XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_9_1_INV_0 : INV
    port map (
      I => XLXI_96_counter_q(31),
      O => XLXI_96_comp_Mcompar_flag_cmp_lt0000_lut_9_Q
    );
  XLXI_21_XLXI_26_Mram_RAM : RAMB16BWE
    generic map(
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "READ_FIRST",
      DATA_WIDTH_A => 1,
      DATA_WIDTH_B => 0,
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      SRVAL_A => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_B => "WRITE_FIRST",
      SRVAL_B => X"000000000"
    )
    port map (
      CLKA => clk_test_stop,
      CLKB => NLW_XLXI_21_XLXI_26_Mram_RAM_CLKB_UNCONNECTED,
      ENA => XLXI_38_XLXN_184,
      ENB => NLW_XLXI_21_XLXI_26_Mram_RAM_ENB_UNCONNECTED,
      SSRA => XLXI_21_XLXI_25_wait_f_377,
      SSRB => NLW_XLXI_21_XLXI_26_Mram_RAM_SSRB_UNCONNECTED,
      ADDRA(13) => XLXI_38_XLXN_185,
      ADDRA(12) => XLXI_38_XLXN_185,
      ADDRA(11) => XLXI_38_XLXN_185,
      ADDRA(10) => XLXI_38_XLXN_185,
      ADDRA(9) => XLXI_38_XLXN_185,
      ADDRA(8) => XLXI_38_XLXN_185,
      ADDRA(7) => XLXI_21_XLXI_25_addr(7),
      ADDRA(6) => XLXI_21_XLXI_25_addr(6),
      ADDRA(5) => XLXI_21_XLXI_25_addr(5),
      ADDRA(4) => XLXI_21_XLXI_25_addr(4),
      ADDRA(3) => XLXI_21_XLXI_25_addr(3),
      ADDRA(2) => XLXI_21_XLXI_25_addr(2),
      ADDRA(1) => XLXI_21_XLXI_25_addr(1),
      ADDRA(0) => XLXI_21_XLXI_25_addr(0),
      ADDRB(13) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_13_UNCONNECTED,
      ADDRB(12) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_12_UNCONNECTED,
      ADDRB(11) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_11_UNCONNECTED,
      ADDRB(10) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_10_UNCONNECTED,
      ADDRB(9) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_9_UNCONNECTED,
      ADDRB(8) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_8_UNCONNECTED,
      ADDRB(7) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_7_UNCONNECTED,
      ADDRB(6) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_6_UNCONNECTED,
      ADDRB(5) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_5_UNCONNECTED,
      ADDRB(4) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_4_UNCONNECTED,
      ADDRB(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_3_UNCONNECTED,
      ADDRB(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_2_UNCONNECTED,
      ADDRB(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_1_UNCONNECTED,
      ADDRB(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_ADDRB_0_UNCONNECTED,
      DIA(31) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_31_UNCONNECTED,
      DIA(30) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_30_UNCONNECTED,
      DIA(29) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_29_UNCONNECTED,
      DIA(28) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_28_UNCONNECTED,
      DIA(27) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_27_UNCONNECTED,
      DIA(26) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_26_UNCONNECTED,
      DIA(25) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_25_UNCONNECTED,
      DIA(24) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_24_UNCONNECTED,
      DIA(23) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_23_UNCONNECTED,
      DIA(22) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_22_UNCONNECTED,
      DIA(21) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_21_UNCONNECTED,
      DIA(20) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_20_UNCONNECTED,
      DIA(19) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_19_UNCONNECTED,
      DIA(18) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_18_UNCONNECTED,
      DIA(17) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_17_UNCONNECTED,
      DIA(16) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_16_UNCONNECTED,
      DIA(15) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_15_UNCONNECTED,
      DIA(14) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_14_UNCONNECTED,
      DIA(13) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_13_UNCONNECTED,
      DIA(12) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_12_UNCONNECTED,
      DIA(11) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_11_UNCONNECTED,
      DIA(10) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_10_UNCONNECTED,
      DIA(9) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_9_UNCONNECTED,
      DIA(8) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_8_UNCONNECTED,
      DIA(7) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_7_UNCONNECTED,
      DIA(6) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_6_UNCONNECTED,
      DIA(5) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_5_UNCONNECTED,
      DIA(4) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_4_UNCONNECTED,
      DIA(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_3_UNCONNECTED,
      DIA(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_2_UNCONNECTED,
      DIA(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIA_1_UNCONNECTED,
      DIA(0) => stop_data_in_IBUF_1003,
      DIB(31) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_31_UNCONNECTED,
      DIB(30) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_30_UNCONNECTED,
      DIB(29) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_29_UNCONNECTED,
      DIB(28) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_28_UNCONNECTED,
      DIB(27) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_27_UNCONNECTED,
      DIB(26) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_26_UNCONNECTED,
      DIB(25) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_25_UNCONNECTED,
      DIB(24) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_24_UNCONNECTED,
      DIB(23) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_23_UNCONNECTED,
      DIB(22) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_22_UNCONNECTED,
      DIB(21) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_21_UNCONNECTED,
      DIB(20) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_20_UNCONNECTED,
      DIB(19) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_19_UNCONNECTED,
      DIB(18) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_18_UNCONNECTED,
      DIB(17) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_17_UNCONNECTED,
      DIB(16) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_16_UNCONNECTED,
      DIB(15) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_15_UNCONNECTED,
      DIB(14) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_14_UNCONNECTED,
      DIB(13) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_13_UNCONNECTED,
      DIB(12) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_12_UNCONNECTED,
      DIB(11) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_11_UNCONNECTED,
      DIB(10) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_10_UNCONNECTED,
      DIB(9) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_9_UNCONNECTED,
      DIB(8) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_8_UNCONNECTED,
      DIB(7) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_7_UNCONNECTED,
      DIB(6) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_6_UNCONNECTED,
      DIB(5) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_5_UNCONNECTED,
      DIB(4) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_4_UNCONNECTED,
      DIB(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_3_UNCONNECTED,
      DIB(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_2_UNCONNECTED,
      DIB(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_1_UNCONNECTED,
      DIB(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIB_0_UNCONNECTED,
      DIPA(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_DIPB_0_UNCONNECTED,
      WEA(3) => XLXI_21_XLXI_26_we_0,
      WEA(2) => XLXI_21_XLXI_26_we_0,
      WEA(1) => XLXI_21_XLXI_26_we_0,
      WEA(0) => XLXI_21_XLXI_26_we_0,
      WEB(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_3_UNCONNECTED,
      WEB(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_2_UNCONNECTED,
      WEB(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_1_UNCONNECTED,
      WEB(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_WEB_0_UNCONNECTED,
      DOA(31) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_31_UNCONNECTED,
      DOA(30) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_30_UNCONNECTED,
      DOA(29) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_29_UNCONNECTED,
      DOA(28) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_28_UNCONNECTED,
      DOA(27) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_27_UNCONNECTED,
      DOA(26) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_26_UNCONNECTED,
      DOA(25) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_25_UNCONNECTED,
      DOA(24) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_24_UNCONNECTED,
      DOA(23) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_23_UNCONNECTED,
      DOA(22) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_22_UNCONNECTED,
      DOA(21) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_21_UNCONNECTED,
      DOA(20) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_20_UNCONNECTED,
      DOA(19) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_19_UNCONNECTED,
      DOA(18) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_18_UNCONNECTED,
      DOA(17) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_17_UNCONNECTED,
      DOA(16) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_16_UNCONNECTED,
      DOA(15) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_15_UNCONNECTED,
      DOA(14) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_14_UNCONNECTED,
      DOA(13) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_13_UNCONNECTED,
      DOA(12) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_12_UNCONNECTED,
      DOA(11) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_11_UNCONNECTED,
      DOA(10) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_10_UNCONNECTED,
      DOA(9) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_9_UNCONNECTED,
      DOA(8) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_8_UNCONNECTED,
      DOA(7) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_7_UNCONNECTED,
      DOA(6) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_6_UNCONNECTED,
      DOA(5) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_5_UNCONNECTED,
      DOA(4) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_4_UNCONNECTED,
      DOA(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_3_UNCONNECTED,
      DOA(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_2_UNCONNECTED,
      DOA(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOA_1_UNCONNECTED,
      DOA(0) => stop_data,
      DOB(31) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_31_UNCONNECTED,
      DOB(30) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_30_UNCONNECTED,
      DOB(29) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_29_UNCONNECTED,
      DOB(28) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_28_UNCONNECTED,
      DOB(27) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_27_UNCONNECTED,
      DOB(26) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_26_UNCONNECTED,
      DOB(25) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_25_UNCONNECTED,
      DOB(24) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_24_UNCONNECTED,
      DOB(23) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_23_UNCONNECTED,
      DOB(22) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_22_UNCONNECTED,
      DOB(21) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_21_UNCONNECTED,
      DOB(20) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_20_UNCONNECTED,
      DOB(19) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_19_UNCONNECTED,
      DOB(18) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_18_UNCONNECTED,
      DOB(17) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_17_UNCONNECTED,
      DOB(16) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_16_UNCONNECTED,
      DOB(15) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_15_UNCONNECTED,
      DOB(14) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_14_UNCONNECTED,
      DOB(13) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_13_UNCONNECTED,
      DOB(12) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_12_UNCONNECTED,
      DOB(11) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_11_UNCONNECTED,
      DOB(10) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_10_UNCONNECTED,
      DOB(9) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_9_UNCONNECTED,
      DOB(8) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_8_UNCONNECTED,
      DOB(7) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_7_UNCONNECTED,
      DOB(6) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_6_UNCONNECTED,
      DOB(5) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_5_UNCONNECTED,
      DOB(4) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_4_UNCONNECTED,
      DOB(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_3_UNCONNECTED,
      DOB(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_2_UNCONNECTED,
      DOB(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_1_UNCONNECTED,
      DOB(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOB_0_UNCONNECTED,
      DOPA(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_XLXI_21_XLXI_26_Mram_RAM_DOPB_0_UNCONNECTED
    );
  XLXI_21_XLXI_14_Mram_RAM1 : RAMB16BWE
    generic map(
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      DATA_WIDTH_A => 1,
      DATA_WIDTH_B => 1,
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      SRVAL_A => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL_B => X"000000000"
    )
    port map (
      CLKA => clk_test_mem,
      CLKB => clk_test_mem,
      ENA => XLXI_38_XLXN_184,
      ENB => XLXI_38_XLXN_184,
      SSRA => XLXI_21_XLXI_13_wait_f_272,
      SSRB => XLXI_21_XLXI_22_wait_f_347,
      ADDRA(13) => XLXI_38_XLXN_185,
      ADDRA(12) => XLXI_38_XLXN_185,
      ADDRA(11) => XLXI_21_XLXI_13_addr(11),
      ADDRA(10) => XLXI_21_XLXI_13_addr(10),
      ADDRA(9) => XLXI_21_XLXI_13_addr(9),
      ADDRA(8) => XLXI_21_XLXI_13_addr(8),
      ADDRA(7) => XLXI_21_XLXI_13_addr(7),
      ADDRA(6) => XLXI_21_XLXI_13_addr(6),
      ADDRA(5) => XLXI_21_XLXI_13_addr(5),
      ADDRA(4) => XLXI_21_XLXI_13_addr(4),
      ADDRA(3) => XLXI_21_XLXI_13_addr(3),
      ADDRA(2) => XLXI_21_XLXI_13_addr(2),
      ADDRA(1) => XLXI_21_XLXI_13_addr(1),
      ADDRA(0) => XLXI_21_XLXI_13_addr(0),
      ADDRB(13) => XLXI_38_XLXN_185,
      ADDRB(12) => XLXI_38_XLXN_184,
      ADDRB(11) => XLXI_21_XLXI_22_addr(11),
      ADDRB(10) => XLXI_21_XLXI_22_addr(10),
      ADDRB(9) => XLXI_21_XLXI_22_addr(9),
      ADDRB(8) => XLXI_21_XLXI_22_addr(8),
      ADDRB(7) => XLXI_21_XLXI_22_addr(7),
      ADDRB(6) => XLXI_21_XLXI_22_addr(6),
      ADDRB(5) => XLXI_21_XLXI_22_addr(5),
      ADDRB(4) => XLXI_21_XLXI_22_addr(4),
      ADDRB(3) => XLXI_21_XLXI_22_addr(3),
      ADDRB(2) => XLXI_21_XLXI_22_addr(2),
      ADDRB(1) => XLXI_21_XLXI_22_addr(1),
      ADDRB(0) => XLXI_21_XLXI_22_addr(0),
      DIA(31) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_31_UNCONNECTED,
      DIA(30) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_30_UNCONNECTED,
      DIA(29) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_29_UNCONNECTED,
      DIA(28) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_28_UNCONNECTED,
      DIA(27) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_27_UNCONNECTED,
      DIA(26) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_26_UNCONNECTED,
      DIA(25) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_25_UNCONNECTED,
      DIA(24) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_24_UNCONNECTED,
      DIA(23) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_23_UNCONNECTED,
      DIA(22) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_22_UNCONNECTED,
      DIA(21) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_21_UNCONNECTED,
      DIA(20) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_20_UNCONNECTED,
      DIA(19) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_19_UNCONNECTED,
      DIA(18) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_18_UNCONNECTED,
      DIA(17) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_17_UNCONNECTED,
      DIA(16) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_16_UNCONNECTED,
      DIA(15) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_15_UNCONNECTED,
      DIA(14) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_14_UNCONNECTED,
      DIA(13) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_13_UNCONNECTED,
      DIA(12) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_12_UNCONNECTED,
      DIA(11) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_11_UNCONNECTED,
      DIA(10) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_10_UNCONNECTED,
      DIA(9) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_9_UNCONNECTED,
      DIA(8) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_8_UNCONNECTED,
      DIA(7) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_7_UNCONNECTED,
      DIA(6) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_6_UNCONNECTED,
      DIA(5) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_5_UNCONNECTED,
      DIA(4) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_4_UNCONNECTED,
      DIA(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_3_UNCONNECTED,
      DIA(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_2_UNCONNECTED,
      DIA(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIA_1_UNCONNECTED,
      DIA(0) => di_ch2_IBUF_968,
      DIB(31) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_31_UNCONNECTED,
      DIB(30) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_30_UNCONNECTED,
      DIB(29) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_29_UNCONNECTED,
      DIB(28) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_28_UNCONNECTED,
      DIB(27) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_27_UNCONNECTED,
      DIB(26) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_26_UNCONNECTED,
      DIB(25) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_25_UNCONNECTED,
      DIB(24) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_24_UNCONNECTED,
      DIB(23) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_23_UNCONNECTED,
      DIB(22) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_22_UNCONNECTED,
      DIB(21) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_21_UNCONNECTED,
      DIB(20) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_20_UNCONNECTED,
      DIB(19) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_19_UNCONNECTED,
      DIB(18) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_18_UNCONNECTED,
      DIB(17) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_17_UNCONNECTED,
      DIB(16) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_16_UNCONNECTED,
      DIB(15) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_15_UNCONNECTED,
      DIB(14) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_14_UNCONNECTED,
      DIB(13) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_13_UNCONNECTED,
      DIB(12) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_12_UNCONNECTED,
      DIB(11) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_11_UNCONNECTED,
      DIB(10) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_10_UNCONNECTED,
      DIB(9) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_9_UNCONNECTED,
      DIB(8) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_8_UNCONNECTED,
      DIB(7) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_7_UNCONNECTED,
      DIB(6) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_6_UNCONNECTED,
      DIB(5) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_5_UNCONNECTED,
      DIB(4) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_4_UNCONNECTED,
      DIB(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_3_UNCONNECTED,
      DIB(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_2_UNCONNECTED,
      DIB(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIB_1_UNCONNECTED,
      DIB(0) => di_ch3_IBUF_970,
      DIPA(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DIPB_0_UNCONNECTED,
      WEA(3) => XLXI_21_XLXI_14_we_0,
      WEA(2) => XLXI_21_XLXI_14_we_0,
      WEA(1) => XLXI_21_XLXI_14_we_0,
      WEA(0) => XLXI_21_XLXI_14_we_0,
      WEB(3) => XLXI_21_XLXI_23_we_0,
      WEB(2) => XLXI_21_XLXI_23_we_0,
      WEB(1) => XLXI_21_XLXI_23_we_0,
      WEB(0) => XLXI_21_XLXI_23_we_0,
      DOA(31) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_31_UNCONNECTED,
      DOA(30) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_30_UNCONNECTED,
      DOA(29) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_29_UNCONNECTED,
      DOA(28) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_28_UNCONNECTED,
      DOA(27) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_27_UNCONNECTED,
      DOA(26) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_26_UNCONNECTED,
      DOA(25) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_25_UNCONNECTED,
      DOA(24) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_24_UNCONNECTED,
      DOA(23) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_23_UNCONNECTED,
      DOA(22) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_22_UNCONNECTED,
      DOA(21) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_21_UNCONNECTED,
      DOA(20) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_20_UNCONNECTED,
      DOA(19) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_19_UNCONNECTED,
      DOA(18) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_18_UNCONNECTED,
      DOA(17) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_17_UNCONNECTED,
      DOA(16) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_16_UNCONNECTED,
      DOA(15) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_15_UNCONNECTED,
      DOA(14) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_14_UNCONNECTED,
      DOA(13) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_13_UNCONNECTED,
      DOA(12) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_12_UNCONNECTED,
      DOA(11) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_11_UNCONNECTED,
      DOA(10) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_10_UNCONNECTED,
      DOA(9) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_9_UNCONNECTED,
      DOA(8) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_8_UNCONNECTED,
      DOA(7) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_7_UNCONNECTED,
      DOA(6) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_6_UNCONNECTED,
      DOA(5) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_5_UNCONNECTED,
      DOA(4) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_4_UNCONNECTED,
      DOA(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_3_UNCONNECTED,
      DOA(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_2_UNCONNECTED,
      DOA(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOA_1_UNCONNECTED,
      DOA(0) => data_2,
      DOB(31) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_31_UNCONNECTED,
      DOB(30) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_30_UNCONNECTED,
      DOB(29) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_29_UNCONNECTED,
      DOB(28) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_28_UNCONNECTED,
      DOB(27) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_27_UNCONNECTED,
      DOB(26) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_26_UNCONNECTED,
      DOB(25) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_25_UNCONNECTED,
      DOB(24) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_24_UNCONNECTED,
      DOB(23) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_23_UNCONNECTED,
      DOB(22) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_22_UNCONNECTED,
      DOB(21) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_21_UNCONNECTED,
      DOB(20) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_20_UNCONNECTED,
      DOB(19) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_19_UNCONNECTED,
      DOB(18) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_18_UNCONNECTED,
      DOB(17) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_17_UNCONNECTED,
      DOB(16) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_16_UNCONNECTED,
      DOB(15) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_15_UNCONNECTED,
      DOB(14) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_14_UNCONNECTED,
      DOB(13) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_13_UNCONNECTED,
      DOB(12) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_12_UNCONNECTED,
      DOB(11) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_11_UNCONNECTED,
      DOB(10) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_10_UNCONNECTED,
      DOB(9) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_9_UNCONNECTED,
      DOB(8) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_8_UNCONNECTED,
      DOB(7) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_7_UNCONNECTED,
      DOB(6) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_6_UNCONNECTED,
      DOB(5) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_5_UNCONNECTED,
      DOB(4) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_4_UNCONNECTED,
      DOB(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_3_UNCONNECTED,
      DOB(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_2_UNCONNECTED,
      DOB(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOB_1_UNCONNECTED,
      DOB(0) => data_3,
      DOPA(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_XLXI_21_XLXI_14_Mram_RAM1_DOPB_0_UNCONNECTED
    );
  XLXI_21_XLXI_2_Mram_RAM1 : RAMB16BWE
    generic map(
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      DATA_WIDTH_A => 1,
      DATA_WIDTH_B => 1,
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      SRVAL_A => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL_B => X"000000000"
    )
    port map (
      CLKA => clk_test_mem,
      CLKB => clk_test_mem,
      ENA => XLXI_38_XLXN_184,
      ENB => XLXI_38_XLXN_184,
      SSRA => XLXI_21_XLXI_1_wait_f_125,
      SSRB => XLXI_21_XLXI_10_wait_f_198,
      ADDRA(13) => XLXI_38_XLXN_185,
      ADDRA(12) => XLXI_38_XLXN_185,
      ADDRA(11) => XLXI_21_XLXI_1_addr(11),
      ADDRA(10) => XLXI_21_XLXI_1_addr(10),
      ADDRA(9) => XLXI_21_XLXI_1_addr(9),
      ADDRA(8) => XLXI_21_XLXI_1_addr(8),
      ADDRA(7) => XLXI_21_XLXI_1_addr(7),
      ADDRA(6) => XLXI_21_XLXI_1_addr(6),
      ADDRA(5) => XLXI_21_XLXI_1_addr(5),
      ADDRA(4) => XLXI_21_XLXI_1_addr(4),
      ADDRA(3) => XLXI_21_XLXI_1_addr(3),
      ADDRA(2) => XLXI_21_XLXI_1_addr(2),
      ADDRA(1) => XLXI_21_XLXI_1_addr(1),
      ADDRA(0) => XLXI_21_XLXI_1_addr(0),
      ADDRB(13) => XLXI_38_XLXN_185,
      ADDRB(12) => XLXI_38_XLXN_184,
      ADDRB(11) => XLXI_21_XLXI_10_addr(11),
      ADDRB(10) => XLXI_21_XLXI_10_addr(10),
      ADDRB(9) => XLXI_21_XLXI_10_addr(9),
      ADDRB(8) => XLXI_21_XLXI_10_addr(8),
      ADDRB(7) => XLXI_21_XLXI_10_addr(7),
      ADDRB(6) => XLXI_21_XLXI_10_addr(6),
      ADDRB(5) => XLXI_21_XLXI_10_addr(5),
      ADDRB(4) => XLXI_21_XLXI_10_addr(4),
      ADDRB(3) => XLXI_21_XLXI_10_addr(3),
      ADDRB(2) => XLXI_21_XLXI_10_addr(2),
      ADDRB(1) => XLXI_21_XLXI_10_addr(1),
      ADDRB(0) => XLXI_21_XLXI_10_addr(0),
      DIA(31) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_31_UNCONNECTED,
      DIA(30) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_30_UNCONNECTED,
      DIA(29) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_29_UNCONNECTED,
      DIA(28) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_28_UNCONNECTED,
      DIA(27) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_27_UNCONNECTED,
      DIA(26) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_26_UNCONNECTED,
      DIA(25) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_25_UNCONNECTED,
      DIA(24) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_24_UNCONNECTED,
      DIA(23) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_23_UNCONNECTED,
      DIA(22) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_22_UNCONNECTED,
      DIA(21) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_21_UNCONNECTED,
      DIA(20) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_20_UNCONNECTED,
      DIA(19) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_19_UNCONNECTED,
      DIA(18) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_18_UNCONNECTED,
      DIA(17) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_17_UNCONNECTED,
      DIA(16) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_16_UNCONNECTED,
      DIA(15) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_15_UNCONNECTED,
      DIA(14) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_14_UNCONNECTED,
      DIA(13) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_13_UNCONNECTED,
      DIA(12) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_12_UNCONNECTED,
      DIA(11) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_11_UNCONNECTED,
      DIA(10) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_10_UNCONNECTED,
      DIA(9) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_9_UNCONNECTED,
      DIA(8) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_8_UNCONNECTED,
      DIA(7) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_7_UNCONNECTED,
      DIA(6) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_6_UNCONNECTED,
      DIA(5) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_5_UNCONNECTED,
      DIA(4) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_4_UNCONNECTED,
      DIA(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_3_UNCONNECTED,
      DIA(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_2_UNCONNECTED,
      DIA(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIA_1_UNCONNECTED,
      DIA(0) => di_ch0_IBUF_964,
      DIB(31) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_31_UNCONNECTED,
      DIB(30) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_30_UNCONNECTED,
      DIB(29) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_29_UNCONNECTED,
      DIB(28) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_28_UNCONNECTED,
      DIB(27) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_27_UNCONNECTED,
      DIB(26) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_26_UNCONNECTED,
      DIB(25) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_25_UNCONNECTED,
      DIB(24) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_24_UNCONNECTED,
      DIB(23) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_23_UNCONNECTED,
      DIB(22) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_22_UNCONNECTED,
      DIB(21) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_21_UNCONNECTED,
      DIB(20) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_20_UNCONNECTED,
      DIB(19) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_19_UNCONNECTED,
      DIB(18) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_18_UNCONNECTED,
      DIB(17) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_17_UNCONNECTED,
      DIB(16) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_16_UNCONNECTED,
      DIB(15) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_15_UNCONNECTED,
      DIB(14) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_14_UNCONNECTED,
      DIB(13) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_13_UNCONNECTED,
      DIB(12) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_12_UNCONNECTED,
      DIB(11) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_11_UNCONNECTED,
      DIB(10) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_10_UNCONNECTED,
      DIB(9) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_9_UNCONNECTED,
      DIB(8) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_8_UNCONNECTED,
      DIB(7) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_7_UNCONNECTED,
      DIB(6) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_6_UNCONNECTED,
      DIB(5) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_5_UNCONNECTED,
      DIB(4) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_4_UNCONNECTED,
      DIB(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_3_UNCONNECTED,
      DIB(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_2_UNCONNECTED,
      DIB(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIB_1_UNCONNECTED,
      DIB(0) => di_ch1_IBUF_966,
      DIPA(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_3_UNCONNECTED,
      DIPA(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_2_UNCONNECTED,
      DIPA(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_1_UNCONNECTED,
      DIPA(0) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPA_0_UNCONNECTED,
      DIPB(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_3_UNCONNECTED,
      DIPB(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_2_UNCONNECTED,
      DIPB(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_1_UNCONNECTED,
      DIPB(0) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DIPB_0_UNCONNECTED,
      WEA(3) => XLXI_21_XLXI_2_we_0,
      WEA(2) => XLXI_21_XLXI_2_we_0,
      WEA(1) => XLXI_21_XLXI_2_we_0,
      WEA(0) => XLXI_21_XLXI_2_we_0,
      WEB(3) => XLXI_21_XLXI_11_we_0,
      WEB(2) => XLXI_21_XLXI_11_we_0,
      WEB(1) => XLXI_21_XLXI_11_we_0,
      WEB(0) => XLXI_21_XLXI_11_we_0,
      DOA(31) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_31_UNCONNECTED,
      DOA(30) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_30_UNCONNECTED,
      DOA(29) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_29_UNCONNECTED,
      DOA(28) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_28_UNCONNECTED,
      DOA(27) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_27_UNCONNECTED,
      DOA(26) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_26_UNCONNECTED,
      DOA(25) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_25_UNCONNECTED,
      DOA(24) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_24_UNCONNECTED,
      DOA(23) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_23_UNCONNECTED,
      DOA(22) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_22_UNCONNECTED,
      DOA(21) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_21_UNCONNECTED,
      DOA(20) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_20_UNCONNECTED,
      DOA(19) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_19_UNCONNECTED,
      DOA(18) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_18_UNCONNECTED,
      DOA(17) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_17_UNCONNECTED,
      DOA(16) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_16_UNCONNECTED,
      DOA(15) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_15_UNCONNECTED,
      DOA(14) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_14_UNCONNECTED,
      DOA(13) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_13_UNCONNECTED,
      DOA(12) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_12_UNCONNECTED,
      DOA(11) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_11_UNCONNECTED,
      DOA(10) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_10_UNCONNECTED,
      DOA(9) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_9_UNCONNECTED,
      DOA(8) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_8_UNCONNECTED,
      DOA(7) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_7_UNCONNECTED,
      DOA(6) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_6_UNCONNECTED,
      DOA(5) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_5_UNCONNECTED,
      DOA(4) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_4_UNCONNECTED,
      DOA(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_3_UNCONNECTED,
      DOA(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_2_UNCONNECTED,
      DOA(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOA_1_UNCONNECTED,
      DOA(0) => data_0,
      DOB(31) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_31_UNCONNECTED,
      DOB(30) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_30_UNCONNECTED,
      DOB(29) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_29_UNCONNECTED,
      DOB(28) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_28_UNCONNECTED,
      DOB(27) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_27_UNCONNECTED,
      DOB(26) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_26_UNCONNECTED,
      DOB(25) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_25_UNCONNECTED,
      DOB(24) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_24_UNCONNECTED,
      DOB(23) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_23_UNCONNECTED,
      DOB(22) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_22_UNCONNECTED,
      DOB(21) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_21_UNCONNECTED,
      DOB(20) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_20_UNCONNECTED,
      DOB(19) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_19_UNCONNECTED,
      DOB(18) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_18_UNCONNECTED,
      DOB(17) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_17_UNCONNECTED,
      DOB(16) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_16_UNCONNECTED,
      DOB(15) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_15_UNCONNECTED,
      DOB(14) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_14_UNCONNECTED,
      DOB(13) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_13_UNCONNECTED,
      DOB(12) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_12_UNCONNECTED,
      DOB(11) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_11_UNCONNECTED,
      DOB(10) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_10_UNCONNECTED,
      DOB(9) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_9_UNCONNECTED,
      DOB(8) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_8_UNCONNECTED,
      DOB(7) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_7_UNCONNECTED,
      DOB(6) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_6_UNCONNECTED,
      DOB(5) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_5_UNCONNECTED,
      DOB(4) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_4_UNCONNECTED,
      DOB(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_3_UNCONNECTED,
      DOB(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_2_UNCONNECTED,
      DOB(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOB_1_UNCONNECTED,
      DOB(0) => data_1,
      DOPA(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_3_UNCONNECTED,
      DOPA(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_2_UNCONNECTED,
      DOPA(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_1_UNCONNECTED,
      DOPA(0) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPA_0_UNCONNECTED,
      DOPB(3) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_3_UNCONNECTED,
      DOPB(2) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_2_UNCONNECTED,
      DOPB(1) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_1_UNCONNECTED,
      DOPB(0) => NLW_XLXI_21_XLXI_2_Mram_RAM1_DOPB_0_UNCONNECTED
    );
  XLXI_21_XLXI_25_wait_f_mux00021 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => XLXI_21_XLXI_22_done_f_343,
      I1 => XLXI_21_XLXI_25_full_f_375,
      I2 => XLXI_21_XLXI_25_done_f_373,
      I3 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_25_wait_f_mux00021_379
    );
  XLXI_21_XLXI_25_wait_f_mux0002_f5 : MUXF5
    port map (
      I0 => XLXI_38_XLXN_184,
      I1 => XLXI_21_XLXI_25_wait_f_mux00021_379,
      S => XLXI_21_XLXI_25_wait_f_377,
      O => XLXI_21_XLXI_25_wait_f_mux0002
    );
  XLXI_21_XLXI_22_wait_f_mux00021 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => XLXI_21_XLXI_13_done_f_268,
      I1 => XLXI_21_XLXI_22_full_f_345,
      I2 => XLXI_21_XLXI_22_done_f_343,
      I3 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_22_wait_f_mux00021_349
    );
  XLXI_21_XLXI_22_wait_f_mux0002_f5 : MUXF5
    port map (
      I0 => XLXI_38_XLXN_184,
      I1 => XLXI_21_XLXI_22_wait_f_mux00021_349,
      S => XLXI_21_XLXI_22_wait_f_347,
      O => XLXI_21_XLXI_22_wait_f_mux0002
    );
  XLXI_21_XLXI_13_wait_f_mux00021 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => XLXI_21_XLXI_10_done_f_194,
      I1 => XLXI_21_XLXI_13_full_f_270,
      I2 => XLXI_21_XLXI_13_done_f_268,
      I3 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_13_wait_f_mux00021_274
    );
  XLXI_21_XLXI_13_wait_f_mux0002_f5 : MUXF5
    port map (
      I0 => XLXI_38_XLXN_184,
      I1 => XLXI_21_XLXI_13_wait_f_mux00021_274,
      S => XLXI_21_XLXI_13_wait_f_272,
      O => XLXI_21_XLXI_13_wait_f_mux0002
    );
  XLXI_21_XLXI_10_wait_f_mux00021 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => XLXI_21_XLXI_1_done_f_121,
      I1 => XLXI_21_XLXI_10_full_f_196,
      I2 => XLXI_21_XLXI_10_done_f_194,
      I3 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_10_wait_f_mux00021_200
    );
  XLXI_21_XLXI_10_wait_f_mux0002_f5 : MUXF5
    port map (
      I0 => XLXI_38_XLXN_184,
      I1 => XLXI_21_XLXI_10_wait_f_mux00021_200,
      S => XLXI_21_XLXI_10_wait_f_198,
      O => XLXI_21_XLXI_10_wait_f_mux0002
    );
  XLXI_21_XLXI_1_wait_f_mux00021 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => re_IBUF_994,
      I1 => XLXI_21_XLXI_1_full_f_123,
      I2 => XLXI_21_XLXI_1_done_f_121,
      I3 => stop_SST_OBUF_1000,
      O => XLXI_21_XLXI_1_wait_f_mux00021_127
    );
  XLXI_21_XLXI_1_wait_f_mux0002_f5 : MUXF5
    port map (
      I0 => XLXI_38_XLXN_184,
      I1 => XLXI_21_XLXI_1_wait_f_mux00021_127,
      S => XLXI_21_XLXI_1_wait_f_125,
      O => XLXI_21_XLXI_1_wait_f_mux0002
    );
  XLXI_21_XLXI_25_addr_mux0002_4_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => XLXI_21_XLXI_25_addr(3),
      I1 => XLXI_21_XLXI_25_addr(2),
      I2 => XLXI_21_XLXI_25_addr(1),
      I3 => XLXI_21_XLXI_25_addr(0),
      O => XLXI_21_XLXI_25_addr_mux0002_4_1_369
    );
  XLXI_21_XLXI_25_addr_mux0002_4_f5 : MUXF5
    port map (
      I0 => XLXI_21_XLXI_25_addr_mux0002_4_1_369,
      I1 => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_25_wait_f_377,
      O => XLXI_21_XLXI_25_addr_mux0002(4)
    );
  XLXI_21_XLXI_25_addr_mux0002_1_1 : LUT4
    generic map(
      INIT => X"AA6A"
    )
    port map (
      I0 => XLXI_21_XLXI_25_addr(6),
      I1 => XLXI_21_XLXI_25_addr(4),
      I2 => XLXI_21_XLXI_25_addr(5),
      I3 => XLXI_21_XLXI_25_N3,
      O => XLXI_21_XLXI_25_addr_mux0002_1_1_365
    );
  XLXI_21_XLXI_25_addr_mux0002_1_f5 : MUXF5
    port map (
      I0 => XLXI_21_XLXI_25_addr_mux0002_1_1_365,
      I1 => XLXI_38_XLXN_185,
      S => XLXI_21_XLXI_25_wait_f_377,
      O => XLXI_21_XLXI_25_addr_mux0002(1)
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_15 : LUT4
    generic map(
      INIT => X"A8AE"
    )
    port map (
      I0 => trig_1L_IBUF_1012,
      I1 => trig_1H_IBUF_1010,
      I2 => diff_select_M_IBUF_972,
      I3 => and_or_sel_M_IBUF_951,
      O => XLXI_38_XLXI_2_XLXI_2_XLXI_1
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_1_f5 : MUXF5
    port map (
      I0 => XLXI_38_XLXN_185,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXI_1,
      S => XLXI_38_XLXI_2_XLXN_21,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_7
    );
  XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_9_Q : LUT2_L
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => XLXI_96_counter_count_local(24),
      I1 => XLXI_96_counter_count_local(25),
      LO => XLXI_96_counter_Mcompar_count_trigg_cmp_lt0000_lut_9_Q_554
    );
  XLXI_21_XLXI_25_done_f_not000111 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => XLXI_21_XLXI_25_wait_f_377,
      I1 => XLXI_21_XLXI_25_addr(7),
      I2 => stop_SST_OBUF_1000,
      I3 => XLXI_21_XLXI_25_N01,
      LO => N38,
      O => XLXI_21_XLXI_25_N13
    );
  XLXI_21_XLXI_25_addr_mux0002_3_11 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => XLXI_21_XLXI_25_addr(1),
      I1 => XLXI_21_XLXI_25_addr(0),
      I2 => XLXI_21_XLXI_25_addr(3),
      I3 => XLXI_21_XLXI_25_addr(2),
      LO => N39,
      O => XLXI_21_XLXI_25_N3
    );
  XLXI_18_Mshreg_XLXI_19 : SRL16_1
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => XLXI_38_XLXN_184,
      A1 => XLXI_38_XLXN_185,
      A2 => XLXI_38_XLXN_185,
      A3 => XLXI_38_XLXN_185,
      CLK => XLXI_18_XLXI_8_51,
      D => XLXI_3_temporal_386,
      Q => XLXI_18_Mshreg_XLXI_19_49
    );
  XLXI_18_XLXI_19 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => XLXI_18_XLXI_8_51,
      D => XLXI_18_Mshreg_XLXI_19_49,
      Q => XLXI_18_XLXI_19_50
    );
  XLXI_103_O1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => XLXI_21_XLXI_25_done_f_373,
      I1 => XLXN_522,
      O => SPI_MISO_OBUF_45
    );
  XLXI_12_O1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => re_IBUF_994,
      I1 => XLXN_427,
      I2 => SPI_SCLK_IBUF_47,
      O => clk_test_stop
    );
  XLXI_11_O_BUFG : BUFG
    port map (
      I => XLXI_11_O1_10,
      O => clk_test_mem
    );
  XLXI_11_O1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => re_IBUF_994,
      I1 => XLXN_424,
      I2 => SPI_SCLK_IBUF_47,
      O => XLXI_11_O1_10
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_13_O : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_38_XLXI_2_XLXI_2_XLXN_7,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXN_8,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_9,
      I3 => XLXI_38_XLXI_2_XLXI_2_XLXI_13_N01,
      O => XLXI_38_XLXI_2_XLXI_2_XLXN_6
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_13_O_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => XLXI_38_XLXI_2_XLXI_2_XLXN_10,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXN_11,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_12,
      O => XLXI_38_XLXI_2_XLXI_2_XLXI_13_N01
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_26_O_SW0 : LUT3_L
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => force_tri_IBUF_981,
      I1 => ex_tri_IBUF_979,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_56,
      LO => XLXI_38_XLXI_2_XLXI_2_XLXI_26_N01
    );
  XLXI_38_XLXI_2_XLXI_2_XLXI_26_O : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => XLXI_38_XLXI_2_XLXI_2_XLXN_66,
      I1 => XLXI_38_XLXI_2_XLXI_2_XLXN_36,
      I2 => XLXI_38_XLXI_2_XLXI_2_XLXN_23,
      I3 => XLXI_38_XLXI_2_XLXI_2_XLXI_26_N01,
      O => XLXI_38_XLXN_109
    );

end Structure;

