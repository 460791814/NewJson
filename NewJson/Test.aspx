<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="NewJson.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="/Js/jquery.min.js" type="text/javascript"></script>
    <link href="/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="/Js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
   <div class="navbar-header">
      <a class="navbar-brand" href="#">W3Cschool</a>
   </div>
   <div>
      <ul class="nav navbar-nav">
         <li class="active"><a href="#">iOS</a></li>
         <li><a href="#">SVN</a></li>
         <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
               Java 
              
            </a>
            <ul class="dropdown-menu">
               <li><a href="#">jmeter</a></li>
               <li><a href="#">EJB</a></li>
               <li><a href="#">Jasper Report</a></li>
               <li class="divider"></li>
               <li><a href="#">分离的链接</a></li>
               <li class="divider"></li>
               <li><a href="#">另一个分离的链接</a></li>
            </ul>
              <ul class="dropdown-menu">
                <li ><a href="/json/jsoncheck/">Json格式化校验</a></li>
                <li =><a href="/json/jsonhandle/">Json压缩转义</a></li>
                <li  ><a href="/json/jsonmodel/">Json生成实体类</a></li>
    	        <li ><a href="/json/jsoneditor/">Json在线编辑器</a></li>
	            <li ><a href="/json/xml2json/">Json XML互转</a></li>
    	        <li ><a href="/json/getpostjson/">Json和GET参数互转</a></li>
	            <li ><a href="/json/excel2json/">Excel转Json</a></li>
            </ul>
         </li>
      </ul>
   </div>
</nav>
    <%-- 
    <div>
 <a href="javascript:void(0);"  id="copy-button">复制</a>
        <script type="text/javascript" src="Js/zeroclipboard.js"></script>
        <script type="text/javascript">
            var clip = null;
            ZeroClipboard.setMoviePath("Js/ZeroClipboard.swf");

            $(function () {
                clip = new ZeroClipboard.Client();
                clip.setHandCursor(true);
                clip.setText($("#result_input").val());
                clip.glue("copy-button");
                clip.addEventListener("mouseOver", function () {
                    clip.setText($("#result_input").val());
                });
            })
            function copy() {
                clip.setText($("#result_input").val());
            }
	                    </script>
        <input type="text" name="name" id="result_input" name="result_input" value=" content" />
    </div>
    --%>
</body>
</html>
