<%@ Page Title="获取您的IP" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="GetIP.aspx.cs" Inherits="NewJson.WebTools.GetIP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="获取您的IP">
    <meta name="description" content="获取您的IP">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        获取您的IP</h4>
                    <div id="desc1">
                        获取用户IP</div>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group"  style=" width:100%">
                <span class="input-group-addon"  style=" width:100px;text-align:right;">您的IP:</span>
                <input type="text" class="form-control" id="ip" value="" aria-describedby="basic-addon1">
            </div>
            <div class="input-group"  style=" width:100%">
                <span class="input-group-addon"  style=" width:100px;text-align:right;">您的地址:</span>
                <input type="text" class="form-control" id="address" value="" aria-describedby="basic-addon1">
            </div>
                        <div class="input-group"  style=" width:100%">
                <span class="input-group-addon" style=" width:100px;text-align:right;">操作系统:</span>
                <input type="text" class="form-control" id="sys" value="" aria-describedby="basic-addon1"></div>
                <div class="input-group"  style=" width:100%">
                <span class="input-group-addon" style=" width:100px;text-align:right;">分辨率:</span>
                <input type="text" class="form-control" id="screen" value="" aria-describedby="basic-addon1"></div>
                <div class="input-group" style=" width:100%"> 
                <span class="input-group-addon" style=" width:100px;text-align:right;">浏览器信息:</span>
               
                <input type="text" class="form-control" id="version" value="" aria-describedby="basic-addon1">
            </div>
        </div>
        <div class="panel-footer">
        </div>
    </div>
    <%--<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script> --%>
    
    <script type="text/javascript">

        jQuery(function ($) {
            var url = 'http://ip.chinaz.com/getip.aspx?callback=?&=' + Math.random();
            $.getJSON(url, function (data) {
                $("#ip").val(data.ip);
                $("#address").val(data.address);
              
            });
        });
        $(function () {
            $("#sys").val(detectOS() );
            $("#screen").val(window.screen.width + "*" + window.screen.height);
            $("#version").val(navigator.appVersion);
        })
 
        
    </script>
      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
