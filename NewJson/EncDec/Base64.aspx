<%@ Page  Title="Base64加密解密" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Base64.aspx.cs" Inherits="NewJson.EncDec.Base64" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<meta name="keywords" content="Base64加密,Base64解密,Base64加密解密">
<meta name="description" content="Base64在线加密解密">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            Base64加密解密</h4>
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
                                    <textarea id="text_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;height:200px;" rows="32" spellcheck="false" placeholder="请输入Base64编码字符串"></textarea>
               
                                </div>
                                <div class="validateButtons clear">
                                    <div class="left" style="float: left">
                                       <div class="btn-group" role="group" aria-label="...">
<button type="button" class="btn btn-primary" onclick="base64_encode();">BASE64加密</button>
<button type="button" class="btn btn-primary" onclick="base64_decode();">BASE64解密</button>
<button type="button" class="btn btn-danger" onclick="empty()">清空结果</button>
</div>
<div class="btn-group" role="group" aria-label="...">
<button id="sels" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
UTF-8<span class="caret"></span>
</button>
<ul class="dropdown-menu">
<li><a href="javascript:;" onclick="sj(1,this)">UTF-8</a></li>
<li><a href="javascript:;" onclick="sj(2,this)">GB2312</a></li>
</ul>
</div>
                                        <div>
                                  
                                        </div>
                                    </div>
                                </div>
 
                             
                                <div style="clear: both;">
                                </div>

                                  <div class="top10">
                                    <textarea id="result_input" name="json_input"  class="json_input" style="font-size: 11px !important;height:200px;" rows="32" spellcheck="false" placeholder="加密或解密后的Base64编码字符串"></textarea>
    
                                </div>
                                <input type="hidden" id="encode" value="1" />
                                <pre id="results" class="top10" style="display: none;"></pre>
                              
                            </div>
 



                        </div>

<script src="/Js/encdec/base64.js" type="text/javascript"></script>
<script type="text/javascript">
    function sj(s, obj) {
        $("#encode").val(s);
        $("#sels").text($(obj).text());
    }
    function base64_encode() {
        var encode = $("#encode").val();
        if (encode == 1) {
            var str = CryptoJS.enc.Utf8.parse(jQuery("#text_input").val());
            var base64 = CryptoJS.enc.Base64.stringify(str);
        } else {
            var str = jQuery("#text_input").val();
            var base64 = encode64gb2312(str);
        }
        jQuery("#result_input").val(base64);
    }
    function base64_decode() {
        var encode = $("#encode").val();
        if (encode == 1) {
            var words = CryptoJS.enc.Base64.parse(jQuery("#text_input").val());
            jQuery("#result_input").val(words.toString(CryptoJS.enc.Utf8));
        } else {
            var words = jQuery("#text_input").val();
            var base64 = decode64gb2312(words);
            jQuery("#result_input").val(base64);
        }
    }

    function empty() {
        document.getElementById('text_input').value = '';
        document.getElementById('result_input').value = '';
        document.getElementById('text_input').select();
    }

    function GetFocus() {
        document.getElementById('text_input').focus();
    }
</script>
</asp:Content>
