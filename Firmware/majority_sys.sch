<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="and_or_sel_M" />
        <signal name="diff_select_M" />
        <signal name="Trigger_0_H" />
        <signal name="Trigger_0_L" />
        <signal name="Trigger_1_H" />
        <signal name="Trigger_1_L" />
        <signal name="Trigger_2_H" />
        <signal name="Trigger_2_L" />
        <signal name="Trigger_3_H" />
        <signal name="Trigger_3_L" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="clk" />
        <signal name="mbed_sel0" />
        <signal name="mbed_sel1" />
        <signal name="ex_tri" />
        <signal name="enable_thermal_tri" />
        <signal name="force_tri" />
        <signal name="Trigger_out" />
        <signal name="and_or_sel_SST" />
        <signal name="diff_select_SST" />
        <port polarity="Input" name="and_or_sel_M" />
        <port polarity="Input" name="diff_select_M" />
        <port polarity="Input" name="Trigger_0_H" />
        <port polarity="Input" name="Trigger_0_L" />
        <port polarity="Input" name="Trigger_1_H" />
        <port polarity="Input" name="Trigger_1_L" />
        <port polarity="Input" name="Trigger_2_H" />
        <port polarity="Input" name="Trigger_2_L" />
        <port polarity="Input" name="Trigger_3_H" />
        <port polarity="Input" name="Trigger_3_L" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="mbed_sel0" />
        <port polarity="Input" name="mbed_sel1" />
        <port polarity="Input" name="ex_tri" />
        <port polarity="Input" name="enable_thermal_tri" />
        <port polarity="Input" name="force_tri" />
        <port polarity="Output" name="Trigger_out" />
        <port polarity="Output" name="and_or_sel_SST" />
        <port polarity="Output" name="diff_select_SST" />
        <blockdef name="majority_logic">
            <timestamp>2014-5-1T23:37:35</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="256" x="64" y="-512" height="640" />
        </blockdef>
        <blockdef name="trigger_ch">
            <timestamp>2014-5-1T23:37:31</timestamp>
            <rect width="304" x="64" y="-656" height="656" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="0" y1="-304" y2="-304" x1="64" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <line x2="0" y1="-496" y2="-496" x1="64" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <line x2="0" y1="-624" y2="-624" x1="64" />
            <line x2="0" y1="-560" y2="-560" x1="64" />
            <line x2="432" y1="-624" y2="-624" x1="368" />
            <line x2="432" y1="-560" y2="-560" x1="368" />
            <line x2="432" y1="-496" y2="-496" x1="368" />
            <line x2="432" y1="-432" y2="-432" x1="368" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="trigger_ch" name="XLXI_3">
            <blockpin signalname="Trigger_1_L" name="Trigger_1L" />
            <blockpin signalname="Trigger_0_H" name="Trigger_0H" />
            <blockpin signalname="Trigger_0_L" name="Trigger_0L" />
            <blockpin signalname="Trigger_2_H" name="Trigger_2H" />
            <blockpin signalname="Trigger_2_L" name="Trigger_2L" />
            <blockpin signalname="Trigger_3_H" name="Trigger_3H" />
            <blockpin signalname="Trigger_3_L" name="Trigger_3L" />
            <blockpin signalname="and_or_sel_M" name="and_or_sel" />
            <blockpin signalname="diff_select_M" name="diff_select" />
            <blockpin signalname="Trigger_1_H" name="Trigger_1H" />
            <blockpin signalname="XLXN_21" name="Channel_0" />
            <blockpin signalname="XLXN_20" name="Channel_1" />
            <blockpin signalname="XLXN_19" name="Channel_2" />
            <blockpin signalname="XLXN_18" name="Channel_3" />
        </block>
        <block symbolname="majority_logic" name="XLXI_2">
            <blockpin signalname="XLXN_21" name="tri_in1" />
            <blockpin signalname="XLXN_20" name="tri_in2" />
            <blockpin signalname="XLXN_19" name="tri_in3" />
            <blockpin signalname="XLXN_18" name="tri_in4" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="mbed_sel0" name="mbed_sel0" />
            <blockpin signalname="mbed_sel1" name="mbed_sel1" />
            <blockpin signalname="enable_thermal_tri" name="enable_thermal_tri" />
            <blockpin signalname="ex_tri" name="ex_tri" />
            <blockpin signalname="force_tri" name="force_tri" />
            <blockpin signalname="Trigger_out" name="input_tri" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="and_or_sel_M" name="I" />
            <blockpin signalname="and_or_sel_SST" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="diff_select_M" name="I" />
            <blockpin signalname="diff_select_SST" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Trigger_0_L">
            <wire x2="1120" y1="1088" y2="1088" x1="992" />
        </branch>
        <branch name="Trigger_1_H">
            <wire x2="1120" y1="1152" y2="1152" x1="992" />
        </branch>
        <branch name="Trigger_1_L">
            <wire x2="1120" y1="1216" y2="1216" x1="992" />
        </branch>
        <branch name="Trigger_2_H">
            <wire x2="1120" y1="1280" y2="1280" x1="992" />
        </branch>
        <branch name="Trigger_2_L">
            <wire x2="1120" y1="1344" y2="1344" x1="992" />
        </branch>
        <branch name="Trigger_3_H">
            <wire x2="1120" y1="1408" y2="1408" x1="992" />
        </branch>
        <branch name="Trigger_3_L">
            <wire x2="1120" y1="1472" y2="1472" x1="992" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1680" y1="896" y2="896" x1="1552" />
        </branch>
        <branch name="ex_tri">
            <wire x2="1616" y1="1776" y2="1776" x1="848" />
            <wire x2="1680" y1="1344" y2="1344" x1="1616" />
            <wire x2="1616" y1="1344" y2="1776" x1="1616" />
        </branch>
        <branch name="Trigger_out">
            <wire x2="2192" y1="896" y2="896" x1="2064" />
        </branch>
        <branch name="and_or_sel_SST">
            <wire x2="2192" y1="608" y2="608" x1="1424" />
        </branch>
        <branch name="diff_select_SST">
            <wire x2="2192" y1="736" y2="736" x1="1424" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1680" y1="1088" y2="1088" x1="1552" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1680" y1="1024" y2="1024" x1="1552" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1680" y1="960" y2="960" x1="1552" />
        </branch>
        <branch name="Trigger_0_H">
            <wire x2="1120" y1="1024" y2="1024" x1="992" />
        </branch>
        <branch name="and_or_sel_M">
            <wire x2="944" y1="608" y2="608" x1="784" />
            <wire x2="944" y1="608" y2="896" x1="944" />
            <wire x2="1024" y1="896" y2="896" x1="944" />
            <wire x2="1120" y1="896" y2="896" x1="1024" />
            <wire x2="1200" y1="608" y2="608" x1="944" />
        </branch>
        <instance x="1200" y="768" name="XLXI_7" orien="R0" />
        <instance x="1200" y="640" name="XLXI_6" orien="R0" />
        <branch name="force_tri">
            <wire x2="1680" y1="1904" y2="1904" x1="896" />
            <wire x2="1680" y1="1472" y2="1904" x1="1680" />
        </branch>
        <branch name="enable_thermal_tri">
            <wire x2="1648" y1="1840" y2="1840" x1="1104" />
            <wire x2="1648" y1="1408" y2="1840" x1="1648" />
            <wire x2="1680" y1="1408" y2="1408" x1="1648" />
        </branch>
        <branch name="mbed_sel1">
            <wire x2="1584" y1="1712" y2="1712" x1="960" />
            <wire x2="1584" y1="1280" y2="1712" x1="1584" />
            <wire x2="1680" y1="1280" y2="1280" x1="1584" />
        </branch>
        <branch name="mbed_sel0">
            <wire x2="1552" y1="1648" y2="1648" x1="960" />
            <wire x2="1552" y1="1216" y2="1648" x1="1552" />
            <wire x2="1680" y1="1216" y2="1216" x1="1552" />
        </branch>
        <branch name="clk">
            <wire x2="1520" y1="1584" y2="1584" x1="800" />
            <wire x2="1520" y1="1152" y2="1584" x1="1520" />
            <wire x2="1680" y1="1152" y2="1152" x1="1520" />
        </branch>
        <iomarker fontsize="44" x="992" y="1024" name="Trigger_0_H" orien="R180" />
        <iomarker fontsize="44" x="992" y="1088" name="Trigger_0_L" orien="R180" />
        <iomarker fontsize="44" x="992" y="1152" name="Trigger_1_H" orien="R180" />
        <iomarker fontsize="44" x="992" y="1216" name="Trigger_1_L" orien="R180" />
        <iomarker fontsize="44" x="992" y="1280" name="Trigger_2_H" orien="R180" />
        <iomarker fontsize="44" x="992" y="1344" name="Trigger_2_L" orien="R180" />
        <iomarker fontsize="44" x="992" y="1408" name="Trigger_3_H" orien="R180" />
        <iomarker fontsize="44" x="992" y="1472" name="Trigger_3_L" orien="R180" />
        <iomarker fontsize="44" x="960" y="1712" name="mbed_sel1" orien="R180" />
        <iomarker fontsize="44" x="960" y="1648" name="mbed_sel0" orien="R180" />
        <iomarker fontsize="44" x="1104" y="1840" name="enable_thermal_tri" orien="R180" />
        <iomarker fontsize="44" x="848" y="1776" name="ex_tri" orien="R180" />
        <iomarker fontsize="44" x="896" y="1904" name="force_tri" orien="R180" />
        <iomarker fontsize="44" x="800" y="1584" name="clk" orien="R180" />
        <instance x="1680" y="1376" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="44" x="2192" y="896" name="Trigger_out" orien="R0" />
        <iomarker fontsize="44" x="2192" y="736" name="diff_select_SST" orien="R0" />
        <iomarker fontsize="44" x="2192" y="608" name="and_or_sel_SST" orien="R0" />
        <iomarker fontsize="44" x="784" y="736" name="diff_select_M" orien="R180" />
        <iomarker fontsize="44" x="784" y="608" name="and_or_sel_M" orien="R180" />
        <branch name="diff_select_M">
            <wire x2="976" y1="736" y2="736" x1="784" />
            <wire x2="1200" y1="736" y2="736" x1="976" />
            <wire x2="976" y1="736" y2="960" x1="976" />
            <wire x2="1120" y1="960" y2="960" x1="976" />
        </branch>
        <instance x="1120" y="1520" name="XLXI_3" orien="R0">
        </instance>
    </sheet>
</drawing>