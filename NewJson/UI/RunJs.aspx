<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RunJs.aspx.cs" Inherits="NewJson.UI.RunJs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
<title>RunJS在线编辑器</title>  
<meta name="keywords" content="RunJS runjs JavaScript CSS HTML 在线运行 展示 效果">
<meta name="description" content="RunJS,在线编写、展示html、js、css代码，拥有实时预览、分享、Fork、代码高亮、自动完成等多项特性，提供文件上传、多种登录方式。">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
 <script src="/Js/jquery.js" type="text/javascript"></script>
  

<style>
body { margin: 0px;  }  
iframe {border: 0px;}  
</style>

</head>  
<script type="text/javascript">
    function iFrameHeight() {

        var ifm = document.getElementById("iframePage");

        ifm.height = window.screen.height;
        $("#iframePage").attr("height", window.screen.height);
  
        var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;

        if (ifm != null && subWeb != null) {

            ifm.height = subWeb.body.scrollHeight + 30;
            ifm.width = subWeb.body.scrollWidth;
        }

    }
//        function resize(){
//            document.getElementById('iframePage').style.height = document.body.clientHeight - 84 + "px";
//            document.getElementById('iframePage').style.height = window.screen.height;
//            alert(window.screen.height);
//            $("#iframePage").height = window.screen.height;
//          
//        }  
//        window.onresize = resize;  
          
</script>  
<body scroll="no"> 

<iframe id="iframePage" name="iframePage" frameborder="0" width="100%" scrolling="auto"   onload="iFrameHeight()" 
    height="100%" src="http://runjs.cn/code" </iframe>   
</body>  
</html>
