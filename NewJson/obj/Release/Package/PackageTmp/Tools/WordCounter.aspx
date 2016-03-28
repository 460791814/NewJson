<%@ Page Title="在线字数统计工具" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="WordCounter.aspx.cs" Inherits="NewJson.Tools.WordCounter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<meta name="keywords" content="字数，字数统计工具，word字数统计在哪，字数计算器，在线字数统计，wps字数统计在哪里，word字数统计" /> 
	<meta name="description" content="字数计算，wps字数统计，测字数，字数在线统计，查字数" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default" style="width: 80%; float: left;margin-right: 10px;">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        在线字数统计工具</h2>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
            <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
            <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
            <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
     
            <div  >
                <textarea id="text_input" name="json_input" onkeyup="Statistics()" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入你要统计的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                                       <button type="button" class="btn btn-primary" onclick="Section()">
                            段落整理</button>
              
             
                        <button type="button" class="btn btn-primary" onclick="R_Trim()">
                            清除行尾空格</button>
                                      <button type="button" class="btn btn-danger" onclick="Clear_Content()">
                            清空数据</button>
             
                    </div>

                    
                    <div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="panel panel-default" style="float: left;width: 200px;height:323px">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <div class="media-heading">
                        字符统计结果</div>
                </div>
            </div>
        </div>
        <div class="panel-body">
        <div class="box_right">
 
   <div class="blankline"></div>
   字符总数：&nbsp;<span id="id_total">0</span>&nbsp;个
   <div class="blankline"></div>
   中文字符总数：&nbsp;<span id="id_c_total">0</span>&nbsp;个<br>
   中文标点总数：&nbsp;<span id="id_c_punctuation">0</span>&nbsp;个<br>
   英文字符总数：&nbsp;<span id="id_e_total">0</span>&nbsp;个<br>
   英文标点总数：&nbsp;<span id="id_e_punctuation">0</span>&nbsp;个<br>
   数字字符总数：&nbsp;<span id="id_n_total">0</span>&nbsp;个
   <div class="blankline"></div>
   英文单词总数：&nbsp;<span id="id_e_words">0</span>&nbsp;个<br>
   数据单词总数：&nbsp;<span id="id_n_words">0</span>&nbsp;个<br>
   行（段）总数：&nbsp;<span id="id_part">0</span>
   <div class="blankline"></div>
   <div class="blankline"></div>
   
  </div>
        </div>
        </div>
<script type="text/javascript"> 
//<![CDATA[
    var BROWSER = {};
    __GetBVar();
    if (BROWSER.safari) { BROWSER.firefox = true; }

    function __GetBVar() {
        var types = { 'ie': 'msie', 'firefox': '', 'chrome': '', 'opera': '', 'safari': '', 'mozilla': '', 'webkit': '', 'maxthon': '', 'qq': 'qqbrowser' };
        var __ua = navigator.userAgent.toLowerCase();
        var other = 1, ver = 0;
        if (BROWSER.opera) {
            ver = opera.version();
            BROWSER.opera = ver;
            BROWSER.name = "opera";
            BROWSER.ver = parseFloat(ver);
        }
        else {
            BROWSER.opera = 0;
        }
        for (i in types) {
            var v = types[i] ? types[i] : i;
            if (__ua.indexOf(v) != -1) {
                var re = new RegExp(v + '(\\/|\\s)([\\d\\.]+)', 'ig');
                var matches = re.exec(__ua);
                ver = matches != null ? matches[2] : 0;
                other = ver !== 0 && v != 'mozilla' ? 0 : other;
                if (!BROWSER.name) {
                    BROWSER.name = i;
                    BROWSER.ver = parseFloat(ver);
                }
            }
            else {
                ver = 0;
            }
            eval('BROWSER.' + i + '= ver');
        }
        BROWSER.other = other;
    }

    
    function set(name, val) { document.getElementById(name).innerHTML = val; }

    function Statistics() {
        var str = $('#text_input').val().replace(/\r\n/g, "\n");
        var t_str = str.replace(/\n/g, '');
        var w_c_str = str.match(/[\u4e00-\u9fa5]/g) || [];
        var w_e_str = str.match(/\b\w+\b/g) || [];
        var w_n_str = str.match(/\b\d+\b/g) || [];
        var e_p = t_str.match(/[|\~|\`|\!|\@|\#|\$|\%|\^|\&|\*|\(|\)|\-|\_|\+|\=|\||\\|\[|\]|\{|\}|\;|\:|\"|\'|\,|\<|\.|\>|\/|\?]/g) || [];

        var sTotal = 0;
        for (var i = 0; i < t_str.length; i++) {
            var c = t_str.charAt(i);
            if (c.match(/[^\x00-\xff]/)) sTotal++;
        }

        var e = t_str.match(/[A-Za-z]/g) || [];
        var eTotal = e.length;

        var n = t_str.match(/[0-9]/g) || [];
        var nTotal = n.length;

        var part = 0;
        var s_ma = str.split("\n");
        for (var i = 0; i < s_ma.length; i++) {
            if (s_ma[i].length > 0) part++;
        }

       set('id_total', t_str.length);
       set('id_c_total', w_c_str.length);
       set('id_c_punctuation', sTotal - w_c_str.length);
       set('id_e_total', eTotal);
       set('id_e_punctuation', e_p.length);
       set('id_e_words', w_e_str.length - w_n_str.length);
       set('id_n_words', w_n_str.length);
       set('id_n_total', nTotal);
       set('id_part', part);
    }
    function Clear_Content() {
        $('#text_input').val("");
        $('#text_input').focus();
        Statistics();
    }
    function R_Trim() {
        var str = $('#text_input').val().replace(/\r\n/g, "\n").replace(/\n/g, "~");
        var m = str.split("~");
        var ma = [];
        var len = m.length;
        for (var i = 0; i < len; i++) {
            ma.push(m[i].replace(/(\s*$)/g, ""));
        }
        $('#text_input').val(ma.join("\r\n"));

        Statistics();
    }
    function Section() {
        var str = $('#text_input').val().replace(/\r\n/g, "\n").replace(/\n/g, "~");
        var m = str.split("~");
        var ma = [];
        var len = m.length;
        for (var i = 0; i < len; i++) {
            ma.push('    ' + m[i].replace(/(^\s*)|(\s*$)/g, ""));
        }
        $('#text_input').val(ma.join("\r\n"));

        Statistics();
    }
//]]>
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
