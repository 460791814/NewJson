﻿<%@ Page Title="Json格式化校验" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="JsonCheck.aspx.cs"
    Inherits="NewJson.Json.JsonCheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线,JSON,JSON 校验,格式化,在线工具,json视图,json可视化,json测试,在线json格式化工具,json 格式化,json格式化工具,json字符串格式化,json 在线查看器,json在线,json 在线验证,json tools online"/>
<meta name="description" content="在线,JSON,JSON 校验,格式化,在线工具,json视图,json可视化,json测试,在线json格式化工具,json 格式化,json格式化工具,json字符串格式化,json 在线查看器,json在线,json 在线验证,json tools online"/>
    <link href="/Css/self.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
    <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/Js/jsoncheck.js"></script>
    
    <!--[if IE]><link rel="stylesheet" href="/Css/ie.css" type="text/css" media="screen, projection"><![endif]-->
   <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Json格式化校验</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <p style="text-align: center;">
                </p>
                <div style="clear: both;">
                </div>
            </div>
            <form id="JSONValidate" method="post" action="" name="JSONValidate" style="margin-top: 10px;">
            <input type="hidden" id="reformat" value="1" />
            <input type="hidden" id="compress" value="0" />
            <div>
                <textarea id="json_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 300px;" rows="32" spellcheck="false" placeholder="请输入需要检验的json字符串或URL"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button name="validate" id="validate" value="Validate" class="btn btn-primary">
                            校验</button>
                        <input name="validate" class="btn btn-danger" onclick="javascript:$('#json_input').focus(); "
                            type="reset" value="清空" />
                    </div>
                </div>
            </div>
            </form>
            <div style="clear: both;">
            </div>
            <pre id="results" class="top10" style="display: none;"></pre>
            <div id="attention">
                <p>
                    如下原因会造成JSON校验失败,而且会让你不知道为什么失败</p>
                <ol>
                    <li>JSON字符串里的非数字型键值没有双引号 </li>
                    <li>JSON中存在\t这样的制表符,看起来和空格一样,但是就是因为它的存在校验不通过。去掉就能过了。 </li>
                    <li>编辑器有bom头也会造成</li>
                </ol>
            </div>
        </div>
    </div>
</asp:Content>
