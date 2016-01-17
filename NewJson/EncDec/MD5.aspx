<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MD5.aspx.cs" Inherits="NewJson.EncDec.MD5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <meta name="viewport" json_input="width=device-width , initial-scale=1.0 , user-scalable=0 , minimum-scale=1.0 , maximum-scale=1.0" />
    <meta http-equiv="Content-Type" json_input="text/html; charset=UTF-8" />
    <script type='text/javascript' src='/Js/jquery.min.js'></script>
    <script type='text/javascript'>
/* <![CDATA[ */
var CrayonSyntaxSettings = {"version":"2.7.1","is_admin":"0","ajaxurl":"","prefix":"crayon-","setting":"crayon-setting","selected":"crayon-setting-selected","changed":"crayon-setting-changed","special":"crayon-setting-special","orig_value":"data-orig-value","debug":""};
var CrayonSyntaxStrings = {"copy":"\u4f7f\u7528 %s \u590d\u5236\uff0c\u4f7f\u7528 %s \u7c98\u8d34\u3002","minimize":"\u70b9\u51fb\u5c55\u5f00\u4ee3\u7801"};
/* ]]> */
</script>
    <script type='text/javascript' src='/js/crayon.min.js'></script>
    <script type="text/javascript">        (function () { mod_txt = '#'; adminBar = "" || 0 })();</script>
    <script type="text/javascript" src="/js/frontopen.js"></script>
    <link rel="stylesheet" type="text/css" media="all" href="/css/style.css" />
    <link rel="stylesheet" type="text/css" media="all" href="/css/mobile.css" />
    <!--[if lt IE 9]><script src="/js/html5.js"></script><![endif]-->
    <!--[if IE 7]>
<link rel="stylesheet" href="/css/font-awesome-ie7.min.css">
<![endif]-->
    <link href="/Css/bootstrap.min.css" rel="stylesheet">
    <script src="/Js/bootstrap.min.js"></script>
</head>
<body class="archive category category-unity category-195">
    <div class="loading">
    </div>
    <div class="web_bod">
        <!-- #include file="/Template/header.htm" -->
        <section class="conter marauto">
        <script type="text/javascript">            loading('33%', 1000)</script>
<div class="mbx">
 <i class="icon-home icon-large" style="font-size:14px;"></i>
 </div>
    <!-- #json_input -->
  <div id="container">
    <div  role="main">
        </div>
     
        <div class="aw-container-wrap">
        <div class="container">
            <div class="row">
                <div class="aw-json_input-wrap clearfix">
                    <div class=" aw-main-json_input" style="min-height: 700px; max-height: 2000px">

                        <div style="clear: both">
                        </div>

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
<button type="button" class="btn btn-primary" onclick="md5encode();">MD5加密</button>
<button type="button" class="btn btn-danger" onclick="empty()">清空结果</button>
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

                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
  <!-- #container -->
<script type="text/javascript">    loading('55%', 1000)</script>
    <aside id="primary" class="side" role="complementary">
       <%--右侧栏--%>
    </aside><!-- #primary .widget-area -->

<script type="text/javascript">    loading('78%', 1000)</script>
<div class="cls"></div>
</section>
        <!-- #main -->
        <div class="cls">
        </div>
        <!-- #include file="/Template/footer.htm" -->
</body>
</html>
<script type="text/javascript">    loading('100%', 1000)</script>
<script src="/Js/encdec/md5.js" type="text/javascript"></script>
 
<script type="text/javascript">
    function md5encode() {
        $("#result_input").val(CryptoJS.MD5($("#text_input").val()));
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
