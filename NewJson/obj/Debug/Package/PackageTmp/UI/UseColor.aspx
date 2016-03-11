<%@ Page Title="网页常用Color" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="UseColor.aspx.cs" Inherits="NewJson.UI.UseColor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="网页常用色彩,网页常用Color">
    <meta name="description" content="网页常用色彩,网页常用Color">
    <style type="text/css">
        .CorContent
        {
            width: 98%;
            padding: 0px 0px;
            position: relative;
        }
        .CorContent h1, .CorContent h2
        {
            color: #fff;
            padding: 2px 4px;
            background-color: #56688a;
        }
        .CorContent h2
        {
            margin: 20px 0px;
        }
        .CorContent h3
        {
            padding: 2px 4px;
            line-height: 30px;
        }
        .CorContent .CorConList
        {
            width: 1175px;
            clear: both;
        }
        .CorContent .boxc, .CorContent .boxr
        {
            float: left;
            display: block;
            padding: 75px 0px 0px;
            width: 85px;
            margin-bottom: 4px;
        }
        .CorContent .boxc
        {
            margin-right: 4px;
        }
        .CorContent .boxr
        {
            margin-right: 30px;
        }
        .CorContent .blockQuote
        {
            padding: 7px 14px;
            margin-bottom: 15px;
            background-color: #dfe4ee;
            line-height: 24px;
            clear: both;
        }
        #tester {
    padding: 5px 10px;
    margin: 18px 0 0 60px;
    display: none;
    position: absolute;
    font-size: 12px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        网页常用Color</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="CorContent auto">
                <h1>
                    网页颜色搭配表及颜色搭配技巧</h1>
                <p class="blockQuote">
                    颜色搭配常识：<br>
                    1.网页中色彩的表达使用三种颜色，及红(R)、绿(G)、蓝(B)，及通常所说的RGB色彩，它包含了人类所感知的所有颜色，网页中表达颜色如下（红色为例）RGB格式：红色是(255,0,0)
                    <span id="transmark"></span>或十六进制hex格式为(FF0000)。<br>
                    2.将色彩按"红-&gt;黄-&gt;绿-&gt;蓝-&gt;红"依次过度渐变可得到12色环：红，橙红，橙，橙黄，黄，黄绿，绿，蓝绿，蓝，蓝紫，紫，紫红。<br>
                    3.颜色分非彩色和彩色两类。非彩色是指黑，白，灰系统色。彩色是指除了非彩色以外的所有色彩。通常内容文字用非彩色(黑色)，边框，背景，图片用彩色。所以即使页面丰富，看内容依然不会眼花,通常背景与内容对比要大。
                </p>
                <h2>
                    按单一色彩为主色彩分类</h2>
                <p class="blockQuote">
                    网页设计一般以单一色彩为主，下面每类都以该色彩为主，配以其它或类似色彩的，并按照从轻快到浓烈的顺序排列。</p>
                <h3 id="red">
                    红色</h3>
                <p class="blockQuote">
                    -是一种激奋的色彩。刺激效果，能使人产生冲动，愤怒，热情，活力的感觉。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxr" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxr" style="background: #99CC66">
                        <span>#99CC66</span></div>
                    <div class="boxc white" style="background: #CC3333">
                        <span>#CC3333</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc white" style="background: #993333">
                        <span>#993333</span></div>
                    <div class="boxc" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxr" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #0066CC">
                        <span>#0066CC</span></div>
                    <div class="boxc white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #336633">
                        <span>#336633</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxr" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc white" style="background: #993333">
                        <span>#993333</span></div>
                    <div class="boxc" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxr white" style="background: #003300">
                        <span>#003300</span></div>
                    <div class="boxc white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc white" style="background: #333399">
                        <span>#333399</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxr white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #99CC00">
                        <span>#99CC00</span></div>
                    <div class="boxr white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxc white" style="background: #993333">
                        <span>#993333</span></div>
                    <div class="boxr white" style="background: #333300">
                        <span>#333300</span></div>
                </div>
                <h3 id="yellow_red">
                    橙色</h3>
                <p class="blockQuote">
                    也是一种激奋的色彩，具有轻快，欢欣，热烈，温馨，时尚的效果。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr white" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxc white" style="background: #996600">
                        <span>#996600</span></div>
                    <div class="boxc" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxr white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxr" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxc" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxc" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxr" style="background: #CC6699">
                        <span>#CC6699</span></div>
                    <div class="boxc" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #3366CC">
                        <span>#3366CC</span></div>
                    <div class="boxc" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #009966">
                        <span>#009966</span></div>
                    <div class="boxc" style="background: #FF6600">
                        <span>#FF6600</span></div>
                    <div class="boxc" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxr" style="background: #009966">
                        <span>#009966</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxc" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxr" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc white" style="background: #996600">
                        <span>#996600</span></div>
                    <div class="boxr" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxr" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxc white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxc" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxr" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                </div>
                <h3 id="yellow">
                    黄色</h3>
                <p class="blockQuote">
                    -具有快乐，希望，智慧和轻快的个性，它的明度最高。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #FFFF33">
                        <span>#FFFF33</span></div>
                    <div class="boxc" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #9933FF">
                        <span>#9933FF</span></div>
                    <div class="boxc" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxr" style="background: #FFFF33">
                        <span>#FFFF33</span></div>
                    <div class="boxc" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxc" style="background: #66CC00">
                        <span>#66CC00</span></div>
                    <div class="boxr" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxc" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxc white" style="background: #0000CC">
                        <span>#0000CC</span></div>
                    <div class="boxr" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxc" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #6666CC">
                        <span>#6666CC</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxr" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxc" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxr" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxr" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxc" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxr white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxc" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #333300">
                        <span>#333300</span></div>
                    <div class="boxr" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxr" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                </div>
                <h3 id="yellow_green">
                    黄绿色</h3>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #33CC33">
                        <span>#33CC33</span></div>
                    <div class="boxc white" style="background: #6666CC">
                        <span>#6666CC</span></div>
                    <div class="boxr" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc white" style="background: #00CC00">
                        <span>#00CC00</span></div>
                    <div class="boxc white" style="background: #0066CC">
                        <span>#0066CC</span></div>
                    <div class="boxr" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxr" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxc" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc white" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxr white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc white" style="background: #993399">
                        <span>#993399</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc white" style="background: #669933">
                        <span>#669933</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxc" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxc" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxr" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc white" style="background: #003333">
                        <span>#003333</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxr" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc white" style="background: #996633">
                        <span>#996633</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr" style="background: #99CC66">
                        <span>#99CC66</span></div>
                </div>
                <h3 id="green">
                    绿色</h3>
                <p class="blockQuote">
                    -介于冷暖两中色彩的中间，显得和睦，宁静，健康，安全的感觉。 它和金黄，淡白搭配，可以产生优雅，舒适的气氛。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #009966">
                        <span>#009966</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxc" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #9933CC">
                        <span>#9933CC</span></div>
                    <div class="boxc" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc" style="background: #99CC00">
                        <span>#99CC00</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxr white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxr white" style="background: #336600">
                        <span>#336600</span></div>
                    <div class="boxc white" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc" style="background: #CC9900">
                        <span>#CC9900</span></div>
                    <div class="boxr" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc" style="background: #339966">
                        <span>#339966</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc" style="background: #669933">
                        <span>#669933</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxc" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc white" style="background: #666633">
                        <span>#666633</span></div>
                    <div class="boxr" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxc white" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc white" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #669933">
                        <span>#669933</span></div>
                    <div class="boxr white" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc white" style="background: #996633">
                        <span>#996633</span></div>
                    <div class="boxr white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc white" style="background: #003300">
                        <span>#003300</span></div>
                    <div class="boxc white" style="background: #669933">
                        <span>#669933</span></div>
                    <div class="boxr white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxr white" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #333300">
                        <span>#333300</span></div>
                    <div class="boxr white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxr white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxc white" style="background: #993333">
                        <span>#993333</span></div>
                    <div class="boxc white" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxr white" style="background: #003300">
                        <span>#003300</span></div>
                </div>
                <h3 id="blue_green">
                    青绿色</h3>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #66CCCC">
                        <span>#66CCCC</span></div>
                    <div class="boxc white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc white" style="background: #66CC99">
                        <span>#66CC99</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc white" style="background: #009999">
                        <span>#009999</span></div>
                    <div class="boxc" style="background: #66CCCC">
                        <span>#66CCCC</span></div>
                    <div class="boxr" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #66CCCC">
                        <span>#66CCCC</span></div>
                    <div class="boxc" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxr" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxc white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxr white" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxc white" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxc white" style="background: #009999">
                        <span>#009999</span></div>
                    <div class="boxr white" style="background: #CC3333">
                        <span>#CC3333</span></div>
                    <div class="boxc white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxc white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxc white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxr white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #003333">
                        <span>#003333</span></div>
                    <div class="boxc white" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc white" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxr white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc white" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxc white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxr white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxr white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc white" style="background: #663333">
                        <span>#663333</span></div>
                    <div class="boxc white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxr white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxc white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxr white" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc white" style="background: #3399CC">
                        <span>#3399CC</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                </div>
                <h3 id="blue">
                    蓝色</h3>
                <p class="blockQuote">
                    -是最具凉爽，清新，专业的色彩。它和白色混合，能体现柔顺，淡雅，浪漫的气氛(象天空的色彩:) 白色---具有洁白，明快，纯真，清洁的感受。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #3399CC">
                        <span>#3399CC</span></div>
                    <div class="boxc" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxc" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxr white" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #3399CC">
                        <span>#3399CC</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc white" style="background: #3399CC">
                        <span>#3399CC</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                </div>
                <h3 id="purple_blue">
                    蓝紫色</h3>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc white" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #333399">
                        <span>#333399</span></div>
                    <div class="boxc white" style="background: #6666CC">
                        <span>#6666CC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxc white" style="background: #9999FF">
                        <span>#9999FF</span></div>
                    <div class="boxc" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc white" style="background: #0000FF">
                        <span>#0000FF</span></div>
                    <div class="boxc" style="background: #6699FF">
                        <span>#6699FF</span></div>
                    <div class="boxr" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc white" style="background: #6666FF">
                        <span>#6666FF</span></div>
                    <div class="boxc white" style="background: #66CCFF">
                        <span>#66CCFF</span></div>
                    <div class="boxr" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxc white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #6666CC">
                        <span>#6666CC</span></div>
                    <div class="boxc" style="background: #9999CC">
                        <span>#9999CC</span></div>
                    <div class="boxc white" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc white" style="background: #CC6666">
                        <span>#CC6666</span></div>
                    <div class="boxc white" style="background: #333399">
                        <span>#333399</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #000066">
                        <span>#000066</span></div>
                    <div class="boxc white" style="background: #6666FF">
                        <span>#6666FF</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxr white" style="background: #333300">
                        <span>#333300</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #990066">
                        <span>#990066</span></div>
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc white" style="background: #CC3333">
                        <span>#CC3333</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxr white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                </div>
                <h3 id="purple">
                    紫色</h3>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #9999CC">
                        <span>#9999CC</span></div>
                    <div class="boxc" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxr" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxr" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc" style="background: #9999CC">
                        <span>#9999CC</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #660066">
                        <span>#660066</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #663333">
                        <span>#663333</span></div>
                    <div class="boxc" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxr white" style="background: #9966CC">
                        <span>#9966CC</span></div>
                    <div class="boxc white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxr white" style="background: #663399">
                        <span>#663399</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc white" style="background: #996666">
                        <span>#996666</span></div>
                    <div class="boxc" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc white" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc white" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #333399">
                        <span>#333399</span></div>
                    <div class="boxc white" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxr white" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc white" style="background: #9999CC">
                        <span>#9999CC</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #330033">
                        <span>#330033</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxr white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #FF33CC">
                        <span>#FF33CC</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxc white" style="background: #993333">
                        <span>#993333</span></div>
                    <div class="boxr white" style="background: #330033">
                        <span>#330033</span></div>
                </div>
                <h3 id="purple_red">
                    紫红色</h3>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #99CC00">
                        <span>#99CC00</span></div>
                    <div class="boxc" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #993366">
                        <span>#993366</span></div>
                    <div class="boxc white" style="background: #66CC99">
                        <span>#66CC99</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #CC6699">
                        <span>#CC6699</span></div>
                    <div class="boxc" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxc white" style="background: #993399">
                        <span>#993399</span></div>
                    <div class="boxr" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc" style="background: #66CCCC">
                        <span>#66CCCC</span></div>
                    <div class="boxc" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxr" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc white" style="background: #669966">
                        <span>#669966</span></div>
                    <div class="boxc white" style="background: #CC6699">
                        <span>#CC6699</span></div>
                    <div class="boxr" style="background: #FFCCFF">
                        <span>#FFCCFF</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxr white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxc white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxr white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc white" style="background: #FF3399">
                        <span>#FF3399</span></div>
                    <div class="boxc" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc white" style="background: #990066">
                        <span>#990066</span></div>
                    <div class="boxc white" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxr white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #990066">
                        <span>#990066</span></div>
                    <div class="boxc white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxc white" style="background: #999900">
                        <span>#999900</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #990066">
                        <span>#990066</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxr white" style="background: #009966">
                        <span>#009966</span></div>
                </div>
                <h2>
                    按印象的搭配分类</h2>
                <p class="blockQuote">
                    色彩搭配看似复杂，但并不神秘。既然每种色彩在印象空间中都有自己的位置，那么色彩搭配得到的印象可以用加减法来近似估算。如果每种色彩都是高亮度的，那么它们的叠加，自然会是柔和、明亮的；如果每种色彩都是浓烈的，那么它们叠加，就会是浓烈的。当然在实际设计过程中，设计师还要考虑到乘除法，比如同样亮度和对比度的色彩，在色环上的角度不同，搭配起来就会得到千变万化的感觉。因此本书除了要列举出按色相的搭配，也要将印象作为重点的搭配分类列举出来，以供读者参考。</p>
                <h3 id="qmw">
                    柔和、明亮、温柔</h3>
                <p class="blockQuote">
                    亮度高的色彩搭配在一起就会得到柔和、明亮、温和的感觉。为了避免刺眼，设计师一般会用低亮度的前景色调和，同时色彩在色环之间的距离也有助于避免沉闷。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxr" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                </div>
                <h3 id="rjs">
                    柔和、洁净、爽朗</h3>
                <p class="blockQuote">
                    对于柔和、清洁、爽朗的印象，色环中蓝到绿相邻的颜色应该是最适合的。并且亮度偏高。可以看到，几乎每个组合都有白色参与。当然在实际设计时，可以用蓝绿相反色相的高亮度有彩色代替白色。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxc" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #66CCCC">
                        <span>#66CCCC</span></div>
                    <div class="boxc" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxr" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #66CCFF">
                        <span>#66CCFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #CCFFFF">
                        <span>#CCFFFF</span></div>
                    <div class="boxc" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                </div>
                <h3 id="kky">
                    可爱、快乐、有趣</h3>
                <p class="blockQuote">
                    可爱、快乐、有趣印象中的色彩搭配特点是，色相分布均匀，冷暖搭配，饱和度高，色彩分辨度高。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #66CCCC">
                        <span>#66CCCC</span></div>
                    <div class="boxc" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxr" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxr" style="background: #99CC66">
                        <span>#99CC66</span></div>
                    <div class="boxc white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc white" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxr white" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxc white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc white" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc" style="background: #CCFF00">
                        <span>#CCFF00</span></div>
                    <div class="boxr white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #FF6600">
                        <span>#FF6600</span></div>
                    <div class="boxc white" style="background: #993366">
                        <span>#993366</span></div>
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #666633">
                        <span>#666633</span></div>
                    <div class="boxc white" style="background: #66CCCC">
                        <span>#66CCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                </div>
                <h3 id="hky">
                    活泼、快乐、有趣</h3>
                <p class="blockQuote">
                    活泼、快乐、有趣相对前一种印象，色彩选择更加广泛，?最重要的变化是将纯白色用低饱和有彩色或者灰色取代。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxr" style="background: #99CC00">
                        <span>#99CC00</span></div>
                    <div class="boxc white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #3399CC">
                        <span>#3399CC</span></div>
                    <div class="boxc white" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc white" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #009933">
                        <span>#009933</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc white" style="background: #FF6600">
                        <span>#FF6600</span></div>
                    <div class="boxc" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxr white" style="background: #009966">
                        <span>#009966</span></div>
                    <div class="boxc white" style="background: #CC6633">
                        <span>#CC6633</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxr white" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc white" style="background: #CC0066">
                        <span>#CC0066</span></div>
                    <div class="boxc white" style="background: #009999">
                        <span>#009999</span></div>
                    <div class="boxr white" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                </div>
                <h3 id="yq">
                    运动型、轻快</h3>
                <p class="blockQuote">
                    运动的色彩要强化激烈、刺激的感受，同时还要体现健康、快乐、阳光。因此饱和度较高、亮度偏低的色彩在这类印象中经常登场。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxc white" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #0066CC">
                        <span>#0066CC</span></div>
                    <div class="boxc white" style="background: #339933">
                        <span>#339933</span></div>
                    <div class="boxc white" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc white" style="background: #CCCC44">
                        <span>#CCCC44</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #99CCCC">
                        <span>#99CCCC</span></div>
                    <div class="boxc white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc white" style="background: #333399">
                        <span>#333399</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #33CC99">
                        <span>#33CC99</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                </div>
                <h3 id="qhd">
                    轻快、华丽、动感</h3>
                <p class="blockQuote">
                    华丽的印象要求页面充斥有彩色，并且饱和度偏高，而亮度适当减弱则能强化这种印象。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #990066">
                        <span>#990066</span></div>
                    <div class="boxc white" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxr white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxc white" style="background: #333399">
                        <span>#333399</span></div>
                    <div class="boxr white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxr" style="background: #FFFF33">
                        <span>#FFFF33</span></div>
                    <div class="boxc white" style="background: #FFCC00">
                        <span>#FFCC00</span></div>
                    <div class="boxc white" style="background: #009999">
                        <span>#009999</span></div>
                    <div class="boxr white" style="background: #CC3366">
                        <span>#CC3366</span></div>
                    <div class="boxc white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxr white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxc white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxr white" style="background: #663399">
                        <span>#663399</span></div>
                    <div class="boxc white" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #CC3333">
                        <span>#CC3333</span></div>
                    <div class="boxc white" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr white" style="background: #99CC00">
                        <span>#99CC00</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #FF6600">
                        <span>#FF6600</span></div>
                </div>
                <h3 id="kcd">
                    狂野、充沛、动感</h3>
                <p class="blockQuote">
                    狂野的印象空间中少不了低亮度的色彩，甚至可以用适当的黑色搭配。其他有彩色的饱和度高，对比强烈。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #990066">
                        <span>#990066</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxr white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #F00000">
                        <span>#F00000</span></div>
                    <div class="boxc white" style="background: #CC3333">
                        <span>#CC3333</span></div>
                    <div class="boxc white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #99CC00">
                        <span>#99CC00</span></div>
                    <div class="boxr white" style="background: #CC0033">
                        <span>#CC0033</span></div>
                    <div class="boxc white" style="background: #FF0033">
                        <span>#FF0033</span></div>
                    <div class="boxc white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxr white" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc white" style="background: #990066">
                        <span>#990066</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxr white" style="background: #009966">
                        <span>#009966</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #FF6600">
                        <span>#FF6600</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #993333">
                        <span>#993333</span></div>
                    <div class="boxc white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                </div>
                <h3 id="hhn">
                    华丽、花哨、女性化</h3>
                <p class="blockQuote">
                    女性化的页面中紫色和品红是主角、粉红、绿色也是常用色相。一般它们之间要进行高饱和的搭配。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxc white" style="background: #993399">
                        <span>#993399</span></div>
                    <div class="boxr" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxc white" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxr" style="background: #CCFF00">
                        <span>#CCFF00</span></div>
                    <div class="boxc white" style="background: #66CC99">
                        <span>#66CC99</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #CC6699">
                        <span>#CC6699</span></div>
                    <div class="boxc white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxc" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxr white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #993366">
                        <span>#993366</span></div>
                    <div class="boxc white" style="background: #CC6699">
                        <span>#CC6699</span></div>
                    <div class="boxc" style="background: #FFFF00">
                        <span>#FFFF00</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc white" style="background: #CC6699">
                        <span>#CC6699</span></div>
                    <div class="boxc white" style="background: #99CC66">
                        <span>#99CC66</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #FF33CC">
                        <span>#FF33CC</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxc white" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxr white" style="background: #FF6666">
                        <span>#FF6666</span></div>
                </div>
                <h3 id="hny">
                    回味、女性化、优雅</h3>
                <p class="blockQuote">
                    优雅的感觉很奇特，色彩的饱和度一般要降下来。一般以蓝、红之间的相邻，调节亮度和饱和度进行搭配。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxr white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #CC3399">
                        <span>#CC3399</span></div>
                    <div class="boxc white" style="background: #9933CC">
                        <span>#9933CC</span></div>
                    <div class="boxr white" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc" style="background: #9999CC">
                        <span>#9999CC</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr" style="background: #FF99CC">
                        <span>#FF99CC</span></div>
                    <div class="boxc white" style="background: #996666">
                        <span>#996666</span></div>
                    <div class="boxc" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc" style="background: #FF9999">
                        <span>#FF9999</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxr" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc" style="background: #FFCCCC">
                        <span>#FFCCCC</span></div>
                    <div class="boxr" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                </div>
                <h3 id="gza">
                    高尚、自然、安稳</h3>
                <p class="blockQuote">
                    高尚一般要用低亮度的黄绿色，色彩亮度降下去，注意色彩的平衡，页面就会显得安稳。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr white" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxc" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxc white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxr white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc white" style="background: #FF9966">
                        <span>#FF9966</span></div>
                    <div class="boxc white" style="background: #996600">
                        <span>#996600</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxc white" style="background: #660033">
                        <span>#660033</span></div>
                    <div class="boxr white" style="background: #CC6600">
                        <span>#CC6600</span></div>
                    <div class="boxc white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxr white" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxc white" style="background: #009999">
                        <span>#009999</span></div>
                    <div class="boxr white" style="background: #FFCC33">
                        <span>#FFCC33</span></div>
                    <div class="boxc white" style="background: #999966">
                        <span>#999966</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #339999">
                        <span>#339999</span></div>
                    <div class="boxc white" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc white" style="background: #669933">
                        <span>#669933</span></div>
                    <div class="boxr white" style="background: #336633">
                        <span>#336633</span></div>
                    <div class="boxc white" style="background: #666633">
                        <span>#666633</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxr white" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxc white" style="background: #660000">
                        <span>#660000</span></div>
                    <div class="boxc white" style="background: #CC9900">
                        <span>#CC9900</span></div>
                    <div class="boxr white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                </div>
                <h3 id="lz">
                    冷静、自然</h3>
                <p class="blockQuote">
                    绿色是冷静、自然印象的主角，但是绿色作为页面的主要色彩，容易陷入过于消极的感觉传达，因此应该特别重视图案的设计。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxc" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxr white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxc white" style="background: #996633">
                        <span>#996633</span></div>
                    <div class="boxc" style="background: #FFFF99">
                        <span>#FFFF99</span></div>
                    <div class="boxr white" style="background: #99CC66">
                        <span>#99CC66</span></div>
                    <div class="boxc white" style="background: #006600">
                        <span>#006600</span></div>
                    <div class="boxc white" style="background: #66CC66">
                        <span>#66CC66</span></div>
                    <div class="boxr" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxc white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxc white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxr" style="background: #CCFFCC">
                        <span>#CCFFCC</span></div>
                    <div class="boxc white" style="background: #669933">
                        <span>#669933</span></div>
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxc white" style="background: #666633">
                        <span>#666633</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxr white" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxc white" style="background: #003300">
                        <span>#003300</span></div>
                    <div class="boxc white" style="background: #669933">
                        <span>#669933</span></div>
                    <div class="boxr white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxr white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxc white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxc white" style="background: #333300">
                        <span>#333300</span></div>
                    <div class="boxr white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                </div>
                <h3 id="cgy">
                    传统、高雅、优雅</h3>
                <p class="blockQuote">
                    传统的内容一般要降低色彩的饱和度，特别是棕色很适合。前面介绍紫色也是高雅和优雅印象的常用色相。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxr" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxr" style="background: #9966CC">
                        <span>#9966CC</span></div>
                    <div class="boxc" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxr" style="background: #CC9999">
                        <span>#CC9999</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc white" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxc" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #339966">
                        <span>#339966</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #996699">
                        <span>#996699</span></div>
                    <div class="boxc white" style="background: #9999CC">
                        <span>#9999CC</span></div>
                    <div class="boxr white" style="background: #CCCCFF">
                        <span>#CCCCFF</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr white" style="background: #663300">
                        <span>#663300</span></div>
                </div>
                <h3 id="cwg">
                    传统、稳重、古典</h3>
                <p class="blockQuote">
                    传统、稳重、古典都是保守的印象，色彩的选择上应该尽量用低亮度的暖色，这种搭配符合成熟的审美。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxr white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxc" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxr white" style="background: #FF9900">
                        <span>#FF9900</span></div>
                    <div class="boxc white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc white" style="background: #660033">
                        <span>#660033</span></div>
                    <div class="boxr white" style="background: #99CC99">
                        <span>#99CC99</span></div>
                    <div class="boxc white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxc white" style="background: #FF9933">
                        <span>#FF9933</span></div>
                    <div class="boxr" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxc white" style="background: #006633">
                        <span>#006633</span></div>
                    <div class="boxr white" style="background: #CCCC00">
                        <span>#CCCC00</span></div>
                    <div class="boxc white" style="background: #660033">
                        <span>#660033</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxr white" style="background: #660099">
                        <span>#660099</span></div>
                    <div class="boxc white" style="background: #993366">
                        <span>#993366</span></div>
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #666633">
                        <span>#666633</span></div>
                    <div class="boxc white" style="background: #996600">
                        <span>#996600</span></div>
                    <div class="boxc white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxr white" style="background: #666600">
                        <span>#666600</span></div>
                    <div class="boxc white" style="background: #009933">
                        <span>#009933</span></div>
                    <div class="boxc white" style="background: #CC9900">
                        <span>#CC9900</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #666633">
                        <span>#666633</span></div>
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxr white" style="background: #CC3366">
                        <span>#CC3366</span></div>
                </div>
                <h3 id="zwy">
                    忠厚、稳重、有品位</h3>
                <p class="blockQuote">
                    亮度、饱和度偏低的色彩会给人忠厚、稳重的感觉。这样的搭配为了避免色彩过于保守，使页面僵化、消极，应当注重冷暖结合和明暗对比。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxc white" style="background: #CC9933">
                        <span>#CC9933</span></div>
                    <div class="boxr white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc white" style="background: #996633">
                        <span>#996633</span></div>
                    <div class="boxr white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc white" style="background: #336633">
                        <span>#336633</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxr white" style="background: #FFCC99">
                        <span>#FFCC99</span></div>
                    <div class="boxc white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxr white" style="background: #996600">
                        <span>#996600</span></div>
                    <div class="boxc white" style="background: #993333">
                        <span>#993333</span></div>
                    <div class="boxc white" style="background: #CC9966">
                        <span>#CC9966</span></div>
                    <div class="boxr white" style="background: #003300">
                        <span>#003300</span></div>
                    <div class="boxc white" style="background: #336633">
                        <span>#336633</span></div>
                    <div class="boxc white" style="background: #CCCC99">
                        <span>#CCCC99</span></div>
                    <div class="boxr white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #663300">
                        <span>#663300</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxr white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #999900">
                        <span>#999900</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxr white" style="background: #CC99CC">
                        <span>#CC99CC</span></div>
                    <div class="boxc white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #990033">
                        <span>#990033</span></div>
                    <div class="boxr white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                </div>
                <h3 id="jjj">
                    简单、洁净、进步</h3>
                <p class="blockQuote">
                    简单、洁净的色彩在色相上可以用蓝、绿表现，并大面积留白。而进步的印象可以多用蓝色，搭配低饱和甚至灰色。</p>
                <div class="clearfix CorConList">
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc white" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #CCCC33">
                        <span>#CCCC33</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #0099FF">
                        <span>#0099FF</span></div>
                    <div class="boxc" style="background: #FFFFCC">
                        <span>#FFFFCC</span></div>
                    <div class="boxr white" style="background: #666699">
                        <span>#666699</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxr" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #CCFF66">
                        <span>#CCFF66</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #3399CC">
                        <span>#3399CC</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxr" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#ABCDEF</span></div>
                    <div class="boxc" style="background: #FFFF66">
                        <span>#ABCDEF</span></div>
                    <div class="boxr" style="background: #6699FF">
                        <span>#ABCDEF</span></div>
                </div>
                <h3 id="jsg">
                    简单、时尚、高雅</h3>
                <p class="blockQuote">
                    灰色是最为平衡的色彩，并且是塑料金属质感的主要色彩之一，因而要表达高雅、时尚，可以适当使用，甚至大面积使用。但是要注重图案和质感的构造。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #99CCFF">
                        <span>#99CCFF</span></div>
                    <div class="boxc" style="background: #FFFF66">
                        <span>#FFFF66</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#0099CC</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #336666">
                        <span>#336666</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxc" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr white" style="background: #663366">
                        <span>#663366</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc" style="background: #FFFFFF">
                        <span>#FFFFFF</span></div>
                    <div class="boxr white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#ABCDEF</span></div>
                    <div class="boxc white" style="background: #0099CC">
                        <span>#ABCDEF</span></div>
                    <div class="boxr white" style="background: #666666">
                        <span>#ABCDEF</span></div>
                </div>
                <h3 id="jjs">
                    简单、进步、时尚</h3>
                <p class="blockQuote">
                    表现进步的色彩主要以蓝色为主，搭配灰色。而色彩的明度统一、色相相邻，在色彩上会显得简洁。</p>
                <div class="clearfix CorConList">
                    <div class="boxc white" style="background: #333366">
                        <span>#333366</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxr white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxr white" style="background: #669999">
                        <span>#669999</span></div>
                    <div class="boxc white" style="background: #003399">
                        <span>#003399</span></div>
                    <div class="boxc" style="background: #CCFF99">
                        <span>#CCFF99</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #999933">
                        <span>#999933</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #666666">
                        <span>#666666</span></div>
                    <div class="boxc white" style="background: #99CC33">
                        <span>#99CC33</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxc white" style="background: #336699">
                        <span>#336699</span></div>
                    <div class="boxr white" style="background: #333333">
                        <span>#333333</span></div>
                    <div class="boxc white" style="background: #3366CC">
                        <span>#3366CC</span></div>
                    <div class="boxc white" style="background: #CCCC66">
                        <span>#CCCC66</span></div>
                    <div class="boxr white" style="background: #333300">
                        <span>#333300</span></div>
                    <div class="boxc white" style="background: #6699CC">
                        <span>#6699CC</span></div>
                    <div class="boxc white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxr white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #003366">
                        <span>#003366</span></div>
                    <div class="boxc white" style="background: #CCCCCC">
                        <span>#CCCCCC</span></div>
                    <div class="boxr white" style="background: #006699">
                        <span>#006699</span></div>
                    <div class="boxc white" style="background: #000000">
                        <span>#000000</span></div>
                    <div class="boxc white" style="background: #999999">
                        <span>#999999</span></div>
                    <div class="boxr white" style="background: #003366">
                        <span>#003366</span></div>
                </div>
                <div id="tester">
                    √ 已复制</div>
            </div>
        </div>
        <!--ToolMain02-end-->
        <script src="/Js/copy/zeroclipboard.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function () {
                $('.CorConList div').each(function (index) {

                    $(this).css("cursor", "pointer")
                    $(this).find("span").attr("id", index);
                    $(this).attr("data-clipboard-target", jQuery(this).find("span").attr("id"));

                    var clip = new ZeroClipboard(jQuery(this)[0], {
                        moviePath: "/JS/copy/ZeroClipboard.swf"
                    });
                    clip.on('complete', function (client, args) {
                        $("#tester").show().css({ opacity: 1, color: '#f00', left: $(this).position().left - 40, top: $(this).position().top }).stop().animate({
                            opacity: 0,
                            top: '-=20'
                        }, function () {
                            $(this).hide();
                        });
                    });

                });
            })
        </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
