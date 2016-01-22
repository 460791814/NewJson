<%@ Page Title="在线进制转换" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true"
    CodeBehind="HexConvert.aspx.cs" Inherits="NewJson.Change.HexConvert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="在线,在线进制转换,进制转换,进制,转换">
    <meta name="description" content="在线,在线进制转换,进制转换，进制,转换,支持在2~36进制之间进行任意转换，支持浮点型">
 
    <style>
.tool_content{}
.tool_content h1 {margin:10px 0 30px 0; font-size:12pt;}
.tool_content ul li{width:80px;height:30px;display:inline-block;}
.hex_num{width:24px;}
.num_value{width:550px;}
.content_area{margin:20px 0 20px 0;}
 select
 {
     border: 1px solid #bbb;
     height: 28px;

}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<%--    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        进制转换</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="col-lg-6" style="width: 46%">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" id="srcJZ" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            十进制<span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:;" onclick="jz(2,this)">二进制</a></li>
                            <li><a href="javascript:;" onclick="jz(4,this)">四进制</a></li>
                            <li><a href="javascript:;" onclick="jz(8,this)">八进制</a></li>
                            <li><a href="javascript:;" onclick="jz(10,this)">十进制</a></li>
                            <li><a href="javascript:;" onclick="jz(16,this)">十六进制</a></li>
                            <li><a href="javascript:;" onclick="jz(32,this)">三十二进制</a></li>
                        </ul>
                    </div>
                    <input type="text" class="form-control" id="input_value" placeholder="在此输入待转换数字">
                </div>
            </div>
            <div class="col-lg-6" style="width: 60px">
                <div class="input-group">
                    <button type="button" class="btn btn-primary" onclick="px()" id="change">
                        转换</button>
                </div>
            </div>
            <div class="col-lg-6" style="width: 46%; float: right">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" id="targetJZ" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            十进制<span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:;" onclick="jzt(2,this)">二进制</a></li>
                            <li><a href="javascript:;" onclick="jzt(4,this)">四进制</a></li>
                            <li><a href="javascript:;" onclick="jzt(8,this)">八进制</a></li>
                            <li><a href="javascript:;" onclick="jzt(10,this)">十进制</a></li>
                            <li><a href="javascript:;" onclick="jzt(16,this)">十六进制</a></li>
                            <li><a href="javascript:;" onclick="jzt(32,this)">三十二进制</a></li>
                        </ul>
                    </div>
                    <input type="text" class="form-control" id="output_value" placeholder="转换结果">
                </div>
            </div>
            <input type="hidden" value="10" id="input_num" />
            <input type="hidden" value="10" id="output_num" />
        </div>
    </div>
    <script>
        ss = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_@"; function v10toX(n, m) { m = String(m).replace(/ /gi, ""); if (m == "") return ""; if (parseInt(m) != m) { M("请输入整数！"); return "" } var t = ""; var a = ss.substr(0, n); while (m != 0) { var b = m % n; t = a.charAt(b) + t; m = (m - b) / n } return t } function vXto10(n, m) { m = String(m).replace(/ /gi, ""); if (m == "") return ""; var a = ss.substr(0, n); if (eval("m.replace(/[" + a + "]/gi,'')") != "") { M("请输入" + n + "进制数！"); return "" } var t = 0, c = 1; for (var x = m.length - 1; x > -1; x--) { t += c * (a.indexOf(m.charAt(x))); c *= n } return t } function vXtoY(n, m, y) { a = vXto10(n * 1, m); if (a == "") return ""; a = v10toX(y, a); return a } function M(str) { alert(str) } function convert(hex_input, id_input, hex_output, id_output) { var input_v = document.getElementById(id_input).value; var outputEle = document.getElementById(id_output); var hex_in_v = document.getElementById(hex_input).value; var hex_out_v = document.getElementById(hex_output).value; outputEle.value = vXtoY(hex_in_v, input_v, hex_out_v) } function convert_c(hex_input_v, id_input, hex_output_v, id_output) { var input_v = document.getElementById(id_input).value; var outputEle = document.getElementById(id_output); outputEle.value = vXtoY(hex_input_v, input_v, hex_output_v) }
        function jz(jzi, obj) {
            $("#srcJZ").text($(obj).text());
            $("#input_num").val(jzi);
        }

        function jzt(jzi, obj) {
            $("#targetJZ").text($(obj).text());
            var input_value = $("#input_value").val();
            $("#output_num").val(jzi);
            if (input_value != "") {
                convert_c($("#input_num").val(), 'input_value', $("#output_num").val(), 'output_value');
            }

        }

        function px() {
            convert_c($("#input_num").val(), 'input_value', $("#output_num").val(), 'output_value');
        }

        function Empty() {
            document.getElementById('str').value = '';
            document.getElementById('estr').value = '';
            document.getElementById('str').select();
        }

        function GetFocus() {
            document.getElementById('str').focus();
        }
    </script>
--%>

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading" style="float: left;">
                        进制转换</h4>
                        <div>&nbsp&nbsp&nbsp 支持在2~36进制之间进行任意转换，支持浮点型</div>
                </div>
            </div>
        </div>
        <div class="panel-body">
        <div id="mainContent" class="tool_content wrapper" style=" margin-left:50px">
<table>
		<tbody><tr><td>
			<div class="content_area" id="input_area">
			<ul>
                <li><label class="radio"><input type="radio" name="input_" value="2">2进制</label></li>
				<li><label class="radio"><input type="radio" name="input_" value="4">4进制</label></li>
				<li><label class="radio"><input type="radio" name="input_" value="8">8进制</label></li>
				<li><label class="radio"><input type="radio" name="input_" value="10" checked="checked">10进制</label></li>
				<li><label class="radio"><input type="radio" name="input_" value="16">16进制</label></li>
				<li><label class="radio"><input type="radio" name="input_" value="32">32进制</label></li>
				<li>
                
                <select id="input_num" class="input-small">
                    <option value="2">2进制</option>
                    <option value="3">3进制</option>
                    <option value="4">4进制</option>
                    <option value="5">5进制</option>
                    <option value="6">6进制</option>
                    <option value="7">7进制</option>
                    <option value="8">8进制</option>
                    <option value="9">9进制</option>
                    <option value="10" selected="">10进制</option>
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
                    </select>
                    </li>
			</ul>
			<div class="input-group" style="margin-top: 20px;">
			<span class="input-group-addon">转换数字</span><input id="input_value" type="text"  class="form-control" style="width:420px" value="" onpropertychange="px()" onchange="px()" oninput="px()" placeholder="在此输入待转换数字">
			</div>
			</div>
			</td>
		</tr>
		<tr><td>
			<div class="content_area" id="output_area">
			<ul>
                <li><label class="radio"><input type="radio" name="output_" value="2">2进制</label></li>
				<li><label class="radio"><input type="radio" name="output_" value="4">4进制</label></li>
				<li><label class="radio"><input type="radio" name="output_" value="8">8进制</label></li>
				<li><label class="radio"><input type="radio" name="output_" value="10" >10进制</label></li>
				<li><label class="radio"><input type="radio" name="output_" value="16" checked="checked">16进制</label></li>
				<li><label class="radio"><input type="radio" name="output_" value="32">32进制</label></li>
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
                        <option value="16" selected="">16进制</option>
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
			<div class="input-group" style="margin-top: 20px;">
			<span class="input-group-addon">转换结果</span><input type="text" id="output_value"  class="form-control" style="width:420px" placeholder="转换结果">
			</div>
			</div>
			</td>
		</tr>
	</tbody></table></div>
        </div>
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
</asp:Content>
