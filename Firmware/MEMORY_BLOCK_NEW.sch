<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="address_1(11:0)" />
        <signal name="en" />
        <signal name="clk" />
        <signal name="done_1" />
        <signal name="full_1" />
        <signal name="wait_sig_1" />
        <signal name="di_1" />
        <signal name="address_3(11:0)" />
        <signal name="address_2(11:0)" />
        <signal name="re" />
        <signal name="address_4(11:0)" />
        <signal name="done_2" />
        <signal name="full_2" />
        <signal name="wait_sig_2" />
        <signal name="di_2" />
        <signal name="done_3" />
        <signal name="full_3" />
        <signal name="wait_sig_3" />
        <signal name="di_3" />
        <signal name="di_4" />
        <signal name="done_4" />
        <signal name="full_4" />
        <signal name="wait_sig_4" />
        <signal name="stop_clk" />
        <signal name="stop_address(7:0)" />
        <signal name="stop_done" />
        <signal name="stop_full" />
        <signal name="stop_wait" />
        <signal name="stop_data_in" />
        <signal name="XLXN_24" />
        <signal name="start_1" />
        <signal name="XLXN_89" />
        <signal name="start_2" />
        <signal name="start_3" />
        <signal name="XLXN_94" />
        <signal name="start_4" />
        <signal name="XLXN_101" />
        <signal name="stop_start" />
        <signal name="XLXN_114" />
        <signal name="rst" />
        <signal name="stop_data_out" />
        <signal name="do_4" />
        <signal name="do_3" />
        <signal name="do_2" />
        <signal name="do_1" />
        <port polarity="Output" name="address_1(11:0)" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="done_1" />
        <port polarity="Output" name="full_1" />
        <port polarity="Output" name="wait_sig_1" />
        <port polarity="Input" name="di_1" />
        <port polarity="Output" name="address_3(11:0)" />
        <port polarity="Output" name="address_2(11:0)" />
        <port polarity="Input" name="re" />
        <port polarity="Output" name="address_4(11:0)" />
        <port polarity="Output" name="done_2" />
        <port polarity="Output" name="full_2" />
        <port polarity="Output" name="wait_sig_2" />
        <port polarity="Input" name="di_2" />
        <port polarity="Output" name="done_3" />
        <port polarity="Output" name="full_3" />
        <port polarity="Output" name="wait_sig_3" />
        <port polarity="Input" name="di_3" />
        <port polarity="Input" name="di_4" />
        <port polarity="Output" name="done_4" />
        <port polarity="Output" name="full_4" />
        <port polarity="Output" name="wait_sig_4" />
        <port polarity="Input" name="stop_clk" />
        <port polarity="Output" name="stop_address(7:0)" />
        <port polarity="Output" name="stop_done" />
        <port polarity="Output" name="stop_full" />
        <port polarity="Output" name="stop_wait" />
        <port polarity="Input" name="stop_data_in" />
        <port polarity="BiDirectional" name="start_1" />
        <port polarity="BiDirectional" name="start_2" />
        <port polarity="BiDirectional" name="start_3" />
        <port polarity="BiDirectional" name="start_4" />
        <port polarity="BiDirectional" name="stop_start" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="stop_data_out" />
        <port polarity="Output" name="do_4" />
        <port polarity="Output" name="do_3" />
        <port polarity="Output" name="do_2" />
        <port polarity="Output" name="do_1" />
        <blockdef name="mem_control_gen">
            <timestamp>2014-8-13T17:9:44</timestamp>
            <rect width="256" x="64" y="-384" height="456" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-272" y2="-272" x1="320" />
            <rect width="64" x="320" y="-204" height="24" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-112" y2="-112" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="48" y2="48" x1="320" />
        </blockdef>
        <blockdef name="ram_fifo_1ch">
            <timestamp>2014-4-22T9:25:54</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="STOP_mem_control_gen">
            <timestamp>2014-8-24T5:28:27</timestamp>
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
        <blockdef name="stop_ram_fifo_1ch">
            <timestamp>2014-8-24T5:29:59</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="mem_control_gen" name="XLXI_1">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="re" name="re" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_24" name="we" />
            <blockpin signalname="start_1" name="start" />
            <blockpin signalname="address_1(11:0)" name="address(11:0)" />
            <blockpin signalname="done_1" name="done" />
            <blockpin signalname="full_1" name="full" />
            <blockpin signalname="wait_sig_1" name="wait_sig" />
        </block>
        <block symbolname="ram_fifo_1ch" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_24" name="we" />
            <blockpin signalname="start_1" name="en" />
            <blockpin signalname="di_1" name="di" />
            <blockpin signalname="address_1(11:0)" name="addr(11:0)" />
            <blockpin signalname="do_1" name="do" />
        </block>
        <block symbolname="mem_control_gen" name="XLXI_10">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="done_1" name="re" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_89" name="we" />
            <blockpin signalname="start_2" name="start" />
            <blockpin signalname="address_2(11:0)" name="address(11:0)" />
            <blockpin signalname="done_2" name="done" />
            <blockpin signalname="full_2" name="full" />
            <blockpin signalname="wait_sig_2" name="wait_sig" />
        </block>
        <block symbolname="ram_fifo_1ch" name="XLXI_11">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_89" name="we" />
            <blockpin signalname="start_2" name="en" />
            <blockpin signalname="di_2" name="di" />
            <blockpin signalname="address_2(11:0)" name="addr(11:0)" />
            <blockpin signalname="do_2" name="do" />
        </block>
        <block symbolname="mem_control_gen" name="XLXI_13">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="done_2" name="re" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_94" name="we" />
            <blockpin signalname="start_3" name="start" />
            <blockpin signalname="address_3(11:0)" name="address(11:0)" />
            <blockpin signalname="done_3" name="done" />
            <blockpin signalname="full_3" name="full" />
            <blockpin signalname="wait_sig_3" name="wait_sig" />
        </block>
        <block symbolname="ram_fifo_1ch" name="XLXI_14">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_94" name="we" />
            <blockpin signalname="start_3" name="en" />
            <blockpin signalname="di_3" name="di" />
            <blockpin signalname="address_3(11:0)" name="addr(11:0)" />
            <blockpin signalname="do_3" name="do" />
        </block>
        <block symbolname="mem_control_gen" name="XLXI_22">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="done_3" name="re" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_101" name="we" />
            <blockpin signalname="start_4" name="start" />
            <blockpin signalname="address_4(11:0)" name="address(11:0)" />
            <blockpin signalname="done_4" name="done" />
            <blockpin signalname="full_4" name="full" />
            <blockpin signalname="wait_sig_4" name="wait_sig" />
        </block>
        <block symbolname="ram_fifo_1ch" name="XLXI_23">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_101" name="we" />
            <blockpin signalname="start_4" name="en" />
            <blockpin signalname="di_4" name="di" />
            <blockpin signalname="address_4(11:0)" name="addr(11:0)" />
            <blockpin signalname="do_4" name="do" />
        </block>
        <block symbolname="STOP_mem_control_gen" name="XLXI_25">
            <blockpin signalname="en" name="en" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="done_4" name="re" />
            <blockpin signalname="stop_clk" name="clk" />
            <blockpin signalname="stop_start" name="start" />
            <blockpin signalname="stop_full" name="full" />
            <blockpin signalname="stop_done" name="done" />
            <blockpin signalname="stop_wait" name="wait_sig" />
            <blockpin signalname="XLXN_114" name="we" />
            <blockpin signalname="stop_address(7:0)" name="address(7:0)" />
        </block>
        <block symbolname="stop_ram_fifo_1ch" name="XLXI_26">
            <blockpin signalname="stop_clk" name="clk" />
            <blockpin signalname="XLXN_114" name="we" />
            <blockpin signalname="stop_start" name="en" />
            <blockpin signalname="stop_data_in" name="di" />
            <blockpin signalname="stop_address(7:0)" name="addr(7:0)" />
            <blockpin signalname="stop_data_out" name="do" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="7040">
        <instance x="1952" y="1296" name="XLXI_1" orien="R0">
        </instance>
        <branch name="address_1(11:0)">
            <wire x2="2736" y1="1104" y2="1104" x1="2336" />
            <wire x2="3264" y1="1104" y2="1104" x1="2736" />
            <wire x2="2736" y1="928" y2="1104" x1="2736" />
            <wire x2="2752" y1="928" y2="928" x1="2736" />
        </branch>
        <branch name="en">
            <wire x2="1696" y1="944" y2="944" x1="1648" />
            <wire x2="1696" y1="944" y2="1968" x1="1696" />
            <wire x2="1952" y1="1968" y2="1968" x1="1696" />
            <wire x2="1696" y1="1968" y2="3248" x1="1696" />
            <wire x2="1952" y1="3248" y2="3248" x1="1696" />
            <wire x2="1696" y1="3248" y2="4512" x1="1696" />
            <wire x2="1952" y1="4512" y2="4512" x1="1696" />
            <wire x2="1696" y1="4512" y2="5712" x1="1696" />
            <wire x2="1952" y1="5712" y2="5712" x1="1696" />
            <wire x2="1952" y1="944" y2="944" x1="1696" />
        </branch>
        <branch name="clk">
            <wire x2="1728" y1="1024" y2="1024" x1="1648" />
            <wire x2="1728" y1="1024" y2="2048" x1="1728" />
            <wire x2="1728" y1="2048" y2="3328" x1="1728" />
            <wire x2="1728" y1="3328" y2="4592" x1="1728" />
            <wire x2="1824" y1="4592" y2="4592" x1="1728" />
            <wire x2="1952" y1="4592" y2="4592" x1="1824" />
            <wire x2="1824" y1="3328" y2="3328" x1="1728" />
            <wire x2="1952" y1="3328" y2="3328" x1="1824" />
            <wire x2="1824" y1="2048" y2="2048" x1="1728" />
            <wire x2="1952" y1="2048" y2="2048" x1="1824" />
            <wire x2="1792" y1="1024" y2="1024" x1="1728" />
            <wire x2="1952" y1="1024" y2="1024" x1="1792" />
            <wire x2="1792" y1="672" y2="1024" x1="1792" />
            <wire x2="2752" y1="672" y2="672" x1="1792" />
            <wire x2="2752" y1="1696" y2="1696" x1="1824" />
            <wire x2="1824" y1="1696" y2="2048" x1="1824" />
            <wire x2="1824" y1="2976" y2="3328" x1="1824" />
            <wire x2="2752" y1="2976" y2="2976" x1="1824" />
            <wire x2="2752" y1="4240" y2="4240" x1="1824" />
            <wire x2="1824" y1="4240" y2="4592" x1="1824" />
        </branch>
        <branch name="done_1">
            <wire x2="1888" y1="1568" y2="2208" x1="1888" />
            <wire x2="1952" y1="2208" y2="2208" x1="1888" />
            <wire x2="2400" y1="1568" y2="1568" x1="1888" />
            <wire x2="2400" y1="1184" y2="1184" x1="2336" />
            <wire x2="3264" y1="1184" y2="1184" x1="2400" />
            <wire x2="2400" y1="1184" y2="1568" x1="2400" />
        </branch>
        <branch name="full_1">
            <wire x2="3264" y1="1264" y2="1264" x1="2336" />
        </branch>
        <branch name="wait_sig_1">
            <wire x2="3264" y1="1344" y2="1344" x1="2336" />
        </branch>
        <branch name="di_1">
            <wire x2="2752" y1="864" y2="864" x1="2688" />
        </branch>
        <instance x="2752" y="960" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1952" y="2320" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2752" y="1984" name="XLXI_11" orien="R0">
        </instance>
        <instance x="1952" y="3600" name="XLXI_13" orien="R0">
        </instance>
        <instance x="2752" y="3264" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1952" y="4864" name="XLXI_22" orien="R0">
        </instance>
        <instance x="2752" y="4528" name="XLXI_23" orien="R0">
        </instance>
        <branch name="address_3(11:0)">
            <wire x2="2576" y1="3408" y2="3408" x1="2336" />
            <wire x2="3264" y1="3408" y2="3408" x1="2576" />
            <wire x2="2576" y1="3232" y2="3408" x1="2576" />
            <wire x2="2752" y1="3232" y2="3232" x1="2576" />
        </branch>
        <branch name="address_2(11:0)">
            <wire x2="2576" y1="2128" y2="2128" x1="2336" />
            <wire x2="3264" y1="2128" y2="2128" x1="2576" />
            <wire x2="2576" y1="1952" y2="2128" x1="2576" />
            <wire x2="2752" y1="1952" y2="1952" x1="2576" />
        </branch>
        <branch name="re">
            <wire x2="1952" y1="1184" y2="1184" x1="1648" />
        </branch>
        <branch name="address_4(11:0)">
            <wire x2="2576" y1="4672" y2="4672" x1="2336" />
            <wire x2="3280" y1="4672" y2="4672" x1="2576" />
            <wire x2="2576" y1="4496" y2="4672" x1="2576" />
            <wire x2="2752" y1="4496" y2="4496" x1="2576" />
        </branch>
        <branch name="done_2">
            <wire x2="1888" y1="2848" y2="3488" x1="1888" />
            <wire x2="1952" y1="3488" y2="3488" x1="1888" />
            <wire x2="2416" y1="2848" y2="2848" x1="1888" />
            <wire x2="2416" y1="2208" y2="2208" x1="2336" />
            <wire x2="3264" y1="2208" y2="2208" x1="2416" />
            <wire x2="2416" y1="2208" y2="2848" x1="2416" />
        </branch>
        <branch name="full_2">
            <wire x2="3264" y1="2288" y2="2288" x1="2336" />
        </branch>
        <branch name="wait_sig_2">
            <wire x2="3264" y1="2368" y2="2368" x1="2336" />
        </branch>
        <branch name="di_2">
            <wire x2="2752" y1="1888" y2="1888" x1="2720" />
        </branch>
        <branch name="done_3">
            <wire x2="1888" y1="4112" y2="4752" x1="1888" />
            <wire x2="1952" y1="4752" y2="4752" x1="1888" />
            <wire x2="2416" y1="4112" y2="4112" x1="1888" />
            <wire x2="2416" y1="3488" y2="3488" x1="2336" />
            <wire x2="3264" y1="3488" y2="3488" x1="2416" />
            <wire x2="2416" y1="3488" y2="4112" x1="2416" />
        </branch>
        <branch name="full_3">
            <wire x2="3264" y1="3568" y2="3568" x1="2336" />
        </branch>
        <branch name="wait_sig_3">
            <wire x2="3264" y1="3648" y2="3648" x1="2336" />
        </branch>
        <branch name="di_3">
            <wire x2="2752" y1="3168" y2="3168" x1="2720" />
        </branch>
        <branch name="di_4">
            <wire x2="2752" y1="4432" y2="4432" x1="2720" />
        </branch>
        <branch name="done_4">
            <wire x2="2416" y1="5152" y2="5152" x1="1888" />
            <wire x2="1888" y1="5152" y2="5952" x1="1888" />
            <wire x2="1952" y1="5952" y2="5952" x1="1888" />
            <wire x2="2416" y1="4752" y2="4752" x1="2336" />
            <wire x2="3280" y1="4752" y2="4752" x1="2416" />
            <wire x2="2416" y1="4752" y2="5152" x1="2416" />
        </branch>
        <branch name="full_4">
            <wire x2="3280" y1="4832" y2="4832" x1="2336" />
        </branch>
        <branch name="wait_sig_4">
            <wire x2="3280" y1="4912" y2="4912" x1="2336" />
        </branch>
        <instance x="1952" y="6064" name="XLXI_25" orien="R0">
        </instance>
        <instance x="2752" y="5728" name="XLXI_26" orien="R0">
        </instance>
        <branch name="stop_clk">
            <wire x2="1824" y1="5792" y2="5792" x1="1520" />
            <wire x2="1952" y1="5792" y2="5792" x1="1824" />
            <wire x2="2752" y1="5440" y2="5440" x1="1824" />
            <wire x2="1824" y1="5440" y2="5792" x1="1824" />
        </branch>
        <branch name="stop_address(7:0)">
            <wire x2="2576" y1="5872" y2="5872" x1="2336" />
            <wire x2="3264" y1="5872" y2="5872" x1="2576" />
            <wire x2="2752" y1="5696" y2="5696" x1="2576" />
            <wire x2="2576" y1="5696" y2="5872" x1="2576" />
        </branch>
        <branch name="stop_done">
            <wire x2="3264" y1="5952" y2="5952" x1="2336" />
        </branch>
        <branch name="stop_full">
            <wire x2="3264" y1="6032" y2="6032" x1="2336" />
        </branch>
        <branch name="stop_wait">
            <wire x2="3264" y1="6112" y2="6112" x1="2336" />
        </branch>
        <branch name="stop_data_in">
            <wire x2="2752" y1="5632" y2="5632" x1="2720" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2528" y1="944" y2="944" x1="2336" />
            <wire x2="2752" y1="736" y2="736" x1="2528" />
            <wire x2="2528" y1="736" y2="944" x1="2528" />
        </branch>
        <branch name="start_1">
            <wire x2="2544" y1="1024" y2="1024" x1="2336" />
            <wire x2="3264" y1="1024" y2="1024" x1="2544" />
            <wire x2="2544" y1="800" y2="1024" x1="2544" />
            <wire x2="2752" y1="800" y2="800" x1="2544" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="2544" y1="1968" y2="1968" x1="2336" />
            <wire x2="2544" y1="1760" y2="1968" x1="2544" />
            <wire x2="2752" y1="1760" y2="1760" x1="2544" />
        </branch>
        <branch name="start_2">
            <wire x2="2560" y1="2048" y2="2048" x1="2336" />
            <wire x2="3264" y1="2048" y2="2048" x1="2560" />
            <wire x2="2560" y1="1824" y2="2048" x1="2560" />
            <wire x2="2752" y1="1824" y2="1824" x1="2560" />
        </branch>
        <branch name="start_3">
            <wire x2="2560" y1="3328" y2="3328" x1="2336" />
            <wire x2="3264" y1="3328" y2="3328" x1="2560" />
            <wire x2="2560" y1="3104" y2="3328" x1="2560" />
            <wire x2="2752" y1="3104" y2="3104" x1="2560" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="2544" y1="3248" y2="3248" x1="2336" />
            <wire x2="2544" y1="3040" y2="3248" x1="2544" />
            <wire x2="2752" y1="3040" y2="3040" x1="2544" />
        </branch>
        <branch name="start_4">
            <wire x2="2560" y1="4592" y2="4592" x1="2336" />
            <wire x2="3280" y1="4592" y2="4592" x1="2560" />
            <wire x2="2560" y1="4368" y2="4592" x1="2560" />
            <wire x2="2752" y1="4368" y2="4368" x1="2560" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="2544" y1="4512" y2="4512" x1="2336" />
            <wire x2="2544" y1="4304" y2="4512" x1="2544" />
            <wire x2="2752" y1="4304" y2="4304" x1="2544" />
        </branch>
        <branch name="stop_start">
            <wire x2="2480" y1="5792" y2="5792" x1="2336" />
            <wire x2="3264" y1="5792" y2="5792" x1="2480" />
            <wire x2="2480" y1="5568" y2="5792" x1="2480" />
            <wire x2="2752" y1="5568" y2="5568" x1="2480" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="2464" y1="5712" y2="5712" x1="2336" />
            <wire x2="2464" y1="5504" y2="5712" x1="2464" />
            <wire x2="2752" y1="5504" y2="5504" x1="2464" />
        </branch>
        <branch name="rst">
            <wire x2="1760" y1="1104" y2="1104" x1="1648" />
            <wire x2="1952" y1="1104" y2="1104" x1="1760" />
            <wire x2="1760" y1="1104" y2="2128" x1="1760" />
            <wire x2="1952" y1="2128" y2="2128" x1="1760" />
            <wire x2="1760" y1="2128" y2="3408" x1="1760" />
            <wire x2="1952" y1="3408" y2="3408" x1="1760" />
            <wire x2="1760" y1="3408" y2="4672" x1="1760" />
            <wire x2="1952" y1="4672" y2="4672" x1="1760" />
            <wire x2="1760" y1="4672" y2="5872" x1="1760" />
            <wire x2="1952" y1="5872" y2="5872" x1="1760" />
        </branch>
        <branch name="stop_data_out">
            <wire x2="3168" y1="5440" y2="5440" x1="3136" />
        </branch>
        <branch name="do_4">
            <wire x2="3168" y1="4240" y2="4240" x1="3136" />
        </branch>
        <branch name="do_3">
            <wire x2="3168" y1="2976" y2="2976" x1="3136" />
        </branch>
        <branch name="do_2">
            <wire x2="3168" y1="1696" y2="1696" x1="3136" />
        </branch>
        <branch name="do_1">
            <wire x2="3168" y1="672" y2="672" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="1648" y="944" name="en" orien="R180" />
        <iomarker fontsize="28" x="1648" y="1024" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1648" y="1104" name="rst" orien="R180" />
        <iomarker fontsize="28" x="1648" y="1184" name="re" orien="R180" />
        <iomarker fontsize="28" x="3264" y="1344" name="wait_sig_1" orien="R0" />
        <iomarker fontsize="28" x="3264" y="1184" name="done_1" orien="R0" />
        <iomarker fontsize="28" x="3264" y="1264" name="full_1" orien="R0" />
        <iomarker fontsize="28" x="2688" y="864" name="di_1" orien="R180" />
        <iomarker fontsize="28" x="3264" y="1024" name="start_1" orien="R0" />
        <iomarker fontsize="28" x="3264" y="1104" name="address_1(11:0)" orien="R0" />
        <iomarker fontsize="28" x="3264" y="2048" name="start_2" orien="R0" />
        <iomarker fontsize="28" x="3264" y="2128" name="address_2(11:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1888" name="di_2" orien="R180" />
        <iomarker fontsize="28" x="3264" y="3328" name="start_3" orien="R0" />
        <iomarker fontsize="28" x="3264" y="3408" name="address_3(11:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="3168" name="di_3" orien="R180" />
        <iomarker fontsize="28" x="3280" y="4592" name="start_4" orien="R0" />
        <iomarker fontsize="28" x="3280" y="4672" name="address_4(11:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="4432" name="di_4" orien="R180" />
        <iomarker fontsize="28" x="3264" y="2208" name="done_2" orien="R0" />
        <iomarker fontsize="28" x="3264" y="2288" name="full_2" orien="R0" />
        <iomarker fontsize="28" x="3264" y="2368" name="wait_sig_2" orien="R0" />
        <iomarker fontsize="28" x="3264" y="3488" name="done_3" orien="R0" />
        <iomarker fontsize="28" x="3264" y="3568" name="full_3" orien="R0" />
        <iomarker fontsize="28" x="3264" y="3648" name="wait_sig_3" orien="R0" />
        <iomarker fontsize="28" x="3280" y="4752" name="done_4" orien="R0" />
        <iomarker fontsize="28" x="3280" y="4832" name="full_4" orien="R0" />
        <iomarker fontsize="28" x="3280" y="4912" name="wait_sig_4" orien="R0" />
        <iomarker fontsize="28" x="1520" y="5792" name="stop_clk" orien="R180" />
        <iomarker fontsize="28" x="2720" y="5632" name="stop_data_in" orien="R180" />
        <iomarker fontsize="28" x="3264" y="5792" name="stop_start" orien="R0" />
        <iomarker fontsize="28" x="3264" y="5872" name="stop_address(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3264" y="5952" name="stop_done" orien="R0" />
        <iomarker fontsize="28" x="3264" y="6032" name="stop_full" orien="R0" />
        <iomarker fontsize="28" x="3264" y="6112" name="stop_wait" orien="R0" />
        <iomarker fontsize="28" x="3168" y="5440" name="stop_data_out" orien="R0" />
        <iomarker fontsize="28" x="3168" y="4240" name="do_4" orien="R0" />
        <iomarker fontsize="28" x="3168" y="2976" name="do_3" orien="R0" />
        <iomarker fontsize="28" x="3168" y="1696" name="do_2" orien="R0" />
        <iomarker fontsize="28" x="3168" y="672" name="do_1" orien="R0" />
    </sheet>
</drawing>