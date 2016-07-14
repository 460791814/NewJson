<%@ Page Title="Json生成C#实体类,Json转c#对象Json生成Model实体" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Json2Csharp.aspx.cs" Inherits="NewJson.Json.Json2Csharp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="Json转C#实体类,Json转c#对象Json生成Model实体">
    <meta name="description" content="Json转C#实体类,Json转c#对象Json生成Model实体,Json对象生成c#对象的工具">
    <script src="/Js/json/json2csharp/jsontocsharp.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
     <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        JSON生成C#实体类</h2>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
  
           
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
                                        clip.addEventListener("mouseDown", function () {
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
        function t(i, t) {
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
    
            if ($("#text_input").val().trim() == "") {
                $("#result_input").text("请填写JSON");
                return false;
            }
            var v = eval("(" + $("#text_input").val() + ")");
            var res = JSON2CSharp.convert(v);
            $("#result_input").html(res );


        }
        function demo() {
            $("#text_input").val('{\r\n\t"person":{\r\n\t"man":[\r\n\t\t{"name":"danshendog","sex":"man","age":5,"havemoney":false},\r\n\t\t{"name":"danshendog2","sex":"man","age":5,"havemoney":false}\r\n\t],\r\n\t"woman":{"name":"lili"}\r\n}\r\n}');
        }


    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
