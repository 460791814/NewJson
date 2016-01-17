<%@ Page Title="Url网址编码解码" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UrlEncode.aspx.cs" Inherits="NewJson.EncDec.UrlEncode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线url网址编码,在线url网址解码,URL编码解码,UrlEncode编码,UrlDecode解码">
<meta name="description" content="在线url网址编码解码,为了让包含中文的URL可以使用，您可以使用本工具对中文进行UrlEncode编码。">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

                        <div class="panel panel-default">
                            <div class="panel-heading" >
                                <div class="media">
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            Url网址编码解码</h4>
                                    </div>
                                </div>
                            </div>
                            

                     <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
                        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
    
                        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
                       
                        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
                                  <div class="panel-body">
<div>
<textarea id="text_input" name="RawJson" class="json_input" rows="4" style="font-size: 11px !important;height:150px;" spellcheck="false" placeholder="请输入URL地址"></textarea>
</div>
<div class="btn-group" role="group" aria-label="...">
<button type="button" class="btn btn-primary" onclick="encode();">URL编码</button>
<button type="button" class="btn btn-primary" onclick="decode();">URL解码</button>
<button type="button" class="btn btn-primary" onclick="change();">内容交换</button>
<button type="button" class="btn btn-danger" onclick="Empty();">清空结果</button>
</div>
<div style="padding-top: 10px;">
<p>encodeURI(编码、解码,不会对特殊符号编码)</p>
<textarea id="result_input" name="RawJson" class="json_input" rows="4" style="font-size: 11px !important;height:150px;" spellcheck="false" placeholder="加密或解密后的Escape编码字符串"></textarea>
</div>
<div style="padding-top: 10px;" id="res2" style="display:none;">
<span>encodeURIComponent(编码、解码,<font color="red">会对特殊符号编码</font>)</span>
<textarea id="result2_input" name="RawJson" class="json_input" rows="4" style="font-size: 11px !important;height:150px;" spellcheck="false" placeholder="加密或解密后的Escape编码字符串"></textarea>
</div>
</div>
 



                        </div>

                

<script type="text/javascript">
    function change() {
        var src = jQuery("#text_input").val();
        jQuery("#text_input").val(jQuery("#result_input").val());
        jQuery("#result_input").val(src);
    }
    function encode() {

        jQuery("#result_input").val(encodeURI(jQuery("#text_input").val()));
       
        jQuery("#result2_input").val(encodeURIComponent(jQuery("#text_input").val()));
    }
    function decode() {
        jQuery("#result_input").val(encodeURI(jQuery("#text_input").val()));
        jQuery("#result2_input").val(decodeURIComponent(jQuery("#text_input").val()));

     
    }

    function Empty() {
        document.getElementById('text_input').value = '';
        document.getElementById('result_input').value = '';
        document.getElementById('text_input').select();
    }

    function GetFocus() {
        document.getElementById('text_input').focus();
    }
</script>

</asp:Content>