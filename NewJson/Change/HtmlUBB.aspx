<%@ Page Title="Html与UBB代码互相转换工具" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="HtmlUBB.aspx.cs" Inherits="NewJson.Change.HtmlUBB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="Keywords" content="在线工具,html和ubb互转,Html转UBB,UBB转Html">
    <meta name="Description" content="在线工具,html和ubb互转,Html转UBB,UBB转Html">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Html与UBB代码互相转换工具</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div>
                <p style="text-align: center;">
                </p>
                <div style="clear: both;">
                </div>
            </div>
            <div>
                <textarea id="text_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入你要转换的Html或UBB代码"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="htmltoubb()">
                            Html转UBB</button>
                        <button type="button" class="btn btn-primary" onclick="ubbtohtml()">
                            UBB转Html</button>
                        <button type="button" class="btn btn-danger" onclick="empty()">
                            清空结果</button>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="这里显示转换后的结果"></textarea>
            </div>
            <input type="hidden" id="encode" value="1" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    </div>
 
    <script type="text/javascript">
         function htm2ubb(str) {
                //str = str.replace(/(\r\n|\n|\r)/ig, '');
                str = str.replace(/<br[^>]*>/ig, '\n');
                str = str.replace(/<p[^>\/]*\/>/ig, '\n');
                //str = str.replace(/\[code\](.+?)\[\/code\]/ig, function($1, $2) {return phpcode($2);});	
                str = str.replace(/\son[\w]{3,16}\s?=\s*([\'\"]).+?\1/ig, '');

                str = str.replace(/<hr[^>]*>/ig, '[hr]');
                str = str.replace(/<(sub|sup|u|strike|b|i|pre)>/ig, '[$1]');
                str = str.replace(/<\/(sub|sup|u|strike|b|i|pre)>/ig, '[/$1]');
                str = str.replace(/<(\/)?strong>/ig, '[$1b]');
                str = str.replace(/<(\/)?em>/ig, '[$1i]');
                str = str.replace(/<(\/)?blockquote([^>]*)>/ig, '[$1blockquote]');

                str = str.replace(/<img[^>]*smile=\"(\d+)\"[^>]*>/ig, '[s:$1]');
                str = str.replace(/<img[^>]*src=[\'\"\s]*([^\s\'\"]+)[^>]*>/ig, '[img]' + '$1' + '[/img]');
                str = str.replace(/<a[^>]*href=[\'\"\s]*([^\s\'\"]*)[^>]*>(.+?)<\/a>/ig, '[url=$1]' + '$2' + '[/url]');
                //str = str.replace(/<h([1-6]+)([^>]*)>(.*?)<\/h\1>/ig,function($1,$2,$3,$4){return h($3,$4,$2);});

                str = str.replace(/<[^>]*?>/ig, '');
                str = str.replace(/&amp;/ig, '&');
                str = str.replace(/&lt;/ig, '<');
                str = str.replace(/&gt;/ig, '>');

                return str;
            }
           function ubb2html(str) {
                str = str.replace(/</ig, '&lt;');
                str = str.replace(/>/ig, '&gt;');
                str = str.replace(/\n/ig, '<br />');
                str = str.replace(/\[code\](.+?)\[\/code\]/ig, function ($1, $2) { return phpcode($2); });

                str = str.replace(/\[hr\]/ig, '<hr />');
                str = str.replace(/\[\/(size|color|font|backcolor)\]/ig, '</font>');
                str = str.replace(/\[(sub|sup|u|i|strike|b|blockquote|li)\]/ig, '<$1>');
                str = str.replace(/\[\/(sub|sup|u|i|strike|b|blockquote|li)\]/ig, '</$1>');
                str = str.replace(/\[\/align\]/ig, '</p>');
                str = str.replace(/\[(\/)?h([1-6])\]/ig, '<$1h$2>');

                str = str.replace(/\[align=(left|center|right|justify)\]/ig, '<p align="$1">');
                str = str.replace(/\[size=(\d+?)\]/ig, '<font size="$1">');
                str = str.replace(/\[color=([^\[\<]+?)\]/ig, '<font color="$1">');
                str = str.replace(/\[backcolor=([^\[\<]+?)\]/ig, '<font style="background-color:$1">');
                str = str.replace(/\[font=([^\[\<]+?)\]/ig, '<font face="$1">');
                str = str.replace(/\[list=(a|A|1)\](.+?)\[\/list\]/ig, '<ol type="$1">$2</ol>');
                str = str.replace(/\[(\/)?list\]/ig, '<$1ul>');

                str = str.replace(/\[s:(\d+)\]/ig, function ($1, $2) { return smilepath($2); });
                str = str.replace(/\[img\]([^\[]*)\[\/img\]/ig, '<img src="$1" border="0" />');
                str = str.replace(/\[url=([^\]]+)\]([^\[]+)\[\/url\]/ig, '<a href="$1">' + '$2' + '</a>');
                str = str.replace(/\[url\]([^\[]+)\[\/url\]/ig, '<a href="$1">' + '$1' + '</a>');
                return str;
            }
            function htmltoubb() {
                $("#result_input").val(htm2ubb($("#text_input").val()));
            }
            function ubbtohtml() {
               $("#result_input").val(ubb2html($("#text_input").val()));
           }
           function empty() {
               document.getElementById('text_input').value = '';
               document.getElementById('result_input').value = '';
               document.getElementById('text_input').select();
           }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
