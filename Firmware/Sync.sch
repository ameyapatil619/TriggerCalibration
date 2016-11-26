<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_80M" />
        <signal name="clk_20" />
        <signal name="clk_1" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="clk_20M" />
        <signal name="clk_1M" />
        <port polarity="Input" name="clk_80M" />
        <port polarity="Input" name="clk_20" />
        <port polarity="Input" name="clk_1" />
        <port polarity="Output" name="clk_20M" />
        <port polarity="Output" name="clk_1M" />
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
        <block symbolname="fd_1" name="XLXI_8">
            <blockpin signalname="clk_80M" name="C" />
            <blockpin signalname="clk_20" name="D" />
            <blockpin signalname="clk_20M" name="Q" />
        </block>
        <block symbolname="fd_1" name="XLXI_11">
            <blockpin signalname="clk_20M" name="C" />
            <blockpin signalname="clk_1" name="D" />
            <blockpin signalname="XLXN_7" name="Q" />
        </block>
        <block symbolname="fd_1" name="XLXI_18">
            <blockpin signalname="clk_20M" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="XLXN_8" name="Q" />
        </block>
        <block symbolname="fd_1" name="XLXI_19">
            <blockpin signalname="clk_20M" name="C" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="clk_1M" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <iomarker fontsize="28" x="400" y="2528" name="clk_80M" orien="R180" />
        <branch name="clk_20">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2096" type="branch" />
            <wire x2="576" y1="2096" y2="2096" x1="384" />
            <wire x2="768" y1="2096" y2="2096" x1="576" />
        </branch>
        <branch name="clk_1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1680" type="branch" />
            <wire x2="576" y1="1680" y2="1680" x1="384" />
            <wire x2="1792" y1="1680" y2="1680" x1="576" />
        </branch>
        <iomarker fontsize="28" x="384" y="1680" name="clk_1" orien="R180" />
        <iomarker fontsize="28" x="384" y="2096" name="clk_20" orien="R180" />
        <instance x="768" y="2352" name="XLXI_8" orien="R0" />
        <instance x="1792" y="1936" name="XLXI_11" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2240" y1="1680" y2="1680" x1="2176" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2672" y1="1680" y2="1680" x1="2624" />
        </branch>
        <instance x="2240" y="1936" name="XLXI_18" orien="R0" />
        <instance x="2672" y="1936" name="XLXI_19" orien="R0" />
        <iomarker fontsize="28" x="4016" y="2096" name="clk_20M" orien="R0" />
        <branch name="clk_1M">
            <wire x2="4000" y1="1680" y2="1680" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="4000" y="1680" name="clk_1M" orien="R0" />
        <branch name="clk_20M">
            <wire x2="1280" y1="2096" y2="2096" x1="1152" />
            <wire x2="1664" y1="2096" y2="2096" x1="1280" />
            <wire x2="1728" y1="2096" y2="2096" x1="1664" />
            <wire x2="2224" y1="2096" y2="2096" x1="1728" />
            <wire x2="2656" y1="2096" y2="2096" x1="2224" />
            <wire x2="4016" y1="2096" y2="2096" x1="2656" />
            <wire x2="1792" y1="1808" y2="1808" x1="1728" />
            <wire x2="1728" y1="1808" y2="2096" x1="1728" />
            <wire x2="2240" y1="1808" y2="1808" x1="2224" />
            <wire x2="2224" y1="1808" y2="2096" x1="2224" />
            <wire x2="2672" y1="1808" y2="1808" x1="2656" />
            <wire x2="2656" y1="1808" y2="2096" x1="2656" />
        </branch>
        <branch name="clk_80M">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="496" y="2528" type="branch" />
            <wire x2="496" y1="2528" y2="2528" x1="400" />
            <wire x2="656" y1="2528" y2="2528" x1="496" />
            <wire x2="1200" y1="2528" y2="2528" x1="656" />
            <wire x2="768" y1="2224" y2="2224" x1="656" />
            <wire x2="656" y1="2224" y2="2528" x1="656" />
        </branch>
    </sheet>
</drawing>