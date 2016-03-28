<%@ Page Title="在线全角半角转换" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FullHalf.aspx.cs" Inherits="NewJson.Change.FullHalf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="全角半角转换,全角转半角,全角半角区别">
<meta name="description" content="主要用于全角半角的转换，比如一些论坛无法发链接可以把链接转成全角就可以发。">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        在线全角半角转换</h2>
                </div>
            </div>
        </div>

        
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
            <div>
                <textarea id="text_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入你要转换的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left"  >
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="ToHalf()">
                            全角转成半角</button>
            <button type="button" class="btn btn-primary" onclick="ToFull()">
                            半角转成半角</button>
                        <button type="button" class="btn btn-danger" onclick="empty()">
                            清空结果</button>
                    </div>
                     
             
                 
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="这里显示转换后的结果"></textarea>
            </div>
             <input name="hidesel" id="hidesel" value="1" type="hidden" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    

        

        
        </div>
    <script type="text/javascript">
    
     function ToFull() {
                var txtstring = $('#text_input').val();
                if (txtstring == '') {
                    alert('请输入要转换的字符');
                    return;
                }
                var tmp = "";
                for (var i = 0; i < txtstring.length; i++) {
                    if (txtstring.charCodeAt(i) == 32) {
                        tmp = tmp + String.fromCharCode(12288);
                    }
                    else if (txtstring.charCodeAt(i) < 127) {
                        tmp = tmp + String.fromCharCode(txtstring.charCodeAt(i) + 65248);
                    }
                    else
                        tmp = tmp + String.fromCharCode(txtstring.charCodeAt(i));
                }
                $('#result_input').val(tmp);
            }
            //全角转换为半角函数
            function ToHalf() {
                var str = $('#text_input').val();
                if (str == '') {
                    alert('请输入要转换的字符');
                    return;
                }
                var tmp = "";
                for (var i = 0; i < str.length; i++) {
                    if (str.charCodeAt(i) > 65280 && str.charCodeAt(i) < 65375) {
                        tmp += String.fromCharCode(str.charCodeAt(i) - 65248);
                    }
                    else if (str.charCodeAt(i) == 12288) {
                        tmp += String.fromCharCode(32);
                    }
                    else {
                        tmp += String.fromCharCode(str.charCodeAt(i));
                    }
                }
                $('#result_input').val(tmp);

            }
            function empty() {
                document.getElementById('text_input').value = '';
                document.getElementById('result_input').value = '';
                document.getElementById('text_input').focus();
            }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
