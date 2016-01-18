<%@ Page Title="在线Json生成实体类,支持Java,C#,VB.net,TypeScript" Language="C#" MasterPageFile="~/Main.Master"
    AutoEventWireup="true" CodeBehind="JsonModel.aspx.cs" Inherits="NewJson.Json.JsonModel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="在线,JSON,在线Json生成实体类,Model,json转换成model,生成实体,Java,C#,VB.net,TypeScript">
    <meta name="description" content="在线,JSON,在线Json生成实体类,Model,json转换成model,生成实体,Java,C#,VB.net,TypeScript">
    <style>
        .input1
        {
            width: 400px;
        }
        .panel-body .row
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Json生成Model实体,支持Java,C#,VB.net,TypeScript</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div class="row">
                <div style="float: left; margin-left: 20px;">
                    <div class="input-group input1">
                        <span class="input-group-addon" id="basic-addon1">命名空间</span>
                        <input type="text" class="form-control " id="namespace_input" placeholder="命名空间,包" aria-describedby="basic-addon1">
                    </div>
                </div>
                <div style="float: left; line-height: 34px; width: 50px; padding-left: 5px;">
                    &nbsp</div>
                <div style="float: left;">
                    <div class="input-group input1">
                        <span class="input-group-addon" id="basic-addon1">Main类名</span>
                        <input type="text" class="form-control" id="mian_input" placeholder="Root"  style="background: transparent;" aria-describedby="basic-addon1">
                    </div>
                </div>
            </div>
            <div style="margin-top: 10px">
                <div class="btn-group" role="group" aria-label="...">
                    <button id="btn_type" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        C#<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="t(3,this)">Java</a></li>
                        <li><a href="javascript:;" onclick="t(0,this)">C#</a></li>
                        <li><a href="javascript:;" onclick="t(1,this)">Visual Basic .NET</a></li>
                        <li><a href="javascript:;" onclick="t(2,this)">TypeScript</a></li>
                    </ul>
                </div>
                <div class="btn-group" role="group" aria-label="...">
                    <button id="btn_xsf" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Public<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="xsf(0,this)">Public</a></li>
                        <li><a href="javascript:;" onclick="xsf(1,this)">Internal</a></li>
                    </ul>
                </div>
                <div class="btn-group" role="group" aria-label="...">
                    <button id="btn_pf" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
                        Properties<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="pf(0,this)">Properties</a></li>
                        <li><a href="javascript:;" onclick="pf(1,this)">Field</a></li>
                    </ul>
                </div>
<%--                <div class="btn-group" role="group" aria-label="...">
                    <button id="btn_mm" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        帕斯卡(Pascal)<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="mm(0,this)">帕斯卡(Pascal)</a></li>
                        <li><a href="javascript:;" onclick="mm(1,this)">驼峰命名</a></li>
                    </ul>
                </div>--%>
            </div>
            <div style="margin-top: 10px;">
                <textarea id="text_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入json字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="cteate()">
                            生成实体</button>
                              <button type="button" class="btn btn-primary" onclick="demo()">
                            来个demo</button>
                        <button type="button" class="btn btn-primary" id="btn_copy"  onclick="copy()">复制结果</button>
                         <script type="text/javascript" src="/Js/zeroclipboard.js?v=1288490188066.7"></script>
                                <script>
                                    var clip = null;
                                    ZeroClipboard.setMoviePath("/Js/ZeroClipboard.swf");
                                    $(function () {
                                        clip = new ZeroClipboard.Client();
                                        clip.setHandCursor(true);
                                        clip.setText($("#result_input").val());
                                        clip.glue("btn_copy");
                                        clip.addEventListener("mouseOver", function () {
                                            clip.setText($("#result_input").val());
                                        });
                                    })
                                    $(window).resize(function () {
                                        clip.reposition();
                                    });
                          

	                    </script>
                        <button type="button" class="btn btn-danger" onclick="empty()">
                            全部清空</button>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
             <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="result_input" class="json_input" style="font-size: 11px !important;
                    height: 300px;" rows="32" spellcheck="false" placeholder="这里显示生成的结果"></textarea>
            </div>
            <input type="hidden" name="name" id="hid_type" value="0" />
            <input type="hidden" name="name" id="hid_xsf" value="0" />
             <input type="hidden" name="name" id="hid_pf" value="0" />
              <input type="hidden" name="name" id="hid_mm" value="0" />
        </div>
    </div>
    <script type="text/javascript">
       function t(i,t)
        {
            $("#hid_type").val(i);
            $("#btn_type").text($(t).text());
        }
        function xsf(i, t) {
            $("#hid_xsf").val(i);
            $("#btn_xsf").text($(t).text());
        }
        function pf(i, t) {
            $("#hid_pf").val(i);
            $("#btn_pf").text($(t).text());
        }
        function mm(i, t) {
            $("#hid_mm").val(i);
            $("#btn_mm").text($(t).text());
        }
        function empty() {
            document.getElementById('text_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('text_input').select();
        }
        function cteate() {
            var param = "method=model";
            param += "&namespacestr=" + $("#namespace_input").val();
            param += "&mainclass=" + $("#mian_input").val();
            param += "&type=" + $("#hid_type").val();
            param += "&xsf=" + $("#hid_xsf").val();
            param += "&pf=" + $("#hid_pf").val();
            param += "&mm=" + $("#hid_mm").val();
            param += "&jsonstr=" + $("#text_input").val();
            $.ajax({
                type: 'POST',
                url: "/Json/JsonModel.aspx",
                data: param,
                success: function (data) {
                  
                    data = $.parseJSON(data);
                    
                    $("#result_input").val(data.content);
                }

            });


        }
        function demo() {
            $("#text_input").val('{\r\n\t"animals":{\r\n\t"dog":[\r\n\t\t{"name":"Rufus","breed":"labrador","count":1,"twoFeet":false},\r\n\t\t{"name":"Marty","breed":"whippet","count":1,"twoFeet":false}\r\n\t],\r\n\t"cat":{"name":"Matilda"}\r\n}\r\n}');
        }

    
    </script>
</asp:Content>
