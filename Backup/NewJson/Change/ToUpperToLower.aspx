<%@ Page Title="大小写转换" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true"
    CodeBehind="ToUpperToLower.aspx.cs" Inherits="NewJson.Change.ToUpperToLower" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="大小写转换,大写转小写,小写转大写,字母大写转小写,字母小写转大写"/>
    <meta name="description" content="大小写转换,大写转小写,小写转大写,字母大写转小写,字母小写转大写"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        大小写转换</h4>
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
                        <button type="button" class="btn btn-primary" onclick="convert(false)">
                            全部转换成大写</button>
                        <button type="button" class="btn btn-primary" onclick="convert(true)">
                            全部转换成小写</button>
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
    <script>
        function convert(toLow) {
            var content = $("#text_input").val();
            $("#result_input").val(toLow ? content.toLowerCase() : content.toUpperCase());
        }

        function empty() {
            document.getElementById('text_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('text_input').select();
        }
    </script>
</asp:Content>
