<%@ Page Title="Json在线编辑器,Json" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true" 
    CodeBehind="JsonEditor.aspx.cs" Inherits="NewJson.Json.JsonEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="JSON在线编辑器, JSON在线格式化工具, JSON验证工具,JSON自定义, JSON Editor Online">
    <meta name="description" content="JSON在线编辑器, JSON在线格式化工具, JSON验证工具,JSON自定义, JSON Editor Online">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        Json在线编辑器</h2>
                        <div><a href="/json/jsoneditorfull/" style=" margin:20px">Json在线编辑器全屏版</a></div>
                </div>
            </div>
        </div>
        <div class="panel-body">
<%--            <link rel="stylesheet" type="text/css" href="/css/json/core.css" />--%>
            <div id="content-wrapper" style="height: 600px">
                <div id="jsonformatter">
                </div>
                <div id="splitter">
                </div>
                <div id="jsoneditor">
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="clear">
            </div>
        <link rel="stylesheet" type="text/css" href="/Css/json/app.css">
            <link rel="stylesheet" type="text/css" href="/Css/json/jsoneditor.css">
            <script type="text/javascript" src="/Js/jsoneditor/jsoneditor.js"></script>
            <script type="text/javascript" src="/Js/jsoneditor/notify.js"></script>
            <script type="text/javascript" src="/Js/jsoneditor/splitter.js"></script>
            <script type="text/javascript" src="/Js/jsoneditor/app.js"></script>
            <script type="text/javascript" src="/Js/jsoneditor/jsonlint.js"></script>
            <link rel="stylesheet" type="text/css" href="/Css/json/jquery.reject.css" />
            <script type="text/javascript" src="/Js/jsoneditor/jquery.js"></script>
            <script type="text/javascript" src="/Js/jsoneditor/jquery.reject.js"></script>
            <script type="text/javascript">
                try {
                    app.load();
                    app.resize();
                }
                catch (e) {
                }
            </script>
        </div>
    </div>

</asp:Content>
