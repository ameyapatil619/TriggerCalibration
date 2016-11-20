<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="en" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="re" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7(7:0)" />
        <signal name="stop_data_in" />
        <signal name="XLXN_10" />
        <signal name="stop_data_out" />
        <signal name="done_stop" />
        <signal name="full_stop" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="re" />
        <port polarity="Input" name="stop_data_in" />
        <port polarity="Output" name="stop_data_out" />
        <port polarity="Output" name="done_stop" />
        <port polarity="Output" name="full_stop" />
        <blockdef name="stop_ram_fifo_1ch">
            <timestamp>2014-4-24T0:0:10</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="tristate_out">
            <timestamp>2014-8-13T17:44:50</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="256" x="64" y="-128" height="256" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="STOP_mem_control_gen">
            <timestamp>2014-8-13T19:10:20</timestamp>
            <rect width="256" x="64" y="-384" height="460" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="384" y1="-272" y2="-272" x1="320" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="320" y="-204" height="24" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="384" y1="-112" y2="-112" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="48" y2="48" x1="320" />
        </blockdef>
        <block symbolname="stop_ram_fifo_1ch" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_5" name="we" />
            <blockpin signalname="XLXN_6" name="en" />
            <blockpin signalname="stop_data_in" name="di" />
            <blockpin signalname="XLXN_7(7:0)" name="addr(7:0)" />
            <blockpin signalname="XLXN_10" name="do" />
        </block>
        <block symbolname="tristate_out" name="XLXI_3">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_10" name="data_out" />
            <blockpin signalname="stop_data_out" name="do" />
            <blockpin signalname="XLXN_5" name="start" />
            <blockpin signalname="XLXN_6" name="we" />
        </block>
        <block symbolname="STOP_mem_control_gen" name="XLXI_4">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="XLXN_5" name="we" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_6" name="start" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_7(7:0)" name="address(7:0)" />
            <blockpin signalname="re" name="re" />
            <blockpin signalname="done_stop" name="done" />
            <blockpin signalname="full_stop" name="full" />
            <blockpin name="wait_sig" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="en">
            <wire x2="544" y1="928" y2="928" x1="224" />
        </branch>
        <branch name="clk">
            <wire x2="400" y1="1008" y2="1008" x1="224" />
            <wire x2="544" y1="1008" y2="1008" x1="400" />
            <wire x2="1488" y1="736" y2="736" x1="400" />
            <wire x2="400" y1="736" y2="1008" x1="400" />
        </branch>
        <branch name="rst">
            <wire x2="448" y1="1088" y2="1088" x1="224" />
            <wire x2="544" y1="1088" y2="1088" x1="448" />
            <wire x2="448" y1="640" y2="1088" x1="448" />
            <wire x2="1904" y1="640" y2="640" x1="448" />
            <wire x2="1904" y1="640" y2="928" x1="1904" />
            <wire x2="2128" y1="928" y2="928" x1="1904" />
        </branch>
        <branch name="re">
            <wire x2="544" y1="1168" y2="1168" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1008" name="clk" orien="R180" />
        <iomarker fontsize="28" x="224" y="1088" name="rst" orien="R180" />
        <iomarker fontsize="28" x="224" y="1168" name="re" orien="R180" />
        <iomarker fontsize="28" x="224" y="928" name="en" orien="R180" />
        <instance x="1488" y="1024" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="1200" y1="928" y2="928" x1="928" />
            <wire x2="1920" y1="608" y2="608" x1="1200" />
            <wire x2="1920" y1="608" y2="864" x1="1920" />
            <wire x2="2128" y1="864" y2="864" x1="1920" />
            <wire x2="1200" y1="608" y2="800" x1="1200" />
            <wire x2="1200" y1="800" y2="928" x1="1200" />
            <wire x2="1488" y1="800" y2="800" x1="1200" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1216" y1="1008" y2="1008" x1="928" />
            <wire x2="1936" y1="576" y2="576" x1="1216" />
            <wire x2="1936" y1="576" y2="800" x1="1936" />
            <wire x2="2128" y1="800" y2="800" x1="1936" />
            <wire x2="1216" y1="576" y2="864" x1="1216" />
            <wire x2="1216" y1="864" y2="1008" x1="1216" />
            <wire x2="1488" y1="864" y2="864" x1="1216" />
        </branch>
        <branch name="XLXN_7(7:0)">
            <wire x2="1232" y1="1088" y2="1088" x1="928" />
            <wire x2="1232" y1="992" y2="1088" x1="1232" />
            <wire x2="1488" y1="992" y2="992" x1="1232" />
        </branch>
        <branch name="stop_data_in">
            <wire x2="1488" y1="928" y2="928" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1456" y="928" name="stop_data_in" orien="R180" />
        <instance x="2128" y="896" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_10">
            <wire x2="2048" y1="736" y2="736" x1="1872" />
            <wire x2="2048" y1="736" y2="992" x1="2048" />
            <wire x2="2128" y1="992" y2="992" x1="2048" />
        </branch>
        <branch name="stop_data_out">
            <wire x2="2528" y1="992" y2="992" x1="2512" />
            <wire x2="2832" y1="992" y2="992" x1="2528" />
        </branch>
        <branch name="done_stop">
            <wire x2="2832" y1="1168" y2="1168" x1="928" />
        </branch>
        <branch name="full_stop">
            <wire x2="2832" y1="1248" y2="1248" x1="928" />
        </branch>
        <iomarker fontsize="28" x="2832" y="1168" name="done_stop" orien="R0" />
        <iomarker fontsize="28" x="2832" y="1248" name="full_stop" orien="R0" />
        <instance x="544" y="1280" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2832" y="992" name="stop_data_out" orien="R0" />
    </sheet>
</drawing>