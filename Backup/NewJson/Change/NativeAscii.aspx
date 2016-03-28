<%@ Page Title="ASCII转NATIVE,NATIVE转ASCII" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true" CodeBehind="NativeAscii.aspx.cs"
    Inherits="NewJson.Change.NativeAscii" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="ASCII转NATIVE,NATIVE转ASCII,ascii转native,native转ascii" />
    <meta name="description" content="ASCII转NATIVE,NATIVE转ASCII,ascii转native,native转ascii" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        ASCII转NATIVE,NATIVE转ASCII</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div style="width: 100%;">
                <div>
                    <textarea id="text_input" name="text_input"  class="json_input" style="font-size: 11px !important;height: 200px;" rows="20" spellcheck="false"
                        placeholder="请输入你要转换的字符串"></textarea>
                </div>
                <div class="validateButtons clear">
                    <div class="left" style="float: left">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" class="btn btn-primary" onclick="ascii2native()">
                                ASCII转NATIVE</button>
                            <button type="button" class="btn btn-primary" onclick="native2ascii()">
                                NATIVE转ASCII</button>
                            <button type="button" class="btn btn-danger" onclick="empty()">
                                全部清空</button>
                            <p style="float: left; margin-top: 5px; margin-left: 10px;">
                                <input type="checkbox" name="ignoreLetter" id="ignoreLetter" checked="true">不转换字母和数字</p>
                        </div>
                        <div>
                        </div>
                    </div>
                </div>
                <div class="cls">
                </div>
                <div class="top10">
                    <textarea id="result_input" name="result_input" class="json_input" style="font-size: 11px !important;height: 200px;" rows="20" spellcheck="false"
                        placeholder="这里显示转换后的结果"></textarea>
                </div>
            </div>
        </div>
        <script>
            function native2ascii() {
                var character = document.getElementById("text_input").value.split("");
                var ascii = "";
                for (var i = 0; i < character.length; i++) {
                    var code = Number(character[i].charCodeAt(0));
                    if (!document.getElementById("ignoreLetter").checked || code > 127) {
                        var charAscii = code.toString(16);
                        charAscii = new String("0000").substring(charAscii.length, 4) + charAscii;
                        ascii += "\\u" + charAscii;
                    }
                    else {
                        ascii += character[i];
                    }
                }
                document.getElementById("result_input").value = ascii;
            }
            function ascii2native() {
                var character = document.getElementById("text_input").value.split("\\u");
                var native1 = character[0];
                for (var i = 1; i < character.length; i++) {
                    var code = character[i];
                    native1 += String.fromCharCode(parseInt("0x" + code.substring(0, 4)));
                    if (code.length > 4) {
                        native1 += code.substring(4, code.length);
                    }
                }
                document.getElementById("result_input").value = native1;
            }

            function empty() {
                document.getElementById('text_input').value = '';
                document.getElementById('result_input').value = '';
                document.getElementById('text_input').select();
            }

        </script>
    </div>
</asp:Content>
