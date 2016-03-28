<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsonEditorFull.aspx.cs" Inherits="NewJson.Json.JsonEditorFull" %>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title> JSON在线编辑器 - newjson.com </title>
<meta name="keywords" content="JSON在线编辑器, JSON在线格式化工具, JSON验证工具, JSON Editor Online" />
<meta name="description" content="JSON在线编辑器, JSON在线格式化工具, JSON验证工具, JSON Editor Online" />
<link rel="stylesheet" type="text/css" href="/css/json/core.css" />
<style type="text/css">
	*{
		font-size: 13px;
	}
	#body-wrapper{
		width: 100%;
	}
	/* Content Wrapper */
	#content-wrapper{
		width: 100%;
		height: 100%;
		padding: 0px;
		padding-top: 18px;
		padding-bottom: 88px;
		margin-bottom: -85px;
		text-align: left;
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
	}
	#copyright-wrapper{
		margin: 0 auto;
		margin-bottom: 0px;
	}
	</style>
<link rel="stylesheet" type="text/css" href="/css/json/app.css">
<link rel="stylesheet" type="text/css" href="/css/json/jsoneditor.css">
<script type="text/javascript" src="/js/json/JsonEditorFull/jsoneditor.js"></script>
<script type="text/javascript" src="/js/json/JsonEditorFull/notify.js"></script>
<script type="text/javascript" src="/js/json/JsonEditorFull/splitter.js"></script>
<script type="text/javascript" src="/js/json/JsonEditorFull/app.js"></script>
<script type="text/javascript" src="/js/json/JsonEditorFull/jsonlint.js"></script>
<link rel="stylesheet" type="text/css" href="/css/json/jquery.reject.css" />
<script type="text/javascript" src="/js/json/JsonEditorFull/jquery.js"></script>
<script type="text/javascript" src="/js/json/JsonEditorFull/jquery.reject.js"></script>
<script type="text/javascript" src="/js/json/JsonEditorFull/jquery.reject.360.js"></script>
</head>
<body>
<div id="body-wrapper">
<div id="content-wrapper">
<div id="jsonformatter"></div>
<div id="splitter"></div>
<div id="jsoneditor"></div>
<div class="clear"></div>
</div>
<div class="clear"></div>
<script type="text/javascript">
    try {
        app.load();
        app.resize();
    }
    catch (e) {
    }
</script>
</div>
 <div style=" display:none">
    <script src="http://s11.cnzz.com/stat.php?id=1257658599&web_id=1257658599" language="JavaScript"></script>
    </div>
</body>
</html>
