<%@ Page Title="Javascript Eval加密解密" Language="C#" MasterPageFile="~/Main.Master"
    AutoEventWireup="true" CodeBehind="JsEval.aspx.cs" Inherits="NewJson.EncDec.JsEval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="在线,Javascript Eval加密解密">
    <meta name="description" content="在线,Javascript Eval加密解密">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Javascript Eval加密解密</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div>
                <textarea id="text_input" name="RawJson" class="json_input" rows="16" style="width: 100%;"
                    spellcheck="false" placeholder="请输入js"></textarea>
            </div>
            <div class="btn-group" role="group" aria-label="...">
                <button type="button" class="btn btn-primary" onclick="encode();">
                    加密</button>
                <button type="button" class="btn btn-primary" onclick="decode();">
                    解密</button>
                <button type="button" class="btn btn-danger" onclick="javascript:$('#text_input').val('').focus(); ">
                    清空结果</button>
            </div>
        </div>
        <input type="hidden" id="tabsize" value="1" />
    </div>
    <script type="text/javascript">
        a = 62;
        function encode() {
            var code = document.getElementById('text_input').value;
            code = code.replace(/[\r\n]+/g, '');
            code = code.replace(/'/g, "\\'");
            var tmp = code.match(/\b(\w+)\b/g);
            tmp.sort();
            var dict = [];
            var i, t = '';
            for (var i = 0; i < tmp.length; i++) {
                if (tmp[i] != t) dict.push(t = tmp[i]);
            }
            var len = dict.length;
            var ch;
            for (i = 0; i < len; i++) {
                ch = num(i);
                code = code.replace(new RegExp('\\b' + dict[i] + '\\b', 'g'), ch);
                if (ch == dict[i]) dict[i] = '';
            }
            document.getElementById('text_input').value = "eval(function(p,a,c,k,e,d){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)d[e(c)]=k[c]||e(c);k=[function(e){return d[e]}];e=function(){return'\\\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\\\b'+e(c)+'\\\\b','g'),k[c]);return p}("
   + "'" + code + "'," + a + "," + len + ",'" + dict.join('|') + "'.split('|'),0,{}))";
        }
        function num(c) {
            return (c < a ? '' : num(parseInt(c / a))) + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c.toString(36));
        }
        function run() {
            eval(document.getElementById('text_input').value);
        }
        function decode() {
            var code = document.getElementById('text_input').value;
            code = code.replace(/^eval/, '');
            document.getElementById('text_input').value = eval(code);
        }



        function GetFocus() {
            document.getElementById('text_input').focus();
        }
    </script>
</asp:Content>
