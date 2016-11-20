<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="clk_1M" />
        <signal name="clk_20M" />
        <signal name="XLXN_32" />
        <signal name="RAM_sync" />
        <signal name="CS_n" />
        <signal name="SST_read_clk" />
        <signal name="re" />
        <signal name="XLXN_33" />
        <signal name="clk_test_mem" />
        <signal name="SPI_SCLK" />
        <signal name="rst" />
        <signal name="clk_80M" />
        <signal name="force_tri" />
        <signal name="enable_thermal_tri" />
        <signal name="ex_tri" />
        <signal name="mbed_sel1" />
        <signal name="mbed_sel0" />
        <signal name="trig_3L" />
        <signal name="trig_3H" />
        <signal name="trig_2L" />
        <signal name="trig_2H" />
        <signal name="trig_1L" />
        <signal name="trig_1H" />
        <signal name="trig_0L" />
        <signal name="diff_select_M" />
        <signal name="and_or_sel_M" />
        <signal name="stop_SST" />
        <signal name="diff_select_SST" />
        <signal name="and_or_sel_SST" />
        <signal name="or_data" />
        <signal name="tri_ctrl" />
        <signal name="XLXN_147" />
        <signal name="full_3" />
        <signal name="di_ch0" />
        <signal name="di_ch1" />
        <signal name="di_ch2" />
        <signal name="di_ch3" />
        <signal name="stop_data_in" />
        <signal name="stop_data" />
        <signal name="data_3" />
        <signal name="data_2" />
        <signal name="data_1" />
        <signal name="data_0" />
        <signal name="clk_test_stop" />
        <signal name="ADC_clk" />
        <signal name="full" />
        <signal name="HSCLK_Ctrl" />
        <signal name="XLXN_424" />
        <signal name="XLXN_426" />
        <signal name="XLXN_427" />
        <signal name="XLXN_429" />
        <signal name="XLXN_431" />
        <signal name="XLXN_441" />
        <signal name="reset_SST" />
        <signal name="XLXN_442" />
        <signal name="in_heartbeat" />
        <signal name="XLXN_469" />
        <signal name="out_heartbeat" />
        <signal name="XLXN_487" />
        <signal name="XLXN_488" />
        <signal name="trig_0H" />
        <signal name="trigg_rst" />
        <signal name="trigg_enable" />
        <signal name="XLXN_491(31:0)" />
        <signal name="trigg_cmp_flag(1:0)" />
        <signal name="done_stop" />
        <signal name="XLXN_521" />
        <signal name="XLXN_522" />
        <signal name="SPI_MISO" />
        <signal name="XLXN_524" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="CS_n" />
        <port polarity="Output" name="SST_read_clk" />
        <port polarity="Input" name="re" />
        <port polarity="Input" name="SPI_SCLK" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="force_tri" />
        <port polarity="Input" name="enable_thermal_tri" />
        <port polarity="Input" name="ex_tri" />
        <port polarity="Input" name="mbed_sel1" />
        <port polarity="Input" name="mbed_sel0" />
        <port polarity="Input" name="trig_3L" />
        <port polarity="Input" name="trig_3H" />
        <port polarity="Input" name="trig_2L" />
        <port polarity="Input" name="trig_2H" />
        <port polarity="Input" name="trig_1L" />
        <port polarity="Input" name="trig_1H" />
        <port polarity="Input" name="trig_0L" />
        <port polarity="Input" name="diff_select_M" />
        <port polarity="Input" name="and_or_sel_M" />
        <port polarity="Output" name="stop_SST" />
        <port polarity="Output" name="diff_select_SST" />
        <port polarity="Output" name="and_or_sel_SST" />
        <port polarity="Input" name="di_ch0" />
        <port polarity="Input" name="di_ch1" />
        <port polarity="Input" name="di_ch2" />
        <port polarity="Input" name="di_ch3" />
        <port polarity="Input" name="stop_data_in" />
        <port polarity="Output" name="ADC_clk" />
        <port polarity="Output" name="full" />
        <port polarity="Output" name="HSCLK_Ctrl" />
        <port polarity="Output" name="reset_SST" />
        <port polarity="Input" name="in_heartbeat" />
        <port polarity="Output" name="out_heartbeat" />
        <port polarity="Input" name="trig_0H" />
        <port polarity="Input" name="trigg_rst" />
        <port polarity="Input" name="trigg_enable" />
        <port polarity="Output" name="trigg_cmp_flag(1:0)" />
        <port polarity="Output" name="done_stop" />
        <port polarity="Output" name="SPI_MISO" />
        <blockdef name="dcm_clkgen">
            <timestamp>2014-8-9T20:41:48</timestamp>
            <rect width="336" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="400" y="-364" height="24" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="clkgen_1M">
            <timestamp>2014-8-9T21:3:59</timestamp>
            <rect width="256" x="64" y="-128" height="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="CS_gen">
            <timestamp>2014-8-11T2:19:54</timestamp>
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <rect width="256" x="64" y="-252" height="352" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="64" y2="64" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="Sync">
            <timestamp>2014-8-11T2:4:32</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-144" y2="-144" x1="320" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="MEMORY_BLOCK_NEW">
            <timestamp>2014-9-6T23:50:27</timestamp>
            <line x2="-48" y1="-1504" y2="-1504" x1="16" />
            <line x2="-48" y1="-1440" y2="-1440" x1="16" />
            <line x2="-48" y1="-1376" y2="-1376" x1="16" />
            <line x2="-48" y1="-1312" y2="-1312" x1="16" />
            <rect width="364" x="16" y="-1536" height="1920" />
            <line x2="448" y1="-1504" y2="-1504" x1="384" />
            <line x2="448" y1="-1440" y2="-1440" x1="384" />
            <line x2="448" y1="-1376" y2="-1376" x1="384" />
            <line x2="448" y1="-1312" y2="-1312" x1="384" />
            <line x2="-48" y1="288" y2="288" x1="16" />
            <line x2="-48" y1="224" y2="224" x1="16" />
            <line x2="-48" y1="160" y2="160" x1="16" />
            <line x2="-48" y1="96" y2="96" x1="16" />
            <line x2="-48" y1="352" y2="352" x1="16" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="160" y2="160" x1="384" />
            <line x2="448" y1="224" y2="224" x1="384" />
            <line x2="448" y1="288" y2="288" x1="384" />
            <line x2="448" y1="352" y2="352" x1="384" />
            <line x2="448" y1="-1248" y2="-1248" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="64" x="384" y="20" height="24" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-864" y2="-864" x1="384" />
            <line x2="448" y1="-800" y2="-800" x1="384" />
            <line x2="448" y1="-736" y2="-736" x1="384" />
            <line x2="448" y1="-672" y2="-672" x1="384" />
            <line x2="448" y1="-608" y2="-608" x1="384" />
            <line x2="448" y1="-1184" y2="-1184" x1="384" />
            <line x2="448" y1="-1120" y2="-1120" x1="384" />
            <line x2="448" y1="-1056" y2="-1056" x1="384" />
            <line x2="448" y1="-992" y2="-992" x1="384" />
            <line x2="448" y1="-928" y2="-928" x1="384" />
            <line x2="-48" y1="-1184" y2="-1184" x1="16" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="obuft">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="stop_gen_block">
            <timestamp>2014-9-6T22:22:56</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="560" y1="-928" y2="-928" x1="496" />
            <line x2="560" y1="-1056" y2="-1056" x1="496" />
            <line x2="560" y1="-992" y2="-992" x1="496" />
            <line x2="560" y1="-864" y2="-864" x1="496" />
            <rect width="432" x="64" y="-1088" height="1152" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="cntr_trigg_comp">
            <timestamp>2016-11-20T9:18:59</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="psi_trigg">
            <timestamp>2016-11-19T23:50:27</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <block symbolname="dcm_clkgen" name="XLXI_2">
            <blockpin signalname="clk" name="CLKIN_IN" />
            <blockpin name="STATUS_OUT(7:0)" />
            <blockpin name="LOCKED_OUT" />
            <blockpin signalname="clk_20M" name="CLKDV_OUT" />
            <blockpin signalname="XLXN_442" name="CLK2X_OUT" />
            <blockpin name="CLKIN_IBUFG_OUT" />
            <blockpin signalname="clk_80M" name="CLK0_OUT" />
        </block>
        <block symbolname="Sync" name="XLXI_18">
            <blockpin signalname="clk_80M" name="clk_80M" />
            <blockpin signalname="clk_20M" name="clk_20" />
            <blockpin signalname="clk_1M" name="clk_1" />
            <blockpin signalname="XLXN_33" name="clk_1M" />
            <blockpin signalname="XLXN_32" name="clk_20M" />
        </block>
        <block symbolname="clkgen_1M" name="XLXI_3">
            <blockpin signalname="clk_20M" name="clk_in" />
            <blockpin signalname="clk_1M" name="clk_out" />
        </block>
        <block symbolname="CS_gen" name="XLXI_5">
            <blockpin signalname="stop_SST" name="en" />
            <blockpin signalname="XLXN_33" name="clk_1M" />
            <blockpin signalname="XLXN_32" name="clk_20M" />
            <blockpin signalname="XLXN_441" name="rst" />
            <blockpin signalname="ADC_clk" name="ADC_clk" />
            <blockpin signalname="SST_read_clk" name="SST_rck" />
            <blockpin signalname="CS_n" name="CS_n" />
            <blockpin signalname="RAM_sync" name="RAM_sync" />
        </block>
        <block symbolname="m2_1" name="XLXI_12">
            <blockpin signalname="XLXN_427" name="D0" />
            <blockpin signalname="SPI_SCLK" name="D1" />
            <blockpin signalname="re" name="S0" />
            <blockpin signalname="clk_test_stop" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_11">
            <blockpin signalname="XLXN_424" name="D0" />
            <blockpin signalname="SPI_SCLK" name="D1" />
            <blockpin signalname="re" name="S0" />
            <blockpin signalname="clk_test_mem" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_37">
            <blockpin signalname="rst" name="I" />
            <blockpin signalname="XLXN_441" name="O" />
        </block>
        <block symbolname="stop_gen_block" name="XLXI_38">
            <blockpin signalname="force_tri" name="force_tri" />
            <blockpin signalname="enable_thermal_tri" name="enable_thermal_tri" />
            <blockpin signalname="ex_tri" name="ex_tri" />
            <blockpin signalname="mbed_sel1" name="mbed_sel1" />
            <blockpin signalname="mbed_sel0" name="mbed_sel0" />
            <blockpin signalname="trig_3L" name="trig_3L" />
            <blockpin signalname="trig_3H" name="trig_3H" />
            <blockpin signalname="trig_2L" name="trig_2L" />
            <blockpin signalname="trig_2H" name="trig_2H" />
            <blockpin signalname="trig_1L" name="trig_1L" />
            <blockpin signalname="trig_1H" name="trig_1H" />
            <blockpin signalname="trig_0L" name="trig_0L" />
            <blockpin signalname="trig_0H" name="trig_0H" />
            <blockpin signalname="diff_select_M" name="diff_select_M" />
            <blockpin signalname="and_or_sel_M" name="and_or_sel_M" />
            <blockpin signalname="clk_80M" name="clk" />
            <blockpin signalname="XLXN_441" name="rst" />
            <blockpin signalname="and_or_sel_SST" name="and_or_sel_SST" />
            <blockpin signalname="diff_select_SST" name="diff_select_SST" />
            <blockpin signalname="stop_SST" name="stop" />
            <blockpin signalname="reset_SST" name="reset_SST" />
            <blockpin signalname="XLXN_442" name="clk_160M" />
        </block>
        <block symbolname="inv" name="XLXI_34">
            <blockpin signalname="re" name="I" />
            <blockpin signalname="XLXN_147" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_32">
            <blockpin signalname="XLXN_524" name="I0" />
            <blockpin signalname="XLXN_147" name="I1" />
            <blockpin signalname="tri_ctrl" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_31">
            <blockpin signalname="or_data" name="I" />
            <blockpin signalname="tri_ctrl" name="T" />
            <blockpin signalname="XLXN_522" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_23">
            <blockpin signalname="stop_data" name="I0" />
            <blockpin signalname="data_3" name="I1" />
            <blockpin signalname="data_2" name="I2" />
            <blockpin signalname="data_1" name="I3" />
            <blockpin signalname="data_0" name="I4" />
            <blockpin signalname="or_data" name="O" />
        </block>
        <block symbolname="MEMORY_BLOCK_NEW" name="XLXI_21">
            <blockpin signalname="stop_SST" name="en" />
            <blockpin signalname="clk_test_mem" name="clk" />
            <blockpin signalname="XLXN_441" name="rst" />
            <blockpin signalname="re" name="re" />
            <blockpin signalname="di_ch0" name="di_1" />
            <blockpin signalname="di_ch1" name="di_2" />
            <blockpin signalname="di_ch2" name="di_3" />
            <blockpin signalname="di_ch3" name="di_4" />
            <blockpin signalname="clk_test_stop" name="stop_clk" />
            <blockpin signalname="stop_data_in" name="stop_data_in" />
            <blockpin name="start_1" />
            <blockpin name="start_2" />
            <blockpin name="start_3" />
            <blockpin name="start_4" />
            <blockpin name="stop_start" />
            <blockpin name="address_1(11:0)" />
            <blockpin name="done_1" />
            <blockpin name="full_1" />
            <blockpin name="wait_sig_1" />
            <blockpin name="address_3(11:0)" />
            <blockpin name="address_2(11:0)" />
            <blockpin name="address_4(11:0)" />
            <blockpin name="done_2" />
            <blockpin name="full_2" />
            <blockpin name="wait_sig_2" />
            <blockpin name="done_3" />
            <blockpin name="full_3" />
            <blockpin name="wait_sig_3" />
            <blockpin name="done_4" />
            <blockpin signalname="full_3" name="full_4" />
            <blockpin name="wait_sig_4" />
            <blockpin name="stop_address(7:0)" />
            <blockpin signalname="XLXN_524" name="stop_done" />
            <blockpin signalname="XLXN_429" name="stop_full" />
            <blockpin name="stop_wait" />
            <blockpin signalname="stop_data" name="stop_data_out" />
            <blockpin signalname="data_3" name="do_4" />
            <blockpin signalname="data_2" name="do_3" />
            <blockpin signalname="data_1" name="do_2" />
            <blockpin signalname="data_0" name="do_1" />
        </block>
        <block symbolname="and2" name="XLXI_39">
            <blockpin signalname="XLXN_429" name="I0" />
            <blockpin signalname="full_3" name="I1" />
            <blockpin signalname="full" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_41">
            <blockpin signalname="HSCLK_Ctrl" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_43">
            <blockpin signalname="full_3" name="I" />
            <blockpin signalname="XLXN_426" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_44">
            <blockpin signalname="RAM_sync" name="I0" />
            <blockpin signalname="XLXN_431" name="I1" />
            <blockpin signalname="XLXN_427" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_42">
            <blockpin signalname="ADC_clk" name="I0" />
            <blockpin signalname="RAM_sync" name="I1" />
            <blockpin signalname="XLXN_426" name="I2" />
            <blockpin signalname="XLXN_424" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_45">
            <blockpin signalname="XLXN_429" name="I" />
            <blockpin signalname="XLXN_431" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_70">
            <blockpin signalname="XLXN_488" name="I" />
            <blockpin signalname="XLXN_469" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_59">
            <blockpin signalname="XLXN_469" name="I0" />
            <blockpin signalname="in_heartbeat" name="I1" />
            <blockpin signalname="out_heartbeat" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_94">
            <blockpin signalname="in_heartbeat" name="I" />
            <blockpin signalname="XLXN_487" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_95">
            <blockpin signalname="XLXN_487" name="I" />
            <blockpin signalname="XLXN_488" name="O" />
        </block>
        <block symbolname="cntr_trigg_comp" name="XLXI_96">
            <blockpin signalname="clk_80M" name="clk" />
            <blockpin signalname="trigg_rst" name="rst" />
            <blockpin signalname="trigg_enable" name="enable" />
            <blockpin signalname="trig_0H" name="trigg" />
            <blockpin signalname="XLXN_491(31:0)" name="trigg_ct(31:0)" />
            <blockpin signalname="trigg_cmp_flag(1:0)" name="dac_flag(1:0)" />
        </block>
        <block symbolname="psi_trigg" name="XLXI_97">
            <blockpin signalname="trigg_rst" name="rst" />
            <blockpin signalname="clk_test_mem" name="clk" />
            <blockpin signalname="trigg_enable" name="enable" />
            <blockpin signalname="XLXN_491(31:0)" name="parallel_in(31:0)" />
            <blockpin signalname="done_stop" name="eoc" />
            <blockpin signalname="XLXN_521" name="ser_out" />
            <blockpin signalname="XLXN_524" name="ser_strt" />
        </block>
        <block symbolname="m2_1" name="XLXI_103">
            <blockpin signalname="XLXN_522" name="D0" />
            <blockpin signalname="XLXN_521" name="D1" />
            <blockpin signalname="XLXN_524" name="S0" />
            <blockpin signalname="SPI_MISO" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1792" type="branch" />
            <wire x2="752" y1="1792" y2="1792" x1="608" />
            <wire x2="768" y1="1792" y2="1792" x1="752" />
        </branch>
        <instance x="768" y="2144" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk_1M">
            <wire x2="1776" y1="1824" y2="1824" x1="1760" />
            <wire x2="1808" y1="1168" y2="1168" x1="1776" />
            <wire x2="1776" y1="1168" y2="1824" x1="1776" />
        </branch>
        <branch name="CS_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4368" y="960" type="branch" />
            <wire x2="4368" y1="960" y2="960" x1="2656" />
            <wire x2="5104" y1="960" y2="960" x1="4368" />
        </branch>
        <branch name="rst">
            <wire x2="848" y1="2480" y2="2480" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="1792" name="clk" orien="R180" />
        <iomarker fontsize="28" x="5104" y="960" name="CS_n" orien="R0" />
        <iomarker fontsize="28" x="5104" y="1056" name="SST_read_clk" orien="R0" />
        <iomarker fontsize="28" x="608" y="2480" name="rst" orien="R180" />
        <instance x="848" y="2512" name="XLXI_37" orien="R0" />
        <branch name="clk_80M">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1040" type="branch" />
            <wire x2="1296" y1="2112" y2="2112" x1="1232" />
            <wire x2="1296" y1="2112" y2="3424" x1="1296" />
            <wire x2="1536" y1="3424" y2="3424" x1="1296" />
            <wire x2="1296" y1="3424" y2="4128" x1="1296" />
            <wire x2="1376" y1="4128" y2="4128" x1="1296" />
            <wire x2="1296" y1="1040" y2="2112" x1="1296" />
            <wire x2="1808" y1="1040" y2="1040" x1="1296" />
        </branch>
        <instance x="1536" y="3840" name="XLXI_38" orien="R0">
        </instance>
        <branch name="force_tri">
            <wire x2="1536" y1="3744" y2="3744" x1="592" />
        </branch>
        <branch name="enable_thermal_tri">
            <wire x2="1536" y1="3680" y2="3680" x1="592" />
        </branch>
        <branch name="ex_tri">
            <wire x2="1536" y1="3616" y2="3616" x1="592" />
        </branch>
        <branch name="mbed_sel1">
            <wire x2="1536" y1="3552" y2="3552" x1="592" />
        </branch>
        <branch name="mbed_sel0">
            <wire x2="1536" y1="3488" y2="3488" x1="592" />
        </branch>
        <branch name="trig_3L">
            <wire x2="1536" y1="3360" y2="3360" x1="592" />
        </branch>
        <branch name="trig_3H">
            <wire x2="1536" y1="3296" y2="3296" x1="592" />
        </branch>
        <branch name="trig_2L">
            <wire x2="1536" y1="3232" y2="3232" x1="592" />
        </branch>
        <branch name="trig_2H">
            <wire x2="1536" y1="3168" y2="3168" x1="592" />
        </branch>
        <branch name="trig_1L">
            <wire x2="1536" y1="3104" y2="3104" x1="592" />
        </branch>
        <branch name="trig_1H">
            <wire x2="1536" y1="3040" y2="3040" x1="592" />
        </branch>
        <branch name="trig_0L">
            <wire x2="1536" y1="2976" y2="2976" x1="592" />
        </branch>
        <branch name="diff_select_M">
            <wire x2="1536" y1="2848" y2="2848" x1="592" />
        </branch>
        <branch name="and_or_sel_M">
            <wire x2="1536" y1="2784" y2="2784" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="3680" name="enable_thermal_tri" orien="R180" />
        <iomarker fontsize="28" x="592" y="3616" name="ex_tri" orien="R180" />
        <iomarker fontsize="28" x="592" y="3552" name="mbed_sel1" orien="R180" />
        <iomarker fontsize="28" x="592" y="3488" name="mbed_sel0" orien="R180" />
        <iomarker fontsize="28" x="592" y="3360" name="trig_3L" orien="R180" />
        <iomarker fontsize="28" x="592" y="3296" name="trig_3H" orien="R180" />
        <iomarker fontsize="28" x="592" y="3232" name="trig_2L" orien="R180" />
        <iomarker fontsize="28" x="592" y="3168" name="trig_2H" orien="R180" />
        <iomarker fontsize="28" x="592" y="3104" name="trig_1L" orien="R180" />
        <iomarker fontsize="28" x="592" y="3040" name="trig_1H" orien="R180" />
        <iomarker fontsize="28" x="592" y="2976" name="trig_0L" orien="R180" />
        <iomarker fontsize="28" x="592" y="2912" name="trig_0H" orien="R180" />
        <iomarker fontsize="28" x="592" y="2848" name="diff_select_M" orien="R180" />
        <iomarker fontsize="28" x="592" y="2784" name="and_or_sel_M" orien="R180" />
        <iomarker fontsize="28" x="592" y="3744" name="force_tri" orien="R180" />
        <branch name="diff_select_SST">
            <wire x2="2832" y1="2848" y2="2848" x1="2096" />
        </branch>
        <branch name="and_or_sel_SST">
            <wire x2="2832" y1="2784" y2="2784" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2832" y="2912" name="stop_SST" orien="R0" />
        <iomarker fontsize="28" x="2832" y="2848" name="diff_select_SST" orien="R0" />
        <iomarker fontsize="28" x="2832" y="2784" name="and_or_sel_SST" orien="R0" />
        <branch name="SPI_SCLK">
            <wire x2="2272" y1="1536" y2="1536" x1="608" />
            <wire x2="2272" y1="1536" y2="2240" x1="2272" />
            <wire x2="3760" y1="2240" y2="2240" x1="2272" />
            <wire x2="2976" y1="1536" y2="1536" x1="2272" />
            <wire x2="2976" y1="1536" y2="1680" x1="2976" />
            <wire x2="3696" y1="1680" y2="1680" x1="2976" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2272" y1="1056" y2="1056" x1="2192" />
        </branch>
        <branch name="XLXN_147">
            <wire x2="5856" y1="3168" y2="3168" x1="5584" />
        </branch>
        <branch name="di_ch0">
            <wire x2="4272" y1="3344" y2="3344" x1="4240" />
        </branch>
        <iomarker fontsize="28" x="4240" y="3344" name="di_ch0" orien="R180" />
        <branch name="di_ch1">
            <wire x2="4272" y1="3408" y2="3408" x1="4240" />
        </branch>
        <iomarker fontsize="28" x="4240" y="3408" name="di_ch1" orien="R180" />
        <branch name="di_ch2">
            <wire x2="4272" y1="3472" y2="3472" x1="4240" />
        </branch>
        <iomarker fontsize="28" x="4240" y="3472" name="di_ch2" orien="R180" />
        <branch name="di_ch3">
            <wire x2="4272" y1="3536" y2="3536" x1="4240" />
        </branch>
        <iomarker fontsize="28" x="4240" y="3536" name="di_ch3" orien="R180" />
        <branch name="stop_data_in">
            <wire x2="4272" y1="3600" y2="3600" x1="4240" />
        </branch>
        <iomarker fontsize="28" x="4240" y="3600" name="stop_data_in" orien="R180" />
        <instance x="5584" y="3664" name="XLXI_23" orien="R0" />
        <instance x="5360" y="3200" name="XLXI_34" orien="R0" />
        <instance x="5856" y="3296" name="XLXI_32" orien="R0" />
        <instance x="6160" y="3504" name="XLXI_31" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="2272" y1="1152" y2="1152" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="5104" y="1152" name="ADC_clk" orien="R0" />
        <branch name="ADC_clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4368" y="1152" type="branch" />
            <wire x2="2688" y1="1152" y2="1152" x1="2656" />
            <wire x2="4368" y1="1152" y2="1152" x1="2688" />
            <wire x2="5104" y1="1152" y2="1152" x1="4368" />
            <wire x2="2688" y1="1152" y2="1488" x1="2688" />
            <wire x2="3312" y1="1488" y2="1488" x1="2688" />
        </branch>
        <instance x="3760" y="2336" name="XLXI_12" orien="R0" />
        <iomarker fontsize="28" x="608" y="1536" name="SPI_SCLK" orien="R180" />
        <branch name="re">
            <wire x2="2304" y1="1872" y2="1872" x1="1920" />
            <wire x2="2304" y1="1872" y2="2304" x1="2304" />
            <wire x2="3760" y1="2304" y2="2304" x1="2304" />
            <wire x2="4160" y1="1872" y2="1872" x1="2304" />
            <wire x2="4272" y1="1872" y2="1872" x1="4160" />
            <wire x2="3696" y1="1744" y2="1744" x1="2304" />
            <wire x2="2304" y1="1744" y2="1872" x1="2304" />
            <wire x2="4160" y1="1600" y2="1872" x1="4160" />
            <wire x2="5056" y1="1600" y2="1600" x1="4160" />
            <wire x2="5056" y1="1600" y2="3168" x1="5056" />
            <wire x2="5360" y1="3168" y2="3168" x1="5056" />
        </branch>
        <instance x="4320" y="3248" name="XLXI_21" orien="R0">
        </instance>
        <instance x="1376" y="1920" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1808" y="1200" name="XLXI_18" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1920" y="1872" name="re" orien="R180" />
        <instance x="2272" y="1184" name="XLXI_5" orien="R0">
        </instance>
        <instance x="3696" y="1776" name="XLXI_11" orien="R0" />
        <branch name="SST_read_clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4368" y="1056" type="branch" />
            <wire x2="4368" y1="1056" y2="1056" x1="2656" />
            <wire x2="5104" y1="1056" y2="1056" x1="4368" />
        </branch>
        <instance x="5760" y="2144" name="XLXI_39" orien="R0" />
        <iomarker fontsize="28" x="6368" y="2048" name="full" orien="R0" />
        <branch name="HSCLK_Ctrl">
            <wire x2="5776" y1="1424" y2="1440" x1="5776" />
            <wire x2="6016" y1="1440" y2="1440" x1="5776" />
        </branch>
        <instance x="5712" y="1424" name="XLXI_41" orien="R0" />
        <iomarker fontsize="28" x="6016" y="1440" name="HSCLK_Ctrl" orien="R0" />
        <branch name="XLXN_424">
            <wire x2="3632" y1="1424" y2="1424" x1="3568" />
            <wire x2="3632" y1="1424" y2="1616" x1="3632" />
            <wire x2="3696" y1="1616" y2="1616" x1="3632" />
        </branch>
        <instance x="4992" y="1344" name="XLXI_43" orien="R180" />
        <branch name="XLXN_426">
            <wire x2="3312" y1="1296" y2="1360" x1="3312" />
            <wire x2="4768" y1="1296" y2="1296" x1="3312" />
            <wire x2="4768" y1="1296" y2="1376" x1="4768" />
        </branch>
        <branch name="full">
            <wire x2="6368" y1="2048" y2="2048" x1="6016" />
        </branch>
        <instance x="3312" y="2208" name="XLXI_44" orien="R0" />
        <branch name="XLXN_427">
            <wire x2="3664" y1="2112" y2="2112" x1="3568" />
            <wire x2="3664" y1="2112" y2="2176" x1="3664" />
            <wire x2="3760" y1="2176" y2="2176" x1="3664" />
        </branch>
        <instance x="3312" y="1552" name="XLXI_42" orien="R0" />
        <branch name="XLXN_429">
            <wire x2="5264" y1="2000" y2="2000" x1="4768" />
            <wire x2="5264" y1="2000" y2="2080" x1="5264" />
            <wire x2="5760" y1="2080" y2="2080" x1="5264" />
            <wire x2="5264" y1="1552" y2="1552" x1="4992" />
            <wire x2="5264" y1="1552" y2="2000" x1="5264" />
        </branch>
        <instance x="4992" y="1520" name="XLXI_45" orien="R180" />
        <branch name="XLXN_431">
            <wire x2="3232" y1="1552" y2="2080" x1="3232" />
            <wire x2="3312" y1="2080" y2="2080" x1="3232" />
            <wire x2="4768" y1="1552" y2="1552" x1="3232" />
        </branch>
        <branch name="stop_SST">
            <wire x2="2208" y1="2912" y2="2912" x1="2096" />
            <wire x2="2832" y1="2912" y2="2912" x1="2208" />
            <wire x2="2272" y1="960" y2="960" x1="2208" />
            <wire x2="2208" y1="960" y2="1936" x1="2208" />
            <wire x2="4272" y1="1936" y2="1936" x1="2208" />
            <wire x2="2208" y1="1936" y2="2912" x1="2208" />
        </branch>
        <branch name="XLXN_441">
            <wire x2="1440" y1="2480" y2="2480" x1="1072" />
            <wire x2="1440" y1="2480" y2="3808" x1="1440" />
            <wire x2="1536" y1="3808" y2="3808" x1="1440" />
            <wire x2="2160" y1="2480" y2="2480" x1="1440" />
            <wire x2="2272" y1="1248" y2="1248" x1="2160" />
            <wire x2="2160" y1="1248" y2="1808" x1="2160" />
            <wire x2="4272" y1="1808" y2="1808" x1="2160" />
            <wire x2="2160" y1="1808" y2="2480" x1="2160" />
        </branch>
        <branch name="clk_20M">
            <wire x2="1376" y1="1920" y2="1920" x1="1232" />
            <wire x2="1808" y1="1104" y2="1104" x1="1376" />
            <wire x2="1376" y1="1104" y2="1824" x1="1376" />
            <wire x2="1376" y1="1824" y2="1920" x1="1376" />
        </branch>
        <branch name="reset_SST">
            <wire x2="2832" y1="2976" y2="2976" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2832" y="2976" name="reset_SST" orien="R0" />
        <branch name="XLXN_442">
            <wire x2="1376" y1="1984" y2="1984" x1="1232" />
            <wire x2="1376" y1="1984" y2="3872" x1="1376" />
            <wire x2="1536" y1="3872" y2="3872" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1312" y="4688" name="in_heartbeat" orien="R180" />
        <branch name="in_heartbeat">
            <wire x2="1408" y1="4688" y2="4688" x1="1312" />
            <wire x2="1408" y1="4688" y2="4720" x1="1408" />
            <wire x2="1520" y1="4720" y2="4720" x1="1408" />
            <wire x2="2416" y1="4656" y2="4656" x1="1408" />
            <wire x2="1408" y1="4656" y2="4688" x1="1408" />
        </branch>
        <branch name="XLXN_469">
            <wire x2="2416" y1="4720" y2="4720" x1="2368" />
        </branch>
        <branch name="out_heartbeat">
            <wire x2="2800" y1="4688" y2="4688" x1="2672" />
        </branch>
        <instance x="2416" y="4784" name="XLXI_59" orien="R0" />
        <iomarker fontsize="28" x="2800" y="4688" name="out_heartbeat" orien="R0" />
        <instance x="2144" y="4752" name="XLXI_70" orien="R0" />
        <branch name="XLXN_487">
            <wire x2="1824" y1="4720" y2="4720" x1="1744" />
        </branch>
        <branch name="XLXN_488">
            <wire x2="2144" y1="4720" y2="4720" x1="2048" />
        </branch>
        <instance x="1520" y="4752" name="XLXI_94" orien="R0" />
        <instance x="1824" y="4752" name="XLXI_95" orien="R0" />
        <branch name="full_3">
            <wire x2="5312" y1="1936" y2="1936" x1="4768" />
            <wire x2="5312" y1="1936" y2="2016" x1="5312" />
            <wire x2="5760" y1="2016" y2="2016" x1="5312" />
            <wire x2="5312" y1="1376" y2="1376" x1="4992" />
            <wire x2="5312" y1="1376" y2="1936" x1="5312" />
        </branch>
        <branch name="data_0">
            <wire x2="5584" y1="3344" y2="3344" x1="4768" />
        </branch>
        <branch name="data_1">
            <wire x2="5584" y1="3408" y2="3408" x1="4768" />
        </branch>
        <branch name="data_2">
            <wire x2="5584" y1="3472" y2="3472" x1="4768" />
        </branch>
        <branch name="data_3">
            <wire x2="5584" y1="3536" y2="3536" x1="4768" />
        </branch>
        <branch name="stop_data">
            <wire x2="5584" y1="3600" y2="3600" x1="4768" />
        </branch>
        <branch name="or_data">
            <wire x2="6160" y1="3472" y2="3472" x1="5840" />
        </branch>
        <branch name="tri_ctrl">
            <wire x2="6160" y1="3200" y2="3200" x1="6112" />
            <wire x2="6160" y1="3200" y2="3408" x1="6160" />
        </branch>
        <branch name="clk_test_stop">
            <wire x2="4208" y1="2208" y2="2208" x1="4080" />
            <wire x2="4208" y1="2064" y2="2208" x1="4208" />
            <wire x2="4272" y1="2064" y2="2064" x1="4208" />
        </branch>
        <branch name="clk_test_mem">
            <wire x2="4240" y1="3184" y2="3184" x1="3920" />
            <wire x2="3920" y1="3184" y2="4240" x1="3920" />
            <wire x2="4336" y1="4240" y2="4240" x1="3920" />
            <wire x2="4128" y1="1648" y2="1648" x1="4016" />
            <wire x2="4128" y1="1648" y2="1744" x1="4128" />
            <wire x2="4240" y1="1744" y2="1744" x1="4128" />
            <wire x2="4272" y1="1744" y2="1744" x1="4240" />
            <wire x2="4240" y1="1744" y2="3184" x1="4240" />
        </branch>
        <branch name="RAM_sync">
            <wire x2="2720" y1="1248" y2="1248" x1="2656" />
            <wire x2="2720" y1="1248" y2="1424" x1="2720" />
            <wire x2="3312" y1="1424" y2="1424" x1="2720" />
            <wire x2="3072" y1="1248" y2="1248" x1="2720" />
            <wire x2="3072" y1="1248" y2="2144" x1="3072" />
            <wire x2="3312" y1="2144" y2="2144" x1="3072" />
        </branch>
        <branch name="trig_0H">
            <wire x2="784" y1="2912" y2="2912" x1="592" />
            <wire x2="1536" y1="2912" y2="2912" x1="784" />
            <wire x2="784" y1="2912" y2="4320" x1="784" />
            <wire x2="1376" y1="4320" y2="4320" x1="784" />
        </branch>
        <instance x="1376" y="4416" name="XLXI_96" orien="R0">
        </instance>
        <instance x="4336" y="4400" name="XLXI_97" orien="R0">
        </instance>
        <branch name="trigg_rst">
            <wire x2="1152" y1="4192" y2="4192" x1="592" />
            <wire x2="1376" y1="4192" y2="4192" x1="1152" />
            <wire x2="1152" y1="4192" y2="4576" x1="1152" />
            <wire x2="4208" y1="4576" y2="4576" x1="1152" />
            <wire x2="4208" y1="4176" y2="4576" x1="4208" />
            <wire x2="4336" y1="4176" y2="4176" x1="4208" />
        </branch>
        <branch name="trigg_enable">
            <wire x2="1312" y1="4256" y2="4256" x1="592" />
            <wire x2="1312" y1="4256" y2="4608" x1="1312" />
            <wire x2="4256" y1="4608" y2="4608" x1="1312" />
            <wire x2="1376" y1="4256" y2="4256" x1="1312" />
            <wire x2="4336" y1="4304" y2="4304" x1="4256" />
            <wire x2="4256" y1="4304" y2="4608" x1="4256" />
        </branch>
        <branch name="XLXN_491(31:0)">
            <wire x2="4112" y1="4448" y2="4448" x1="1760" />
            <wire x2="4336" y1="4368" y2="4368" x1="4112" />
            <wire x2="4112" y1="4368" y2="4448" x1="4112" />
        </branch>
        <iomarker fontsize="28" x="592" y="4192" name="trigg_rst" orien="R180" />
        <iomarker fontsize="28" x="592" y="4256" name="trigg_enable" orien="R180" />
        <branch name="trigg_cmp_flag(1:0)">
            <wire x2="2176" y1="4384" y2="4384" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="2176" y="4384" name="trigg_cmp_flag(1:0)" orien="R0" />
        <branch name="done_stop">
            <wire x2="5472" y1="4176" y2="4176" x1="4720" />
        </branch>
        <iomarker fontsize="28" x="5472" y="4176" name="done_stop" orien="R0" />
        <iomarker fontsize="28" x="6848" y="3472" name="SPI_MISO" orien="R0" />
        <branch name="XLXN_521">
            <wire x2="5888" y1="4368" y2="4368" x1="4720" />
            <wire x2="5888" y1="3536" y2="4368" x1="5888" />
            <wire x2="6448" y1="3536" y2="3536" x1="5888" />
        </branch>
        <branch name="XLXN_522">
            <wire x2="6448" y1="3472" y2="3472" x1="6384" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="6832" y1="3504" y2="3504" x1="6768" />
            <wire x2="6848" y1="3472" y2="3472" x1="6832" />
            <wire x2="6832" y1="3472" y2="3504" x1="6832" />
        </branch>
        <instance x="6448" y="3632" name="XLXI_103" orien="R0" />
        <branch name="XLXN_524">
            <wire x2="4896" y1="4064" y2="4064" x1="4304" />
            <wire x2="4304" y1="4064" y2="4432" x1="4304" />
            <wire x2="4336" y1="4432" y2="4432" x1="4304" />
            <wire x2="4896" y1="2960" y2="2960" x1="4768" />
            <wire x2="5312" y1="2960" y2="2960" x1="4896" />
            <wire x2="5312" y1="2960" y2="3232" x1="5312" />
            <wire x2="5856" y1="3232" y2="3232" x1="5312" />
            <wire x2="6112" y1="2960" y2="2960" x1="5312" />
            <wire x2="6112" y1="2960" y2="3600" x1="6112" />
            <wire x2="6448" y1="3600" y2="3600" x1="6112" />
            <wire x2="4896" y1="2960" y2="4064" x1="4896" />
        </branch>
    </sheet>
</drawing>