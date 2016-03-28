<%@ Page Title="SHA加密" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SHA.aspx.cs" Inherits="NewJson.EncDec.SHA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="SHA加密,SHA1加密,SHA265加密,SHA512加密">
    <meta name="description" content="SHA在线加密解密,SHA加密,SHA1加密,SHA265加密,SHA512加密">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="media">
                                    <div class="media-body">
                                        <h2 class="media-heading">
                                            SHA加密</h2>
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
                                    <textarea id="text_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;height:200px;" rows="32" spellcheck="false" placeholder="请输入需要编码字符串"></textarea>
                    
                                </div>
                                <div class="validateButtons clear">
                                    <div class="left" style="float: left">
                                       <div class="btn-group" role="group" aria-label="...">
<button type="button" class="btn btn-primary" onclick="hash('sha1');">SHA1加密</button>
<button type="button" class="btn btn-primary" onclick="hash('sha256');">SHA256加密</button>
<button type="button" class="btn btn-primary" onclick="hash('sha512');">SHA512加密</button>
<button type="button" class="btn btn-danger" onclick="Empty();">清空结果</button>

</div>
                                        <div>
                                  
                                        </div>
                                    </div>
                                </div>
 
                             
                                <div style="clear: both;">
                                </div>

                                  <div class="top10">
                                    <textarea id="result_input" name="json_input"  class="json_input" style="font-size: 11px !important;height:200px;" rows="32" spellcheck="false" placeholder="编码后的字符串"></textarea>
                      
                                </div>
                                <pre id="results" class="top10" style="display: none;"></pre>
                              
                            </div>
 



                        </div>

             
<script type="text/javascript" src="/Js/encdec/sha1.js"></script>
<script type="text/javascript" src="/Js/encdec/sha512.js"></script>
<script type="text/javascript" src="/Js/encdec/sha256.js"></script>
<script type="text/javascript">
    function hash(type, flag) {
        if (!flag) $(".buttonSelected").removeClass("buttonSelected");
        switch (type) {
            case "sha1":
                $("#result_input").val(CryptoJS.SHA1($("#text_input").val()));
                break;
            case "sha224":
                $("#result_input").val(CryptoJS.SHA224($("#text_input").val()));
                break;
            case "sha256":
                $("#result_input").val(CryptoJS.SHA256($("#text_input").val()));
                break;
            case "sha384":
                $("#result_input").val(CryptoJS.SHA384($("#text_input").val()));
                break;
            case "sha512":
                $("#result_input").val(CryptoJS.SHA512($("#text_input").val()));
                break;
            case "md5":
                $("#result_input").val(CryptoJS.MD5($("#text_input").val()));
                break;
            case "hmacsha1":
                $("#result_input").val(CryptoJS.HmacSHA1($("#text_input").val(), $("#pwd").val()));
                break;
            case "hmacsha224":
                $("#result_input").val(CryptoJS.HmacSHA224($("#text_input").val(), $("#pwd").val()));
                break;
            case "hmacsha256":
                $("#result_input").val(CryptoJS.HmacSHA256($("#text_input").val(), $("#pwd").val()));
                break;
            case "hmacsha384":
                $("#result_input").val(CryptoJS.HmacSHA384($("#text_input").val(), $("#pwd").val()));
                break;
            case "hmacsha512":
                $("#result_input").val(CryptoJS.HmacSHA512($("#text_input").val(), $("#pwd").val()));
                break;
            case "hmacmd5":
                $("#result_input").val(CryptoJS.HmacMD5($("#text_input").val(), $("#pwd").val()));
                break;
            case "pbkdf2":
                if (isNAN($("#iterations").val())) {
                    var salt = CryptoJS.enc.Utf8.parse($("#salt").val());
                    var hash_str_pbkdf2 = CryptoJS.PBKDF2(
							$("#text_input").val(), salt,
							{ keySize: parseInt($("#key_size").val()),
							    iterations: parseInt($("#iterations").val())
							}
						);
                    $("#result_input").val(hash_str_pbkdf2);
                }
                else {
                    alert("迭代次数必须为数字"); $("#salt").val("")
                }
                break;
        }
    }


    function Empty() {
        document.getElementById('result_input').value = '';
        document.getElementById('text_input').value = '';
        document.getElementById('text_input').select();
    }

    function GetFocus() {
        document.getElementById('content').focus();
    }

    </script>

    </asp:Content>