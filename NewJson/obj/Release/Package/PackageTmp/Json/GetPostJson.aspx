<%@ Page Title="Get请求参数转Json,Json转Get参数" MasterPageFile="~/Main.Master" Language="C#"
    AutoEventWireup="true" CodeBehind="GetPostJson.aspx.cs" Inherits="NewJson.Json.GetPostJson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="JSON转GET请求,GET请求转JSON">
    <meta name="description" content="JSON转GET请求,GET请求转JSON">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        Get请求参数转Json,Json转Get参数</h2>
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
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入你要转换的字符串">{"a":"1","b":"2"}</textarea>
            </div>
            <div class="btn-group" role="group" aria-label="..." >
                <button type="button" class="btn btn-primary" onclick="jsonget(1);">
                    JSON转GET请求参数</button>
                <button type="button" class="btn btn-primary" onclick="jsonget(2);">
                    GET请求参数转JSON</button>
                <button type="button" class="btn btn-danger" onclick="Empty();">
                    清空结果</button>
            </div>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="这里显示转换后的结果"></textarea>
            </div>
        </div>
        <script>
            function jsonget(type) {
                var sstr = $("#text_input").val();
                if (type == 1) {
                    //{"a":"11","b":"12",}
                   sstr= yasuo(sstr);
                    sstr = sstr.replace(/\t/g, "");
                    sstr = sstr.replace(/\"/g, "").replace("{", "").replace("}", "").replace(",", "&").replace(":", "=");
                    sstr = sstr.replace(/\"/g, "").replace(/{/g, "").replace(/}/g, "").replace(/,/g, "&").replace(/:/g, "=");
                } else {
                    sstr = sstr.replace(/&/g, '","').replace(/=/g, '":"');
                    sstr = '{"' + sstr + '"}';
                }
                $("#result_input").val(sstr);
            }

            function Empty() {
                document.getElementById('text_input').value = '';
                document.getElementById('result_input').value = '';
                document.getElementById('text_input').select();
            }

            function GetFocus() {
                document.getElementById('text_input').select();
            }
            function yasuo(text) {
             
              
         
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
                return text;
            
            }
        </script>
    </div>
</asp:Content>
