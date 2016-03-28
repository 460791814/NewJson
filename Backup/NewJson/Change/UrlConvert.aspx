<%@ Page Title="迅雷下载地址在线转换,快车下载地址在线转换,旋风下载地址在线转换工具" Language="C#" MasterPageFile="~/Main.Master"
    AutoEventWireup="true" CodeBehind="UrlConvert.aspx.cs" Inherits="NewJson.Change.UrlConvert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="keywords" content="迅雷下载地址在线转换,快车下载地址在线转换,旋风下载地址在线转" />
    <meta name="description" content="本工具为您提供方便快捷的下载地址在线转换服务,支持迅雷 快车 旋风下载地址一键转换" />

 
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <script src="/Js/change/urlconvert/jquery.js" type="text/javascript"></script>
    <script src="/Js/change/urlconvert/ajax.js" type="text/javascript"></script>

    <style type="text/css">
    .main {
	float:left;
	width:100%;
}


.main input.text {
	width:370px;
	padding:5px 3px;
	border:1px solid #ccc;
}

.main input.olink {width: 570px;}

.main input.dlink {
	width:570px;
	padding:5px 28px 5px 3px;
	overflow:visible;
	background:url(/images/change/copy.png) no-repeat 579px;
}

.main input.phone_number {
	width:200px;
	padding:5px 3px;
	border:1px solid #ccc;
	float:left;
	margin:0 5px 0 -40px;
}

.main label.form_left {
	float:left;
	width:150px;
	padding:3px 0;
}

/* for chrome */
input:-webkit-autofill {
	border:1px solid #ccc;
}

#ftr .declare {
	text-align:center;
	padding:10px 0 15px;
}

.declare a {
	color:#666;
}

.code {
	font-family:Monaco, 'Lucida Console', monospace, Consolas, Courier, 'Microsoft YaHei';
}

.main p+p {
	margin:0 0 1em;
}

.loading {
	background:url(/images/change/loading.gif) 50% 50% #FFF9EB no-repeat;
}

.signform p {
	line-height:30px;
}

a.copy,i.erase {
	margin-left:10px;
}

a.copy:hover,a.copy.hover {
	color:#123;
}

a.copy:active,a.copy.hover {
	color:red;
}

i.erase {
	background:url(/images/change/urlconvert.png) 0 -29px no-repeat;
}

i.erase a {
	opacity:0;
	filter:alpha(opacity=0);
	width:16px;
	height:16px;
	display:inline-block;
	overflow:hidden;
}

.h_notice {
	position:absolute;
	top:41px;
	left:350px;
	background:#AAA;
	color:#FFF;
	padding:2px 4px;
	border-radius:3px;
	font-size:12px;
	cursor:pointer;
}

.inner li {
	margin:1em 0;
	list-style:none;
}

/* convert ico */
label.origin,label.fileico,label.xunlei,label.kuaiche,label.xuanfeng {
	padding:3px 0 3px 20px!important;
}

.origin {
	background:url(/images/change/urlconvert.png) 0 -46px no-repeat;
}

.fileico {
	background:url(/images/change/urlconvert.png) 0 -73px no-repeat;
}

.xunlei {
	background:url(/images/change/urlconvert.png) 0 -100px no-repeat;
}

.kuaiche {
	background:url(/images/change/urlconvert.png) 0 -127px no-repeat;
}

.xuanfeng {
	background:url(/images/change/urlconvert.png) 0 -154px no-repeat;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        迅雷下载地址在线转换,快车下载地址在线转换,旋风下载地址在线转换工具</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <script language="javascript" src="/Js/change/urlconvert/base64.js"></script>
            <script language="javascript" src="/Js/change/urlconvert/urlconvert.js"></script>
            <script src="/Js/change/urlconvert/webthunderdetect.js"></script>
            <div class="main">
                <div class="inner">
                   
<%--                    <p class="tips">
                         提醒:只需在原始地址处输入迅雷,快车,旋风,HTTP下载地址后，点击转换 即可随意转换了</p>--%>
                    <p>
                        <label for="" class="origin form_left">
                            原始地址：</label><input type="text" id="oldurl" name="oldurl" class="text olink" spellcheck="false"
                                value="thunder://QUFodHRwOi8vdG9vbC5sdS90ZXN0LnppcFpa" />
                        <i class="erase"><a href="#" title="清除内容" onclick="$('#oldurl').val('');return false;">
                            清除内容</a></i>
                             <input id="button2" onclick="urlconvert();" type="button" value="转换" class="btn btn-primary" name="button">
                            </p>
                    <hr>
                    <h5>
                        提醒:只需在原始地址处输入迅雷,快车,旋风,HTTP下载地址后，点击转换 即可随意转换了</h5>
                    <br>
                   
                    <div style="position: relative; margin-bottom: 1em">
                        <label for="reallink" class="fileico form_left">
                            真实地址：</label><input type="text" id="newurl" 
                                name="newurl" readonly="readonly" class="text dlink" spellcheck="false" value="" /><span
                                    id="down_newurl"></span></div>
                    <div style="position: relative; margin-bottom: 1em">
                        <label for="thunderlink" class="xunlei form_left">
                            迅雷地址：</label><input type="text" id="thunderurl" 
                                name="thunderurl" readonly="readonly" class="text dlink" spellcheck="false" value="" /><span
                                    id="down_thunderurl"></span></div>
                    <div style="position: relative; margin-bottom: 1em">
                        <label for="flashgetlink" class="kuaiche form_left">
                            快车地址：</label><input type="text" id="flashgeturl" 
                                name="flashgeturl" readonly="readonly" spellcheck="false" class="text dlink"
                                value="" /><span id="down_flashgeturl"></span></div>
                    <div style="position: relative; margin-bottom: 1em">
                        <label for="qqdllink" class="xuanfeng form_left">
                            旋风地址：</label><input type="text" id="qqurl"
                                name="qqurl" readonly="readonly" name="dlink[qqdl]" class="text dlink" value="" /><span
                                    id="down_qqurl"></span></div>
                                     <script type="text/javascript" src="/Js/zeroclipboard1.2/zeroclipboard.js?v=1288490188066.7"></script>

                                <script>
                                    $(function () {
                                        $("input[class=text dlink]").each(function (i) {

                                            $(this).css("cursor", "pointer")
                                            $(this).attr("data-clipboard-target", $(this).attr("id"));

                                            var clip = new ZeroClipboard(jQuery(this)[0], {
                                                moviePath: "/JS/zeroclipboard1.2/ZeroClipboard.swf"
                                            });
                                            clip.on('complete', function (client, args) {
                                                alert("复制成功");
                                            });
                                        })
                                      

                                    })
                                  


	                    </script>
                  
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
