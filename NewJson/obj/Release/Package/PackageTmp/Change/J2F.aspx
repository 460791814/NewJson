<%@ Page Title="在线简体,繁体,火星文转换工具" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="J2F.aspx.cs" Inherits="NewJson.Change.J2F" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="简体转繁体,简体繁体转换,简体转火星文,在线文字转换">
<meta name="description" content="通过本工具可以把文字在简体、繁体、火星文之间互相转换。">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        在线简体,繁体,火星文转换工具</h2>
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
                <div class="left"  >
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="convert(0)">
                            繁体转换为简体</button>
            <button type="button" class="btn btn-primary" onclick="convert(1)">
                            简体转换为繁体</button>
                               <button type="button" class="btn btn-primary" onclick="convert(2)">
                            转换为火星文</button>
                        <button type="button" class="btn btn-danger" onclick="empty()">
                            清空结果</button>
                    </div>
                     
             
                 
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="这里显示转换后的结果"></textarea>
            </div>
             <input name="hidesel" id="hidesel" value="1" type="hidden" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>

        </div>
    <script src="/Js/change/j2f.js" type="text/javascript"></script>
    <script type="text/javascript">
        function empty() {
            document.getElementById('text_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('text_input').focus();
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
