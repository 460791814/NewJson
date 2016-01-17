<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NewJson.Convert.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN"> 
<head> 
<title>在线进制转换</title> 
<meta http-equiv="Content-Type" content="text/html; charset=GBK" /> 
<meta http-equiv="Content-Language" content="zh-CN" /> 
<meta name="keywords" content="开源中国 在线工具,ostools,jsbin,加密/解密，Markdown,less,java api,php api,node.js api,QR Code"/>
<meta name="description" content="开源中国在线工具,ostools为开发设计人员提供在线工具，提供jsbin在线 CSS、JS 调试，在线 Java API文档,在线 PHP API文档,在线 Node.js API文档,Less CSS编译器，MarkDown编译器等其他在线工具" />
<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon" /> 
<link rel="stylesheet" href="/css/basic.css" type="text/css"/> 
<script type="text/javascript" src='/js/jquery-1.7.2.js'></script>
<script type="text/javascript" src='/js/jquery.cookies.2.2.0.min.js'></script>
<link rel="stylesheet" href='/css/bootstrap.min.css'/>
<script src='/js/bootstrap.min.js'></script>

</head>
<body>


	<style>
.tool_content{width:1024px;margin-left:auto;margin-right:auto;margin-top:15px;margin-bottom:25px;}
.tool_content h1 {margin:10px 0 30px 0; font-size:12pt;}
.tool_content ul li{width:80px;height:30px;display:inline-block;}
.hex_num{width:24px;}
.num_value{width:550px;}
.content_area{margin:20px 0 20px 0;}
</style>
<div id="mainContent" class="tool_content wrapper">
	<div class="toolName">在线进制转换</div>
	<div style="margin:10px 0 10px 0;">支持在2~36进制之间进行任意转换，支持浮点型<a data-toggle="modal" href="#advice" style="float:right;text-decoration:none;"><span class="badge badge-important"><i class="icon-envelope icon-white"></i> Feedback</span></a></div>
	<table>
		<tr><td>
			<div class="content_area" id="input_area">
			<ul>
                <li><label class="radio"><input type="radio" name='input_' value="2"/>2进制</label></li>
				<li><label class="radio"><input type="radio" name='input_' value="4"/>4进制</label></li>
				<li><label class="radio"><input type="radio" name='input_' value="8"/>8进制</label></li>
				<li><label class="radio"><input type="radio" name='input_' value="10" checked="checked"/>10进制</label></li>
				<li><label class="radio"><input type="radio" name='input_' value="16"/>16进制</label></li>
				<li><label class="radio"><input type="radio" name='input_' value="32"/>32进制</label></li>
				<li><select id="input_num" class="input-small">
                    <option value="2">2进制</option>
                    <option value="3">3进制</option>
                    <option value="4">4进制</option>
                    <option value="5">5进制</option>
                    <option value="6">6进制</option>
                    <option value="7">7进制</option>
                    <option value="8">8进制</option>
                    <option value="9">9进制</option>
                    <option value="10" selected>10进制</option>
                    <option value="11">11进制</option>
                    <option value="12">12进制</option>
                    <option value="13">13进制</option>
                    <option value="14">14进制</option>
                    <option value="15">15进制</option>
                    <option value="16">16进制</option>
                    <option value="17">17进制</option>
                    <option value="18">18进制</option>
                    <option value="19">19进制</option>
                    <option value="20">20进制</option>
                    <option value="21">21进制</option>
                    <option value="22">22进制</option>
                    <option value="23">23进制</option>
                    <option value="24">24进制</option>
                    <option value="25">25进制</option>
                    <option value="26">26进制</option>
                    <option value="27">27进制</option>
                    <option value="28">28进制</option>
                    <option value="29">29进制</option>
                    <option value="30">30进制</option>
                    <option value="31">31进制</option>
                    <option value="32">32进制</option>
                    <option value="33">33进制</option>
                    <option value="34">34进制</option>
                    <option value="35">35进制</option>
                    <option value="36">36进制</option>
                    </select></li>
			</ul>
			<div class="input-prepend">
             
			<span class="input-group-addon">转换数字</span><input id="input_value" type="text" value="" onpropertychange="px()" onchange="px()" oninput="px()" class="toolInput num_value" placeholder="在此输入待转换数字"/>
			</div>
			</div>
			</td>
		</tr>
		<tr><td>
			<div class="content_area" id="output_area">
			<ul>
                <li><label class="radio"><input type="radio" name='output_' value="2"/>2进制</label></li>
				<li><label class="radio"><input type="radio" name='output_' value="4"/>4进制</label></li>
				<li><label class="radio"><input type="radio" name='output_' value="8"/>8进制</label></li>
				<li><label class="radio"><input type="radio" name='output_' value="10"/>10进制</label></li>
				<li><label class="radio"><input type="radio" name='output_' value="16" checked="checked"/>16进制</label></li>
				<li><label class="radio"><input type="radio" name='output_' value="32"/>32进制</label></li>
				<li><select id="output_num" onchange="px(1);" class="input-small">
                        <option value="2">2进制</option>
                        <option value="3">3进制</option>
                        <option value="4">4进制</option>
                        <option value="5">5进制</option>
                        <option value="6">6进制</option>
                        <option value="7">7进制</option>
                        <option value="8">8进制</option>
                        <option value="9">9进制</option>
                        <option value="10">10进制</option>
                        <option value="11">11进制</option>
                        <option value="12">12进制</option>
                        <option value="13">13进制</option>
                        <option value="14">14进制</option>
                        <option value="15">15进制</option>
                        <option value="16" selected>16进制</option>
                        <option value="17">17进制</option>
                        <option value="18">18进制</option>
                        <option value="19">19进制</option>
                        <option value="20">20进制</option>
                        <option value="21">21进制</option>
                        <option value="22">22进制</option>
                        <option value="23">23进制</option>
                        <option value="24">24进制</option>
                        <option value="25">25进制</option>
                        <option value="26">26进制</option>
                        <option value="27">27进制</option>
                        <option value="28">28进制</option>
                        <option value="29">29进制</option>
                        <option value="30">30进制</option>
                        <option value="31">31进制</option>
                        <option value="32">32进制</option>
                        <option value="33">33进制</option>
                        <option value="34">34进制</option>
                        <option value="35">35进制</option>
                        <option value="36">36进制</option>
                        </select></li>
			</ul>
			<div class="input-prepend">
			<span class="add-on">转换结果</span><input type="text" id="output_value" class="toolInput num_value" placeholder="转换结果"></input>
			</div>
			</div>
			</td>
		</tr>
	</table>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('[name="input_"]').click(function () {
            $('#input_num').val($(this).val());
            $('#input_value').val("");
            $('#output_value').val("");
        });
        $('[name="output_"]').click(function () {
            $('#output_num').val($(this).val());
            px(1);
        });
        $("#input_num").change(function () {
            $("#input_area input").removeAttr("checked");
            var val = $(this).val();
            $("#input_area input[value=" + val + "]").attr("checked", "checked");
            $('#input_value').val("");
            $('#output_value').val("");
        });
        $("#output_num").change(function () {
            $("#output_area input").removeAttr("checked");
            var val = $(this).val();
            $("#output_area input[value=" + val + "]").attr("checked", "checked");
            px(1);
        });
    });
    function pxparseFloat(x, y) {
        x = x.toString();
        var num = x;
        var data = num.split(".");
        var you = data[1].split(""); //将右边转换为数组 得到类似 [1,0,1]
        var sum = 0;  //小数部分的和
        for (var i = 0; i < data[1].length; i++) {
            sum += you[i] * Math.pow(y, -1 * (i + 1))
        }
        return parseInt(data[0], y) + sum;
    }
    function zhengze(x) {
        var str;
        x = parseInt(x);
        if (x <= 10) {
            str = new RegExp("^[+\\-]?[0-" + (x - 1) + "]*[.]?[0-" + (x - 1) + "]*$", "gi");
        } else {
            var letter = "";
            switch (x) {
                case 11: letter = "a"; break;
                case 12: letter = "b"; break;
                case 13: letter = "c"; break;
                case 14: letter = "d"; break;
                case 15: letter = "e"; break;
                case 16: letter = "f"; break;
                case 17: letter = "g"; break;
                case 18: letter = "h"; break;
                case 19: letter = "i"; break;
                case 20: letter = "j"; break;
                case 21: letter = "k"; break;
                case 22: letter = "l"; break;
                case 23: letter = "m"; break;
                case 24: letter = "n"; break;
                case 25: letter = "o"; break;
                case 26: letter = "p"; break;
                case 27: letter = "q"; break;
                case 28: letter = "r"; break;
                case 29: letter = "s"; break;
                case 30: letter = "t"; break;
                case 31: letter = "u"; break;
                case 32: letter = "v"; break;
                case 33: letter = "w"; break;
                case 34: letter = "x"; break;
                case 35: letter = "y"; break;
                case 36: letter = "z"; break;
            }
            str = new RegExp("^[+\\-]?[0-9a-" + letter + "]*[.]?[0-9a-" + letter + "]*$", "gi");
        }
        return str;
    }
    var n = 50;
    var shurukuang = "";
    var flag = "";
    function px(y) {
        if ($("#input_value").val() != flag || y) {
            flag = $("#input_value").val();
            if ($("#input_num").selectedIndex < n) {
                $("#input_value").val("");
                $("#output_value").val("");
            } else {
                var px00 = $("#input_value").val();
                var px0 = px00.match(zhengze($("#input_num").val()));
                if (px0) {
                    if (px0[0].indexOf(".") == -1) {
                        var px1 = parseInt(px0, $('#input_num').val());
                    } else {
                        var px1 = pxparseFloat(px0, $('#input_num').val());
                    }
                    px1 = px1.toString($('#output_num').val());
                    $("#output_value").val(px1);
                    shurukuang = px00;
                } else {
                    $("#input_value").val(shurukuang);
                }
            }
            n = $("#input_num").selectedIndex;
        }
        if ($("#input_value").val() == "") {
            $("#output_value").val("");
        }
    }
</script>
	<!--     尾部footer开始    -->
<div id="footer">
	<p class="wrapper">
		在线工具 由 <a href="http://www.oschina.net/" target="_blank">开源中国</a> 所有 | <a href="http://weibo.com/oschina2010" target="_blank">@新浪微博</a> |<a href="http://www.aliyun.com/" target="_blank">阿里云</a>提供服务器和带宽 |<a data-toggle="modal" href="#advice">意见反馈</a> | <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备12009483号-5</a> | <script src="/js/stat.php" language="JavaScript"></script>
	</p>
</div>
<!--     尾部footer结束    -->	<div class="modal hide fade" id="advice" style="display:none;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>在线进制转换</h3>
      </div>
      <div class="modal-body">
		<p>在此填写您的意见信息：</p>
		<form class='well' id='advice_form'>
			<input id="tool_name_f" type='hidden' name='tool_name' value='在线进制转换'/>
			<div class="input-prepend">
			<span class="add-on">Email邮箱:</span><input class="input-xlarge" type="text" id="advice_email" name="email" placeholder="在此输入您的Email" onblur="javascript:verifyEmail();" title="Email邮箱"/><span style="color:#A00" id="email_error"> (必填) </span>
			</div>
			
            <label class="textarea">您的建议和意见：<br><textarea name="content" id="advice_content" style="width:480px;height:150px" placeholder="在此填写对  在线进制转换 的意见和建议"></textarea></label>
			<label class="input">验证码：
			<img style="margin-bottom:9px;" src="/picture/5df1acc0a5b9426a9dd34628a33637e8.gif" id="captcha_code" height="30px" width="80px" onclick="this.src = '/picture/5df1acc0a5b9426a9dd34628a33637e8.gif?'+new Date().getTime();"/>
			<input type="text" id="captcha_input" onkeyup="document.getElementById('verifyCode').value=this.value;" style="height:20px;width:30px;"/>
			<input id="verifyCode" name="verifyCode" type="hidden"/></label>
		</form>
      </div>
      <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">取消</a>
        <a href="#" class="btn btn-primary" id="advice_submit" disabled='disabled'>提交建议</a>
      </div>
    </div>
<script>
    function verifyEmail() {
        if (null == $("#advice_email").val().match(/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/)) {
            $("#email_error").html(" email输入错误 ");
            $("#advice_email").focus();
        }
        else {
            $("#email_error").html("<i class='icon-ok'></i>");
            $("#advice_submit").removeAttr("disabled");
        }
    }
    $(document).ready(function () {
        $("#advice_submit").click(function () {
            $.post("/action/advice/add_advice",
		{ tool_name: $("#tool_name_f").val(), email: $("#advice_email").val(), content: $("#advice_content").val(), verifyCode: $("#verifyCode").val() },
		function (result) {
		    var m = eval('(' + result + ')');
		    if ("ok" == m.msg) {
		        alert("谢谢您的建议，我们会参考您的建议使ostools变得更好！");
		        $('#advice').modal('hide');
		        $("#captcha_code").attr("src", '/picture/5df1acc0a5b9426a9dd34628a33637e8.gif?' + new Date().getTime());
		    }
		    else {
		        alert(m.msg);
		    }
		});
        });
    });
</script>
	<a class="bshareDiv" href="http://www.bshare.cn/share">分享按钮</a><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#uuid=&amp;style=3&amp;fs=4&amp;textcolor=#fff&amp;bgcolor=#06C&amp;text=分享到&amp;pophcol=1"></script>
</body>
</html>
