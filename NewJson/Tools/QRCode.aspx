<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QRCode.aspx.cs" Inherits="NewJson.Tools.QRCode" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<head id="Head1" runat="server">
    <title>在线二维码解码</title>
<meta name="keywords" content="二维码,二维码营销,二维码图片,二维码制作,二维码名片,QR code,二维码是什么,二维码生成,二维码论坛,二维条码,微信二维码">
<meta name="description" content="在线二维码生成器提供免费的在线二维码生成服务，可以把电子名片、文本、wifi网络、电子邮件、短信、电话号码、网址等信息生成对应的二维码图片。二维码手机扫描软件下载。">

    <script type='text/javascript' src='/Js/jquery.min.js'></script>
     <script type='text/javascript' src='/js/crayon.min.js'></script>
    <script type="text/javascript">        (function () { mod_txt = '#'; adminBar = "" || 0 })();</script>
    <script type="text/javascript" src="/js/frontopen.js"></script>
    <link href="/Css/mobile.css" rel="stylesheet" type="text/css" />
  
    <!--[if lt IE 9]><script src="/js/html5.js"></script><![endif]-->
    <!--[if IE 7]>
<link rel="stylesheet" href="/css/font-awesome-ie7.min.css">
<![endif]-->
    <link href="/Js/tools/qrcode/css/bootstrap.css" rel="stylesheet" type="text/css" />
   

    <script type='text/javascript'>
/* <![CDATA[ */
var CrayonSyntaxSettings = {"version":"2.7.1","is_admin":"0","ajaxurl":"","prefix":"crayon-","setting":"crayon-setting","selected":"crayon-setting-selected","changed":"crayon-setting-changed","special":"crayon-setting-special","orig_value":"data-orig-value","debug":""};
var CrayonSyntaxStrings = {"copy":"\u4f7f\u7528 %s \u590d\u5236\uff0c\u4f7f\u7528 %s \u7c98\u8d34\u3002","minimize":"\u70b9\u51fb\u5c55\u5f00\u4ee3\u7801"};
/* ]]> */
</script>
    <style type="text/css">


@charset "utf-8";::selection{color:#FFF;background:#FF6100}
body,div,address,blockquote,iframe,ul,ol,dl,dt,dd,li,h1,h2,h3,h4,h5,h6,p,pre,table,caption,th,td,form,legend,fieldset,input,button,select,textarea{margin:0;padding:0;font-weight:normal;font-family:inherit;}
ol,ul,li{list-style:none}
h3,h4{font-weight:bold;}
img{margin:0;padding:0;border:none}
table{border-collapse:collapse}
.cls , .clear{clear:both}
.notxt{text-indent:-9999px}
html{width:100%; overflow-x:hidden;}
body{font-size:12px;font-family:Verdana,Microsoft YaHei;background:#F6F6F6;}
.menu-header a{color:#000;text-decoration:none;outline:none;blr:expression(this.onFocus=this.blur());-webkit-transition:.5s;-moz-transition:.5s;-o-transition:.5s;-ms-transition:.5s;}




.aligncenter{display: block;margin-left: auto;margin-right: auto;}
blockquote{background: url(../Images/icon_quote_s.gif) #fff 10px 10px no-repeat;padding: 40px 0px 10px 50px;border: 1px dashed #ccc;margin: 20px;}
code{background:#fff; border:1px solid #ccc;background: #fff;border: 1px solid #ccc;padding: 12px;border-left: 4px solid #ccc;}
.more-link{float:right;height:18px;padding:0 10px;background:#ccc;line-height:18px;color:#FFF;position:absolute;right:0;width:15%;bottom:0;-webkit-transition:0;-moz-transition:0;-o-transition:0;-ms-transition:0;}
.c-con .page-link{display:none;}
.page-link{display:block;padding:10px 0; color:#fff; width:96%; text-align:center;}
.page-link span{height: 30px;margin: 10px 0px 10px 0;padding:6px 9px;background: #413F40;color: #FFF;text-align: center;line-height: 30px;font-size: 14px;font-family: Arial,Microsoft YaHei; white-space:nowrap;}
.page-link a{color:#F6F6F6 !important; text-decoration:none !important;}
.page-link a span , .page-link .t_s_s{background:#FF6002}
.page-link a:hover span{background:#413F40}

a.more-link{color:#FFF}
a.more-link:hover{color:#FFF}
.cls{clear:both}
.marauto{width:94%;margin:0 auto}
.header{width:94%;overflow:hidden;line-height:51px;padding-top:25px; height:51px;}
.header .logo b{font-size:34px;font-weight:bold;display:block;float:left;color:#444}
.header .logo .bclass{padding-right:15px;margin-right:15px;border-right:1px solid #D6D6D6;font-family:Arial}
.header .logo i{color:#FF6100;font-size:14px;float:left}
.header .logo a{float:left; margin-right:20px;}
.header .logo a img{height:46px; width:auto;}
.header .search{float:right}
.header .search .input{width:268px;height:33px;line-height:33px;border:1px solid #D0D0D0;margin-right:5px;padding:0 10px}
#s{width:268px;height:33px;line-height:33px;border:1px solid #D0D0D0;margin-right:5px;padding:0 10px}
#searchsubmit{width:76px;height:35px;background:#F04243;color:#FFF;border:0px;cursor:pointer;line-height:35px}
.nav{margin-top:30px; position:relative; height:75px;}
.nav .tig{margin-top: 10px;height: 64px;position: absolute;right: 0;width: 100%;}
.nav .tig .rrs{float:right;width:100px;height:30px;background:#FF6100;color:#FFF;height:30px;line-height:30px;text-align:center}
.nav .tig .sub{float:right;width:93px;height:30px;background:#413F40;color:#FFF;height:30px;line-height:30px;text-align:center;_display:inline;margin-left:15px}
.navlist dl{float:left;width:65px;height:75px;margin-right:20px;position:relative}
.navlist dl dt{width:45px;padding:0 10px}
.navlist dl dd{line-height:30px;height:30px;width:65px;text-align:center;font-weight:700;font-family:Arial,Microsoft Yahei}
.navcon{height:45px;background:#474546;line-height:45px;font-size:16px;margin-top:10px;width:94%;overflow: hidden;}
.navcon ul li{float:left; border-right:1px solid #5A5859}
.navcon ul li a{color:#FFF;display:block;padding:0 20px;white-space:nowrap;text-decoration:none;}
.navcon ul li a:hover,.navcurrent{background:#000;}/*color:#FD5E02;*/
.conter{margin-top:15px}

.c-top{margin-bottom:10px}
.datetime{width:60px;background:#00BCF2;text-align:center;line-height:20px;float:left;color:#FFF;font-size:14px;font-family:Arial;padding:8px 0}
.tit{margin-left:60px;padding-left:5px}
.tit .h1{border-bottom:1px solid #DFDFDF;padding-bottom:5px;height:24px;line-height:28px;overflow:hidden}
.tit .h1 a{color:#FF6100;font-size:18px;line-height:28px}
.tit .h1 a:hover{color:#FD7B2F;text-decoration:underline}
.tit .iititle{height:16px;line-height:16px;font-size:12px;margin-top:10px;overflow:hidden}
.tit .iititle span,.post-edit-link{margin-right:30px;color:#999;height:18px}
.tit .iititle .icon-large:before {vertical-align:-5% !important; font-size:14px;}
.tit .iititle .i1{background-position:0px -33px}
.tit .iititle .i2{background-position:0px -77px}
.tit .iititle .i3{background-position:0px 1px}
.tit .iititle .i4{background-position:0px -16px}
.post-edit-link{background-position:0px -100px}
.cb_bq{background-position:0px -55px !important}
.tit .iititle{color:#999}
.tit .iititle a{color:#999}
.tit .iititle a:hover{color:#FD5E02}
.tit .iititle2{height:16px;line-height:16px;font-size:12px;margin-top:6px}
.tit .iititle2 .icon-large:before {vertical-align:0 !important;  font-size:14px;}
.tit .iititle2 span{margin-right:30px;color:#999;float:left;height:16px; margin-bottom:10px;}
.tit .iititle2 span a{color:#999}
.tit .iititle2 span a:hover{color:#FF6100}
.tit .iititle2 span.i2{background-position:0px -77px}
.tit .iititle2 span.i1{background-position:0px -33px}
.tit .iititle2 span.i4{background-position:0px -16px;}
.c-con img{margin-right:10px;float:left;}
.c-bot{margin-top:5px;height:18px; color:#999}
.c-bot .icon-large:before {font-size: 14px;}
.c-bot .cb_bq{height:16px;overflow: hidden; float:left; margin-right:10px;}
.cb_bq a{color:#999}
.cb_bq a:hover{color:#FD7B2F}
.page_num a{float:left;height:30px;margin:10px 2px 10px 0;padding:0 10px;background:#FF6002;color:#FFF;text-align:center;line-height:30px;font-size:14px;font-family:Arial,Microsoft YaHei}
.page_num .current,.page_num a:hover{background:#413F40 !important;color:#FFF}
.nav-previous a{float:left;color:#fff;height:24px;background:#474546;text-align:center;line-height:24px;display:block;padding:3px 5px}
.nav-previous a:hover{color:#fff;}
.nav-next a{padding:3px 5px;float:right;color:#fff;height:24px;background:#FF6002;text-align:center;line-height:24px;display:block}
.side .widget-title{height:32px;line-height:34px;overflow:hidden;width:116px;text-align:center;color:#fff;background:#FB4F4F;font-size:14px}
.side .widget-title a{color:#fff;}
.side .widget-container{list-style:none !important;padding:0; padding-bottom:20px;background:none}
.side .widget-container > ul,.side .widget-container .tagcloud{border-top:3px solid #FB4F4F;}
.children .comment{}
.children .cat-item{padding-left:15px}
.side .sideul{margin-top:15px;padding-left:20px}
.side li ul{overflow:hidden}
.side ul li{line-height:28px;font-size:14px;margin-top:0px;color:#555;padding-left:3%;background:url(../Images/li-pic.gif) left 13px no-repeat}
.sub-menu{position:absolute;z-index:10;background:#999}
.sub-menu .menu-item{background:#999;border-right:none;font-size:14px;line-height:36px;float:none;position:relative;height:36px;vertical-align:top;display:none;width:100% !important}
.sub-menu .sub-menu{top:0}
.nav_button{filter:alpha(opacity=70);opacity:0.7}
#calendar_wrap th,#calendar_wrap td{width:35px;text-align:center}
#calendar_wrap th{background:#474546;color:#fff}
#calendar_wrap{border-top:3px solid #FB4F4F}
#wp-calendar{border:1px solid #efefef;width:100%;background:#fff}
#wp-calendar caption{background:#fff}
#wp-calendar td{color:#aaa}
#wp-calendar td a{background:#00BCF2;color:#fff;display:block;width:100%}
#wp-calendar td a:hover{background:#FF6100}
#content{width:100%; float:left; }
.entry-content{font-size:16px;line-height:30px;color:#454545;margin-bottom:20px;padding-top:10px; overflow:hidden; padding:10px; background:#fff;}
.entry-content img{max-width:100%; height:auto}
.entry-content ul li{list-style: inside square;}
.entry-content ol{padding-left:40px;}
.entry-content ol , .entry-content ol li{list-style: decimal;}
.entry-content ol ol li{list-style: upper-alpha;}
.entry-content ol ol ol li{list-style: lower-roman;}
.entry-content ol ol ol ol li{list-style: lower-alpha;}
.entry-content a{text-decoration:underline;color:#FF6100}
.entry-content a:hover{color:#00BCF2}
.entry-content .j_zeng a{color:#fff}
.entry-content p{margin:0 0 15px 0}
.entry-content h2{border-left:5px solid #FF6100; padding:5px; padding-left:10px; margin:20px 0; background:#fff; font-size:20px;}
.entry-content h3{margin-top:30px; margin-bottom:10px; border-bottom:1px solid #ddd; font-size:inherit;}
.entry-title{font-size:20px;color:#FF6100;overflow:hidden;height:33px;font-weight:normal; line-height:33px;}
.c-top2{margin-bottom: 1px;height: 55px;overflow: hidden;background: #fff;padding: 10px;}
.ds-powered-by{display:none}
.screen-reader-text{display:none}
.mbx{margin-bottom: 8px;height: 24px;line-height: 24px;color: #aaa;}
.mbx a{color:#666}
.mbx a:hover{color:#FF6100}
.page-title{margin-bottom:20px;background:#f1b73a;padding:10px;color:#fff;border-left:10px solid #E8A211;width:94%}
.runcode_text{width:90%;height:200px}
.loc_link{margin:10px 0;line-height:30px;}
.loc_link a{color:#FF6002;text-decoration:none;word-break:break-word;}
.loc_link p{margin:0; text-indent:0 !important}
.relatedposts{border:1px dashed #ccc;margin:10px 0;padding:0 15px}
.relatedposts h3{font-size:16px;line-height:38px;height:38px;border-bottom:1px dashed #ccc;font-weight:bold}
.relatedposts li{float:left;width:50%;overflow:hidden;line-height:30px;list-style:inside square;white-space:nowrap;font-size:14px}
#goTop{display:block;background:#413F40;float:left;color:#fff !important;font-size:12px;padding:3px 12px}
#ds-recent-visitors div.ds-avatar{height:50px;float:left;display:block !important}
#footer{width:94%;margin:auto;margin-top:20px;text-align:right;font-size:16px;padding:10px 0;border-top:#ddd double 3px;font-size:14px;font-family:Arial,Microsoft Yahei}
#footer a{color:#FD7B2F}


.author_info{border: 1px solid #eee; background:#fff; margin-bottom:10px;}
.author_info .avatar{padding:10px; float:left;}
.author_info .avatar img{height:70px; width:70px; border:1px solid #fff;-webkit-transition: .8s;-moz-transition: .8s;-o-transition: .8s;-ms-transition: .8s; padding:0;}
.author_info .avatar img:hover{transform:rotate(720deg);-webkit-transform:rotate(720deg);-moz-transform:rotate(720deg);-o-transform:rotate(720deg);-ms-transform:rotate(720deg);border-radius:35px !important; filter:alpha(opacity=100) !important;opacity:1 !important;}
.author_info .au_top_bar{border-bottom: 1px solid #eee; padding:2px 10px; font-size:15px; background:#f9f9f9}
.author_info .au_top_bar .edit_date{float:right;}
.author_info .type_out{padding:10px; margin-left:90px;}
.author_info .type_out .ttxx{font-size:15px; line-height:22px;}
.author_info .edit_date{color:#999}
.author_info .au_links a{color:#fff; text-decoration:none; padding:4px 7px; font-size:14px; white-space:nowrap;}
.author_info .au_links a:hover{filter:alpha(opacity=70);opacity:0.7;}


@media screen and (min-width:1366px){.post_box{margin-bottom:70px;position:relative;margin-right:4%;overflow:hidden;width:46%;float:left}
.main{width:74%;float:left;overflow:hidden}
.side{width:25%;float:right;overflow:hidden}
.c-con{line-height:28px;font-size:14px;margin-top:5px;border-bottom:1px dotted #DFDFDF;padding-bottom:5px;overflow:hidden;text-overflow:ellipsis;}
}

.sticky.format-standard .entry-meta .date,.sticky.format-audio .entry-meta .date,.sticky.format-chat .entry-meta .date,.sticky.format-image .entry-meta .date,.sticky.format-gallery .entry-meta .date{display:none}
.bypostauthor > .comment-body .fn:before{content:"\f408";vertical-align:text-top}
.linkcat{list-style:none !important;}
#mobile_nav_btn{display:none;}
.f_links li{width:190px; list-style:none !important; background:#fff; border:1px solid #efefef; border-left:3px solid #FF6100; height:40px; line-height:40px; padding:0 10px;float: left;margin: 0 20px 10px 0;}
.f_links li a{text-decoration:none;}
.f_links li img{vertical-align: middle; margin-right:5px; height:20px; width:20px;}
.rss_box{background:#FF6100; color:#fff;position: absolute;right: 0;z-index:11;padding:10px; display:none;}
.rss_box span{font-size:18px; line-height:20px; margin-bottom:10px;}
.rss_input{width:268px;height:33px;line-height:33px;border:1px solid #fff;margin-right:5px;padding:0 10px}
.rss_submit{width:76px;height:35px;background:#534741;color:#FFF;border:0px;cursor:pointer;line-height:35px}
.ress_btn_box{border-top:1px dotted #fff; margin-top:10px; line-height:30px; font-size:14px; padding-top:7px;}
.ress_btn_box a{color:#fff; margin-right:5px; padding:3px;}
.ress_btn_box a:hover{background:#fff; color:#FF6100}
.close_rss{position:absolute; right:8px; top:6px; background:url(../Images/closed.gif) center center no-repeat; display:block; height:30px; width:30px;}





/*自定义*/
.top10{ margin-top:10px}
a:link{
text-decoration:none;
}
a:visited{
text-decoration:none;
}
a:hover{
text-decoration:none;
}
a:active{
text-decoration:none;
}
/*自定义结束*/
    </style>
    
</head>
<body class="archive category category-unity category-195">
   <div class="loading">
    </div>
        <div class="web_bod">
        <!-- #include file="/Template/header.htm" -->
        <section class="conter marauto">
        <script type="text/javascript">            loading('33%', 1000)</script>

    <!-- #json_input -->
  <div style="float:left; width:74%" >
    <div  role="main">
        </div>
     
        <div class="aw-container-wrap">
        <div class="container">
            <div class="row">
                <div class="aw-json_input-wrap clearfix">
                    <div class=" aw-main-json_input" style="min-height: 700px; ">
                        <div style="clear: both"></div>
                                     <div class="panel panel-default" >
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading" style=" width: 200px;float:left">
                        在线二维码生成器</h4> <a href="/tools/qrcode/" class="btn btn-primary btn-xs" style=" color:White" >在线二维码解码</a>
                </div>
            </div>
        </div>
        <div class="panel-body" >

<%--          <iframe src="/tools/ewm.htm" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"  height="100%" id="iframepage" name="iframepage" onload="iFrameHeight()"  style="margin-left: 50px;"></iframe>
            <script type="text/javascript" language="javascript">

                function iFrameHeight() {

                    var ifm = document.getElementById("iframepage");

                    var subWeb = document.frames ? document.frames["iframepage"].document :ifm.contentDocument;

                    if (ifm != null && subWeb != null) {

                        ifm.height = subWeb.body.scrollHeight+30;
                        ifm.width = subWeb.body.scrollWidth;
                    }

                }

</script>--%>




 
            <link href="/js/tools/qrcode/css/base_1.css" type="text/css" rel="stylesheet"/>
        <link href="/js/tools/qrcode/css/index.css" type="text/css" rel="stylesheet"/>
        <script type="text/javascript" src="/js/tools/qrcode/jquery-1.8.2.min.js"></script>

<script type="text/javascript" src="http://l.tbcdn.cn/apps/top/x/sdk.js?appkey=21494544"></script>

        <script type="text/javascript" src="/js/tools/qrcode/icolorpicker.js"></script>
        <script type="text/javascript" src="/js/tools/qrcode/public.js"></script>
        <script type="text/javascript" src="/js/tools/qrcode/index.js"></script>
        <script type="text/javascript" src="/js/tools/qrcode/basefn.js"></script>
        <script type="text/javascript" src="/js/tools/qrcode/qrcode.js"></script>
        <script type="text/javascript" src="/js/tools/qrcode/canvas.js"></script>
      <script type="text/javascript">          var _speedMark = new Date();</script>
       <script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=403806"></script>


        
    <script type="text/javascript" src="/js/tools/qrcode/subnav.js"></script>

        <div class="main">
            <div class="block">
                <div class="left">
                    <div class="row">
                        <ul class="rowleft" id="fntab">
                            <li class="active" rel="text"><a href="javascript:" class="a1" title="文本"><span>文本</span></a></li>
                            <li rel="card"><a href="javascript:" class="a2" title="名片"><span>名片</span></a></li>
                            <li rel="url"><a href="javascript:" class="a3" title="网址"><span>网址</span></a></li>
                            <li rel="sms"><a href="javascript:" class="a4" title="短信"><span>短信</span></a></li>
                            <li rel="wifi"><a href="javascript:" class="a5" title="WiFi"><span>WiFi</span></a></li>
                            <li rel="telephone"><a href="javascript:" class="a6" title="电话"><span>电话</span></a></li>
                            <li rel="mail"><a href="javascript:" class="a7" title="邮箱"><span>邮箱</span></a></li>
                            <li rel="map"><a href="javascript:" class="a8" title="地图"><span>地图</span></a></li>
                        </ul>
                        <div class="rowright">

                            <div class="fnbox" id="fnbox">
                                <!--文本-->
                                <div class="sub show">
                                    <div class="tit"><span>即时输入即时生成!</span>输入文字</div>
                                    <textarea class="text" id="text_text" autocomplete="off">支持文本、网址和电子邮箱</textarea>
                                    <div class="size">已输入字数：<span id="text_size">0</span>/300</div>

                                </div>

                                <!--名片-->
                                <div class="sub">
                                    <div class="tit"><span>即时输入即时生成!</span>输入联系人信息</div>
                                    <ul class="card">
                                        <li>
                                            <label>姓名</label>
                                            <input type="text" id="card_n" class="dinput" maxlength="50"/>
                                        </li>
                                        <li>
                                            <label>电话</label>
                                            <input type="text" id="card_tel" class="dinput short" maxlength="30"/>
                                            <select class="type">
                                                <option value="0">手机</option>
                                                <option value="1">电话</option>
                                            </select>
                                            <div class="addelem"><a href="javascript:" id="addelem">+ 添加电话号码</a></div>
                                        </li>
                                        <li class="litel" id="litel">
                                            <label>电话</label>
                                            <input type="text" id="card_phone" class="dinput short" maxlength="30"/>
                                            <select class="type">
                                                <option value="0">手机</option>
                                                <option value="1">电话</option>
                                            </select>
                                            <a href="javascript:" class="close" id="hidetel"><img src="/picture/close.gif"/></a>
                                        </li>
                                        <li>
                                            <label style="width: 28px;">QQ</label>
                                            <input type="text" id="car_note" class="dinput" maxlength="30"/>
                                        </li>
                                        <li>
                                            <label>邮箱</label>
                                            <input type="text" id="card_mail" class="dinput" maxlength="80"/>
                                        </li>
                                        <li>
                                            <label>单位</label>
                                            <input type="text" id="card_org" class="dinput" maxlength="100"/>
                                        </li>
                                        <li>
                                            <label>职位</label>
                                            <input type="text" id="card_til" class="dinput" maxlength="30"/>
                                        </li>
                                        <li>
                                            <label>网址</label>
                                            <input type="text" value="http://" id="card_url" class="dinput" maxlength="255"/>
                                        </li>
                                        <li>
                                            <label>地址</label>
                                            <input type="text" id="card_adr" class="dinput" maxlength="255"/>
                                        </li>
                                    </ul>
                                </div>

                                <!--网址-->
                                <div class="sub">
                                    <div class="tit"><span>即时输入即时生成!</span>输入URL网址</div>
                                    <div class="urltype">
                                        <p><span>专用链接</span><input type="checkbox" id="urloptions"/></p>
                                        <ul id="urlset">
                                            <!--<li class="weixin"><input type="radio" name="url" rel="weixin" id="wpublic"/>公共<span><input type="radio" name="url" rel="weixin" id="wpersonal"/>个人</span></li>-->
                                            <li class="sina"><input type="radio" name="url" rel="sina1" id="spersonal"/>个人<span><input type="radio" name="url" rel="sina2" id="sofficial"/>官微</span></li>
                                            <li class="taobao"><input type="radio" name="url" rel="item" id="titem"/>商品<span><input type="radio" name="url" rel="shop" id="tshop"/>店铺</span></li>
                                        </ul>
                                    </div>
                                    <div class="urlbox">
                                        <input type="text" class="url" id="url_url" value="http://" maxlength="255"/>
                                        <div class="size" id="msg">输入网址</div>
                                    </div>
                                </div>

                                <!--短信-->
                                <div class="sub">
                                    <div class="tit"><span>即时输入即时生成!</span>输入短信内容</div>
                                    <textarea class="sms_text" id="sms_sms"></textarea>
                                    <div class="size">已输入数字：<span id="sms_len">0</span>/300</div>
                                    <div class="sms">
                                        <label>手机号码</label>
                                        <input type="text" id="sms_tel" class="dinput" maxlength="30"/>
                                    </div>
                                </div>

                                <!--WIFI-->
                                <div class="sub">
                                    <div class="tit"><span>即时输入即时生成!</span>输入WiFi帐号信息</div>
                                    <ul class="card">
                                        <li>
                                            <label>网络账号</label>
                                            <input type="text" id="wifi_ssid" class="dinput" maxlength="30"/>
                                        </li>
                                        <li>
                                            <label style=" width: 60px;">密码</label>
                                            <input type="text" id="wifi_p" class="dinput" maxlength="50"/>
                                        </li>
                                        <li>
                                            <label>加密类型</label>
                                            <select class="wifitype" id="wifi_t">
                                                <option value="WPA">WPA/WPA2</option>
                                                <option value="WEP">WEP</option>
                                                <option value="nopass">无加密</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>

                                <!--电话-->
                                <div class="sub">
                                    <div class="tit"><span>即时输入即时生成!</span>输入电话号码</div>
                                    <div class="ininput">
                                        <label>手机号码</label>
                                        <input type="text" id="telephone_tel" class="dinput" maxlength="30"/>
                                    </div>
                                </div>

                                <!--邮箱-->
                                <div class="sub">
                                    <div class="tit"><span>即时输入即时生成!</span>输入电邮地址</div>
                                    <div class="ininput">
                                        <label>电子邮箱</label>
                                        <input type="text" id="mail_mail" class="dinput" maxlength="80"/>
                                    </div>
                                </div>

                                <!--地图-->
                                <div class="sub">
                                    <div class="tit"><span>即时选择即时生成!</span>选择地理位置</div>
                                    <div class="bdmap" id="bdmap"></div>
                                    <input type="hidden" id="map_map" maxlength="300"/>
                                </div>

                            </div>

                            <div class="prompt">建议内容不超过150个汉字，使低配置手机也能扫描到结果。</div>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <div class="canvas-wrap">
                        <div class="canvas">
                            <canvas height="300" width="300" id="canvas">
                                <a id="pic" target="_blank" href="/" shorturl="/" rel="nofollow"><img id="qrcodeimg" src="/picture/liantu.png"/></a>
                            </canvas>
                        </div>
                    </div>
                    <div id="diy_div" class="diy_div">
                        <div class="diy_scroll">
                            <div id="diy_dot" class="diy_dot"></div>
                        </div>
                        <div class="diy_statue">
                            <a id="resetRound1" href="javascript:">液态</a>
                            <a id="resetRound" href="javascript:">直角</a>
                            <a id="resetRound2" href="javascript:">圆角</a>
                        </div>
                    </div>

                    <div class="fnrow">
                        <div class="tab" id="tabset">
                            <a href="javascript:" class="tabelem active">颜色设置</a>
                            <a href="javascript:" class="tabelem">嵌入Logo</a>
                            <a href="javascript:" class="tabelem">嵌入文字</a>
                            <a href="javascript:" class="tabelem">图案样式</a>
                            <a href="javascript:" class="tabelem">其它设置</a>
                        </div>
                        <div class="fnblock" id="fnblock">
                            <div class="fnsubv show">
                                <ul class="colors">
                                    <li class="li1">
                                        <label>前景色</label>
                                        <div class="color">
                                            <input id="fgcolor" name="mycolor" type="text" value="#000000" class="iColorPicker"/>
                                        </div>
                                    </li>
                                    <li class="li2">
                                        <label>渐变颜色</label>
                                        <div class="color">
                                            <input id="gccolor" name="mycolor" type="text" value="#000000" class="iColorPicker"/>
                                        </div>
                                        <a href="javascript:" class="close" id="resetGcColor"><img src="/picture/close.gif"/></a>
                                    </li>
                                    <li class="li3">
                                        <label>定位点(外框)</label>
                                        <div class="color">
                                            <input id="ptcolor" name="mycolor" type="text" value="#000000" class="iColorPicker"/>
                                        </div>
                                        <a href="javascript:" class="close" id="resetPtColor"><img src="/picture/close.gif"/></a>
                                    </li>

                                    <li class="li4">
                                        <label>背景色</label>
                                        <div class="color">
                                            <input id="bgcolor" name="mycolor" type="text" value="#ffffff" class="iColorPicker"/>
                                        </div>
                                    </li>
                                    <li class="li5">
                                        <label>渐变方式</label>
                                        <select id="gradientWay">
                                            <option value="0">无</option>
                                            <option value="circular">圆形</option>
                                            <option value="backslash" selected="selected">反斜线</option>
                                            <option value="slash">斜线</option>
                                            <option value="horizontal">水平</option>
                                            <option value="vertical">垂直</option>
                                        </select>
                                    </li>
                                    <li class="li6">
                                        <label>定位点(内点)</label>
                                        <div class="color">
                                            <input id="inptcolor" name="mycolor" type="text" value="#000000" class="iColorPicker"/>
                                        </div>
                                        <a href="javascript:" class="close" id="resetInPtColor"><img src="picture/close.gif"/></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="fnsubv">
                                <div class="logotypes" id="logotypes">
                                    <label>圆角<input type="radio" name="logotype" value="icon" /></label>
                                    <label>白底<input type="radio" name="logotype" value="border" /></label>
                                    <label>描边<input type="radio" name="logotype" value="stroke" /></label>
                                    <label>原图<input type="radio" name="logotype" value="default"  checked="checked"/></label>
                                </div>
                                <div class="pic">
                                    <span class="picbtn">
                                        <div class="addpic">
                                            <form  action="/upload.php" method="post" target="oniframe" id="logoform" enctype="multipart/form-data">
                                                <input type="file" id="logoimg" class="addlogo" name="logo"/>
                                            </form>
                                            <iframe name="oniframe" class="iframe" id="iframe" height="0" width="0" frameborder="0"></iframe>
                                        </div>
                                    </span>
                                    <div class="picelem" id="picelem"><span></span><a href="javascript:" class="del" title="删除" id="resetLogoimg"></a></div>
                                </div>
                                <div class="format" id="format">（支持jpg、gif、png、bmp格式图片，不超过20M）</div>
                                <div class="turn" id="turn"><span class="turn1" title="逆时针旋转"></span><span class="turn2" title="顺时针旋转"></span></div>
                            </div>

                            <div class="fnsubv">
                                <div class='content'>
                                    <input class="ctext" id="ctext" type="text" value="输入文本"/>
                                    <input class="cbutton" id="cbutton" type="button" value="确定"/>
                                    <a href="javascript:" class="del" title="删除" id="resetContent"></a>
                                </div>
                                <ul class="fontset">
                                    <li>
                                        <label>效果</label>
                                        <select id="fonteffect">
                                            <option selected="selected" value="default">描边</option>
                                            <option value="in">内融合</option>
                                            <option value="out">外融合</option>
                                            <option value="stretch">拉伸</option>
                                            <option value="3d">3D效果</option>
                                            <option value="light">发光</option>
                                        </select>
                                    </li>
                                    <li>
                                        <label>字号</label>
                                        <select id="fontsize">
                                            <option value="24">24</option>
                                            <option value="26">26</option>
                                            <option selected="selected" value="28">28</option>
                                            <option value="30">30</option>
                                            <option value="32">32</option>
                                            <option value="34">34</option>
                                            <option value="36">36</option>
                                            <option value="38">38</option>
                                        </select>
                                    </li>
                                    <li class="i3">
                                        <label>文字颜色</label>
                                        <div class="color">
                                            <input id="ftcolor" name="mycolor" type="text" value="#000000" class="iColorPicker" style="background-color: rgb(0, 0, 0);">
                                        </div>
                                        <a href="javascript:" class="close" id="resetFtColor" style="display: none;"><img src="picture/close.gif"></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="fnsubv">
                                <div class="pin">
                                    <div class="pin-trigger" id="pin-trigger">定位点样式</div>
                                </div>
                            </div>

                            <div class="fnsubv">
                                <ul class="baseset">
                                    <li>
                                        <label>外边距</label>
                                        <select id="margin">
                                            <option>0px</option>
                                            <option>5px</option>
                                            <option selected="selected">10px</option>
                                            <option>15px</option>
                                            <option>20px</option>
                                            <option>25px</option>
                                            <option>30px</option>
                                            <option>35px</option>
                                            <option>40px</option>
                                            <option>45px</option>
                                            <option>50px</option>
                                        </select>
                                    </li>
                                    <li>
                                        <label>纠错等级</label>
                                        <select id="level">
                                            <option value="L">最低</option>
                                            <option value="M">低</option>
                                            <option value="Q">中等</option>
                                            <option value="H">高</option>
                                        </select>
                                    </li>
                                    <li>
                                        <label>旋转角度</label>
                                        <select id="rotate">
                                            <option value="0" selected="selected">0&deg;</option>
                                            <option value="1">90&deg;</option>
                                            <option value="2">180&deg;</option>
                                            <option value="3">270&deg;</option>
                                        </select>
                                    </li>
                                    <li>
                                        <label>图片大小</label>
                                        <select id="size">
                                            <option value="200">200px</option>
                                            <option value="300" selected="selected">300px</option>
                                            <option value="500">500px</option>
                                            <option value="600">600px</option>
                                            <option value="800">800px</option>
                                            <option value="1000">1000px</option>
                                            <option value="1500">1500px</option>
                                            <option value="2000">2000px</option>
                                        </select>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="other">
                        <div class="save">
                           <!-- <form action="/save.php" method="post" target="_blank" id="form">-->
                                <input type="hidden" name="data" value="" id="pngdata"/>
                                <input type="hidden" name="format" value="base64"/>
                                <input type="hidden" name="filename" value="liantu.png"/>
                                <a href="javascript:void(0);" id="savepng" onclick="downloadImg()">保存图片</a>
                        <!--    </form>-->
                        </div>
                        <div class="reset-all" id="resetAll"><a href="javascript:">清除设置</a></div>
                        <div class="copy" id="copy">
                            <a href="javascript:">复制图片链接</a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        
        <script type="text/javascript">

            defalutText($('#text_text'), '支持文本、网址和电子邮箱');
            changeWifi();
            tabfn($('#fntab li'), $('#fnbox .sub'));
            fixtaba($('#fntab a'), $('#fntab li'));
            tabfn($('#tabset .tabelem'), $('#fnblock .fnsubv'));
            elemfocus($('#fnbox .dinput,#url_url,#text_text,#sms_sms'));
            elemSwitch($('#addelem'), $('#litel'));
            openmore($('#urloptions'), $('#urlset'));
            addpic($('#logoimg'), $('#picelem'), $('#turn'), $('#format'));
            hideelem($('#hidetel'), $('#litel'), $('#addelem'), function () {
                $('#card_phone').val('');
            });
            urlselect();
            $(document).ready(function () {
                resetAll();
            });

        </script>
        <script type="text/javascript">

            var _fixType = function (type) {
                type = type.toLowerCase().replace(/jpg/i, 'jpeg');
                var r = type.match(/png|jpeg|bmp|gif/)[0];
                return 'image/' + r;
            };



            var saveFile = function (data, filename) {
                var save_link = document.createElementNS('http://www.w3.org/1999/xhtml', 'a');
                save_link.href = data;
                save_link.download = filename;

                var event = document.createEvent('MouseEvents');
                event.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
                save_link.dispatchEvent(event);
            };



            function downloadImg() {
                var type = 'png';
                var imgData = canvas.toDataURL(type);
                // 加工image data，替换mime type
                imgData = imgData.replace(_fixType(type), 'image/octet-stream');
                // 下载后的问题名
                var filename = 'baidufe_' + (new Date()).getTime() + '.' + type;
                // download
                saveFile(imgData, filename);
            }
        </script>
        <div id="apiUrl" class="hide"></div>
        <div id="apiText" class="hide"></div>
        <div class="pin-panel" id="pin-panel">
            <span></span>
            <ul>
                <li class="i1 active"></li><li class="i2"></li><li class="i3"></li><li class="i4"></li><li class="i5"></li><li class="i6"></li>
                <li class="i7"></li><li class="i8"></li><li class="i9"></li><li class="i10"></li><li class="i11"></li><li class="i12"></li>
                <li class="i13"></li><li class="i14"></li><li class="i15"></li><li class="i16"></li><li class="i17"></li><li class="i18"></li>
                <li class="i19"></li><li class="i20"></li><li class="i21"></li><li class="i22"></li>
            </ul>
        </div>
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>
     <script type="text/javascript" src="http://api.map.baidu.com/getscript?v=1.4&amp;ak=&amp;services=&amp;t=20150522093217"></script>
        <script type="text/javascript" src="/js/tools/qrcode/html5.js"></script>
        <script type="text/javascript" src="/js/tools/qrcode/ie.js"></script>


        

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
        <script type="text/javascript">            loading('100%', 1000)</script>
</body>
</html>