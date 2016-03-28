<%@ Page Title="获取您的IP" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="IPAddress.aspx.cs" Inherits="NewJson.WebTools.IPAddress" %>

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
                if (isWin2K) return "Windows 2000";
                var isWinXP = sUserAgent.indexOf("Windows NT 5.1") > -1 || sUserAgent.indexOf("Windows XP") > -1;
                if (isWinXP) return "Windows XP";
                var isWin2003 = sUserAgent.indexOf("Windows NT 5.2") > -1 || sUserAgent.indexOf("Windows 2003") > -1;
                if (isWin2003) return "Windows 2003";
                var isWinVista = sUserAgent.indexOf("Windows NT 6.0") > -1 || sUserAgent.indexOf("Windows Vista") > -1;
                if (isWinVista) return "Windows Vista";
                var isWin7 = sUserAgent.indexOf("Windows NT 6.1") > -1 || sUserAgent.indexOf("Windows 7") > -1;
                if (isWin7) return "Windows 7";
                var isWin7 = sUserAgent.indexOf("Windows NT 8.0") > -1 || sUserAgent.indexOf("Windows 8") > -1;
                if (isWin7) return "Windows 8";
                var isWin7 = sUserAgent.indexOf("Windows NT 10.0") > -1 || sUserAgent.indexOf("Windows 10") > -1;
                if (isWin7) return "Windows 10";
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
                    <h2 class="media-heading">
                        IP地址查询</h2>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group" style=" width:300px;float: left; margin-right: 15px">
                <span class="input-group-addon" style="text-align: center;">IP地址或者域名：</span>
                <input type="text" class="form-control" id="ip" value="" aria-describedby="basic-addon1" placeholder="220.181.57.217|baidu.com"
                    style="width: 250px">
            </div>
            <button class="btn btn-primary" type="button" id="select" onclick="select();" >
                查询</button>
            <div class="well" style="margin-top: 15px; line-height: 30px; display: none" id="result">
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function select() {
            $("#select").text("正在查询...");
            if (checkIP() == false) {
                $("#select").text("查询");
                return false;
            }
            var param = "ip=" + $("#ip").val();



            $.ajax({
                type: 'POST',
                url: "/WebTools/IPAddress.aspx?method=address",
                data: param,
                success: function (data) {
                    $("#select").text("查询");
                    $("#result").html(data);
                    $("#result").show();
                },
                error: function () {
                    $("#select").text("查询");
                    $("#result").html("请重试");
                }

            });
        }
        function checkIP() {
            var ipArray, ip, j;
            ip = document.getElementById("ip").value;

            if (ip.indexOf(" ") >= 0) {
                ip = ip.replace(/ /g, "");
                document.getElementById("ip").value = ip;
            }
            if (ip.toLowerCase().indexOf("http://") == 0) {
                ip = ip.slice(7);
                document.getElementById("ip").value = ip;
            }
            if (ip.toLowerCase().indexOf("https://") == 0) {
                ip = ip.slice(8);
                document.getElementById("ip").value = ip;
            }
            if (ip.slice(ip.length - 1) == "/") {
                ip = ip.slice(0, ip.length - 1);
                document.getElementById("ip").value = ip;
            }

            if (/[A-Za-z_-]/.test(ip)) {
                if (!/^([\w-]+\.)+((ac)|(ad)|(ae)|(af)|(ag)|(ai)|(al)|(am)|(an)|(ao)|(aq)|(ar)|(as)|(asia)|(at)|(au)|(aw)|(az)|(ba)|(band)|(bb)|(bd)|(be)|(bf)|(bg)|(bh)|(bi)|(biz)|(bj)|(bm)|(bn)|(bo)|(br)|(bs)|(bt)|(bv)|(bw)|(by)|(bz)|(ca)|(cc)|(cd)|(cf)|(cg)|(ch)|(ci)|(ck)|(cl)|(click)|(club)|(cm)|(cn)|(co)|(co\.in)|(co\.nz)|(co\.uk)|(com)|(com\.ag)|(com\.br)|(com\.bz)|(com\.cn)|(com\.co)|(com\.es)|(com\.hk)|(com\.mx)|(com\.tw)|(cr)|(cu)|(cv)|(cx)|(cy)|(cz)|(date)|(de)|(design)|(dj)|(dk)|(dm)|(do)|(dz)|(ec)|(ee)|(eg)|(engineer)|(er)|(es)|(et)|(eu)|(fi)|(firm\.in)|(fj)|(fk)|(fm)|(fo)|(fr)|(ga)|(gd)|(ge)|(gen\.in)|(gf)|(gg)|(gh)|(gi)|(gift)|(gl)|(gm)|(gn)|(gov\.cn)|(gp)|(gq)|(gr)|(gs)|(gt)|(gu)|(gw)|(gy)|(help)|(hk)|(hm)|(hn)|(hr)|(ht)|(hu)|(id)|(idv\.tw)|(ie)|(il)|(im)|(in)|(ind\.in)|(info)|(io)|(iq)|(ir)|(is)|(it)|(je)|(jm)|(jo)|(jobs)|(jp)|(ke)|(kg)|(kh)|(ki)|(km)|(kn)|(kr)|(kw)|(ky)|(kz)|(la)|(lawyer)|(lb)|(lc)|(li)|(link)|(live)|(lk)|(lr)|(ls)|(lt)|(ltd\.uk)|(lu)|(lv)|(ly)|(ma)|(market)|(mc)|(md)|(me)|(me\.uk)|(mg)|(mh)|(mk)|(ml)|(mm)|(mn)|(mo)|(mobi)|(mp)|(mq)|(mr)|(ms)|(mt)|(mu)|(mv)|(mw)|(mx)|(my)|(mz)|(na)|(name)|(nc)|(ne)|(net)|(net\.ag)|(net\.br)|(net\.bz)|(net\.cn)|(net\.co)|(net\.in)|(net\.nz)|(news)|(nf)|(ng)|(ni)|(nl)|(no)|(nom\.co)|(nom\.es)|(np)|(nr)|(nu)|(nz)|(om)|(online)|(org)|(org\.ag)|(org\.cn)|(org\.es)|(org\.in)|(org\.nz)|(org\.tw)|(org\.uk)|(pa)|(party)|(pe)|(pf)|(pg)|(ph)|(photo)|(pics)|(pk)|(pl)|(plc\.uk)|(pm)|(pn)|(pr)|(press)|(ps)|(pt)|(pub)|(pw)|(py)|(qa)|(re)|(ren)|(ro)|(rocks)|(ru)|(rw)|(sa)|(sb)|(sc)|(science)|(sd)|(se)|(sg)|(sh)|(si)|(site)|(sk)|(sl)|(sm)|(sn)|(so)|(social)|(software)|(space)|(sr)|(st)|(studio)|(sv)|(sy)|(sz)|(tc)|(td)|(tech)|(tf)|(tg)|(th)|(tj)|(tk)|(tl)|(tm)|(tn)|(to)|(top)|(tr)|(trade)|(travel)|(tt)|(tv)|(tw)|(tz)|(ua)|(ug)|(uk)|(us)|(uy)|(uz)|(va)|(vc)|(ve)|(vg)|(vi)|(video)|(vn)|(vu)|(wang)|(website)|(wf)|(wiki)|(win)|(ws)|(xin)|(xyz)|(ye)|(yt)|(yu)|(za)|(zm)|(zw))$/i.test(ip)) {
                    alert("不是正确的域名");
                    document.getElementById("ip").focus();
                    return false;
                }
            }
            else {
                ipArray = ip.split(".");
                j = ipArray.length
                if (j != 4) {
                    alert("不是正确的IP");
                    document.getElementById("ip").focus();
                    return false;
                }

                for (var i = 0; i < 4; i++) {
                    if (isNaN(ipArray[i]) || ipArray[i].length < 0 || ipArray[i] > 255) {
                        alert("不是正确的IP");
                        document.getElementById("ip").focus();
                        return false;
                    }
                }
            }
        }
    </script>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        您的IP地址</h4>
                   
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group"  style=" width:100%">
                <span class="input-group-addon"  style=" width:100px;text-align:right;">您的IP:</span>
                <input type="text" class="form-control" id="localip" value="" aria-describedby="basic-addon1">
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
                $("#localip").val(data.ip);
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
