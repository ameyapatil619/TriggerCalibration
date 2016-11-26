<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_51" />
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
        <signal name="trig_0H" />
        <signal name="diff_select_M" />
        <signal name="and_or_sel_M" />
        <signal name="XLXN_109" />
        <signal name="and_or_sel_SST" />
        <signal name="diff_select_SST" />
        <signal name="clk" />
        <signal name="stop" />
        <signal name="rst" />
        <signal name="XLXN_121" />
        <signal name="XLXN_184" />
        <signal name="XLXN_185" />
        <signal name="clk_160M" />
        <signal name="reset_SST" />
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
        <port polarity="Input" name="trig_0H" />
        <port polarity="Input" name="diff_select_M" />
        <port polarity="Input" name="and_or_sel_M" />
        <port polarity="Output" name="and_or_sel_SST" />
        <port polarity="Output" name="diff_select_SST" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="stop" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk_160M" />
        <port polarity="Output" name="reset_SST" />
        <blockdef name="majority_sys">
            <timestamp>2014-8-13T1:20:9</timestamp>
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
            <rect width="464" x="64" y="-1024" height="1020" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="592" y1="-992" y2="-992" x1="528" />
            <line x2="592" y1="-928" y2="-928" x1="528" />
            <line x2="592" y1="-864" y2="-864" x1="528" />
        </blockdef>
        <blockdef name="srl16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="80" y1="-368" y2="-384" x1="64" />
            <line x2="64" y1="-384" y2="-400" x1="80" />
            <rect width="256" x="64" y="-576" height="512" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="stoplatch_SCH">
            <timestamp>2014-9-3T1:41:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="srl16" name="XLXI_6">
            <blockpin signalname="XLXN_185" name="A0" />
            <blockpin signalname="XLXN_185" name="A1" />
            <blockpin signalname="XLXN_184" name="A2" />
            <blockpin signalname="XLXN_185" name="A3" />
            <blockpin signalname="clk_160M" name="CLK" />
            <blockpin signalname="XLXN_109" name="D" />
            <blockpin signalname="XLXN_51" name="Q" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_185" name="G" />
        </block>
        <block symbolname="majority_sys" name="XLXI_2">
            <blockpin signalname="trig_0H" name="Trigger_0_H" />
            <blockpin signalname="trig_0L" name="Trigger_0_L" />
            <blockpin signalname="trig_1H" name="Trigger_1_H" />
            <blockpin signalname="trig_1L" name="Trigger_1_L" />
            <blockpin signalname="trig_2H" name="Trigger_2_H" />
            <blockpin signalname="trig_2L" name="Trigger_2_L" />
            <blockpin signalname="trig_3H" name="Trigger_3_H" />
            <blockpin signalname="trig_3L" name="Trigger_3_L" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="mbed_sel0" name="mbed_sel0" />
            <blockpin signalname="mbed_sel1" name="mbed_sel1" />
            <blockpin signalname="ex_tri" name="ex_tri" />
            <blockpin signalname="enable_thermal_tri" name="enable_thermal_tri" />
            <blockpin signalname="force_tri" name="force_tri" />
            <blockpin signalname="and_or_sel_M" name="and_or_sel_M" />
            <blockpin signalname="diff_select_M" name="diff_select_M" />
            <blockpin signalname="and_or_sel_SST" name="and_or_sel_SST" />
            <blockpin signalname="diff_select_SST" name="diff_select_SST" />
            <blockpin signalname="XLXN_109" name="Trigger_out" />
        </block>
        <block symbolname="srl16" name="XLXI_7">
            <blockpin signalname="XLXN_184" name="A0" />
            <blockpin signalname="XLXN_184" name="A1" />
            <blockpin signalname="XLXN_185" name="A2" />
            <blockpin signalname="XLXN_185" name="A3" />
            <blockpin signalname="clk_160M" name="CLK" />
            <blockpin signalname="XLXN_51" name="D" />
            <blockpin signalname="XLXN_121" name="Q" />
        </block>
        <block symbolname="stoplatch_SCH" name="XLXI_27">
            <blockpin signalname="XLXN_121" name="trigger" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="stop" name="stop" />
        </block>
        <block symbolname="vcc" name="XLXI_18">
            <blockpin signalname="XLXN_184" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_44">
            <blockpin signalname="rst" name="I" />
            <blockpin signalname="reset_SST" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="XLXN_51">
            <wire x2="2448" y1="1680" y2="1680" x1="2192" />
        </branch>
        <branch name="force_tri">
            <wire x2="880" y1="2096" y2="2096" x1="608" />
        </branch>
        <branch name="enable_thermal_tri">
            <wire x2="880" y1="2032" y2="2032" x1="608" />
        </branch>
        <branch name="ex_tri">
            <wire x2="880" y1="1968" y2="1968" x1="608" />
        </branch>
        <branch name="mbed_sel1">
            <wire x2="880" y1="1904" y2="1904" x1="608" />
        </branch>
        <branch name="mbed_sel0">
            <wire x2="880" y1="1840" y2="1840" x1="608" />
        </branch>
        <branch name="trig_3L">
            <wire x2="880" y1="1712" y2="1712" x1="608" />
        </branch>
        <branch name="trig_3H">
            <wire x2="880" y1="1648" y2="1648" x1="608" />
        </branch>
        <branch name="trig_2L">
            <wire x2="880" y1="1584" y2="1584" x1="608" />
        </branch>
        <branch name="trig_2H">
            <wire x2="880" y1="1520" y2="1520" x1="608" />
        </branch>
        <branch name="trig_1L">
            <wire x2="880" y1="1456" y2="1456" x1="608" />
        </branch>
        <branch name="trig_1H">
            <wire x2="880" y1="1392" y2="1392" x1="608" />
        </branch>
        <branch name="trig_0L">
            <wire x2="880" y1="1328" y2="1328" x1="608" />
        </branch>
        <branch name="trig_0H">
            <wire x2="880" y1="1264" y2="1264" x1="608" />
        </branch>
        <branch name="diff_select_M">
            <wire x2="880" y1="1200" y2="1200" x1="608" />
        </branch>
        <branch name="and_or_sel_M">
            <wire x2="880" y1="1136" y2="1136" x1="608" />
        </branch>
        <branch name="and_or_sel_SST">
            <wire x2="1792" y1="1136" y2="1136" x1="1472" />
        </branch>
        <branch name="diff_select_SST">
            <wire x2="1792" y1="1200" y2="1200" x1="1472" />
        </branch>
        <branch name="stop">
            <wire x2="4848" y1="1744" y2="1744" x1="3600" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="3216" y1="1744" y2="1744" x1="2832" />
        </branch>
        <instance x="1808" y="2128" name="XLXI_6" orien="R0" />
        <instance x="2128" y="2368" name="XLXI_19" orien="R0" />
        <instance x="880" y="2128" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2448" y="2192" name="XLXI_7" orien="R0" />
        <instance x="2176" y="1472" name="XLXI_18" orien="R0" />
        <iomarker fontsize="28" x="608" y="1136" name="and_or_sel_M" orien="R180" />
        <iomarker fontsize="28" x="608" y="1200" name="diff_select_M" orien="R180" />
        <iomarker fontsize="28" x="608" y="1264" name="trig_0H" orien="R180" />
        <iomarker fontsize="28" x="608" y="1328" name="trig_0L" orien="R180" />
        <iomarker fontsize="28" x="608" y="1392" name="trig_1H" orien="R180" />
        <iomarker fontsize="28" x="608" y="1456" name="trig_1L" orien="R180" />
        <iomarker fontsize="28" x="608" y="1520" name="trig_2H" orien="R180" />
        <iomarker fontsize="28" x="608" y="1584" name="trig_2L" orien="R180" />
        <iomarker fontsize="28" x="608" y="1648" name="trig_3H" orien="R180" />
        <iomarker fontsize="28" x="608" y="1712" name="trig_3L" orien="R180" />
        <iomarker fontsize="28" x="608" y="1840" name="mbed_sel0" orien="R180" />
        <iomarker fontsize="28" x="608" y="1904" name="mbed_sel1" orien="R180" />
        <iomarker fontsize="28" x="608" y="1968" name="ex_tri" orien="R180" />
        <iomarker fontsize="28" x="608" y="2032" name="enable_thermal_tri" orien="R180" />
        <iomarker fontsize="28" x="608" y="2096" name="force_tri" orien="R180" />
        <iomarker fontsize="28" x="608" y="1776" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1792" y="1136" name="and_or_sel_SST" orien="R0" />
        <iomarker fontsize="28" x="1792" y="1200" name="diff_select_SST" orien="R0" />
        <iomarker fontsize="28" x="2976" y="1872" name="rst" orien="R180" />
        <instance x="3216" y="1904" name="XLXI_27" orien="R0">
        </instance>
        <iomarker fontsize="28" x="4848" y="1744" name="stop" orien="R0" />
        <iomarker fontsize="28" x="624" y="2320" name="clk_160M" orien="R180" />
        <branch name="clk_160M">
            <wire x2="1504" y1="2320" y2="2320" x1="624" />
            <wire x2="1504" y1="2320" y2="2416" x1="1504" />
            <wire x2="2304" y1="2416" y2="2416" x1="1504" />
            <wire x2="1504" y1="1744" y2="2320" x1="1504" />
            <wire x2="1808" y1="1744" y2="1744" x1="1504" />
            <wire x2="2304" y1="1808" y2="2416" x1="2304" />
            <wire x2="2448" y1="1808" y2="1808" x1="2304" />
        </branch>
        <branch name="XLXN_184">
            <wire x2="1760" y1="1488" y2="1936" x1="1760" />
            <wire x2="1808" y1="1936" y2="1936" x1="1760" />
            <wire x2="2240" y1="1488" y2="1488" x1="1760" />
            <wire x2="2240" y1="1488" y2="1872" x1="2240" />
            <wire x2="2448" y1="1872" y2="1872" x1="2240" />
            <wire x2="2240" y1="1872" y2="1936" x1="2240" />
            <wire x2="2448" y1="1936" y2="1936" x1="2240" />
            <wire x2="2240" y1="1472" y2="1488" x1="2240" />
        </branch>
        <branch name="XLXN_185">
            <wire x2="1808" y1="1808" y2="1808" x1="1792" />
            <wire x2="1792" y1="1808" y2="1872" x1="1792" />
            <wire x2="1808" y1="1872" y2="1872" x1="1792" />
            <wire x2="1792" y1="1872" y2="2000" x1="1792" />
            <wire x2="1808" y1="2000" y2="2000" x1="1792" />
            <wire x2="1792" y1="2000" y2="2128" x1="1792" />
            <wire x2="2192" y1="2128" y2="2128" x1="1792" />
            <wire x2="2192" y1="2128" y2="2240" x1="2192" />
            <wire x2="2240" y1="2128" y2="2128" x1="2192" />
            <wire x2="2240" y1="2000" y2="2064" x1="2240" />
            <wire x2="2240" y1="2064" y2="2128" x1="2240" />
            <wire x2="2448" y1="2064" y2="2064" x1="2240" />
            <wire x2="2448" y1="2000" y2="2000" x1="2240" />
        </branch>
        <branch name="XLXN_109">
            <wire x2="1632" y1="1264" y2="1264" x1="1472" />
            <wire x2="1632" y1="1264" y2="1616" x1="1632" />
            <wire x2="1808" y1="1616" y2="1616" x1="1632" />
        </branch>
        <branch name="clk">
            <wire x2="704" y1="1776" y2="1776" x1="608" />
            <wire x2="880" y1="1776" y2="1776" x1="704" />
            <wire x2="704" y1="944" y2="1776" x1="704" />
            <wire x2="2848" y1="944" y2="944" x1="704" />
            <wire x2="2848" y1="944" y2="1808" x1="2848" />
            <wire x2="3216" y1="1808" y2="1808" x1="2848" />
        </branch>
        <branch name="rst">
            <wire x2="3120" y1="1872" y2="1872" x1="2976" />
            <wire x2="3216" y1="1872" y2="1872" x1="3120" />
            <wire x2="3120" y1="1232" y2="1872" x1="3120" />
            <wire x2="3728" y1="1232" y2="1232" x1="3120" />
        </branch>
        <instance x="3728" y="1264" name="XLXI_44" orien="R0" />
        <branch name="reset_SST">
            <wire x2="3968" y1="1232" y2="1232" x1="3952" />
            <wire x2="4848" y1="1232" y2="1232" x1="3968" />
        </branch>
        <iomarker fontsize="28" x="4848" y="1232" name="reset_SST" orien="R0" />
    </sheet>
</drawing>