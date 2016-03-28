<%@ Page Title="Exel转Json格式,Csv转Json格式" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true" CodeBehind="Excel2Json.aspx.cs"
    Inherits="NewJson.Json.Excel2Json" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <meta name="keywords" content="在线Exel转JSON格式,在线csv转JSON,Json,Exel转Json,Csv转Json">
  <meta name="description" content="在线Exel转JSON格式,在线csv转JSON,Json,Exel转Json,Csv转Json">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        Exel转Json格式,Csv转Json格式</h2>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div>
                <textarea id="text_input" name="RawJson" class="json_input" rows="10" style="width: 100%;height: 200px;"
                    spellcheck="false" placeholder="请在excel里复制下内容贴到这里"></textarea>
            </div>
            <div class="input-group" style="width: 180px; float: left; margin-right: 20px;">
                <span class="input-group-addon" id="basic-addon1">分隔符</span>
                <input type="text" class="form-control" id="fgfstr" placeholder="默认是制表符" aria-describedby="basic-addon1">
            </div>
            <div class="btn-group" role="group" aria-label="..." style="float: left; margin-right: 20px">
                <button type="button" class="btn btn-primary" id="changebtn">
                    转换</button>
                <button type="button" class="btn btn-primary" id="testcase" onclick="example()">
                    来个demo</button>
                <button type="button" class="btn btn-danger" onclick="$('textarea').val('')">
                    清空</button>
            </div>
            <div class="btn-group" role="group" aria-label="..." style="float: left; margin-right: 20px">
                <button id="sels" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    按行转成对象<span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="javascript:;" onclick="c(0,this)">按行转成对象</a></li>
                    <li><a href="javascript:;" onclick="c(1,this)">按行转成数组</a></li>
                </ul>
            </div>
            <div style="clear: both;">
            </div>
            <div style="padding-top: 10px;">
                <textarea id="result" name="RawJson" class="json_input" rows="10" style="width: 100%;height: 200px;"
                    spellcheck="false" placeholder="转换后的内容"></textarea>
            </div>
            <input type="hidden" id="ctype" value="0" />
        </div>
    </div>
    <script>
        function example() {
            $("#text_input").val("name	sex	age\n\我是小宝	男	5\n\我是小宝	男	5\n\我是小宝	男	5");
        }

        $("#text_input").bind("change1", function () {
            var ctype = $("#ctype").val();
            var txt = "";
            if (ctype == "0") {
                txt = ctype0();
            }
        })
        $("#changebtn").click(function () {
            ctyperow(true);
        });

        function c(t, o) {
            $("#ctype").val(t);
            $("#sels").text($(o).text());
        }
        var fgf = /\t/;
        function ctyperow() {
            fgf = $("#fgfstr").val() || fgf;
            var ctype = $("#ctype").val();
            var txt = $("#text_input").val();
            var datas = txt.split("\n");
            var html = "[\n";
            var keys = [];
            for (var i = 0; i < datas.length; i++) {
                var ds = datas[i].split(fgf);
                if (i == 0) {

                    if (ctype == "0") {
                        keys = ds;
                    } else {
                        html += "[";
                        for (var j = 0; j < ds.length; j++) {
                            html += '"' + ds[j] + '"';
                            if (j < ds.length - 1) {
                                html += ",";
                            }
                        }
                        html += "],\n";
                    }
                } else {
                    if (ds.length == 0) continue;
                    if (ds.length == 1) {
                        ds[0] == "";
                        continue;
                    }
                    html += ctype == "0" ? "{" : "[";
                    for (var j = 0; j < ds.length; j++) {
                        var d = ds[j];
                        if (d == "") continue;
                        if (ctype == "0") {
                            html += '"' + keys[j] + '":"' + d + '"';
                        } else {
                            html += '"' + d + '"';
                        }
                        if (j < ds.length - 1) {
                            html += ',';
                        }
                    }
                    html += ctype == "0" ? "}" : "]";
                    if (i < datas.length - 1)
                        html += ",\n";
                }


            }
            html += "\n]";
            $("#result").val(html);
        }

    </script>
</asp:Content>
