<%@ Page Title="Json常用组件" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="JsonComponent.aspx.cs" Inherits="NewJson.Json.JsonComponent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="在线,Json常用组件">
    <meta name="description" content="在线,Json常用组件">  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<main class="row-fluid" style="padding:30px 80px;">
    <h4 style="margin:20px;">Json组件</h4>
    <div style="padding:30px;margin:10px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
        <div style="padding:10px;">
            <h4>Json2.js</h4>
            <div class="split"></div>
            <div class="brief">
                开发者：json官网:<a href="http://www.json.org" target="_blank">http://www.json.org/</a>。
            </div>
            <div class="brief">
                适用环境：用于在不支持JSON对象的浏览器（通常是国内使用IE内核的第三方浏览器）下使用。json2.js提供了json的序列化和反序列化方法，可以将一个json对象转换成json字符串，也可以将一个json字符串转换成一个json对象
            </div>
            <div class="brief">
                <h5>下载地址：</h5>
                <a href="http://newjson.com/download/json2.js" target="_blank">http://newjson.com/download/json2.js</a>。
            </div>
            <div class="brief">
                <h5>安装部署： </h5><pre><code><xmp><script type="text/javascript" src="json2.js"></script> </xmp></code></pre>
            </div>
            <div class="brief">
                <h5>序列化,即Json对象转String：</h5>
                
                <div style="border:dashed 1px #ddd;border-radius:5px;padding:10px;">
                var jsonObj = { id: '01', name: 'Tom' };<br>
                JSON.stringify(jsonObj);
                 
                </div>
                <h5>反序列化,即String转Json对象:</h5>
                
                <div style="border:dashed 1px #ddd;border-radius:5px;padding:10px;">

                var jsonString = "{ id: '01', name: 'Tom' }";<br>
                JSON.parse(jsonString);
                </div>
            </div>
        </div>
    </div>
    <div style="padding:30px;margin:10px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
        <div style="padding:10px;">
            <h4>jquery.json2xml.js</h4>
            <div class="split"></div>
            <div class="brief">
                开发者：Micha Korecki, <a href="http://www.michalkorecki.com" target="_blank">http://www.michalkorecki.com/</a>。
            </div>
            <div class="brief">
                适用环境：用于Json对象转换为XML字符串。可以将一个json对象转换成XML字符串。
            </div>
            <div class="brief">
                <h5>下载地址：</h5>
                <a href="http://newjson.com/download/jquery.json2xml.js" target="_blank">http://newjson.com/download/jquery.json2xml.js</a>。
            </div>
            <div class="brief">
                <h5>安装部署： </h5><pre><code><xmp><script type="text/javascript" src="jquery.json2xml.js"></script> </xmp></code></pre>
            </div>
            <div class="brief">
                <h5>Json转XML：</h5>
                
                <div style="border:dashed 1px #ddd;border-radius:5px;padding:10px;">
                var xml_content = $.json2xml(json_object);<br>
                //没错就这么简单
                 
                </div>
            </div>
        </div>
    </div>
    <div style="padding:30px;margin:10px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
        <div style="padding:10px;">
            <h4>jquery.xml2json.js</h4>
            <div class="split"></div>
            <div class="brief">
                开发者：Micha Korecki, <a href="http://www.michalkorecki.com" target="_blank">http://www.michalkorecki.com/</a>。
            </div>
            <div class="brief">
                适用环境：用于Json对象转换为XML字符串。可以将一个json对象转换成XML字符串。
            </div>
            <div class="brief">
                <h5>下载地址：</h5>
                <a href="http://newjson.com/download/jquery.xml2json.js" target="_blank">http://newjson.com/download/jquery.xml2json.js</a>。
            </div>
            <div class="brief">
                <h5>安装部署： </h5><pre><code><xmp><script type="text/javascript" src="jquery.xml2json.js"></script> </xmp></code></pre>
            </div>
            <div class="brief">
                <h5>XML转Json：</h5>
                
                <div style="border:dashed 1px #ddd;border-radius:5px;padding:10px;">
                var json_obj = $.xml2json(xml_content);<br>
                //没错还是这么简单
                 
                </div>
            </div>
        </div>
    </div>
    <div style="padding:30px;margin:10px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
        <div style="padding:10px;">
            <h4>JsonView</h4>
            <div class="split"></div>
            <div class="brief">
                开发者： Benjamin Hollis, <a href="http://jsonview.com/" target="_blank">http://jsonview.com/</a>。
            </div>
            <div class="brief">
                适用环境：用于在Firefox及Chrome浏览器页面中格式化查看Json字符串。
            </div>
            <div class="brief">
                <h5>下载地址：</h5>
                Firefox版：<a href="http://newjson.com/download/jsonview-0.9-fx.xpi" target="_blank">http://newjson.com/download/jsonview-0.9-fx.xpi</a><br>
                Chrome版（适用于不能翻墙用户）：<a href="http://json.cn/download/jsonview.crx" target="_blank">http://json.cn/download/jsonview.crx</a><br>
                Chrome版商店下载：<a href="https://chrome.google.com/webstore/detail/chklaanhfefbnpoihckbnefhakgolnmc" target="_blank">https://chrome.google.com/webstore/detail/chklaanhfefbnpoihckbnefhakgolnmc</a><br>
            </div>
        </div>
    </div>
    
    <br style="clear:both;">
</main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
