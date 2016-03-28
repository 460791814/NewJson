<%@ Page Title="在线文本字符串转16进制,16进制转文本字符串"  Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Hex2Str.aspx.cs" Inherits="NewJson.Change.Hex2Str" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线文本字符串转16进制,16进制转文本字符串，在线实时转换">
<meta name="description" content="在线文本字符串转16进制,16进制转文本字符串，在线实时转换">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                       文本字符串转16进制,16进制转文本字符串</h2>
               
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div>
                <textarea id="text_input" style="height: 200px" class="json_input" style="width: 100%;"
                    spellcheck="false"></textarea>
            </div>
            <div class="btn-group" role="group" aria-label="...">
                <button type="button" class="btn btn-primary" onclick="stringToHex();">
                    字符转16进制</button>
                <button type="button" class="btn btn-primary" onclick="hex2String();">
                    16进制转字符</button>
                <button type="button" class="btn btn-danger" onclick="empty();">
                    清空结果</button>
            </div>
            <div style="padding-top: 10px;">
                <textarea id="result_input" class="json_input" style="height: 200px" style="width: 100%;"
                    spellcheck="false"></textarea>
            </div>
        </div>
        <input type="hidden" id="encode" value="1" />
        <div class="panel-footer">
        </div>
    </div>
    <script type="text/javascript">
        function empty() {
            $("#text_input").val("");
            $("#result_input").val("");
            $("#text_input").focus();
        }

        function hex2String() {
            var strInput = $("#text_input").val();
            var nInputLength = strInput.length;
            if (nInputLength % 2 == 0) //当输入够偶数位；
            {
                var StrHex = "";
                for (var i = 0; i < nInputLength; i = i + 2) {
                    var str = strInput.substr(i, 2); //16进制；
                    //StrHex = StrHex + .toString(16);

                    var n = parseInt(str, 16); //10进制；
                    StrHex = StrHex + String.fromCharCode(n);
                }
                $("#result_input").val(StrHex);
            }
        }

        function stringToHex() {
            var val = "";
            var str = $("#text_input").val();
            for (var i = 0; i < str.length; i++) {
                if (val == "")
                    val = str.charCodeAt(i).toString(16);
                else
                    val += str.charCodeAt(i).toString(16);
            }
            $("#result_input").val(val);
        }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
