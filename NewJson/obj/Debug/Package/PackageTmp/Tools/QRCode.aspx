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
    <link href="/Css/header.css" rel="stylesheet" type="text/css" />
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
                        在线二维码生成器</h4> <a href="/tools/qrdecode/" class="btn btn-primary btn-xs" style=" color:White" >在线二维码解码</a>
                </div>
            </div>
        </div>
        <div class="panel-body" >
 
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
     
        <script type="text/javascript">            loading('100%', 1000)</script>
</body>
</html>