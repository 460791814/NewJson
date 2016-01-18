<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="NewJson.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://user.zxxk.com/Js/jquery.js" type="text/javascript"></script>
    <script src="/Js/copy.js" type="text/javascript"></script>
</head>
<body>
 
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
                clip.addEventListener("complete", function () {
                    alert("生成的代码已经复制到粘贴板，你可以使用Ctrl+V 贴到需要的地方去了哦！");
                });
            })
            function copy() {
                clip.setText($("#result_input").val());
            }
	                    </script>
        <input type="text" name="name" id="result_input" name="result_input" value=" content" />
    </div>
   
</body>
</html>
