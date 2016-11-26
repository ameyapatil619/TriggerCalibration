<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="trigger" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="stop" />
        <signal name="XLXN_161" />
        <signal name="XLXN_163" />
        <signal name="XLXN_164" />
        <signal name="XLXN_167" />
        <port polarity="Input" name="trigger" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="stop" />
        <blockdef name="stop_latch">
            <timestamp>2014-8-29T1:51:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <blockdef name="fd_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="stop_latch" name="XLXI_1">
            <blockpin signalname="trigger" name="trigger_in" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_167" name="rst" />
            <blockpin signalname="XLXN_161" name="stop" />
        </block>
        <block symbolname="fd" name="XLXI_33">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_164" name="D" />
            <blockpin signalname="XLXN_163" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_32">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="reset" name="D" />
            <blockpin signalname="XLXN_164" name="Q" />
        </block>
        <block symbolname="or5" name="XLXI_48">
            <blockpin signalname="XLXN_161" name="I0" />
            <blockpin signalname="XLXN_167" name="I1" />
            <blockpin signalname="XLXN_163" name="I2" />
            <blockpin signalname="XLXN_164" name="I3" />
            <blockpin signalname="reset" name="I4" />
            <blockpin signalname="stop" name="O" />
        </block>
        <block symbolname="fd_1" name="XLXI_49">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_163" name="D" />
            <blockpin signalname="XLXN_167" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="trigger">
            <wire x2="2336" y1="1136" y2="1136" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1136" name="trigger" orien="R180" />
        <iomarker fontsize="28" x="272" y="1200" name="clk" orien="R180" />
        <instance x="2336" y="1296" name="XLXI_1" orien="R0">
        </instance>
        <instance x="496" y="1952" name="XLXI_32" orien="R0" />
        <iomarker fontsize="28" x="256" y="1520" name="reset" orien="R180" />
        <branch name="clk">
            <wire x2="464" y1="1200" y2="1200" x1="272" />
            <wire x2="2336" y1="1200" y2="1200" x1="464" />
            <wire x2="464" y1="1200" y2="1824" x1="464" />
            <wire x2="496" y1="1824" y2="1824" x1="464" />
            <wire x2="464" y1="1824" y2="1968" x1="464" />
            <wire x2="928" y1="1968" y2="1968" x1="464" />
            <wire x2="1392" y1="1968" y2="1968" x1="928" />
            <wire x2="928" y1="1824" y2="1968" x1="928" />
            <wire x2="944" y1="1824" y2="1824" x1="928" />
            <wire x2="1392" y1="1824" y2="1968" x1="1392" />
            <wire x2="1424" y1="1824" y2="1824" x1="1392" />
        </branch>
        <instance x="944" y="1952" name="XLXI_33" orien="R0" />
        <instance x="2800" y="1200" name="XLXI_48" orien="R0" />
        <branch name="stop">
            <wire x2="3088" y1="1008" y2="1008" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1008" name="stop" orien="R0" />
        <branch name="XLXN_161">
            <wire x2="2800" y1="1136" y2="1136" x1="2720" />
        </branch>
        <branch name="XLXN_163">
            <wire x2="1376" y1="1696" y2="1696" x1="1328" />
            <wire x2="1424" y1="1696" y2="1696" x1="1376" />
            <wire x2="2800" y1="1008" y2="1008" x1="1376" />
            <wire x2="1376" y1="1008" y2="1696" x1="1376" />
        </branch>
        <branch name="XLXN_164">
            <wire x2="912" y1="1696" y2="1696" x1="880" />
            <wire x2="944" y1="1696" y2="1696" x1="912" />
            <wire x2="2800" y1="944" y2="944" x1="912" />
            <wire x2="912" y1="944" y2="1696" x1="912" />
        </branch>
        <instance x="1424" y="1952" name="XLXI_49" orien="R0" />
        <branch name="reset">
            <wire x2="496" y1="1520" y2="1520" x1="256" />
            <wire x2="496" y1="1520" y2="1696" x1="496" />
            <wire x2="2800" y1="880" y2="880" x1="496" />
            <wire x2="496" y1="880" y2="1520" x1="496" />
        </branch>
        <branch name="XLXN_167">
            <wire x2="2064" y1="1696" y2="1696" x1="1808" />
            <wire x2="2800" y1="1072" y2="1072" x1="2064" />
            <wire x2="2064" y1="1072" y2="1264" x1="2064" />
            <wire x2="2064" y1="1264" y2="1696" x1="2064" />
            <wire x2="2336" y1="1264" y2="1264" x1="2064" />
        </branch>
    </sheet>
</drawing>