<%@ Page Title="XML格式化,压缩" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="XmlFormat.aspx.cs" Inherits="NewJson.Format.XmlFormat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="xml格式化,xml美化,xml压缩,xml整理,xml加密"/>
    <meta name="description" content="对xml进行格式化排版，整齐的进行显示。可以对xml进行加密，加密压缩。"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        XML格式化,压缩</h2>
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
                <textarea id="json_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 360px;" rows="32" spellcheck="false" placeholder="请输入XML"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-primary" onclick="$('#json_input').format({method: 'xml'});">
                            格式化</button>
                        <button type="button" class="btn btn-primary" onclick="$('#json_input').format({method: 'xmlmin'});">
                            压缩</button>
                        
                        <button type="button" class="btn btn-danger" onclick="javascript:$('#json_input').val('').focus(); ">
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
    <script src="/Js/format/jquery.format.js" type="text/javascript"></script>
</asp:Content>
