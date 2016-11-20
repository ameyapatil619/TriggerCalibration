<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="full" />
        <signal name="XLXN_2" />
        <signal name="en" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="re" />
        <signal name="we" />
        <signal name="addr(11:0)" />
        <signal name="done" />
        <signal name="start" />
        <port polarity="Output" name="full" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="re" />
        <port polarity="Output" name="we" />
        <port polarity="Output" name="addr(11:0)" />
        <port polarity="Output" name="done" />
        <port polarity="Output" name="start" />
        <blockdef name="address_gen">
            <timestamp>2014-8-9T20:14:43</timestamp>
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
            <timestamp>2014-8-9T20:14:57</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="wait_done_gen">
            <timestamp>2014-8-9T20:15:8</timestamp>
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
        <block symbolname="address_gen" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="we" name="we" />
            <blockpin signalname="full" name="full_flag" />
            <blockpin signalname="addr(11:0)" name="address(11:0)" />
        </block>
        <block symbolname="wait_logic" name="XLXI_3">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_2" name="wait_sig" />
            <blockpin signalname="start" name="start" />
        </block>
        <block symbolname="wait_done_gen" name="XLXI_4">
            <blockpin signalname="full" name="full_flag" />
            <blockpin signalname="re" name="re" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_2" name="wait_sig" />
            <blockpin signalname="done" name="done" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="re" name="I" />
            <blockpin signalname="we" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="880" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1488" y="816" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2208" y="688" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="2208" y1="656" y2="656" x1="1872" />
        </branch>
        <branch name="en">
            <wire x2="2208" y1="528" y2="528" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2176" y="528" name="en" orien="R180" />
        <branch name="clk">
            <wire x2="752" y1="656" y2="656" x1="192" />
        </branch>
        <branch name="rst">
            <wire x2="592" y1="784" y2="784" x1="192" />
            <wire x2="752" y1="784" y2="784" x1="592" />
            <wire x2="1200" y1="464" y2="464" x1="592" />
            <wire x2="1936" y1="464" y2="464" x1="1200" />
            <wire x2="1936" y1="464" y2="592" x1="1936" />
            <wire x2="2208" y1="592" y2="592" x1="1936" />
            <wire x2="1200" y1="464" y2="784" x1="1200" />
            <wire x2="1488" y1="784" y2="784" x1="1200" />
            <wire x2="592" y1="464" y2="784" x1="592" />
        </branch>
        <branch name="re">
            <wire x2="272" y1="912" y2="912" x1="192" />
            <wire x2="304" y1="912" y2="912" x1="272" />
            <wire x2="272" y1="912" y2="992" x1="272" />
            <wire x2="1328" y1="992" y2="992" x1="272" />
            <wire x2="1488" y1="720" y2="720" x1="1328" />
            <wire x2="1328" y1="720" y2="992" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="192" y="912" name="re" orien="R180" />
        <iomarker fontsize="28" x="192" y="656" name="clk" orien="R180" />
        <iomarker fontsize="28" x="192" y="784" name="rst" orien="R180" />
        <branch name="we">
            <wire x2="672" y1="912" y2="912" x1="528" />
            <wire x2="2720" y1="912" y2="912" x1="672" />
            <wire x2="672" y1="848" y2="912" x1="672" />
            <wire x2="752" y1="848" y2="848" x1="672" />
        </branch>
        <instance x="304" y="944" name="XLXI_5" orien="R0" />
        <branch name="addr(11:0)">
            <wire x2="1152" y1="848" y2="848" x1="1136" />
            <wire x2="2720" y1="848" y2="848" x1="1152" />
        </branch>
        <branch name="done">
            <wire x2="1888" y1="784" y2="784" x1="1872" />
            <wire x2="2720" y1="784" y2="784" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="2720" y="784" name="done" orien="R0" />
        <iomarker fontsize="28" x="2720" y="848" name="addr(11:0)" orien="R0" />
        <branch name="start">
            <wire x2="672" y1="320" y2="720" x1="672" />
            <wire x2="752" y1="720" y2="720" x1="672" />
            <wire x2="2672" y1="320" y2="320" x1="672" />
            <wire x2="2672" y1="320" y2="528" x1="2672" />
            <wire x2="2720" y1="528" y2="528" x1="2672" />
            <wire x2="2608" y1="528" y2="528" x1="2592" />
            <wire x2="2672" y1="528" y2="528" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2720" y="528" name="start" orien="R0" />
        <branch name="full">
            <wire x2="1136" y1="384" y2="656" x1="1136" />
            <wire x2="1408" y1="384" y2="384" x1="1136" />
            <wire x2="1408" y1="384" y2="656" x1="1408" />
            <wire x2="1488" y1="656" y2="656" x1="1408" />
            <wire x2="2720" y1="384" y2="384" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="2720" y="384" name="full" orien="R0" />
        <iomarker fontsize="28" x="2720" y="912" name="we" orien="R0" />
    </sheet>
</drawing>