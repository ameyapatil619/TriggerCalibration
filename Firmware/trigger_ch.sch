<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Trigger_1L" />
        <signal name="Trigger_0H" />
        <signal name="Trigger_0L" />
        <signal name="Trigger_2H" />
        <signal name="Trigger_2L" />
        <signal name="Trigger_3H" />
        <signal name="Trigger_3L" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="and_or_sel" />
        <signal name="diff_select" />
        <signal name="Trigger_1H" />
        <signal name="XLXN_159" />
        <signal name="XLXN_160" />
        <signal name="Channel_0" />
        <signal name="Channel_1" />
        <signal name="Channel_2" />
        <signal name="Channel_3" />
        <signal name="XLXN_196" />
        <signal name="XLXN_197" />
        <signal name="XLXN_198" />
        <signal name="XLXN_199" />
        <signal name="XLXN_200" />
        <signal name="XLXN_201" />
        <signal name="XLXN_202" />
        <signal name="XLXN_203" />
        <signal name="XLXN_204" />
        <signal name="XLXN_205" />
        <signal name="XLXN_206" />
        <signal name="XLXN_207" />
        <port polarity="Input" name="Trigger_1L" />
        <port polarity="Input" name="Trigger_0H" />
        <port polarity="Input" name="Trigger_0L" />
        <port polarity="Input" name="Trigger_2H" />
        <port polarity="Input" name="Trigger_2L" />
        <port polarity="Input" name="Trigger_3H" />
        <port polarity="Input" name="Trigger_3L" />
        <port polarity="Input" name="and_or_sel" />
        <port polarity="Input" name="diff_select" />
        <port polarity="Input" name="Trigger_1H" />
        <port polarity="Output" name="Channel_0" />
        <port polarity="Output" name="Channel_1" />
        <port polarity="Output" name="Channel_2" />
        <port polarity="Output" name="Channel_3" />
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
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="Trigger_0L" name="I0" />
            <blockpin signalname="Trigger_0H" name="I1" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="Trigger_1L" name="I0" />
            <blockpin signalname="Trigger_1H" name="I1" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="Trigger_2L" name="I0" />
            <blockpin signalname="Trigger_2H" name="I1" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_10">
            <blockpin signalname="Trigger_3L" name="I0" />
            <blockpin signalname="Trigger_3H" name="I1" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_63">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="and_or_sel" name="I1" />
            <blockpin signalname="Trigger_0L" name="I2" />
            <blockpin signalname="Trigger_0H" name="I3" />
            <blockpin signalname="XLXN_197" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_64">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="and_or_sel" name="I1" />
            <blockpin signalname="Trigger_1L" name="I2" />
            <blockpin signalname="Trigger_1H" name="I3" />
            <blockpin signalname="XLXN_202" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_65">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="and_or_sel" name="I1" />
            <blockpin signalname="Trigger_2L" name="I2" />
            <blockpin signalname="Trigger_2H" name="I3" />
            <blockpin signalname="XLXN_203" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_66">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="and_or_sel" name="I1" />
            <blockpin signalname="Trigger_3L" name="I2" />
            <blockpin signalname="Trigger_3H" name="I3" />
            <blockpin signalname="XLXN_204" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_67">
            <blockpin signalname="diff_select" name="I" />
            <blockpin signalname="XLXN_160" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_68">
            <blockpin signalname="and_or_sel" name="I" />
            <blockpin signalname="XLXN_159" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_69">
            <blockpin signalname="diff_select" name="I0" />
            <blockpin signalname="Trigger_0L" name="I1" />
            <blockpin signalname="XLXN_198" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_70">
            <blockpin signalname="diff_select" name="I0" />
            <blockpin signalname="Trigger_1L" name="I1" />
            <blockpin signalname="XLXN_205" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_71">
            <blockpin signalname="diff_select" name="I0" />
            <blockpin signalname="Trigger_2L" name="I1" />
            <blockpin signalname="XLXN_206" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_72">
            <blockpin signalname="diff_select" name="I0" />
            <blockpin signalname="Trigger_3L" name="I1" />
            <blockpin signalname="XLXN_207" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_59">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="XLXN_159" name="I1" />
            <blockpin signalname="XLXN_53" name="I2" />
            <blockpin signalname="XLXN_196" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_60">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="XLXN_159" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="XLXN_199" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_61">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="XLXN_159" name="I1" />
            <blockpin signalname="XLXN_55" name="I2" />
            <blockpin signalname="XLXN_200" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_62">
            <blockpin signalname="XLXN_160" name="I0" />
            <blockpin signalname="XLXN_159" name="I1" />
            <blockpin signalname="XLXN_56" name="I2" />
            <blockpin signalname="XLXN_201" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_93">
            <blockpin signalname="XLXN_198" name="I0" />
            <blockpin signalname="XLXN_197" name="I1" />
            <blockpin signalname="XLXN_196" name="I2" />
            <blockpin signalname="Channel_0" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_94">
            <blockpin signalname="XLXN_205" name="I0" />
            <blockpin signalname="XLXN_202" name="I1" />
            <blockpin signalname="XLXN_199" name="I2" />
            <blockpin signalname="Channel_1" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_95">
            <blockpin signalname="XLXN_206" name="I0" />
            <blockpin signalname="XLXN_203" name="I1" />
            <blockpin signalname="XLXN_200" name="I2" />
            <blockpin signalname="Channel_2" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_96">
            <blockpin signalname="XLXN_207" name="I0" />
            <blockpin signalname="XLXN_204" name="I1" />
            <blockpin signalname="XLXN_201" name="I2" />
            <blockpin signalname="Channel_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="Trigger_1L">
            <wire x2="1344" y1="624" y2="624" x1="1184" />
            <wire x2="1472" y1="624" y2="624" x1="1344" />
            <wire x2="1680" y1="624" y2="624" x1="1472" />
            <wire x2="1472" y1="624" y2="1584" x1="1472" />
            <wire x2="2144" y1="1584" y2="1584" x1="1472" />
            <wire x2="1344" y1="624" y2="2448" x1="1344" />
            <wire x2="2144" y1="2448" y2="2448" x1="1344" />
        </branch>
        <branch name="Trigger_3L">
            <wire x2="1280" y1="1008" y2="1008" x1="1184" />
            <wire x2="1408" y1="1008" y2="1008" x1="1280" />
            <wire x2="1680" y1="1008" y2="1008" x1="1408" />
            <wire x2="1408" y1="1008" y2="2096" x1="1408" />
            <wire x2="2144" y1="2096" y2="2096" x1="1408" />
            <wire x2="1280" y1="1008" y2="2736" x1="1280" />
            <wire x2="2144" y1="2736" y2="2736" x1="1280" />
        </branch>
        <branch name="Trigger_2L">
            <wire x2="1312" y1="816" y2="816" x1="1184" />
            <wire x2="1440" y1="816" y2="816" x1="1312" />
            <wire x2="1680" y1="816" y2="816" x1="1440" />
            <wire x2="1440" y1="816" y2="1840" x1="1440" />
            <wire x2="2144" y1="1840" y2="1840" x1="1440" />
            <wire x2="1312" y1="816" y2="2592" x1="1312" />
            <wire x2="2144" y1="2592" y2="2592" x1="1312" />
        </branch>
        <branch name="and_or_sel">
            <wire x2="1968" y1="2160" y2="2160" x1="1136" />
            <wire x2="2144" y1="2160" y2="2160" x1="1968" />
            <wire x2="1968" y1="1264" y2="1408" x1="1968" />
            <wire x2="2144" y1="1408" y2="1408" x1="1968" />
            <wire x2="1968" y1="1408" y2="1648" x1="1968" />
            <wire x2="2144" y1="1648" y2="1648" x1="1968" />
            <wire x2="1968" y1="1648" y2="1904" x1="1968" />
            <wire x2="2144" y1="1904" y2="1904" x1="1968" />
            <wire x2="1968" y1="1904" y2="2160" x1="1968" />
        </branch>
        <branch name="Trigger_1H">
            <wire x2="1600" y1="560" y2="560" x1="1184" />
            <wire x2="1680" y1="560" y2="560" x1="1600" />
            <wire x2="1600" y1="560" y2="1520" x1="1600" />
            <wire x2="2144" y1="1520" y2="1520" x1="1600" />
        </branch>
        <branch name="Trigger_2H">
            <wire x2="1568" y1="752" y2="752" x1="1184" />
            <wire x2="1680" y1="752" y2="752" x1="1568" />
            <wire x2="1568" y1="752" y2="1776" x1="1568" />
            <wire x2="2144" y1="1776" y2="1776" x1="1568" />
        </branch>
        <branch name="Trigger_3H">
            <wire x2="1536" y1="944" y2="944" x1="1184" />
            <wire x2="1680" y1="944" y2="944" x1="1536" />
            <wire x2="1536" y1="944" y2="2032" x1="1536" />
            <wire x2="2144" y1="2032" y2="2032" x1="1536" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2144" y1="592" y2="592" x1="1936" />
        </branch>
        <instance x="2144" y="592" name="XLXI_59" orien="R0" />
        <instance x="2144" y="784" name="XLXI_60" orien="R0" />
        <instance x="2144" y="976" name="XLXI_61" orien="R0" />
        <instance x="2144" y="1168" name="XLXI_62" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="2144" y1="784" y2="784" x1="1936" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="2144" y1="976" y2="976" x1="1936" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="2144" y1="464" y2="464" x1="1968" />
            <wire x2="1968" y1="464" y2="656" x1="1968" />
            <wire x2="2144" y1="656" y2="656" x1="1968" />
            <wire x2="1968" y1="656" y2="848" x1="1968" />
            <wire x2="2144" y1="848" y2="848" x1="1968" />
            <wire x2="1968" y1="848" y2="1040" x1="1968" />
            <wire x2="2144" y1="1040" y2="1040" x1="1968" />
        </branch>
        <branch name="Trigger_0L">
            <wire x2="1376" y1="432" y2="432" x1="1184" />
            <wire x2="1504" y1="432" y2="432" x1="1376" />
            <wire x2="1680" y1="432" y2="432" x1="1504" />
            <wire x2="1504" y1="432" y2="1344" x1="1504" />
            <wire x2="2144" y1="1344" y2="1344" x1="1504" />
            <wire x2="1376" y1="432" y2="2304" x1="1376" />
            <wire x2="2144" y1="2304" y2="2304" x1="1376" />
        </branch>
        <instance x="2144" y="1536" name="XLXI_63" orien="R0" />
        <instance x="2144" y="1776" name="XLXI_64" orien="R0" />
        <instance x="2144" y="2032" name="XLXI_65" orien="R0" />
        <instance x="1680" y="1072" name="XLXI_10" orien="R0" />
        <instance x="1680" y="880" name="XLXI_9" orien="R0" />
        <instance x="1680" y="688" name="XLXI_8" orien="R0" />
        <instance x="2000" y="1264" name="XLXI_68" orien="R270" />
        <instance x="1680" y="496" name="XLXI_7" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="2144" y1="400" y2="400" x1="1936" />
        </branch>
        <branch name="Trigger_0H">
            <wire x2="1632" y1="368" y2="368" x1="1184" />
            <wire x2="1680" y1="368" y2="368" x1="1632" />
            <wire x2="1632" y1="368" y2="1280" x1="1632" />
            <wire x2="2144" y1="1280" y2="1280" x1="1632" />
        </branch>
        <instance x="2144" y="2288" name="XLXI_66" orien="R0" />
        <instance x="2144" y="2432" name="XLXI_69" orien="R0" />
        <instance x="2144" y="2576" name="XLXI_70" orien="R0" />
        <branch name="XLXN_160">
            <wire x2="2032" y1="2224" y2="2224" x1="1776" />
            <wire x2="2144" y1="2224" y2="2224" x1="2032" />
            <wire x2="2144" y1="528" y2="528" x1="2032" />
            <wire x2="2032" y1="528" y2="720" x1="2032" />
            <wire x2="2144" y1="720" y2="720" x1="2032" />
            <wire x2="2032" y1="720" y2="912" x1="2032" />
            <wire x2="2144" y1="912" y2="912" x1="2032" />
            <wire x2="2032" y1="912" y2="1104" x1="2032" />
            <wire x2="2144" y1="1104" y2="1104" x1="2032" />
            <wire x2="2032" y1="1104" y2="1472" x1="2032" />
            <wire x2="2144" y1="1472" y2="1472" x1="2032" />
            <wire x2="2032" y1="1472" y2="1712" x1="2032" />
            <wire x2="2144" y1="1712" y2="1712" x1="2032" />
            <wire x2="2032" y1="1712" y2="1968" x1="2032" />
            <wire x2="2144" y1="1968" y2="1968" x1="2032" />
            <wire x2="2032" y1="1968" y2="2224" x1="2032" />
        </branch>
        <branch name="diff_select">
            <wire x2="1248" y1="2224" y2="2224" x1="1136" />
            <wire x2="1552" y1="2224" y2="2224" x1="1248" />
            <wire x2="1248" y1="2224" y2="2368" x1="1248" />
            <wire x2="2144" y1="2368" y2="2368" x1="1248" />
            <wire x2="1248" y1="2368" y2="2512" x1="1248" />
            <wire x2="2144" y1="2512" y2="2512" x1="1248" />
            <wire x2="1248" y1="2512" y2="2656" x1="1248" />
            <wire x2="2144" y1="2656" y2="2656" x1="1248" />
            <wire x2="1248" y1="2656" y2="2800" x1="1248" />
            <wire x2="2144" y1="2800" y2="2800" x1="1248" />
        </branch>
        <instance x="1552" y="2256" name="XLXI_67" orien="R0" />
        <instance x="2144" y="2720" name="XLXI_71" orien="R0" />
        <instance x="2144" y="2864" name="XLXI_72" orien="R0" />
        <iomarker fontsize="52" x="1184" y="368" name="Trigger_0H" orien="R180" />
        <iomarker fontsize="52" x="1184" y="432" name="Trigger_0L" orien="R180" />
        <iomarker fontsize="52" x="1184" y="560" name="Trigger_1H" orien="R180" />
        <iomarker fontsize="52" x="1184" y="624" name="Trigger_1L" orien="R180" />
        <iomarker fontsize="52" x="1184" y="752" name="Trigger_2H" orien="R180" />
        <iomarker fontsize="52" x="1184" y="816" name="Trigger_2L" orien="R180" />
        <iomarker fontsize="52" x="1184" y="944" name="Trigger_3H" orien="R180" />
        <iomarker fontsize="52" x="1184" y="1008" name="Trigger_3L" orien="R180" />
        <iomarker fontsize="52" x="1136" y="2160" name="and_or_sel" orien="R180" />
        <iomarker fontsize="52" x="1136" y="2224" name="diff_select" orien="R180" />
        <branch name="Channel_0">
            <wire x2="3104" y1="1280" y2="1280" x1="3072" />
        </branch>
        <branch name="Channel_1">
            <wire x2="3104" y1="1536" y2="1536" x1="3072" />
        </branch>
        <branch name="Channel_2">
            <wire x2="3104" y1="1744" y2="1744" x1="3072" />
        </branch>
        <branch name="Channel_3">
            <wire x2="3104" y1="1984" y2="1984" x1="3072" />
        </branch>
        <instance x="2816" y="1408" name="XLXI_93" orien="R0" />
        <instance x="2816" y="1664" name="XLXI_94" orien="R0" />
        <instance x="2816" y="1872" name="XLXI_95" orien="R0" />
        <instance x="2816" y="2112" name="XLXI_96" orien="R0" />
        <iomarker fontsize="52" x="3104" y="1280" name="Channel_0" orien="R0" />
        <iomarker fontsize="52" x="3104" y="1536" name="Channel_1" orien="R0" />
        <iomarker fontsize="52" x="3104" y="1744" name="Channel_2" orien="R0" />
        <iomarker fontsize="52" x="3104" y="1984" name="Channel_3" orien="R0" />
        <branch name="XLXN_196">
            <wire x2="2816" y1="464" y2="464" x1="2400" />
            <wire x2="2816" y1="464" y2="1216" x1="2816" />
        </branch>
        <branch name="XLXN_197">
            <wire x2="2432" y1="1376" y2="1376" x1="2400" />
            <wire x2="2432" y1="1280" y2="1376" x1="2432" />
            <wire x2="2816" y1="1280" y2="1280" x1="2432" />
        </branch>
        <branch name="XLXN_198">
            <wire x2="2688" y1="2336" y2="2336" x1="2400" />
            <wire x2="2816" y1="1344" y2="1344" x1="2688" />
            <wire x2="2688" y1="1344" y2="2336" x1="2688" />
        </branch>
        <branch name="XLXN_199">
            <wire x2="2784" y1="656" y2="656" x1="2400" />
            <wire x2="2784" y1="656" y2="1472" x1="2784" />
            <wire x2="2816" y1="1472" y2="1472" x1="2784" />
        </branch>
        <branch name="XLXN_200">
            <wire x2="2752" y1="848" y2="848" x1="2400" />
            <wire x2="2752" y1="848" y2="1680" x1="2752" />
            <wire x2="2816" y1="1680" y2="1680" x1="2752" />
        </branch>
        <branch name="XLXN_201">
            <wire x2="2720" y1="1040" y2="1040" x1="2400" />
            <wire x2="2720" y1="1040" y2="1920" x1="2720" />
            <wire x2="2816" y1="1920" y2="1920" x1="2720" />
        </branch>
        <branch name="XLXN_202">
            <wire x2="2432" y1="1616" y2="1616" x1="2400" />
            <wire x2="2432" y1="1536" y2="1616" x1="2432" />
            <wire x2="2816" y1="1536" y2="1536" x1="2432" />
        </branch>
        <branch name="XLXN_203">
            <wire x2="2432" y1="1872" y2="1872" x1="2400" />
            <wire x2="2432" y1="1744" y2="1872" x1="2432" />
            <wire x2="2816" y1="1744" y2="1744" x1="2432" />
        </branch>
        <branch name="XLXN_204">
            <wire x2="2432" y1="2128" y2="2128" x1="2400" />
            <wire x2="2432" y1="1984" y2="2128" x1="2432" />
            <wire x2="2816" y1="1984" y2="1984" x1="2432" />
        </branch>
        <branch name="XLXN_205">
            <wire x2="2656" y1="2480" y2="2480" x1="2400" />
            <wire x2="2656" y1="1600" y2="2480" x1="2656" />
            <wire x2="2816" y1="1600" y2="1600" x1="2656" />
        </branch>
        <branch name="XLXN_206">
            <wire x2="2624" y1="2624" y2="2624" x1="2400" />
            <wire x2="2624" y1="1808" y2="2624" x1="2624" />
            <wire x2="2816" y1="1808" y2="1808" x1="2624" />
        </branch>
        <branch name="XLXN_207">
            <wire x2="2592" y1="2768" y2="2768" x1="2400" />
            <wire x2="2592" y1="2048" y2="2768" x1="2592" />
            <wire x2="2816" y1="2048" y2="2048" x1="2592" />
        </branch>
    </sheet>
</drawing>