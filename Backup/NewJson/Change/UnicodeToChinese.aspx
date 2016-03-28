<%@ Page Title="Unicode转中文,中文转Unicode" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true" CodeBehind="UnicodeToChinese.aspx.cs" Inherits="NewJson.Change.UnicodeToChinese" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="Unicode转中文,中文转Unicode,Unicode,中文,unicode"/>
    <meta name="description" content="Unicode转中文,中文转Unicode,Unicode,中文,unicode"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            Unicode转中文,中文转Unicode</h4>
                                    </div>
                                </div>
                            </div>
                            

                         <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
                        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
    
                        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
                       
                        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
                                  <div class="panel-body">

<input type="hidden" id="reformat" value="1" />
<input type="hidden" id="compress" value="0" />
<div>
<textarea id="text_input" name="json_input" class="json_input"  style="font-size: 11px !important;height:200px;"  rows="30" cols="100" spellcheck="false" placeholder="请输入你要转换的字符串"></textarea>
</div>
<div class="validateButtons clear">

<div class="left">
  <div class="btn-group" role="group" aria-label="...">
<input type="button" class="btn btn-primary" value="Unicode转中文" onclick="u2h()" />
<input type="button" class="btn btn-primary" value="中文转Unicode" onclick="h2u()" />
<input type="button" class="btn btn-primary" value="中文符号转英文符号" title="如果您从他人技术博客copy代码时,可能会因为json中重要符号被替换成中文字符而导致校验失败,这时就可以使用本功能替换" onclick="cnChar2EnChar()" />
<button type="button" class="btn btn-danger" onclick="empty()">清空结果</button>
</div>
</div>

</div>
<div class="top10">
                                    <textarea id="result_input" name="json_input"  class="json_input" style="font-size: 11px !important;height:200px;" rows="32" spellcheck="false" placeholder="这里显示转换后的结果"></textarea>
    
                                </div>

<script>
    /**
    1 压缩
    2 转义
    3 压缩转义
    */
    function yasuo(ii) {
        var txtA = document.getElementById("text_input");
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
        var text_input = document.getElementById("text_input");
        var text = text_input.value;
        text = text.trim();
        // text = text.replace(/\u/g,"");
     $("#result_input").val( GB2312UnicodeConverter.ToGB2312(text));
    }

    function h2u() {
        var text_input = document.getElementById("text_input");
        var text = text_input.value;
        text = text.trim();
        // text = text.replace(/\u/g,"");
         $("#result_input").val(GB2312UnicodeConverter.ToUnicode(text));
    }

    function cnChar2EnChar() {
        var text_input = document.getElementById("text_input");
        var str = text_input.value;
        str = str.replace(/\’|\‘/g, "'").replace(/\“|\”/g, "\"");
        str = str.replace(/\【/g, "[").replace(/\】/g, "]").replace(/\｛/g, "{").replace(/\｝/g, "}");
        str = str.replace(/，/g, ",").replace(/：/g, ":");
           $("#result_input").val(str);
       }
       function empty() {
           document.getElementById('text_input').value = '';
           document.getElementById('result_input').value = '';
           document.getElementById('text_input').select();
       }
		</script>
</div>
 



                        </div>
</asp:Content>