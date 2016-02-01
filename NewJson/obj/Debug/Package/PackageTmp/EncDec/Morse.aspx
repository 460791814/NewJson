<%@ Page Title="在线摩斯密码加密 摩斯密码解密" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Morse.aspx.cs" Inherits="NewJson.EncDec.Morse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="Keywords" content="在线工具,Morse,莫尔斯电码,摩斯电码解密,莫斯电码加密,中文莫斯电码,中文Morse编码,加密解密工具">
<meta name="Description" content="在线工具,本工具可以将不同的英文字母、数字和标点符号字符以及中文汉字加密转换成莫尔斯电码，将摩斯密码解密转换成可识别字符">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线摩斯密码加密 摩斯密码解密</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div>
                <p style="text-align: center;">
                </p>
                <div style="clear: both;">
                </div>
            </div>
            <div>
                <textarea id="morse_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入要加密的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="encode_morse_zh();">
                            生成摩斯密码</button>
                        <button type="button" class="btn btn-primary" onclick="decode_morse_zh();">
                            解密摩斯密码</button>
                        <button type="button" class="btn btn-danger" onclick="empty()">
                            清空结果</button>
                    </div>
                    
                    <div>
                    </div>
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32"  placeholder="这里显示加密或解密后的字符串"></textarea>
            </div>
            <input type="hidden" id="encode" value="1" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    </div>
   

        <div style="padding:30px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
        		<div class='divider'></div>
	     
	        <ul class="new_tools_list">
	        	<li>摩尔斯电码（Morse alphabet）（又译为摩斯电码）是一种时通时断的信号代码，这种信号代码通过不同的排列顺序来表达不同的英文字母、数字和标点符号等。</li>
				<li>由美国人摩尔斯（Samuel Finley Breese Morse）于1837年发明，为摩尔斯电报机的发明（1835年）提供了条件。</li>
				<li>摩尔密码加密的字符只有字符，数字，标点，不区分大小写，<span class="green">支持中文汉字</span></li>
				<li>中文摩斯加密解密：本工具摩尔密码加密是互联网上唯一一个可以对中文进行摩斯编码的工具。</li>
			</ul>
			<div class='divider'></div>
	        <h4 class='explainer'>莫尔斯电码加密列表 | Morse Code List</h4>
	        <h5>一、26个字母的莫尔斯电码加密</h5>
	        <table class="table table-striped table-bordered">
				<tbody>
					<tr>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
					</tr>
					<tr>
						<th>A</th>
						<td>．━</td>
						<th>B</th>
						<td>━ ．．．</td>
						<th>C</th>
						<td>━ ．━ ．</td>
						<th>D</th>
						<td>━ ．．</td>
					</tr>
					<tr>
						<th>E</th>
						<td>．</td>
						<th>F</th>
						<td>．．━ ．</td>
						<th>G</th>
						<td>━ ━ ．</td>
						<th>H</th>
						<td>．．．．</td>
					</tr>
					<tr>
						<th>I</th>
						<td>．．</td>
						<th>J</th>
						<td>．━ ━ ━</td>
						<th>K</th>
						<td>━ ．━</td>
						<th>L</th>
						<td>．━ ．．</td>
					</tr>
					<tr>
						<th>M</th>
						<td>━ ━</td>
						<th>N</th>
						<td>━ ．</td>
						<th>O</th>
						<td>━ ━ ━</td>
						<th>P</th>
						<td>．━ ━ ．</td>
					</tr>
					<tr>
						<th>Q</th>
						<td>━ ━ ．━</td>
						<th>R</th>
						<td>．━ ．</td>
						<th>S</th>
						<td>．．．</td>
						<th>T</th>
						<td>━</td>
					</tr>
					<tr>
						<th>U</th>
						<td>．．━</td>
						<th>V</th>
						<td>．．．━</td>
						<th>W</th>
						<td>．━ ━</td>
						<th>X</th>
						<td>━ ．．━</td>
					</tr>
					<tr>
						<th>Y</th>
						<td>━ ．━ ━</td>
						<th>Z</th>
						<td>━ ━ ．．</td>
						<th>　</th>
						<td>　</td>
						<th>　</th>
						<td>　</td>
					</tr>
				</tbody>
			</table>
	        <h5>二、数字的莫尔斯电码加密</h5>
	        <table class="table table-striped table-bordered">
				<tbody>
					<tr>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
					</tr>
					<tr>
						<th>0</th>
						<td>━ ━ ━ ━ ━</td>
						<th>1</th>
						<td>．━ ━ ━ ━</td>
						<th>2</th>
						<td>．．━ ━ ━</td>
						<th>3</th>
						<td>．．．━ ━</td></tr>
					<tr>
						<th>4</th>
						<td>．．．．━</td>
						<th>5</th>
						<td>．．．．．</td>
						<th>6</th>
						<td>━ ．．．．</td>
						<th>7</th>
						<td>━ ━ ．．．</td></tr>
					<tr>
						<th>8</th>
						<td>━ ━ ━ ．．</td>
						<th>9</th>
						<td>━ ━ ━ ━ ．</td>
						<th>　</th>
						<td>　</td>
						<th>　</th>
						<td>　</td>
					</tr>
				</tbody>
			</table>
	        <h5>三、标点符号的莫尔斯电码加密</h5>
	        <table class="table table-striped table-bordered">
				<tbody>
					<tr>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td>
						<th width="8%"><strong>字符</strong></th>
						<td width="17%"><strong>电码符号</strong></td></tr>
					<tr>
						<th title="句号">.</th>
						<td title="句号">．━ ．━ ．━</td>
						<th title="冒号">:</th>
						<td title="冒号">━ ━ ━ ．．．</td>
						<th title="逗号">,</th>
						<td title="逗号">━ ━ ．．━ ━</td>
						<th title="分号">;</th>
						<td title="分号">━ ．━ ．━ ．</td></tr>
					<tr>
						<th title="问号">?</th>
						<td title="问号">．．━ ━ ．．</td>
						<th title="等号">=</th>
						<td title="等号">━ ．．．━</td>
						<th title="省略符">'</th>
						<td title="省略符">．━ ━ ━ ━ ．</td>
						<th title="斜线">/</th>
						<td title="斜线">━ ．．━ ．</td></tr>
					<tr>
						<th title="叹号">!</th>
						<td title="叹号">━ ．━ ．━ ━</td>
						<th title="连字号">━ </th>
						<td title="连字号">━ ．．．．━</td>
						<th title="下划线">_</th>
						<td title="下划线">．．━ ━ ．━</td>
						<th title="双引号">"</th>
						<td title="双引号">．━ ．．━ ．</td></tr>
					<tr>
						<th title="前括号">(</th>
						<td title="前括号">━ ．━ ━ ．</td>
						<th title="后括号">)</th>
						<td title="后括号">━ ．━ ━ ．━</td>
						<th title="美元">$</th>
						<td title="美元">．．．━ ．．━</td>
						<th title="">&amp;</th>
						<td title="">． ．．．</td></tr>
					<tr>
						<th title="">@</th>
						<td title="">．━ ━ ．━ ．</td>
						<th>　</th>
						<td>　</td>
						<th>　</th>
						<td>　</td>
						<th>　</th>
						<td>　</td>
					</tr>
				</tbody>
			</table>
			<div class='divider'></div>
	        <h4 class='explainer'>摩斯密码灯光求救 | Morse Code</h4>
	        <ul class="new_tools_list">
	        	<li>摩斯密码编码简单清晰，二义性小，编码主要是由两个字符表示："."、"-"，一长一短，这在很多情况下应用很多，比如发送求救信号。电影《风声》中就是采用在衣服上缝出摩尔密码，将消息传播出去。</li>
				<li>在利用摩尔密码灯光求救的时候，定义：灯光长亮为"-"，灯光短量为"."，那么就可以通过手电筒的开关来发送各种信息，例如求救信息。</li>
				<li>如果灯光是按照“短亮 暗 短亮 暗 短亮 暗 长亮 暗 长亮 暗 长亮 暗 短亮 暗 短亮 暗 短亮”这个规律来显示的话那么它就意味是求救信号SOS。</li>
				<li>因为SOS的摩尔编码为：··· －－－ ··· ，按照上面的规定即可进行灯光编码。这个编码其实非常简单，<span class="red">三短、三长、三短</span>。</li>
				<li>除了灯光之外，利用声音（两种区别的声音）也可以发出求救信号。这种求救方式是我们都应该进行了解的，也许在必要的时候就可以派上用场。</li>
			</ul>
	        <div class='divider'></div>
    </div>
    <script src="/Js/encdec/mor.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        var decToHex = function (str) {
            var res = [];
            for (var i = 0; i < str.length; i++)
                res[i] = ("00" + str.charCodeAt(i).toString(16)).slice(-4);
            return "\\u" + res.join("\\u");
        }
        var hexToDec = function (str) {
            str = str.replace(/\\/g, "%");
            return unescape(str);
        }
        //console.log(decToHex("decToHex unicode 编码转换"));
        morjs.modes.custom = {
            charSpacer: '',
            letterSpacer: '/',
            longString: '-',
            shortString: '.',
            wordSpacer: '/'
        };
        var options = { mode: 'custom' };

        var ss = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_@";
        function v10toX(n, m) { m = String(m).replace(/ /gi, ""); if (m == "") return ""; if (parseInt(m) != m) { /*M("输入的摩斯码不符合要求！");*/return false; } var t = ""; var a = ss.substr(0, n); while (m != 0) { var b = m % n; t = a.charAt(b) + t; m = (m - b) / n } return t }
        function vXto10(n, m) { m = String(m).replace(/ /gi, ""); if (m == "") return ""; var a = ss.substr(0, n); if (eval("m.replace(/[" + a + "]/gi,'')") != "") { /*M("输入的摩斯码不符合要求！");*/return false; } var t = 0, c = 1; for (var x = m.length - 1; x > -1; x--) { t += c * (a.indexOf(m.charAt(x))); c *= n } return t }
        function vXtoY(n, m, y) { a = vXto10(n * 1, m); if (a == "") return ""; a = v10toX(y, a); return a }
        function M(str) { alert(str) }
        function convert(hex_input, id_input, hex_output, id_output) { var input_v = document.getElementById(id_input).value; var outputEle = document.getElementById(id_output); var hex_in_v = document.getElementById(hex_input).value; var hex_out_v = document.getElementById(hex_output).value; outputEle.value = vXtoY(hex_in_v, input_v, hex_out_v) }
        function convert_c(hex_input_v, id_input, hex_output_v, id_output) { var input_v = document.getElementById(id_input).value; var outputEle = document.getElementById(id_output); outputEle.value = vXtoY(hex_input_v, input_v, hex_output_v) }

        var morse_char_re = /[a-zA-Z0-9.:,;?=\'\/\!_\"()$&@]/;
        function encode_morse_zh() {
            var input = $('#morse_input').val();
            var matchs = input.match(/[\u0000-\uffff]/g);
            var out = "";
            if (matchs != null) {
                for (var i = 0; i < matchs.length; i++) {
                    var match = matchs[i];
                    if (match.trim() != '') {
                        if (morse_char_re.test(match)) {
                            //使用morse处理
                            out = out + morjs.encode(match, options) + morjs.modes.custom.letterSpacer;
                        }
                        else {
                            //中文morse处理
                            var unicode = decToHex(match);
                            if (unicode && unicode.substring(0, 2) == '\\u') {
                                unicode = unicode.substring(2, unicode.length);
                                unicode = vXtoY(16, unicode, 2);
                                //将1替换为长，0替换为短str = str.replace(/word/g,"Excel")
                                unicode = unicode.replace(/1/g, morjs.modes.custom.longString);
                                unicode = unicode.replace(/0/g, morjs.modes.custom.shortString);
                                out = out + unicode + morjs.modes.custom.letterSpacer;
                            }
                        }
                    }
                    else {
                        //不处理空字符串
                    }
                };
            }
            //去掉末尾的/
            if (out != null && out.length > 0 && out.substring(out.length - 1, out.length)) {
                out = out.substring(0, out.length - 1);
            }
            $('#result_input').val(out);
        }

        function decode_morse_zh() {
            var input = $('#morse_input').val();
            out = '';
            if (input != null) {
                input_array = input.split(morjs.modes.custom.letterSpacer);
                eval("var re_1 = /\\" + morjs.modes.custom.longString + "/g;");
                eval("var re_0 = /\\" + morjs.modes.custom.shortString + "/g;");
                for (var i = 0; i < input_array.length; i++) {
                    input = input_array[i];
                    if (input != null && input.length >= 1) {
                        if (input.length <= 5) {
                            //morse最长5位
                            out = out + morjs.decode(input, options) + ' ';
                        }
                        else {
                            //汉字
                            input = input.replace(re_1, '1');
                            input = input.replace(re_0, '0');
                            input = vXtoY(2, input, 16);
                            if (input === false || input === '') {
                                out = "输入的摩斯码不符合要求！";
                            }
                            else {
                                input = '\\u' + input;
                                input = hexToDec(input);
                                out = out + input + ' ';
                            }
                        }
                    }
                }
            }
          
           $('#result_input').val(out);
        }

        function encode_morse() {
            var morse = morjs.encode($('#morse_input').val(), options);
            $('#result_input').val(morse);
        }
        function decode_morse() {
            var text = morjs.decode($('#morse_input').val(), options);
            $('#result_input').val(text);
        }
        function empty() {
            document.getElementById('morse_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('morse_input').focus();
        }
	        </script>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
