<%@ Page Title="在线二维码生成器"  Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="QRCode.aspx.cs" Inherits="NewJson.Tools.QRCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="二维码,二维码营销,二维码图片,二维码制作,二维码名片,QR code,二维码是什么,二维码生成,二维码论坛,二维条码,微信二维码">
<meta name="description" content="在线二维码生成器提供免费的在线二维码生成服务，可以把电子名片、文本、wifi网络、电子邮件、短信、电话号码、网址等信息生成对应的二维码图片。二维码手机扫描软件下载。">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default" >
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线二维码生成器</h4>
                </div>
            </div>
        </div>
        <div class="panel-body" >

          <iframe src="/tools/ewm.htm" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"  height="100%" id="iframepage" name="iframepage" onload="iFrameHeight()"  style="margin-left: 50px;"></iframe>
            <script type="text/javascript" language="javascript">

                function iFrameHeight() {

                    var ifm = document.getElementById("iframepage");

                    var subWeb = document.frames ? document.frames["iframepage"].document :ifm.contentDocument;

                    if (ifm != null && subWeb != null) {

                        ifm.height = subWeb.body.scrollHeight+30;
                        ifm.width = subWeb.body.scrollWidth;
                    }

                }

</script>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
