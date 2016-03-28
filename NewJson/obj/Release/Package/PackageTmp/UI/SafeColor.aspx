<%@ Page Title="WEB安全色" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="SafeColor.aspx.cs" Inherits="NewJson.UI.SafeColor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="126WEB安全色,在线WEB安全色">
<meta name="description" content="本表中列出的是WEB设计、开发中常用安全色。列于此是为了方便大家参考">
    <link href="/css/tools_safecolor.css" rel="stylesheet">
    <script type="text/javascript" src="/js/scripts.js"></script>
    <script type="text/javascript" src="/js/chosen.jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        <h2 class="media-heading">
                            WEB安全色</h2>
                    </h4>
                    <div id="desc1">
                        本表中列出的是WEB设计、开发中常用安全色。列于此是为了方便大家参考,原内容出自:<a href="http://www.bootcss.com/p/websafecolors/"
                            target="_blank">BootCss整理的Web安全色</a></div>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="container" style="padding-top: 0px;">
                <header class="row">
<select id="color_filter" class="chzn-select">
<option value="all_colors">216 Web安全色</option>
<option value="greens_blues">绿色 / 蓝色</option>
<option value="reds_blues">红色 / 蓝色</option>
<option value="reds_greens">红色 / 绿色</option>
<option value="earth_tones">Earth Tones</option>
<option value="pastels">柔和色</option>
<option value="greys">灰色</option>
</select>
</header>
 <section id="all_colors" class="row swatches">
<h2>216 Web安全色</h2>
<div class="color col">
<span class="swatch" style="background-color: #000000"></span>
<h3>
<span class="html">
<b>HTML</b>#000000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000033"></span>
<h3>
<span class="html">
<b>HTML</b>#000033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000066"></span>
<h3>
<span class="html">
<b>HTML</b>#000066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000099"></span>
<h3>
<span class="html">
<b>HTML</b>#000099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0000CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0000CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0000FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0000FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003300"></span>
<h3>
<span class="html">
<b>HTML</b>#003300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003333"></span>
<h3>
<span class="html">
<b>HTML</b>#003333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003366"></span>
<h3>
<span class="html">
<b>HTML</b>#003366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003399"></span>
<h3>
<span class="html">
<b>HTML</b>#003399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0033CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0033CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0033FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0033FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006600"></span>
<h3>
<span class="html">
<b>HTML</b>#006600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006633"></span>
<h3>
<span class="html">
<b>HTML</b>#006633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006666"></span>
<h3>
<span class="html">
<b>HTML</b>#006666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006699"></span>
<h3>
<span class="html">
<b>HTML</b>#006699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0066CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0066CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0066FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0066FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009900"></span>
<h3>
<span class="html">
<b>HTML</b>#009900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009933"></span>
<h3>
<span class="html">
<b>HTML</b>#009933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009966"></span>
<h3>
<span class="html">
<b>HTML</b>#009966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009999"></span>
<h3>
<span class="html">
<b>HTML</b>#009999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0099CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0099CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0099FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0099FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#00CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#00CCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF33"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF66"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF99"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#00FFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#00FFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330000"></span>
<h3>
<span class="html">
<b>HTML</b>#330000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330033"></span>
<h3>
<span class="html">
<b>HTML</b>#330033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330066"></span>
<h3>
<span class="html">
<b>HTML</b>#330066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330099"></span>
<h3>
<span class="html">
<b>HTML</b>#330099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3300CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3300CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3300FF"></span>
<h3>
<span class="html">
<b>HTML</b>#3300FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333300"></span>
<h3>
<span class="html">
<b>HTML</b>#333300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333333"></span>
<h3>
<span class="html">
<b>HTML</b>#333333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333366"></span>
<h3>
<span class="html">
<b>HTML</b>#333366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333399"></span>
<h3>
<span class="html">
<b>HTML</b>#333399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3333CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3333CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3333FF"></span>
<h3>
<span class="html">
<b>HTML</b>#3333FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336600"></span>
<h3>
<span class="html">
<b>HTML</b>#336600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336633"></span>
<h3>
<span class="html">
<b>HTML</b>#336633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336666"></span>
<h3>
<span class="html">
<b>HTML</b>#336666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336699"></span>
<h3>
<span class="html">
<b>HTML</b>#336699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3366CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3366CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3366FF"></span>
<h3>
<span class="html">
<b>HTML</b>#3366FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339900"></span>
<h3>
<span class="html">
<b>HTML</b>#339900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339933"></span>
<h3>
<span class="html">
<b>HTML</b>#339933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339966"></span>
<h3>
<span class="html">
<b>HTML</b>#339966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339999"></span>
<h3>
<span class="html">
<b>HTML</b>#339999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3399CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3399CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3399FF"></span>
<h3>
<span class="html">
<b>HTML</b>#3399FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#33CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#33CCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#33FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33FF33"></span>
<h3>
<span class="html">
<b>HTML</b>#33FF33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">255</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33FF66"></span>
<h3>
<span class="html">
<b>HTML</b>#33FF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33FF99"></span>
<h3>
<span class="html">
<b>HTML</b>#33FF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33FFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#33FFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33FFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#33FFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660000"></span>
<h3>
<span class="html">
<b>HTML</b>#660000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660033"></span>
<h3>
<span class="html">
<b>HTML</b>#660033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660066"></span>
<h3>
<span class="html">
<b>HTML</b>#660066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660099"></span>
<h3>
<span class="html">
<b>HTML</b>#660099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6600CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6600CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6600FF"></span>
<h3>
<span class="html">
<b>HTML</b>#6600FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663300"></span>
<h3>
<span class="html">
<b>HTML</b>#663300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663333"></span>
<h3>
<span class="html">
<b>HTML</b>#663333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663366"></span>
<h3>
<span class="html">
<b>HTML</b>#663366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663399"></span>
<h3>
<span class="html">
<b>HTML</b>#663399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6633CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6633CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6633FF"></span>
<h3>
<span class="html">
<b>HTML</b>#6633FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666600"></span>
<h3>
<span class="html">
<b>HTML</b>#666600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666633"></span>
<h3>
<span class="html">
<b>HTML</b>#666633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666666"></span>
<h3>
<span class="html">
<b>HTML</b>#666666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666699"></span>
<h3>
<span class="html">
<b>HTML</b>#666699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6666CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6666CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6666FF"></span>
<h3>
<span class="html">
<b>HTML</b>#6666FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669900"></span>
<h3>
<span class="html">
<b>HTML</b>#669900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669933"></span>
<h3>
<span class="html">
<b>HTML</b>#669933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669966"></span>
<h3>
<span class="html">
<b>HTML</b>#669966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669999"></span>
<h3>
<span class="html">
<b>HTML</b>#669999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6699CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6699CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6699FF"></span>
<h3>
<span class="html">
<b>HTML</b>#6699FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#66CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#66CCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#66FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FF33"></span>
<h3>
<span class="html">
<b>HTML</b>#66FF33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FF66"></span>
<h3>
<span class="html">
<b>HTML</b>#66FF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FF99"></span>
<h3>
<span class="html">
<b>HTML</b>#66FF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#66FFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#66FFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990000"></span>
<h3>
<span class="html">
<b>HTML</b>#990000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990033"></span>
<h3>
<span class="html">
<b>HTML</b>#990033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990066"></span>
<h3>
<span class="html">
<b>HTML</b>#990066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990099"></span>
<h3>
<span class="html">
<b>HTML</b>#990099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9900CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9900CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9900FF"></span>
<h3>
<span class="html">
<b>HTML</b>#9900FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993300"></span>
<h3>
<span class="html">
<b>HTML</b>#993300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993333"></span>
<h3>
<span class="html">
<b>HTML</b>#993333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993366"></span>
<h3>
<span class="html">
<b>HTML</b>#993366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993399"></span>
<h3>
<span class="html">
<b>HTML</b>#993399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9933CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9933CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9933FF"></span>
<h3>
<span class="html">
<b>HTML</b>#9933FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996600"></span>
<h3>
<span class="html">
<b>HTML</b>#996600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996633"></span>
<h3>
<span class="html">
<b>HTML</b>#996633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996666"></span>
<h3>
<span class="html">
<b>HTML</b>#996666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996699"></span>
<h3>
<span class="html">
<b>HTML</b>#996699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9966CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9966CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9966FF"></span>
<h3>
<span class="html">
<b>HTML</b>#9966FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999900"></span>
<h3>
<span class="html">
<b>HTML</b>#999900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999933"></span>
<h3>
<span class="html">
<b>HTML</b>#999933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999966"></span>
<h3>
<span class="html">
<b>HTML</b>#999966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999999"></span>
<h3>
<span class="html">
<b>HTML</b>#999999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9999CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9999CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9999FF"></span>
<h3>
<span class="html">
<b>HTML</b>#9999FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#99CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#99CCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#99FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FF33"></span>
<h3>
<span class="html">
<b>HTML</b>#99FF33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FF66"></span>
<h3>
<span class="html">
<b>HTML</b>#99FF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FF99"></span>
<h3>
<span class="html">
<b>HTML</b>#99FF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#99FFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#99FFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0000"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0033"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0066"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0099"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC00CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC00CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC00FF"></span>
<h3>
<span class="html">
<b>HTML</b>#CC00FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3300"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3333"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3366"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3399"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC33CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC33CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC33FF"></span>
<h3>
<span class="html">
<b>HTML</b>#CC33FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6600"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6633"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6666"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6699"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC66CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC66CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC66FF"></span>
<h3>
<span class="html">
<b>HTML</b>#CC66FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9900"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9933"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9966"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9999"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC99CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC99CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC99FF"></span>
<h3>
<span class="html">
<b>HTML</b>#CC99FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC00"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC33"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC66"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC99"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFF00"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFF33"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFF33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFF66"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFF99"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0000"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0033"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0066"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0099"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF00CC"></span>
<h3>
<span class="html">
<b>HTML</b>#FF00CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF00FF"></span>
<h3>
<span class="html">
<b>HTML</b>#FF00FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF3300"></span>
<h3>
<span class="html">
<b>HTML</b>#FF3300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF3333"></span>
<h3>
<span class="html">
<b>HTML</b>#FF3333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF3366"></span>
<h3>
<span class="html">
<b>HTML</b>#FF3366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF3399"></span>
<h3>
<span class="html">
<b>HTML</b>#FF3399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF33CC"></span>
<h3>
<span class="html">
<b>HTML</b>#FF33CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF33FF"></span>
<h3>
<span class="html">
<b>HTML</b>#FF33FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">51</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF6600"></span>
<h3>
<span class="html">
<b>HTML</b>#FF6600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF6633"></span>
<h3>
<span class="html">
<b>HTML</b>#FF6633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF6666"></span>
<h3>
<span class="html">
<b>HTML</b>#FF6666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF6699"></span>
<h3>
<span class="html">
<b>HTML</b>#FF6699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF66CC"></span>
<h3>
<span class="html">
<b>HTML</b>#FF66CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF66FF"></span>
<h3>
<span class="html">
<b>HTML</b>#FF66FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF9900"></span>
<h3>
<span class="html">
<b>HTML</b>#FF9900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF9933"></span>
<h3>
<span class="html">
<b>HTML</b>#FF9933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF9966"></span>
<h3>
<span class="html">
<b>HTML</b>#FF9966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF9999"></span>
<h3>
<span class="html">
<b>HTML</b>#FF9999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF99CC"></span>
<h3>
<span class="html">
<b>HTML</b>#FF99CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF99FF"></span>
<h3>
<span class="html">
<b>HTML</b>#FF99FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCC00"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCC33"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCC66"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCC99"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFF00"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFF33"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFF33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFF66"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFF99"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div> </section>
                <section id="greens_blues" class="row swatches">
<h2>Greens / Blues</h2>
<div class="color col">
<span class="swatch" style="background-color: #000000"></span>
<h3>
<span class="html">
<b>HTML</b>#000000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000033"></span>
<h3>
<span class="html">
<b>HTML</b>#000033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000066"></span>
<h3>
<span class="html">
<b>HTML</b>#000066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000099"></span>
<h3>
<span class="html">
<b>HTML</b>#000099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0000CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0000CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0000FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0000FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003300"></span>
<h3>
<span class="html">
<b>HTML</b>#003300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003333"></span>
<h3>
<span class="html">
<b>HTML</b>#003333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003366"></span>
<h3>
<span class="html">
<b>HTML</b>#003366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003399"></span>
<h3>
<span class="html">
<b>HTML</b>#003399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0033CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0033CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0033FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0033FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006600"></span>
<h3>
<span class="html">
<b>HTML</b>#006600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006633"></span>
<h3>
<span class="html">
<b>HTML</b>#006633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006666"></span>
<h3>
<span class="html">
<b>HTML</b>#006666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006699"></span>
<h3>
<span class="html">
<b>HTML</b>#006699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0066CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0066CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0066FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0066FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009900"></span>
<h3>
<span class="html">
<b>HTML</b>#009900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009933"></span>
<h3>
<span class="html">
<b>HTML</b>#009933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009966"></span>
<h3>
<span class="html">
<b>HTML</b>#009966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009999"></span>
<h3>
<span class="html">
<b>HTML</b>#009999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0099CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0099CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0099FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0099FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#00CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#00CCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF33"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF66"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF99"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#00FFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#00FFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div> </section>
                <section id="reds_blues" class="row swatches">
<h2>Reds / Blues</h2>
<div class="color col">
<span class="swatch" style="background-color: #000000"></span>
<h3>
<span class="html">
<b>HTML</b>#000000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000033"></span>
<h3>
<span class="html">
<b>HTML</b>#000033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000066"></span>
<h3>
<span class="html">
<b>HTML</b>#000066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #000099"></span>
<h3>
<span class="html">
<b>HTML</b>#000099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0000CC"></span>
<h3>
<span class="html">
<b>HTML</b>#0000CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #0000FF"></span>
<h3>
<span class="html">
<b>HTML</b>#0000FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330000"></span>
<h3>
<span class="html">
<b>HTML</b>#330000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330033"></span>
<h3>
<span class="html">
<b>HTML</b>#330033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330066"></span>
<h3>
<span class="html">
<b>HTML</b>#330066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330099"></span>
<h3>
<span class="html">
<b>HTML</b>#330099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3300CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3300CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3300FF"></span>
<h3>
<span class="html">
<b>HTML</b>#3300FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660000"></span>
<h3>
<span class="html">
<b>HTML</b>#660000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660033"></span>
<h3>
<span class="html">
<b>HTML</b>#660033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660066"></span>
<h3>
<span class="html">
<b>HTML</b>#660066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660099"></span>
<h3>
<span class="html">
<b>HTML</b>#660099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6600CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6600CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6600FF"></span>
<h3>
<span class="html">
<b>HTML</b>#6600FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990000"></span>
<h3>
<span class="html">
<b>HTML</b>#990000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990033"></span>
<h3>
<span class="html">
<b>HTML</b>#990033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990066"></span>
<h3>
<span class="html">
<b>HTML</b>#990066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990099"></span>
<h3>
<span class="html">
<b>HTML</b>#990099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9900CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9900CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9900FF"></span>
<h3>
<span class="html">
<b>HTML</b>#9900FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0000"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0033"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0066"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0099"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC00CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC00CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC00FF"></span>
<h3>
<span class="html">
<b>HTML</b>#CC00FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0000"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0033"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0033 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0066"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0066 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0099"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0099 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF00CC"></span>
<h3>
<span class="html">
<b>HTML</b>#FF00CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF00FF"></span>
<h3>
<span class="html">
<b>HTML</b>#FF00FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">255</span>
</span>
</h3>
</div> </section>
                <section id="reds_greens" class="row swatches">
<h2>Reds / Greens</h2>
<div class="color col">
<span class="swatch" style="background-color: #000000"></span>
<h3>
<span class="html">
<b>HTML</b>#000000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #003300"></span>
<h3>
<span class="html">
<b>HTML</b>#003300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #006600"></span>
<h3>
<span class="html">
<b>HTML</b>#006600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #009900"></span>
<h3>
<span class="html">
<b>HTML</b>#009900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#00CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #00FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#00FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #330000"></span>
<h3>
<span class="html">
<b>HTML</b>#330000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333300"></span>
<h3>
<span class="html">
<b>HTML</b>#333300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336600"></span>
<h3>
<span class="html">
<b>HTML</b>#336600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339900"></span>
<h3>
<span class="html">
<b>HTML</b>#339900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#33FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #660000"></span>
<h3>
<span class="html">
<b>HTML</b>#660000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663300"></span>
<h3>
<span class="html">
<b>HTML</b>#663300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666600"></span>
<h3>
<span class="html">
<b>HTML</b>#666600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669900"></span>
<h3>
<span class="html">
<b>HTML</b>#669900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#66FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #990000"></span>
<h3>
<span class="html">
<b>HTML</b>#990000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993300"></span>
<h3>
<span class="html">
<b>HTML</b>#993300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996600"></span>
<h3>
<span class="html">
<b>HTML</b>#996600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999900"></span>
<h3>
<span class="html">
<b>HTML</b>#999900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC00"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FF00"></span>
<h3>
<span class="html">
<b>HTML</b>#99FF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC0000"></span>
<h3>
<span class="html">
<b>HTML</b>#CC0000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3300"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6600"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9900"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC00"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFF00"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF0000"></span>
<h3>
<span class="html">
<b>HTML</b>#FF0000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF3300"></span>
<h3>
<span class="html">
<b>HTML</b>#FF3300 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">51</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF6600"></span>
<h3>
<span class="html">
<b>HTML</b>#FF6600 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF9900"></span>
<h3>
<span class="html">
<b>HTML</b>#FF9900 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCC00"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCC00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFF00"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFF00 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">0</span>
</span>
</h3>
</div> </section>
                <section id="greys" class="row swatches">
<h2>Greys</h2>
<div class="color col">
<span class="swatch" style="background-color: #000000"></span>
<h3>
<span class="html">
<b>HTML</b>#000000 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">0</span>
<span class="green">0</span>
<span class="blue">0</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #111111"></span>
<h3>
<span class="html">
<b>HTML</b>#111111 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">17</span>
<span class="green">17</span>
<span class="blue">17</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #222222"></span>
<h3>
<span class="html">
<b>HTML</b>#222222 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">34</span>
<span class="green">34</span>
<span class="blue">34</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333333"></span>
<h3>
<span class="html">
<b>HTML</b>#333333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #444444"></span>
<h3>
<span class="html">
<b>HTML</b>#444444 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">68</span>
<span class="green">68</span>
<span class="blue">68</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #555555"></span>
<h3>
<span class="html">
<b>HTML</b>#555555 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">85</span>
<span class="green">85</span>
<span class="blue">85</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666666"></span>
<h3>
<span class="html">
<b>HTML</b>#666666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #777777"></span>
<h3>
<span class="html">
<b>HTML</b>#777777 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">119</span>
<span class="green">119</span>
<span class="blue">119</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #888888"></span>
<h3>
<span class="html">
<b>HTML</b>#888888 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">136</span>
<span class="green">136</span>
<span class="blue">136</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999999"></span>
<h3>
<span class="html">
<b>HTML</b>#999999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #AAAAAA"></span>
<h3>
<span class="html">
<b>HTML</b>#AAAAAA </span>
<span class="rgb">
<b>RGB</b>
<span class="red">170</span>
<span class="green">170</span>
<span class="blue">170</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #BBBBBB"></span>
<h3>
<span class="html">
<b>HTML</b>#BBBBBB </span>
<span class="rgb">
<b>RGB</b>
<span class="red">187</span>
<span class="green">187</span>
<span class="blue">187</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #DDDDDD"></span>
<h3>
<span class="html">
<b>HTML</b>#DDDDDD </span>
<span class="rgb">
<b>RGB</b>
<span class="red">221</span>
<span class="green">221</span>
<span class="blue">221</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #EEEEEE"></span>
<h3>
<span class="html">
<b>HTML</b>#EEEEEE </span>
<span class="rgb">
<b>RGB</b>
<span class="red">238</span>
<span class="green">238</span>
<span class="blue">238</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div> </section>
                <section id="earth_tones" class="row quad swatches">
<h2>Earth Tones</h2>
<div class="color col">
<span class="swatch" style="background-color: #333333"></span>
<h3>
<span class="html">
<b>HTML</b>#333333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333366"></span>
<h3>
<span class="html">
<b>HTML</b>#333366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #333399"></span>
<h3>
<span class="html">
<b>HTML</b>#333399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3333CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3333CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336633"></span>
<h3>
<span class="html">
<b>HTML</b>#336633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336666"></span>
<h3>
<span class="html">
<b>HTML</b>#336666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #336699"></span>
<h3>
<span class="html">
<b>HTML</b>#336699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3366CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3366CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339933"></span>
<h3>
<span class="html">
<b>HTML</b>#339933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339966"></span>
<h3>
<span class="html">
<b>HTML</b>#339966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #339999"></span>
<h3>
<span class="html">
<b>HTML</b>#339999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #3399CC"></span>
<h3>
<span class="html">
<b>HTML</b>#3399CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#33CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #33CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#33CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">51</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663333"></span>
<h3>
<span class="html">
<b>HTML</b>#663333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663366"></span>
<h3>
<span class="html">
<b>HTML</b>#663366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #663399"></span>
<h3>
<span class="html">
<b>HTML</b>#663399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6633CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6633CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666633"></span>
<h3>
<span class="html">
<b>HTML</b>#666633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666666"></span>
<h3>
<span class="html">
<b>HTML</b>#666666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666699"></span>
<h3>
<span class="html">
<b>HTML</b>#666699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6666CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6666CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669933"></span>
<h3>
<span class="html">
<b>HTML</b>#669933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669966"></span>
<h3>
<span class="html">
<b>HTML</b>#669966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669999"></span>
<h3>
<span class="html">
<b>HTML</b>#669999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6699CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6699CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#66CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993333"></span>
<h3>
<span class="html">
<b>HTML</b>#993333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993366"></span>
<h3>
<span class="html">
<b>HTML</b>#993366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #993399"></span>
<h3>
<span class="html">
<b>HTML</b>#993399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9933CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9933CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996633"></span>
<h3>
<span class="html">
<b>HTML</b>#996633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996666"></span>
<h3>
<span class="html">
<b>HTML</b>#996666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996699"></span>
<h3>
<span class="html">
<b>HTML</b>#996699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9966CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9966CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999933"></span>
<h3>
<span class="html">
<b>HTML</b>#999933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999966"></span>
<h3>
<span class="html">
<b>HTML</b>#999966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999999"></span>
<h3>
<span class="html">
<b>HTML</b>#999999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9999CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9999CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC33"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#99CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3333"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3333 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3366"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3366 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC3399"></span>
<h3>
<span class="html">
<b>HTML</b>#CC3399 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC33CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC33CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">51</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6633"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6633 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6666"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6699"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC66CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC66CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9933"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9933 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9966"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9999"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC99CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC99CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC33"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC33 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">51</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC66"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC99"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div> </section>
                <section id="pastels" class="row quad swatches">
<h2>Pastels</h2>
<div class="color col">
<span class="swatch" style="background-color: #666666"></span>
<h3>
<span class="html">
<b>HTML</b>#666666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #666699"></span>
<h3>
<span class="html">
<b>HTML</b>#666699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6666CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6666CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6666FF"></span>
<h3>
<span class="html">
<b>HTML</b>#6666FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669966"></span>
<h3>
<span class="html">
<b>HTML</b>#669966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #669999"></span>
<h3>
<span class="html">
<b>HTML</b>#669999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6699CC"></span>
<h3>
<span class="html">
<b>HTML</b>#6699CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #6699FF"></span>
<h3>
<span class="html">
<b>HTML</b>#6699FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#66CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#66CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66CCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#66CCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FF66"></span>
<h3>
<span class="html">
<b>HTML</b>#66FF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FF99"></span>
<h3>
<span class="html">
<b>HTML</b>#66FF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#66FFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #66FFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#66FFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">102</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996666"></span>
<h3>
<span class="html">
<b>HTML</b>#996666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #996699"></span>
<h3>
<span class="html">
<b>HTML</b>#996699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9966CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9966CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9966FF"></span>
<h3>
<span class="html">
<b>HTML</b>#9966FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999966"></span>
<h3>
<span class="html">
<b>HTML</b>#999966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #999999"></span>
<h3>
<span class="html">
<b>HTML</b>#999999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9999CC"></span>
<h3>
<span class="html">
<b>HTML</b>#9999CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #9999FF"></span>
<h3>
<span class="html">
<b>HTML</b>#9999FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC66"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CC99"></span>
<h3>
<span class="html">
<b>HTML</b>#99CC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#99CCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99CCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#99CCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FF66"></span>
<h3>
<span class="html">
<b>HTML</b>#99FF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FF99"></span>
<h3>
<span class="html">
<b>HTML</b>#99FF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#99FFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #99FFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#99FFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">153</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6666"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC6699"></span>
<h3>
<span class="html">
<b>HTML</b>#CC6699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC66CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC66CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC66FF"></span>
<h3>
<span class="html">
<b>HTML</b>#CC66FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9966"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC9999"></span>
<h3>
<span class="html">
<b>HTML</b>#CC9999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC99CC"></span>
<h3>
<span class="html">
<b>HTML</b>#CC99CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CC99FF"></span>
<h3>
<span class="html">
<b>HTML</b>#CC99FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC66"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCC99"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCCCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#CCCCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFF66"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFF99"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #CCFFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#CCFFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">204</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF6666"></span>
<h3>
<span class="html">
<b>HTML</b>#FF6666 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF6699"></span>
<h3>
<span class="html">
<b>HTML</b>#FF6699 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF66CC"></span>
<h3>
<span class="html">
<b>HTML</b>#FF66CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF66FF"></span>
<h3>
<span class="html">
<b>HTML</b>#FF66FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">102</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF9966"></span>
<h3>
<span class="html">
<b>HTML</b>#FF9966 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF9999"></span>
<h3>
<span class="html">
<b>HTML</b>#FF9999 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF99CC"></span>
<h3>
<span class="html">
<b>HTML</b>#FF99CC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FF99FF"></span>
<h3>
<span class="html">
<b>HTML</b>#FF99FF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">153</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCC66"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCC66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCC99"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCC99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCCCC"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCCCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFCCFF"></span>
<h3>
<span class="html">
<b>HTML</b>#FFCCFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">204</span>
<span class="blue">255</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFF66"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFF66 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">102</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFF99"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFF99 </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">153</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFFCC"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFFCC </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">204</span>
</span>
</h3>
</div><div class="color col">
<span class="swatch" style="background-color: #FFFFFF"></span>
<h3>
<span class="html">
<b>HTML</b>#FFFFFF </span>
<span class="rgb">
<b>RGB</b>
<span class="red">255</span>
<span class="green">255</span>
<span class="blue">255</span>
</span>
</h3>
</div> </section>
                <footer class="row">
<div><a href="/p/websafecolors/">WEB安全色</a>由<a href="http://www.bootcss.com/">Bootstrap中文网</a>翻译整理</div>
</footer>
            </div>
        </div>
        <input type="hidden" id="encode" value="1" />
        <div class="panel-footer">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
