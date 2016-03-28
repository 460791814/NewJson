<%@ Page Title="Escape加密解密" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Escape.aspx.cs" Inherits="NewJson.EncDec.Escape" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="Escape加密,Escape解密,Escape加密解密">
    <meta name="description" content="Escape在线加密解密">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        Escape加密解密</h2>
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
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入Escape编码字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="Escape_encode();">
                            Escape加密</button>
                        <button type="button" class="btn btn-primary" onclick="Escape_decode();">
                            Escape解密</button>
                        <button type="button" class="btn btn-primary" onclick="change();">
                            内容交换</button>
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
                    height: 200px;" rows="32" spellcheck="false" placeholder="加密或解密后的Escape编码字符串"></textarea>
            </div>
            <input type="hidden" id="encode" value="1" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    </div>
    <script type="text/javascript">
        function change() {
            var src = jQuery("#text_input").val();
            jQuery("#text_input").val(jQuery("#result_input").val());
            jQuery("#result_input").val(src);
        }
        function Escape_encode() {
            jQuery("#result_input").val(escape(jQuery("#text_input").val()));
        }
        function Escape_decode() {
            jQuery("#result_input").val(unescape(jQuery("#text_input").val()));
        }

        function empty() {
            document.getElementById('text_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('text_input').select();
        }

        function GetFocus() {
            document.getElementById('text_input').focus();
        }
    </script>
</asp:Content>
