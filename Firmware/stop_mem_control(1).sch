<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="en" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="re" />
        <signal name="we" />
        <signal name="done" />
        <signal name="start" />
        <signal name="full" />
        <signal name="addr(7:0)" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="re" />
        <port polarity="Output" name="we" />
        <port polarity="Output" name="done" />
        <port polarity="Output" name="start" />
        <port polarity="Output" name="full" />
        <port polarity="Output" name="addr(7:0)" />
        <blockdef name="stop_address_gen">
            <timestamp>2014-8-9T23:4:21</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="wait_logic">
            <timestamp>2014-5-2T2:42:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="wait_done_gen">
            <timestamp>2014-4-22T8:34:48</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="wait_done_gen" name="XLXI_4">
            <blockpin signalname="full" name="full_flag" />
            <blockpin signalname="re" name="re" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_2" name="wait_sig" />
            <blockpin signalname="done" name="done" />
        </block>
        <block symbolname="wait_logic" name="XLXI_3">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_2" name="wait_sig" />
            <blockpin signalname="start" name="start" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="re" name="I" />
            <blockpin signalname="we" name="O" />
        </block>
        <block symbolname="stop_address_gen" name="XLXI_8">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="we" name="we" />
            <blockpin signalname="full" name="full_flag" />
            <blockpin signalname="addr(7:0)" name="address(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2">
            <wire x2="2352" y1="976" y2="976" x1="2016" />
        </branch>
        <branch name="en">
            <wire x2="2352" y1="848" y2="848" x1="2320" />
        </branch>
        <branch name="clk">
            <wire x2="896" y1="976" y2="976" x1="336" />
        </branch>
        <branch name="rst">
            <wire x2="736" y1="1104" y2="1104" x1="336" />
            <wire x2="896" y1="1104" y2="1104" x1="736" />
            <wire x2="1344" y1="784" y2="784" x1="736" />
            <wire x2="2080" y1="784" y2="784" x1="1344" />
            <wire x2="2080" y1="784" y2="912" x1="2080" />
            <wire x2="2352" y1="912" y2="912" x1="2080" />
            <wire x2="1344" y1="784" y2="1104" x1="1344" />
            <wire x2="1632" y1="1104" y2="1104" x1="1344" />
            <wire x2="736" y1="784" y2="1104" x1="736" />
        </branch>
        <branch name="re">
            <wire x2="416" y1="1232" y2="1232" x1="336" />
            <wire x2="448" y1="1232" y2="1232" x1="416" />
            <wire x2="416" y1="1232" y2="1312" x1="416" />
            <wire x2="1472" y1="1312" y2="1312" x1="416" />
            <wire x2="1632" y1="1040" y2="1040" x1="1472" />
            <wire x2="1472" y1="1040" y2="1312" x1="1472" />
        </branch>
        <branch name="we">
            <wire x2="816" y1="1232" y2="1232" x1="672" />
            <wire x2="2864" y1="1232" y2="1232" x1="816" />
            <wire x2="816" y1="1168" y2="1232" x1="816" />
            <wire x2="896" y1="1168" y2="1168" x1="816" />
        </branch>
        <branch name="done">
            <wire x2="2864" y1="1104" y2="1104" x1="2016" />
        </branch>
        <branch name="start">
            <wire x2="816" y1="640" y2="1040" x1="816" />
            <wire x2="896" y1="1040" y2="1040" x1="816" />
            <wire x2="2816" y1="640" y2="640" x1="816" />
            <wire x2="2816" y1="640" y2="848" x1="2816" />
            <wire x2="2864" y1="848" y2="848" x1="2816" />
            <wire x2="2816" y1="848" y2="848" x1="2736" />
        </branch>
        <branch name="full">
            <wire x2="1280" y1="704" y2="976" x1="1280" />
            <wire x2="1552" y1="704" y2="704" x1="1280" />
            <wire x2="1552" y1="704" y2="976" x1="1552" />
            <wire x2="1632" y1="976" y2="976" x1="1552" />
            <wire x2="2864" y1="704" y2="704" x1="1552" />
        </branch>
        <instance x="1632" y="1136" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2352" y="1008" name="XLXI_3" orien="R0">
        </instance>
        <instance x="448" y="1264" name="XLXI_5" orien="R0" />
        <iomarker fontsize="28" x="2320" y="848" name="en" orien="R180" />
        <iomarker fontsize="28" x="336" y="1232" name="re" orien="R180" />
        <iomarker fontsize="28" x="336" y="976" name="clk" orien="R180" />
        <iomarker fontsize="28" x="336" y="1104" name="rst" orien="R180" />
        <iomarker fontsize="28" x="2864" y="1104" name="done" orien="R0" />
        <iomarker fontsize="28" x="2864" y="848" name="start" orien="R0" />
        <iomarker fontsize="28" x="2864" y="704" name="full" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1232" name="we" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1168" name="addr(7:0)" orien="R0" />
        <branch name="addr(7:0)">
            <wire x2="1296" y1="1168" y2="1168" x1="1280" />
            <wire x2="2528" y1="1168" y2="1168" x1="1296" />
            <wire x2="2864" y1="1168" y2="1168" x1="2528" />
        </branch>
        <instance x="896" y="1200" name="XLXI_8" orien="R0">
        </instance>
    </sheet>
</drawing>