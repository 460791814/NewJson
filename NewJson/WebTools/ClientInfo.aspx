<%@ Page Title="在线获取客户端系统及浏览器信息" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ClientInfo.aspx.cs" Inherits="NewJson.WebTools.ClientInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线获取客户端系统及浏览器信息">
<meta name="description" content="在线获取客户端系统及浏览器信息">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div class="panel panel-default">
<div class="panel-heading">
<div class="media">
<div class="media-body">
<h4 class="media-heading">在线获取客户端系统及浏览器信息</h4>
<div id="desc1">在线获取客户端系统及浏览器信息</div>
</div>
</div>
</div>
<div class="panel-body">
<script>

    function detectOS() {
        var sUserAgent = navigator.userAgent;
        var isWin = (navigator.platform == "Win32") || (navigator.platform == "Windows");
        var isMac = (navigator.platform == "Mac68K") || (navigator.platform == "MacPPC") || (navigator.platform == "Macintosh") || (navigator.platform == "MacIntel");
        if (isMac) return "Mac";
        var isUnix = (navigator.platform == "X11") && !isWin && !isMac;
        if (isUnix) return "Unix";
        var isLinux = (String(navigator.platform).indexOf("Linux") > -1);
        if (isLinux) return "Linux";
        if (isWin) {
            var isWin2K = sUserAgent.indexOf("Windows NT 5.0") > -1 || sUserAgent.indexOf("Windows 2000") > -1;
            if (isWin2K) return "Win2000";
            var isWinXP = sUserAgent.indexOf("Windows NT 5.1") > -1 || sUserAgent.indexOf("Windows XP") > -1;
            if (isWinXP) return "WinXP";
            var isWin2003 = sUserAgent.indexOf("Windows NT 5.2") > -1 || sUserAgent.indexOf("Windows 2003") > -1;
            if (isWin2003) return "Win2003";
            var isWinVista = sUserAgent.indexOf("Windows NT 6.0") > -1 || sUserAgent.indexOf("Windows Vista") > -1;
            if (isWinVista) return "WinVista";
            var isWin7 = sUserAgent.indexOf("Windows NT 6.1") > -1 || sUserAgent.indexOf("Windows 7") > -1;
            if (isWin7) return "Win7";
        }
        return "other";
    }
	</script>
<table border="0" cellpadding="3" cellspacing="1" width="100%" align="center">
<tr>
<th width="25%">名称</th>
<th width="25%">描述</th>
<th>结果</th>
</tr>
<tr>
<td>navigator.platform</td>
<td>客户端系统</td>
<td style="color:#00F"><script>                           document.write(detectOS())</script></td>
</tr>
<tr>
<td>navigator.appName</td>
<td>返回浏览器名称</td>
<td style="color:#00F"><script>                           document.write(navigator.appName)</script></td>
</tr>
<tr>
<td>navigator.appVersion</td>
<td>返回浏览器版本信息</td>
<td style="color:#00F"><script>                           document.write(navigator.appVersion)</script></td>
</tr>
<tr>
<td>window.screen.height</td>
<td>显示器高度</td>
<td style="color:#00F"><script>                           document.write(window.screen.height)</script>px</td>
</tr>
<tr>
<td>window.screen.width</td>
<td>显示器宽度</td>
<td style="color:#00F"><script>                           document.write(window.screen.width)</script>px</td>
</tr>
<tr>
<td>window.screen.colorDepth</td>
<td>屏幕设置色彩位数</td>
<td style="color:#00F"><script>                           document.write(window.screen.colorDepth)</script></td>
</tr>
<tr>
<td>navigator.appCodeName</td>
<td>返回浏览器代码名称</td>
<td style="color:#00F"><script>                           document.write(navigator.appCodeName)</script></td>
</tr>
<tr>
<td>navigator.vendor</td>
<td>返回浏览器厂家信息</td>
<td style="color:#00F"><script>                           document.write(navigator.vendor)</script></td>
</tr>
<tr>
<td>navigator.userAgent</td>
<td>返回浏览器及版本信息,包含navigator.appVersion信息</td>
<td style="color:#00F"><script>                           document.write(navigator.userAgent)</script></td>
</tr>
<tr>
<td>navigator.onLine</td>
<td>返回浏览器是否连接到网络</td>
<td style="color:#00F"><script>                           document.write(navigator.onLine)</script></td>
</tr>
<tr>
<td>navigator.language</td>
<td>返回浏览器默认语言</td>
<td style="color:#00F"><script>                           document.write(navigator.language)</script></td>
</tr>
<tr>
<td>navigator.product</td>
<td>返回浏览器产品名称</td>
<td style="color:#00F"><script>                           document.write(navigator.product)</script></td>
</tr>
<tr>
<td>navigator.productSub</td>
<td>返回浏览器产品其他信息</td>
<td style="color:#00F"><script>                           document.write(navigator.productSub)</script></td>
</tr>
<tr>
<td>navigator.cookieEnabled</td>
<td>浏览器是否开启cookie</td>
<td style="color:#00F"><script>                           document.write(navigator.cookieEnabled)</script></td>
</tr>
<tr>
<td>navigator.mimeTypes.length</td>
<td>浏览器的MIME类型数量</td>
<td style="color:#00F"><script>
                           document.write(navigator.mimeTypes.length);
    </script></td>
</tr>
<tr>
<td>navigator.mimeTypes</td>
<td>浏览器MIME支持类型列表</td>
<td style="color:#00F"><script>
                           for (x in navigator.mimeTypes) {
                               document.write("类型: " + navigator.mimeTypes[x].type + "<br/>");
                               document.write("描述: " + navigator.mimeTypes[x].description + "<br/>");
                               document.write("扩展名: " + navigator.mimeTypes[x].suffixes + "<br/>");
                               document.write("附注: " + navigator.mimeTypes[x].enabledPlugin.name + "<br/>");
                               document.write("<br/>");
                           }
    </script></td>
</tr>
<tr>
<td>navigator.plugins.length</td>
<td>浏览器安装插件数量</td>
<td style="color:#00F"><script>
                           document.write(navigator.plugins.length);
    </script></td>
</tr>
<tr>
<td>navigator.plugins</td>
<td>浏览器安装插件信息列表</td>
<td style="color:#00F"><script>
                           for (x in navigator.plugins) {
                               document.write("名称：" + navigator.plugins[x].name + "<br/> 描述：" + navigator.plugins[x].description + "<br/> 文件名称：" + navigator.plugins[x].filename + "<br/><br/>");
                           }
    </script></td>
</tr>
</table>
</div>
<div class="panel-footer"></div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
