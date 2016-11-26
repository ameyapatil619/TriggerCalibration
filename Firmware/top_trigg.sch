<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rst" />
        <signal name="clk" />
        <signal name="enable" />
        <signal name="trig_0H" />
        <signal name="trig_0L" />
        <signal name="trig_1H" />
        <signal name="trig_1L" />
        <signal name="trig_2H" />
        <signal name="trig_2L" />
        <signal name="trig_3L" />
        <signal name="trig_3H" />
        <signal name="trig_ct_0H(31:0)" />
        <signal name="trig_ct_0L(31:0)" />
        <signal name="trig_ct_1H(31:0)" />
        <signal name="trig_ct_1L(31:0)" />
        <signal name="trig_ct_2H(31:0)" />
        <signal name="trig_ct_2L(31:0)" />
        <signal name="trig_ct_3H(31:0)" />
        <signal name="trig_ct_3L(31:0)" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="enable" />
        <port polarity="Input" name="trig_0H" />
        <port polarity="Input" name="trig_0L" />
        <port polarity="Input" name="trig_1H" />
        <port polarity="Input" name="trig_1L" />
        <port polarity="Input" name="trig_2H" />
        <port polarity="Input" name="trig_2L" />
        <port polarity="Input" name="trig_3L" />
        <port polarity="Input" name="trig_3H" />
        <port polarity="Output" name="trig_ct_0H(31:0)" />
        <port polarity="Output" name="trig_ct_0L(31:0)" />
        <port polarity="Output" name="trig_ct_1H(31:0)" />
        <port polarity="Output" name="trig_ct_1L(31:0)" />
        <port polarity="Output" name="trig_ct_2H(31:0)" />
        <port polarity="Output" name="trig_ct_2L(31:0)" />
        <port polarity="Output" name="trig_ct_3H(31:0)" />
        <port polarity="Output" name="trig_ct_3L(31:0)" />
        <blockdef name="cntr_trigg">
            <timestamp>2016-11-26T2:34:16</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="cntr_trigg" name="XLXI_1">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_0H" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_0H(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="cntr_trigg" name="XLXI_2">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_0L" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_0L(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="cntr_trigg" name="XLXI_3">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_1H" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_1H(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="cntr_trigg" name="XLXI_5">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_2H" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_2H(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="cntr_trigg" name="XLXI_7">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_3H" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_3H(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="cntr_trigg" name="XLXI_6">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_2L" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_2L(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="cntr_trigg" name="XLXI_29">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_3L" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_3L(31:0)" name="q(31:0)" />
        </block>
        <block symbolname="cntr_trigg" name="XLXI_46">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="trig_1L" name="trigger" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="trig_ct_1L(31:0)" name="q(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1456" y="336" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1456" y="688" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1456" y="1040" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1456" y="1696" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1456" y="2368" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1456" y="2032" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1456" y="2688" name="XLXI_29" orien="R0">
        </instance>
        <branch name="rst">
            <wire x2="1440" y1="112" y2="112" x1="976" />
            <wire x2="1456" y1="112" y2="112" x1="1440" />
            <wire x2="1440" y1="112" y2="464" x1="1440" />
            <wire x2="1440" y1="464" y2="816" x1="1440" />
            <wire x2="1440" y1="816" y2="1152" x1="1440" />
            <wire x2="1456" y1="1152" y2="1152" x1="1440" />
            <wire x2="1440" y1="1152" y2="1472" x1="1440" />
            <wire x2="1440" y1="1472" y2="1808" x1="1440" />
            <wire x2="1440" y1="1808" y2="2144" x1="1440" />
            <wire x2="1440" y1="2144" y2="2464" x1="1440" />
            <wire x2="1456" y1="2464" y2="2464" x1="1440" />
            <wire x2="1456" y1="2144" y2="2144" x1="1440" />
            <wire x2="1456" y1="1808" y2="1808" x1="1440" />
            <wire x2="1456" y1="1472" y2="1472" x1="1440" />
            <wire x2="1456" y1="816" y2="816" x1="1440" />
            <wire x2="1456" y1="464" y2="464" x1="1440" />
        </branch>
        <branch name="clk">
            <wire x2="1424" y1="176" y2="176" x1="976" />
            <wire x2="1456" y1="176" y2="176" x1="1424" />
            <wire x2="1424" y1="176" y2="528" x1="1424" />
            <wire x2="1424" y1="528" y2="880" x1="1424" />
            <wire x2="1424" y1="880" y2="1216" x1="1424" />
            <wire x2="1424" y1="1216" y2="1536" x1="1424" />
            <wire x2="1424" y1="1536" y2="1872" x1="1424" />
            <wire x2="1424" y1="1872" y2="2208" x1="1424" />
            <wire x2="1424" y1="2208" y2="2528" x1="1424" />
            <wire x2="1456" y1="2528" y2="2528" x1="1424" />
            <wire x2="1456" y1="2208" y2="2208" x1="1424" />
            <wire x2="1456" y1="1872" y2="1872" x1="1424" />
            <wire x2="1456" y1="1536" y2="1536" x1="1424" />
            <wire x2="1456" y1="1216" y2="1216" x1="1424" />
            <wire x2="1456" y1="880" y2="880" x1="1424" />
            <wire x2="1456" y1="528" y2="528" x1="1424" />
        </branch>
        <branch name="enable">
            <wire x2="1408" y1="304" y2="304" x1="992" />
            <wire x2="1456" y1="304" y2="304" x1="1408" />
            <wire x2="1408" y1="304" y2="656" x1="1408" />
            <wire x2="1456" y1="656" y2="656" x1="1408" />
            <wire x2="1408" y1="656" y2="1008" x1="1408" />
            <wire x2="1456" y1="1008" y2="1008" x1="1408" />
            <wire x2="1408" y1="1008" y2="1344" x1="1408" />
            <wire x2="1408" y1="1344" y2="1664" x1="1408" />
            <wire x2="1408" y1="1664" y2="2000" x1="1408" />
            <wire x2="1408" y1="2000" y2="2336" x1="1408" />
            <wire x2="1408" y1="2336" y2="2656" x1="1408" />
            <wire x2="1456" y1="2656" y2="2656" x1="1408" />
            <wire x2="1456" y1="2336" y2="2336" x1="1408" />
            <wire x2="1456" y1="2000" y2="2000" x1="1408" />
            <wire x2="1456" y1="1664" y2="1664" x1="1408" />
            <wire x2="1456" y1="1344" y2="1344" x1="1408" />
        </branch>
        <instance x="1456" y="1376" name="XLXI_46" orien="R0">
        </instance>
        <branch name="trig_0H">
            <wire x2="1456" y1="240" y2="240" x1="528" />
        </branch>
        <branch name="trig_0L">
            <wire x2="1456" y1="592" y2="592" x1="528" />
        </branch>
        <branch name="trig_1H">
            <wire x2="1456" y1="944" y2="944" x1="528" />
        </branch>
        <branch name="trig_1L">
            <wire x2="1456" y1="1280" y2="1280" x1="528" />
        </branch>
        <branch name="trig_2H">
            <wire x2="1456" y1="1600" y2="1600" x1="528" />
        </branch>
        <branch name="trig_2L">
            <wire x2="1456" y1="1936" y2="1936" x1="528" />
        </branch>
        <branch name="trig_3L">
            <wire x2="1456" y1="2592" y2="2592" x1="544" />
        </branch>
        <iomarker fontsize="28" x="528" y="240" name="trig_0H" orien="R180" />
        <iomarker fontsize="28" x="528" y="592" name="trig_0L" orien="R180" />
        <iomarker fontsize="28" x="528" y="944" name="trig_1H" orien="R180" />
        <iomarker fontsize="28" x="528" y="1280" name="trig_1L" orien="R180" />
        <iomarker fontsize="28" x="528" y="1600" name="trig_2H" orien="R180" />
        <iomarker fontsize="28" x="528" y="1936" name="trig_2L" orien="R180" />
        <iomarker fontsize="28" x="544" y="2592" name="trig_3L" orien="R180" />
        <branch name="trig_3H">
            <wire x2="1456" y1="2272" y2="2272" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="2272" name="trig_3H" orien="R180" />
        <branch name="trig_ct_0H(31:0)">
            <wire x2="2528" y1="112" y2="112" x1="1840" />
        </branch>
        <branch name="trig_ct_0L(31:0)">
            <wire x2="2528" y1="464" y2="464" x1="1840" />
        </branch>
        <branch name="trig_ct_1H(31:0)">
            <wire x2="2528" y1="816" y2="816" x1="1840" />
        </branch>
        <branch name="trig_ct_1L(31:0)">
            <wire x2="2528" y1="1152" y2="1152" x1="1840" />
        </branch>
        <branch name="trig_ct_2H(31:0)">
            <wire x2="2544" y1="1472" y2="1472" x1="1840" />
        </branch>
        <branch name="trig_ct_2L(31:0)">
            <wire x2="2544" y1="1808" y2="1808" x1="1840" />
        </branch>
        <branch name="trig_ct_3H(31:0)">
            <wire x2="2560" y1="2144" y2="2144" x1="1840" />
        </branch>
        <branch name="trig_ct_3L(31:0)">
            <wire x2="2560" y1="2464" y2="2464" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="2528" y="112" name="trig_ct_0H(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2528" y="464" name="trig_ct_0L(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2528" y="816" name="trig_ct_1H(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1152" name="trig_ct_1L(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2544" y="1472" name="trig_ct_2H(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2544" y="1808" name="trig_ct_2L(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="2144" name="trig_ct_3H(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="2464" name="trig_ct_3L(31:0)" orien="R0" />
        <iomarker fontsize="28" x="976" y="112" name="rst" orien="R180" />
        <iomarker fontsize="28" x="976" y="176" name="clk" orien="R180" />
        <iomarker fontsize="28" x="992" y="304" name="enable" orien="R180" />
    </sheet>
</drawing>