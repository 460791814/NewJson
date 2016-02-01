<%@ Page Title="在线UTF-8编码汉字互转,中文转UTF-8,UTF-8转中文" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Utf8.aspx.cs" Inherits="NewJson.EncDec.Utf8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="UTF-8编码转换,在线UTF-8编码,utf8在线编码">
<meta name="description" content="UTF-8编码在线转工具可以帮助你把中文转换成UTF-8编码，同时也支持把UTF-8编码过的还原成中文。">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线UTF-8编码汉字互转</h4>
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
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入你要转换的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="ConvUtf()">
                            中文转UTF-8</button>
                        <button type="button" class="btn btn-primary" onclick="ResChinese()">
                            UTF-8转中文</button>
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

        function ConvUtf() {
            document.getElementById("result_input").value = $("#text_input").val().replace(/[^\u0000-\u00FF]/g, function ($0) { return escape($0).replace(/(%u)(\w{4})/gi, "&#x$2;") });
        }
        function ResChinese(obj, btn) {
            document.getElementById("result_input").value = unescape($("#text_input").val().replace(/&#x/g, '%u').replace(/;/g, ''));
        }

      function empty() {
          document.getElementById('text_input').value = '';
          document.getElementById('result_input').value = ''; 
            document.getElementById('text_input').select();
        } </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
