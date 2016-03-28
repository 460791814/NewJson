<%@ Page Title="Json压缩转义" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true"
    CodeBehind="JsonHandle.aspx.cs" Inherits="NewJson.Json.JsonHandle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="在线,JSON,JSON 校验,格式化,json 压缩,json 压缩并转义,工具,在线工具,json tools online,json 转义,json去除转义,Unicode转中文,中文转Unicode">
    <meta name="description" content="在线,JSON,JSON 校验,格式化,json 压缩,json 压缩并转义,工具,在线工具,json tools online,json 转义,json去除转义,Unicode转中文,中文转Unicode">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
    <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
<!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
                       
    <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        Json压缩转义</h2>
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
                    height: 300px;" rows="32" spellcheck="false" placeholder="请输入需要处理的json字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <input type="button" name="name" onclick="yasuo(1);" class="btn btn-primary" value="压缩" />
                        <input type="button" name="name" onclick="yasuo(2);" class="btn btn-primary" value="转义" />
                        <input type="button" name="name" onclick="yasuo(3);" class="btn btn-primary" value="压缩并转义" />
                        <input type="button" name="name" onclick="yasuo(4);" class="btn btn-primary" value="去除转义" />
                        <input type="button" name="name" onclick="u2h();" class="btn btn-primary" value="Unicode转中文" />
                        <input type="button" name="name" onclick="h2u();" class="btn btn-primary" value="中文转Unicode" />
                        <input type="button" name="name" onclick="cnChar2EnChar(3);" title="如果您从他人技术博客copy代码时,可能会因为json中重要符号被替换成中文字符而导致校验失败,这时就可以使用本功能替换"
                            class="btn btn-primary" value="中文符号转英文符号" />
                        <input type="button" name="name" onclick="javascript:$('#json_input').val('').focus(); "
                            type="reset" class="btn btn-danger" value="清空" />
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <script type="text/javascript">

        /**
        1 压缩
        2 转义
        3 压缩转义
        */
        function yasuo(ii) {
            var txtA = document.getElementById("json_input");
            var text = txtA.value;
            if (ii == 1 || ii == 3) {
                text = text.split("\n").join(" ");
                var t = [];
                var inString = false;
                for (var i = 0, len = text.length; i < len; i++) {
                    var c = text.charAt(i);
                    if (inString && c === inString) {
                        // TODO: \\"
                        if (text.charAt(i - 1) !== '\\') {
                            inString = false;
                        }
                    } else if (!inString && (c === '"' || c === "'")) {
                        inString = c;
                    } else if (!inString && (c === ' ' || c === "\t")) {
                        c = '';
                    }
                    t.push(c);
                }
                text = t.join('');
            }
            if (ii == 2 || ii == 3) {
                text = text.replace(/\\/g, "\\\\").replace(/\"/g, "\\\"");
            }
            if (ii == 4) {
                text = text.replace(/\\\\/g, "\\").replace(/\\\"/g, '\"');
            }
            txtA.value = text;
            return false;
        }

        String.prototype.trim = function () {
            return this.replace(/(^\s*)|(\s*$)/g, '');
        }
        var GB2312UnicodeConverter = {
            ToUnicode: function (str) {
                var txt = escape(str).toLocaleLowerCase().replace(/%u/gi, '\\u');
                //var txt= escape(str).replace(/([%3F]+)/gi,'\\u');
                return txt.replace(/%7b/gi, '{').replace(/%7d/gi, '}').replace(/%3a/gi, ':').replace(/%2c/gi, ',').replace(/%27/gi, '\'').replace(/%22/gi, '"').replace(/%5b/gi, '[').replace(/%5d/gi, ']').replace(/%3D/gi, '=').replace(/%20/gi, ' ').replace(/%3E/gi, '>').replace(/%3C/gi, '<').replace(/%3F/gi, '?'); //
            }
		  , ToGB2312: function (str) {
		      return unescape(str.replace(/\\u/gi, '%u'));
		  }
        };

        function u2h() {
            var txtA = document.getElementById("json_input");
            var text = txtA.value;
            text = text.trim();
            // text = text.replace(/\u/g,"");
            txtA.value = GB2312UnicodeConverter.ToGB2312(text);
        }

        function h2u() {
            var txtA = document.getElementById("json_input");
            var text = txtA.value;
            text = text.trim();
            // text = text.replace(/\u/g,"");
            txtA.value = GB2312UnicodeConverter.ToUnicode(text);
        }

        function cnChar2EnChar() {
            var txtA = document.getElementById("json_input");
            var str = txtA.value;
            str = str.replace(/\’|\‘/g, "'").replace(/\“|\”/g, "\"");
            str = str.replace(/\【/g, "[").replace(/\】/g, "]").replace(/\｛/g, "{").replace(/\｝/g, "}");
            str = str.replace(/，/g, ",").replace(/：/g, ":");
            txtA.value = str;
        }
		
    </script>
</asp:Content>
