﻿<%@ Page Title="常用浏览器(PC,移动) user-agent" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="UserAgent.aspx.cs" Inherits="NewJson.WebTools.UserAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="PC浏览器user-agent,手机浏览器user-agent">
<meta name="description" content="整理时下流行的浏览器User-Agent大全">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        常用浏览器(PC,移动) user-agent</h2>
                
                </div>
            </div>
        </div>
        <div class="panel-body">
            <ul class="list-group">
                <li class="list-group-item list-group-item-success" style="width: 100%" id="pcd">PC端</li>
            </ul>
            <ul class="list-group">
                <li class="list-group-item list-group-item-success" style="width: 100%" id="mbd">移动设备端</li>
            </ul>
        </div>
        <div class="panel-footer">
        </div>
        <script>
            function parseHtml(id, arr) {
                var html = "";
                for (var i = 0; i < arr.length; i++) {
                    var ar = arr[i];
                    html += '<li class="list-group-item">';
                    html += '<div class="input-group" style="width: 100%"><span class="input-group-addon" style="width:188px" id="basic-addon1">' + ar[0] + '</span><input type="text" class="form-control" onmouseover="javascript:this.select();" value="' + ar[1] + '"></div>'
                    html += '</li>';
                }
                $("#" + id).after(html);
            }
            var pcj = [["safari 5.1 – MAC", "User-Agent,Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_8; en-us) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50"], ["safari 5.1 – Windows", "User-Agent,Mozilla/5.0 (Windows; U; Windows NT 6.1; en-us) AppleWebKit/534.50 (KHTML, like Gecko) Version/5.1 Safari/534.50"], ["IE 9.0", "User-Agent,Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0;"], ["IE 8.0", "User-Agent,Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"], ["IE 7.0", "User-Agent,Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)"], ["IE 6.0", "User-Agent, Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)"], ["Firefox 4.0.1 – MAC", "User-Agent, Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv,2.0.1) Gecko/20100101 Firefox/4.0.1"], ["Firefox 4.0.1 – Windows", "User-Agent,Mozilla/5.0 (Windows NT 6.1; rv,2.0.1) Gecko/20100101 Firefox/4.0.1"], ["Opera 11.11 – MAC", "User-Agent,Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; en) Presto/2.8.131 Version/11.11"], ["Opera 11.11 – Windows", "User-Agent,Opera/9.80 (Windows NT 6.1; U; en) Presto/2.8.131 Version/11.11"], ["Chrome 17.0 – MAC", "User-Agent, Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_0) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11"], ["傲游（Maxthon）", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Maxthon 2.0)"], ["腾讯TT", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; TencentTraveler 4.0)"], ["世界之窗（The World） 2.x", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)"], ["世界之窗（The World） 3.x", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; The World)"], ["搜狗浏览器 1.x", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; SE 2.X MetaSr 1.0; SE 2.X MetaSr 1.0; .NET CLR 2.0.50727; SE 2.X MetaSr 1.0)"], ["360浏览器", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; 360SE)"], ["Avant", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Avant Browser)"], ["Green Browser", "User-Agent, Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)"]];
            parseHtml("pcd", pcj);
            var mbj = [["safari iOS 4.33 – iPhone", "User-Agent,Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5"], ["safari iOS 4.33 – iPod Touch", "User-Agent,Mozilla/5.0 (iPod; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5"], ["safari iOS 4.33 – iPad", "User-Agent,Mozilla/5.0 (iPad; U; CPU OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5"], ["Android N1", "User-Agent, Mozilla/5.0 (Linux; U; Android 2.3.7; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"], ["Android QQ浏览器 For android", "User-Agent, MQQBrowser/26 Mozilla/5.0 (Linux; U; Android 2.3.7; zh-cn; MB200 Build/GRJ22; CyanogenMod-7) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"], ["Android Opera Mobile", "User-Agent, Opera/9.80 (Android 2.3.4; Linux; Opera Mobi/build-1107180945; U; en-GB) Presto/2.8.149 Version/11.10"], ["Android Pad Moto Xoom", "User-Agent, Mozilla/5.0 (Linux; U; Android 3.0; en-us; Xoom Build/HRI39) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13"], ["BlackBerry", "User-Agent, Mozilla/5.0 (BlackBerry; U; BlackBerry 9800; en) AppleWebKit/534.1+ (KHTML, like Gecko) Version/6.0.0.337 Mobile Safari/534.1+"], ["WebOS HP Touchpad", "User-Agent, Mozilla/5.0 (hp-tablet; Linux; hpwOS/3.0.0; U; en-US) AppleWebKit/534.6 (KHTML, like Gecko) wOSBrowser/233.70 Safari/534.6 TouchPad/1.0"], ["Nokia N97", "User-Agent, Mozilla/5.0 (SymbianOS/9.4; Series60/5.0 NokiaN97-1/20.0.019; Profile/MIDP-2.1 Configuration/CLDC-1.1) AppleWebKit/525 (KHTML, like Gecko) BrowserNG/7.1.18124"], ["Windows Phone Mango", "User-Agent, Mozilla/5.0 (compatible; MSIE 9.0; Windows Phone OS 7.5; Trident/5.0; IEMobile/9.0; HTC; Titan)"], ["UC无", "User-Agent, UCWEB7.0.2.37/28/999"], ["UC标准", "User-Agent, NOKIA5700/ UCWEB7.0.2.37/28/999"], ["UCOpenwave", "User-Agent, Openwave/ UCWEB7.0.2.37/28/999"], ["UC Opera", "User-Agent, Mozilla/4.0 (compatible; MSIE 6.0; ) Opera/UCWEB7.0.2.37/28/999"]];
            parseHtml("mbd", mbj);
        </script>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
