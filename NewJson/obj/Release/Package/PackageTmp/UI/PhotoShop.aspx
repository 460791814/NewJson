<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoShop.aspx.cs" Inherits="NewJson.UI.PhotoShop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ps在线版_Photoshop在线精简版 - newjson.com</title>
    <meta name="Keywords" content="ps, ps在线，photoshop在线">
    <meta name="Description" content="ps, ps在线图片编辑器是一个专业的在线ps照片处理软件。绿色免安装，直接在您的浏览器上用它修正，调整和美化您的图像。">
<style>
     body { margin: 0px;  }  
     iframe {border: 0px;}  
</style>
<script type="text/javascript">
    function iFrameHeight() {

        var ifm = document.getElementById("iframePage");

        ifm.height = window.screen.height;
        $("#iframePage").attr("height", window.screen.height);

        var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;

        if (ifm != null && subWeb != null) {

            ifm.height = subWeb.body.scrollHeight;
            ifm.width = subWeb.body.scrollWidth;
        }

    }

          
</script>  
</head>

<body scroll="no" > 
<iframe id="iframePage" name="iframePage" frameborder="0" width="100%" scrolling="auto"   onload="iFrameHeight()"  height="100%" src="http://www.uupoop.com/ps/Editor.swf" </iframe>   
 <script src="http://s11.cnzz.com/stat.php?id=1257658599&web_id=1257658599" language="JavaScript"></script>
</body>  
</html>
