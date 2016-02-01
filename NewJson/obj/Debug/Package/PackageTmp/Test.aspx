<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="NewJson.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Css/change/all-base.css" rel="stylesheet" type="text/css" />
    <link href="/Css/change/toolstyle.css" rel="stylesheet" type="text/css" />
    <link href="/Css/change/publicstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<embed width="100%" height="100%" name="plugin" src="http://www.tuyitu.com//photoshop/Editor.swf" type="application/x-shockwave-flash">
    <div class="Tool-MainWrap wrapper">
        <!--IcpSearch-begin-->
        <div class="publicSearch">
            <form autocomplete="off" method="post">
            <div id="totest" class="search-write-wrap w820 clearfix">
                <div class="MainCate-choese _ToolChoese fl">
                    <span class="search-write-choese pr ToolChoese fl">
                        <div class="search-choese-cont YaHei SearChoese">
                            GET
                        </div>
                        <input name="method" value="0" type="hidden" />
                        <span class="icon-drop-down SearChoese"></span>
                        <ul class="search-choese-down SearChoese-show">
                            <li><a href="javascript:" val="0">GET</a></li>
                            <li><a href="javascript:" val="1">POST</a></li>
                        </ul>
                    </span>
                </div>
                <span class="search-write-left pr fl w460">
                    <input type="text" class="search-write-cont WrapHid w442" id="host" name="host" url="true"
                        value="" /><a href="javascript:" title="清空" class="quickdelete _CentHid"></a><b class="search-hint CentHid">请输入网址</b></span>
                <span class="search-write-right fl w80">
                    <input class="search-write-btn w80" type="submit" value="测试" id="btnsubmit" /></span>
                <input class="search-write-btn fl ml10 w80" type="button" value="添加参数" id="addparams" /><div
                    class="WebCache pl10 pt10 fl">
                    <input type="checkbox" id="isRAW" /><label class="pl5 col-gray01">批量添加</label></div>
            </div>
            <div class="portTestWrap clearfix pt20">
                <div class="Porname">
                    <input type="text" class="TitInput _WrapHid w240" name="paramsname" value=""><b class="search-hint CentHid mt5"
                        style="display: block;">参数名</b></div>
                <div class="Porname ml10">
                    <input type="text" class="TitInput _WrapHid w360" name="paramsval" value=""><b class="search-hint CentHid mt5"
                        style="display: block">值</b></div>
                <div class="fl pl10">
                    <input type="button" value="删除" class="TitInBtn w70 removeparams"></div>
            </div>
            <div class="portTestear auto pt20 autohide" id="RAW">
                <div class="PorBtnWrap clearfix">
                    <input class="PorTxtear" type="text" id="RAWval" /><input class="PorBtn" type="button"
                        value="OK" id="OK" /></div>
                <p class="Porinfo">
                    输入Raw参数，例如：id=1&url=tool.chinaz.com</p>
            </div>
            <input type="hidden" name="hideRAW" id="hideRAW" value="" />
            </form>
        </div>
        <!--IcpSearch-end-->
        <div style="clear: both">
        </div>
        <div class="IcpMain02 pb20">
            <div class="portRtitCent auto">
                <p class="RtitCehead bb-blue">
                    <span>执行时间：<b>29毫秒</b></span> <span>请求状态码：<b>【200】</b></span> <span>请求返回值如下：<b>【14958
                        bytes】</b></span>
                </p>
                <div class="RtitCeCode" style="word-break: break-all">
                    <pre style="white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap;
                        white-space: -o-pre-wrap;">&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="Content-Type" content="text/html; charset=gb2312"&gt;
&lt;meta name="mobile-agent"content="format=html5; url=http://m.ip138.com/"&gt;
&lt;title&gt;IP地址查询--手机号码查询归属地 | 邮政编码查询 | 长途电话区号 | 身份证号码验证在线查询网&lt;/title&gt;
&lt;meta name="Keywords" content="ip,IP查询,IP地址查询,ip138"&gt;
&lt;meta name="Description" content="ip,IP查询,IP地址查询,ip138"&gt;
&lt;script language="javascript"&gt;
&lt;!--
if(window.top!=window.self)window.top.location.href='http://www.ip138.com/';
function checkIP()
{
	var ipArray,ip,j;
	ip = document.ipform.ip.value;

	if (ip.indexOf(" ")&gt;=0){
		ip = ip.replace(/ /g,"");
		document.ipform.ip.value = ip;
	}
	if (ip.toLowerCase().indexOf("http://")==0){
		ip = ip.slice(7);
		document.ipform.ip.value = ip;
	}
	if (ip.toLowerCase().indexOf("https://")==0){
		ip = ip.slice(8);
		document.ipform.ip.value = ip;
	}
	if (ip.slice(ip.length-1)=="/"){
		ip = ip.slice(0,ip.length-1);
		document.ipform.ip.value = ip;
	}

	if(/[A-Za-z_-]/.test(ip)){
		if(!/^([\w-]+\.)+((top)|(com)|(net)|(org)|(gov\.cn)|(info)|(cc)|(com\.cn)|(net\.cn)|(org\.cn)|(name)|(biz)|(tv)|(cn)|(mobi)|(name)|(sh)|(ac)|(io)|(tw)|(com\.tw)|(hk)|(com\.hk)|(ws)|(travel)|(us)|(tm)|(la)|(me\.uk)|(org\.uk)|(ltd\.uk)|(plc\.uk)|(in)|(eu)|(it)|(jp)|(co)|(me)|(mx)|(ca)|(ag)|(com\.co)|(net\.co)|(nom\.co)|(com\.ag)|(net\.ag)|(fr)|(org\.ag)|(am)|(asia)|(at)|(be)|(bz)|(com\.bz)|(net\.bz)|(net\.br)|(com\.br)|(de)|(es)|(com\.es)|(nom\.es)|(org\.es)|(fm)|(gs)|(co\.in)|(firm\.in)|(gen\.in)|(ind\.in)|(net\.in)|(org\.in)|(jobs)|(ms)|(com\.mx)|(nl)|(nu)|(co\.nz)|(net\.nz)|(org\.nz)|(tc)|(tk)|(org\.tw)|(idv\.tw)|(co\.uk)|(vg)|(ad)|(ae)|(af)|(ai)|(al)|(an)|(ao)|(aq)|(ar)|(as)|(au)|(aw)|(az)|(ba)|(bb)|(bd)|(bf)|(bg)|(bh)|(bi)|(bj)|(bm)|(bn)|(bo)|(br)|(bs)|(bt)|(bv)|(bw)|(by)|(cd)|(cf)|(cg)|(ch)|(ci)|(ck)|(cl)|(cm)|(cr)|(cu)|(cv)|(cx)|(cy)|(cz)|(dj)|(dk)|(dm)|(do)|(dz)|(ec)|(ee)|(eg)|(er)|(et)|(fi)|(fj)|(fk)|(fo)|(ga)|(gd)|(ge)|(gf)|(gg)|(gh)|(gi)|(gl)|(gm)|(gn)|(gp)|(gq)|(gr)|(gt)|(gu)|(gw)|(gy)|(hm)|(hn)|(hr)|(ht)|(hu)|(id)|(ie)|(il)|(im)|(iq)|(ir)|(is)|(je)|(jm)|(jo)|(ke)|(kg)|(kh)|(ki)|(km)|(kn)|(kr)|(kw)|(ky)|(kz)|(lb)|(lc)|(li)|(lk)|(lr)|(ls)|(lt)|(lu)|(lv)|(ly)|(ma)|(mc)|(md)|(mg)|(mh)|(mk)|(ml)|(mm)|(mn)|(mo)|(mp)|(mq)|(mr)|(mt)|(mu)|(mv)|(mw)|(my)|(mz)|(na)|(nc)|(ne)|(nf)|(ng)|(ni)|(no)|(np)|(nr)|(nz)|(om)|(pa)|(pe)|(pf)|(pg)|(ph)|(pk)|(pl)|(pm)|(pn)|(pr)|(ps)|(pt)|(pw)|(py)|(qa)|(re)|(ro)|(ru)|(rw)|(sa)|(sb)|(sc)|(sd)|(se)|(sg)|(si)|(sk)|(sl)|(sm)|(sn)|(sr)|(st)|(sv)|(sy)|(sz)|(td)|(tf)|(tg)|(th)|(tj)|(tl)|(tn)|(to)|(tr)|(tt)|(tz)|(ua)|(ug)|(uk)|(uy)|(uz)|(va)|(vc)|(ve)|(vi)|(vn)|(vu)|(wf)|(ye)|(yt)|(yu)|(za)|(zm)|(zw))$/i.test(ip)){
			alert("不是正确的域名");
			document.ipform.ip.focus();
			return false;
		}
	}
	else{
		ipArray = ip.split(".");
		j = ipArray.length
		if(j!=4)
		{
			alert("不是正确的IP");
			document.ipform.ip.focus();
			return false;
		}

		for(var i=0;i&lt;4;i++)
		{
			if(isNaN(ipArray[i]) || ipArray[i].length&lt;0 || ipArray[i]&gt;255)
			{
				alert("不是正确的IP");
				document.ipform.ip.focus();
				return false;
			}
		}
	}
}

function checkMobile(){
	var sMobile = document.mobileform.mobile.value
	if(!(/^1[3|4|5|7|8][0-9]\d{4,8}$/.test(sMobile))){
		alert("不是完整的11位手机号或者正确的手机号前七位");
		document.mobileform.mobile.focus();
		return false;
	}
}

function checkZip(){
	var sZip = document.zipform.zip.value
	if(!(/^\d{4,6}$/.test(sZip))){
		alert("请输入邮政编码前4-6位");
		return false;
	}
}

function checkZone(){
	var sZone = document.zoneform.zone.value
	if(!(/^0\d{2,6}$/.test(sZone))){
		alert("请输入以“0”开头的3-7位区号");
		return false;
	}
}

function checkArea2Zip(){
	var sArea = document.area2zipForm.area.value
	if(sArea==""){
		alert("请输入地址");
		document.area2zipForm.area.focus();
		return false;
	}
	if(sArea.length&lt;2){
		alert("地址至少要有2个字");
		document.area2zipForm.area.focus();
		return false;
	}
}

function checkArea2Zone(){
	var sArea = document.area2zoneForm.area.value
	if(sArea==""){
		alert("请输入地址");
		document.area2zoneForm.area.focus();
		return false;
	}
	if(sArea.length&lt;2){
		alert("地址至少要有2个字");
		document.area2zoneForm.area.focus();
		return false;
	}
}

function checkID(){
	var sID = document.IDform.userid.value
	if(!(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(sID))){
		alert("请输入15位或18位身份证号");
		document.IDform.userid.focus();
		return false;
	}
}
//--&gt;
&lt;/script&gt;
&lt;style type=text/css&gt;
p,td {font-size:16px}
A:link {COLOR: #1c5f82; TEXT-DECORATION: none}
A:visited {COLOR: #1c5f82; TEXT-DECORATION: none}
A:hover {COLOR: #cc5533; TEXT-DECORATION: underline}

A.green:link {COLOR: #008000;}
A.green:visited {COLOR: #008000;}
A.green:hover {COLOR: #008000;}

A.red:link {COLOR: #ff0000;}
A.red:visited {COLOR: #ff0000;}
A.red:hover {COLOR: #ff0000;}

.subt {COLOR: #aa3333; FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.tdc {COLOR: #333333; FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.tdc1 {COLOR: #ffffff; FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.tdc2 {COLOR: #008000; FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.bdtj {BACKGROUND: #6699cc; BORDER-BOTTOM: #6699cc 1px solid; BORDER-LEFT: #6699cc 1px solid; BORDER-RIGHT: #6699cc 1px solid; BORDER-TOP: #6699cc 1px solid; COLOR: #ffffff; FONT-SIZE: 9pt; HEIGHT: 18px}
BODY {margin-left,margin-right:0px; text-align:center}

.lh150{line-height:150%}
&lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div align="center"&gt;&lt;center&gt;
&lt;table cellSpacing="0" cellPadding="0" width="760" align="center" border="0"&gt;
	&lt;tr vAlign="bottom"&gt;
		&lt;td align="left"&gt;&lt;b&gt;www.ip138.com 查询网&lt;/b&gt;&lt;/td&gt;
		&lt;td&gt;&lt;/td&gt;
		&lt;td align="right"&gt;&lt;b&gt;手机上网查询:wap.ip138.com&lt;/b&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr vAlign="top" align="left"&gt;
		&lt;td colSpan="3"&gt;&lt;hr width="100%" SIZE="1"&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;/center&gt;&lt;/div&gt;
&lt;div align="center"&gt;&lt;center&gt;
&lt;table height="22" cellSpacing="0" cellPadding="0" width="710" border="0"&gt;
	&lt;tr align="center"&gt;
		&lt;td width="179"&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://qq.ip138.com/weather/" target="_blank"&gt;天气预报-预报五天&lt;/a&gt;&lt;/td&gt;
		&lt;td width="177"&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://qq.ip138.com/train/" target="_blank"&gt;国内列车时刻表查询&lt;/a&gt;&lt;/td&gt;
		&lt;td width="177"&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://www.ip138.com/sj/" target="_blank"&gt;手机号码所在地区查询&lt;/a&gt;&lt;/td&gt;
		&lt;td width="177"&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://qq.ip138.com/day/" target="_blank"&gt;阴阳转换万年历&lt;/a&gt;&nbsp;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr align="center"&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://www.ip138.com/gb.htm" target="_blank"&gt;汉字简体繁体转换&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://www.ip138.com/jb.htm" target="_blank"&gt;国内国际机票查询&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://10.ip138.com/" target="_blank"&gt;品牌排行榜&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://qq.ip138.com/wb/wb.asp" target="_blank"&gt;五笔编码拼音查询&lt;/a&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr align="center"&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://qq.ip138.com/tran.htm" target="_blank"&gt;在线翻译&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://qq.ip138.com/hl.asp" target="_blank"&gt;货币汇率&lt;/a&gt; &lt;a href="http://qq.ip138.com/zt.htm" target="_blank"&gt;转贴工具&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://qq.ip138.com/converter.htm" target="_blank"&gt;在线度衡量转换器&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;b&gt;&lt;font color="#008000"&gt;→&lt;/font&gt;&lt;/b&gt;&lt;a href="http://www.ip138.com/post/" target="_blank"&gt;邮编查询区号查询&lt;/a&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr align="center"&gt;
		&lt;td&gt;&lt;a href="http://qq.ip138.com/idsearch/" target="_blank" class="green"&gt;身份证号码查询验证&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;a href="http://www.ip138.com/ems/" target="_blank"&gt;快递查询&lt;/a&gt; &lt;a href="http://www.ip138.com/ems/" target="_blank"&gt;EMS查询&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;a href="http://www.ip138.com/carlist.htm" target="_blank"&gt;全国各地车牌查询表&lt;/a&gt;&lt;/td&gt;
		&lt;td&gt;&lt;a href="http://www.ip138.com/weizhang.htm" target="_blank"&gt;车辆交通违章查询&lt;/a&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;/center&gt;&lt;/div&gt;
&lt;br/&gt;&lt;table width="80%"  border="0" align="center" cellpadding="0" cellspacing="0"&gt;
	&lt;tr&gt;&lt;td align="center"&gt;&lt;h3&gt;www.ip138.com IP查询(搜索IP地址的地理位置)&lt;/h3&gt;&lt;/td&gt;&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td height="30" align="center" valign="top"&gt;&lt;iframe src="http://1212.ip138.com/ic.asp" rel="nofollow" frameborder="0" scrolling="no" width="100%" height="100%"&gt;&lt;/iframe&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
	&lt;/tr&gt;
	&lt;form method="get" ACTION="ips138.asp" target="_blank" name="ipform" onSubmit="return checkIP();"&gt;
	&lt;tr&gt;
		&lt;td align="center"&gt;&lt;div align="center"&gt;
			&lt;p&gt;在下面输入框中输入您要查询的IP地址或者域名，点击查询按钮即可查询该IP所属的区域。&lt;/p&gt;
			&lt;p&gt;IP地址或者域名：&lt;input type="text" name="ip" size="16"&gt; &lt;input type="submit" value="查询"&gt;&lt;INPUT TYPE="hidden" name="action" value="2"&gt;&lt;/p&gt;
		&lt;/div&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;/FORM&gt;
&lt;/table&gt;	
&lt;div align="center"&gt;&lt;center&gt;
&lt;table&gt;
	&lt;tr&gt;&lt;td align="center"&gt;ip138专业7*24小时为您服务（QQ交流群：94181690）&lt;/td&gt;&lt;/tr&gt;
	&lt;tr&gt;&lt;td align="center"&gt;&lt;small&gt;注:本站的IP数据库为最新的数据库,每10天自动更新一次&lt;/small&gt;&lt;/td&gt;&lt;/tr&gt;
	&lt;tr&gt;&lt;td align="center"&gt;&lt;a href="iplink.htm" rel="nofollow" target="_blank"&gt;欢迎各网站链接本站IP数据库,获取代码按此&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
&lt;/center&gt;&lt;/div&gt;
&lt;p align="center"&gt;&lt;small&gt;如发现小部分IP查询结果不正确请到官方网站&lt;a href="http://www.apnic.net" rel="nofollow" target="_blank"&gt;http://www.apnic.net&lt;/a&gt;查询,以apnic为准。&lt;/small&gt;&lt;/p&gt;
&lt;br&gt;
&lt;div align="center"&gt;&lt;center&gt;
&lt;table border="1" borderColor="#6699CC" cellSpacing="0" height="1" width="61%" align="center" cellpadding="0"&gt;
	&lt;tr&gt;&lt;td class="p2" height="-2" vAlign="top" width="99%" bgcolor="#6699CC"&gt;&lt;p align="center"&gt;&lt;a href="http://www.ip138.com/sj/" target="_blank"&gt;&lt;font color="#FFFFFF"&gt;&lt;b&gt;手机号码所在地区强力查询&lt;/b&gt;&lt;/font&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;
	&lt;tr&gt;&lt;td class="p2" height="12" vAlign="top" width="99%"&gt;&lt;p align="center"&gt;输入手机号即可知道用户所在的地区&lt;/td&gt;&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td class="p2" height="15" vAlign="top" width="99%"&gt;&lt;form action="http://www.ip138.com:8080/search.asp" method="get" onSubmit="return checkMobile();" target="mobilewindow" name="mobileform"&gt;
			&lt;input type="hidden" name="action" value="mobile"&gt;&lt;div align="center"&gt;&lt;center&gt;&lt;p&gt;&nbsp;&nbsp;手机号码（段）&lt;input class="TextBoxStyle" maxLength="11" name="mobile" size="15" id="mobile"&gt; &lt;input class="ButtonStyle" type="submit" value="查询"&gt; &lt;a href="http://jx.ip138.com/" onclick="if(document.getElementById('mobile').value!='')this.href='http://jx.ip138.com/search.asp?k='+document.getElementById('mobile').value" target="_blank"&gt;测吉凶&lt;/a&gt;&lt;/p&gt;
			&lt;/center&gt;&lt;/div&gt;
		&lt;/form&gt;
		&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;/center&gt;&lt;/div&gt;
&lt;p align="center"&gt;&lt;a href="http://www.ip138.com/sjlink.htm" rel="nofollow" target="_blank"&gt;欢迎各网站免费链接本站手机号码查询系统,获取代码按此&lt;/a&gt;&lt;/p&gt;
&lt;br&gt;
&lt;center&gt;
&lt;table border=1 borderColor=#3366cc cellPadding=4 style="BORDER-COLLAPSE: collapse" width=520&gt;
	&lt;tr&gt;
		&lt;td align=middle bgColor=#6699cc class=tdc1 colSpan=4 height=24&gt;&lt;a href="http://www.ip138.com/post/" target="_blank" style="color:#ffffff"&gt;国内邮政编码和长途电话区号查询&lt;/a&gt;(&lt;a href="http://www.ip138.com/post/" target="_blank"&gt;更详细的功能按此&lt;/a&gt;)&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr bgColor=#eff1f3 align=middle&gt;
	&lt;form action="/post/search.asp" method="get" name="area2zipForm" onSubmit="return checkArea2Zip()" target="searchwindow"&gt;
		&lt;td width=80 class=tdc&gt;地名查询邮编&lt;/td&gt;
		&lt;td class=tdc&gt;&lt;input name="action" type="hidden" value="area2zip"&gt;&lt;input class=tdc name="area" size=16&gt;&nbsp;&lt;input class=bdtj name=B1 type=submit value="查 询"&gt;
		&lt;/td&gt;
	&lt;/form&gt;
	&lt;form action="/post/search.asp" method="get" name="zipform" onSubmit="return checkZip();" target="searchwindow"&gt;
		&lt;td width=80 class=tdc&gt;邮编查询地名&lt;/td&gt;
		&lt;td class=tdc&gt;&lt;INPUT name="action" type="hidden" value="zip2area"&gt;&lt;INPUT class=tdc name="zip" size=10&gt;&nbsp;&lt;INPUT class=bdtj name=B1 type=submit value="查 询"&gt;
		&lt;/td&gt;
	&lt;/form&gt;
	&lt;/tr&gt;
	&lt;tr bgColor=#eff1f3 align=middle&gt;
	&lt;form action="/post/search.asp" method="get" name="area2zoneForm" onSubmit="return checkArea2Zone();" target="searchwindow"&gt;
		&lt;td class=tdc&gt;地名查询区号&lt;/td&gt;
		&lt;td class=tdc&gt;&lt;INPUT name="action" type="hidden" value="area2zone"&gt;&lt;INPUT class=tdc name="area" size=16&gt;&nbsp;&lt;INPUT class=bdtj name=B1 type=submit value="查 询"&gt;&lt;/td&gt;
	&lt;/form&gt;
	&lt;form action="/post/search.asp" method="get" name="zoneform" onSubmit="return checkZone();" target="searchwindow"&gt;
		&lt;td class=tdc&gt;区号查询地名&lt;/td&gt;
		&lt;td class=tdc&gt;&lt;INPUT name="action" type="hidden" value="zone2area"&gt;&lt;INPUT class=tdc name="zone" size=10&gt;&nbsp;&lt;INPUT class=bdtj name=B1 type=submit value="查 询"&gt;&lt;/td&gt;
	&lt;/form&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;p align="center"&gt;&lt;b&gt;&lt;a href="http://www.ip138.com/post/postal22/" target="_blank"&gt;&lt;font color="#008000"&gt;
→邮编及区号详细列表式查询&lt;/font&gt;&lt;/a&gt;
　　
&lt;a href="http://www.ip138.com/post/yzbm/yzbm.htm" target="_blank"&gt;&lt;font color="#008000"&gt;→邮编及区号按地图查询&lt;/font&gt;&lt;/a&gt;&lt;/b&gt;&lt;/p&gt; 
&lt;center&gt;
&lt;table border=1 borderColor=#3366cc cellPadding=4 style="BORDER-COLLAPSE: collapse" width=520&gt;
	&lt;tr&gt;
		&lt;td align=middle bgColor=#6699cc class=tdc1 colSpan=2 height=24&gt;
		&lt;a href="http://qq.ip138.com/idsearch/" target="_blank" style="color:#ffffff"&gt;国内身份证号码验证查询&lt;/a&gt;&nbsp;(&lt;a href="http://qq.ip138.com/idsearch/" target="_blank"&gt;高级功能按此&lt;/a&gt;);
		&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr bgColor=#eff1f3 align=middle&gt;
	&lt;FORM action="http://qq.ip138.com/idsearch/index.asp" target="_blank" method="get" name="IDform" onSubmit="return checkID();"&gt;
		&lt;td width=160 class=tdc&gt;请输入15或18位身份证号&lt;/td&gt;
		&lt;td class=tdc&gt;&lt;INPUT name="action" type="hidden" value="idcard"&gt;
		&lt;INPUT class=tdc name="userid" value=""&gt;&nbsp;&lt;INPUT class=bdtj name=B1 type=submit value="查 询"&gt;
		&lt;/td&gt;
	&lt;/FORM&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;br&gt;
&lt;br&gt;
&lt;div align="center"&gt;&lt;center&gt;
&lt;table height="23" width="760" style="border:1px solid #008000"&gt;
	&lt;tr&gt;
		&lt;td class="lh150" align="center"&gt;&lt;a href="http://game.3533.com/game/" target="_blank"&gt;手机游戏&lt;/a&gt; &lt;a href="http://www.haolingsheng.com/" target="_blank"&gt;手机铃声&lt;/a&gt; &lt;a href="http://game.3533.com/bizhi/" target="_blank"&gt;手机壁纸&lt;/a&gt; &lt;a href="http://game.3533.com/ruanjian/" target="_blank"&gt;手机软件&lt;/a&gt; &lt;a href="http://www.4399.com/" target="_blank"&gt;4399小游戏&lt;/a&gt; &lt;a href="http://www.youba.com/" target="_blank"&gt;游吧&lt;/a&gt; &lt;a href="http://www.oicq88.com/" target="_blank"&gt;QQ网名&lt;/a&gt; &lt;a href="http://www.fanxian.com/" target="_blank"&gt;返现网&lt;/a&gt; &lt;a href="http://www.yy138.com/" target="_blank"&gt;应用下载&lt;/a&gt;&lt;br/&gt;
		&lt;a href="http://www.4399dmw.com/donghua/" target="_blank"&gt;动画片大全&lt;/a&gt; &lt;a href="http://www.1zhe.com/" target="_blank"&gt;一折特卖&lt;/a&gt; &lt;a href="http://www.4399.cn/" target="_blank"&gt;4399手机游戏&lt;/a&gt; &lt;a href="http://www.66825.com/" target="_blank"&gt;360手机助手&lt;/a&gt; &lt;a href="http://app.4399.cn/" target="_blank"&gt;4399游戏盒&lt;/a&gt; &lt;a href="http://www.yy138.com/360shoujizhushou/" target="_blank"&gt;360手机助手&lt;/a&gt; &lt;a href="http://www.liantu.com/" target="_blank"&gt;二维码&lt;/a&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;/center&gt;&lt;/div&gt;
&lt;br&gt;
&lt;p align="center"&gt;&lt;/a&gt;联系我们.请&lt;a href="mail.htm" rel="nofollow" target="_blank"&gt;发email&lt;/a&gt;.或给&lt;a href="http://qq.3533.com:8080/book.asp?siteid=7" rel="nofollow" target="_blank"&gt;我们留言&lt;/a&gt;谢谢!&lt;/p&gt;
&lt;p align="center"&gt;&lt;a href="http://www.miitbeian.gov.cn/" rel="nofollow" target="_blank"&gt;沪ICP备10013467号-1&lt;/a&gt;&lt;/p&gt;
&lt;div style="display:none"&gt;&lt;script type="text/javascript" src="http://tajs.qq.com/stats?sId=36241650" charset="UTF-8"&gt;&lt;/script&gt;&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;</pre>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
