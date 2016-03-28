<%@ Page Title="js/html格式化,解压缩,加密"  Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="JsHtmlFormat.aspx.cs"
    Inherits="NewJson.Format.JsHtmlFormat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="js格式化,js美化,js压缩,js整理,js加密,html格式化,html美化,html压缩,html整理,html加密"/>
    <meta name="description" content="对js/html进行格式化排版，整齐的进行显示。可以对js/html进行加密，加密压缩。"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        js/html格式化,解压缩,加密</h2>
                </div>
            </div>
        </div>
        <script src="/Js/format/base.js" type="text/javascript"></script>
        <script src="/Js/format/jsformat.js" type="text/javascript"></script>
        <script src="/Js/format/htmlformat.js" type="text/javascript"></script>
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
                    height: 360px;" rows="32" spellcheck="false" placeholder="请输入Javascript 或者 HTML 代码"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button id="sels" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            制表符缩进<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:;" onclick="sj(1)">1个空格缩进</a></li>
                            <li><a href="javascript:;" onclick="sj(2)">2个空格缩进</a></li>
                            <li><a href="javascript:;" onclick="sj(4)">4个空格缩进</a></li>
                            <li><a href="javascript:;" onclick="sj(8)">8个空格缩进</a></li>
                        </ul>
                        <button type="button" class="btn btn-primary" onclick="return do_js_beautify();"
                            id="beautify">
                            格式化</button>
                        <button type="button" class="btn btn-primary" onclick="pack_js(0);">
                            普通压缩</button>
                        <button type="button" class="btn btn-primary" onclick="pack_js(1);">
                            加密压缩</button>
                        <button type="button" class="btn btn-primary" onclick="change();">
                            JS/HTML互转</button>
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
        <input type="hidden" id="tabsize" value="1" />
    </div>
    <script type="text/javascript">
        function sj(s) {
            $("#tabsize").val(s);
            $("#sels").text(s + "个空格缩进");
        }

        function do_js_beautify() {
            document.getElementById('beautify').disabled = true;
            js_source = document.getElementById('text_input').value.replace(/^\s+/, '');
            tabsize = document.getElementById('tabsize').value;
            tabchar = ' ';
            if (tabsize == 1) {
                tabchar = '\t';
            }
            if (js_source && js_source.charAt(0) === '<') {
                document.getElementById('text_input').value = style_html(js_source, tabsize, tabchar, 80);
            } else {
                document.getElementById('text_input').value = js_beautify(js_source, tabsize, tabchar);
            }
            document.getElementById('beautify').disabled = false;
            return false;
        }
        function pack_js(base64) {
            var input = document.getElementById('text_input').value.replace(/^\s+|\s+$/g, "");
            if (input == '') {
                alert('请输入需要压缩的内容!');
                return;
            }

            var packer = new Packer;
            if (base64) {
                var output = packer.pack(input, 1, 0);
            } else {
                var output = packer.pack(input, 0, 0);
            }
            document.getElementById('text_input').value = output;
        }

        function rechange() {
            document.getElementById('text_input').value = document.getElementById('text_input').value.replace(/document.writeln\("/g, "").replace(/"\);/g, "").replace(/\\\"/g, "\"").replace(/\\\'/g, "\'").replace(/\\\//g, "\/").replace(/\\\\/g, "\\")
        }
        function changeIt() {
            document.getElementById('text_input').value = "document.writeln(\"" + document.getElementById('text_input').value.replace(/\\/g, "\\\\").replace(/\\/g, "\\/").replace(/\'/g, "\\\'").replace(/\"/g, "\\\"").split('\n').join("\");\ndocument.writeln(\"") + "\");"
        }

        var ischange = false;
        function change() {
            if (!ischange) {
                changeIt();

            } else {
                rechange();
            }
            ischange = !ischange;
        }

        function GetFocus() {
            document.getElementById('text_input').focus();
        }
    </script>
</asp:Content>
