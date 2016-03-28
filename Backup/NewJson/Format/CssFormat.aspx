<%@ Page Title="Css格式化,解压缩,整理" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="CssFormat.aspx.cs" Inherits="NewJson.Format.CssFormat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="css格式化,css美化,css压缩,css整理,css加密" />
    <meta name="description" content="对css进行格式化排版，整齐的进行显示。可以对css进行加密，加密压缩。" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Css在线解压缩/格式化</h4>
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
            <form id="JSONValidate" method="post" action="" name="JSONValidate" style="margin-top: 10px;">
            <div>
                <textarea id="text_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 360px;" rows="32" spellcheck="false" placeholder="请输入 CSS 代码"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="CSS('format');">
                            格式化</button>
                        <button type="button" class="btn btn-primary" onclick="CSS('packAdv');">
                            完全压缩</button>
                        <button type="button" class="btn btn-primary" onclick="CSS('pack');">
                            普通压缩</button>
                        <button type="button" class="btn btn-danger" onclick="javascript:$('#text_input').val('').focus(); ">
                            清空结果</button>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
            </form>
            <div style="clear: both;">
            </div>
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    </div>
    <script type="text/javascript">        loading('100%', 1000)</script>
    <script type="text/javascript">
        var lCSSCoder = { format: function (s) { s = s.replace(/\s*([\{\}\:\;\,])\s*/g, "$1"); s = s.replace(/;\s*;/g, ";"); s = s.replace(/\,[\s\.\#\d]*{/g, "{"); s = s.replace(/([^\s])\{([^\s])/g, "$1 {\n\t$2"); s = s.replace(/([^\s])\}([^\n]*)/g, "$1\n}\n$2"); s = s.replace(/([^\s]);([^\s\}])/g, "$1;\n\t$2"); return s; }, packAdv: function (s) { s = s.replace(/\/\*(.|\n)*?\*\//g, ""); s = s.replace(/\s*([\{\}\:\;\,])\s*/g, "$1"); s = s.replace(/\,[\s\.\#\d]*\{/g, "{"); s = s.replace(/;\s*;/g, ";"); s = s.match(/^\s*(\S+(\s+\S+)*)\s*$/); return (s == null) ? "" : s[1]; }, pack: function (s) { s = s.replace(/\/\*(.|\n)*?\*\//g, ""); s = s.replace(/\s*([\{\}\:\;\,])\s*/g, "$1"); s = s.replace(/\,[\s\.\#\d]*\{/g, "{"); s = s.replace(/;\s*;/g, ";"); s = s.replace(/;\s*}/g, "}"); s = s.replace(/([^\s])\{([^\s])/g, "$1{$2"); s = s.replace(/([^\s])\}([^\n]s*)/g, "$1}\n$2"); return s; } }; function CSS(s) { document.getElementById("text_input").value = lCSSCoder[s](document.getElementById("text_input").value); }


        function GetFocus() {
            document.getElementById('text_input').focus();
        }
    </script>
</asp:Content>
