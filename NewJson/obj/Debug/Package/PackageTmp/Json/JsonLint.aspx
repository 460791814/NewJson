<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsonLint.aspx.cs" Inherits="NewJson.Json.JsonLint" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<title>JSON验证工具/JSON对比工具/Json格式化校验/Json在线解析 - newjson.com</title>
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

	<meta name="keywords" content="json,Json格式化校验 Json在线解析,JSON验证工具, JSON对比工具, JSON检查工具, JSON格式化工具, JSON压缩工具" />
	<meta name="description" content="json,Json格式化校验 Json在线解析,JSON验证工具, JSON对比工具, JSON检查工具, JSON格式化工具, JSON压缩工具" />

<style type="text/css">
         body { margin: 0px;  }  
     iframe {border: 0px;}  
	    *{
	border: 0px;
	margin: 0 auto;
}
a{
	color: #0084C8;
	text-decoration: none;
}
body{
	text-align: center;
	font-family: Courier;
	font-size: 13px;
	background-color: #F8F8F8;
}
#body-wrapper{
	width: 90%;
	border-top: 11px solid #ddd;
}
/* Top Navigator */
#navigator-wrapper{
	padding-top: 18px;
	padding-bottom: 18px;
	width: 100%;
}
	*{
		font-size: 13px;
	}
	#body-wrapper{
		width: 100%;
	}
	/* Content */
	#JSONLint{
		margin-top: 0px;
		width: 100%;
		height: 100%;
	}
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
<div id="body-wrapper">
<iframe id="iframePage" name="iframePage" frameborder="0" width="100%" scrolling="auto"   onload="iFrameHeight()"  height="100%" src="/json/jsonlint.html" ></iframe>   
</div>
<div style="display:none">
 <script src="http://s11.cnzz.com/stat.php?id=1257658599&web_id=1257658599" language="JavaScript"></script>
 </div>
</body>  
</html>
