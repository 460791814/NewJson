<%@ Page Title="在线正则校验,正则匹配，正则表达式测试,常用正则表达式大全" Language="C#" MasterPageFile="~/Main.Master"
    AutoEventWireup="true" CodeBehind="Regex.aspx.cs" Inherits="NewJson.Validate.RegexMatch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="在线正则校验,正则匹配，正则表达式测试,常用的正则表达式" />
    <meta name="description" content="在线正则校验,正则匹配，正则表达式测试,常用的正则表达式">
    <link href="/Css/toolstyle.css" rel="stylesheet" type="text/css" />
    <link href="/Css/validate/all-base.css" rel="stylesheet" type="text/css" />
    <link href="/Css/validate/publicstyle.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
.smartField {position:relative; overflow:auto; border:1px solid #ABADB3;}
#input {height:375px; width:99.75%; margin-top:10px;}
.smartField pre, .smartField textarea {
	white-space: 
	-moz-pre-wrap;/* Mozilla, since 1999 */
	white-space: 
	-pre-wrap;/* Opera 4-6 */
	white-space: 
	-o-pre-wrap;/* Opera 7 */
	white-space: pre-wrap;/* css-3 */
	word-wrap: break-word;/* Internet Explorer 5.5+ */
}
.smartField pre,.smartField textarea{font:100% "courier new",monospace; width:100%; background:#fff;}
.smartField pre {padding: 0;background: #fff;border: none;border-radius: 0;}
td,th{border:1px solid #C0C0C0;border-collapse:collapse;padding:5px;}
table{border-collapse:collapse;border:1px solid #C0C0C0;}
.smartField{border:1px solid #CCCCCC;overflow:auto;position:relative;}
.smartField pre,.smartField textarea{width:100%;padding:0;margin:0;font:100% "courier new",monospace;}
.smartField pre{text-align:left;color:#F9F9F9;z-index:1;}
.smartField textarea{background:none repeat scroll 0 0 transparent;border:0 none;height:100%;overflow:hidden;position:absolute;left:0px;top:0px;z-index:2;}
b,i,u{font-style:normal;font-weight:normal;text-decoration:none;}#input b{background:none repeat scroll 0 0 #FFF000;color:#FFF000;}
#input i{background:none repeat scroll 0 0 #80C0FF;color:#80C0FF;}#search b{background:none repeat scroll 0 0 #AAD1F7;color:#AAD1F7;}
#search i{background:none repeat scroll 0 0 #F9CA69;color:#F9CA69;}#search i b{background:none repeat scroll 0 0 #F7A700;color:#F7A700;}
#search i u{background:none repeat scroll 0 0 #EFBA4A;color:#EFBA4A;}#search b.g1{background:none repeat scroll 0 0 #D2F854;color:#D2F854;}
#search b.g2{background:none repeat scroll 0 0 #9EC70C;color:#9EC70C;}#search b.g3{background:none repeat scroll 0 0 #ECC9F7;color:#ECC9F7;}
#search b.g4{background:none repeat scroll 0 0 #54B70B;color:#54B70B;}#search b.g5{background:none repeat scroll 0 0 #B688CF;color:#B688CF;}
#search b.err{background:none repeat scroll 0 0 #FF4300 !important;color:#FF4300 !important;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线正则表达式</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div>
                <div>
                    <textarea id="textSour" name="json_input" class="json_input" style="height: 200px;"
                        placeholder="在此输入待匹配文本"></textarea>
                </div>
                <div class="operateTB">
                    <form class="well form-inline">
                    <div class="input-group input-group-sm">
                        <span class="input-group-addon" id="basic-addon1">正则表达式</span>
                        <input type="text" style="width: 500px;" class="form-control" id="textPattern" placeholder="在此输入正则表达式">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                常用正则表达式<span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right" id="regexUl">
                                <li><a href="javascript:;" title="[\u4e00-\u9fa5]">匹配中文字符</a> </li>
                                <li><a href="javascript:;" title="[^\x00-\xff]">匹配双字节字符(包括汉字在内)</a> </li>
                                <li><a href="javascript:;" title="\n\s*\r">匹配空白行</a> </li>
                                <li><a href="javascript:;" title="[\w!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[\w!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?">
                                    匹配Email地址</a> </li>
                                <li><a href="javascript:;" title="[a-zA-z]+://[^\s]*">匹配网址URL</a> </li>
                                <li><a href="javascript:;" title="\d{3}-\d{8}|\d{4}-\{7,8}">匹配国内电话号码</a> </li>
                                <li><a href="javascript:;" title="[1-9][0-9]{4,}">匹配腾讯QQ号</a> </li>
                                <li><a href="javascript:;" title="[1-9]\d{5}(?!\d)">匹配中国邮政编码</a> </li>
                                <li><a href="javascript:;" title="^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$">匹配18位身份证号</a>
                                </li>
                                <li><a href="javascript:;" title="([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8])))">
                                    匹配(年-月-日)格式日期</a> </li>
                                <li><a href="javascript:;" title="^[1-9]\d*$">匹配正整数</a> </li>
                                <li><a href="javascript:;" title="^-[1-9]\d*$">匹配负整数</a> </li>
                                <li><a href="javascript:;" title="^-?[1-9]\d*$">匹配整数</a> </li>
                                <li><a href="javascript:;" title="^[1-9]\d*|0$">匹配非负整数（正整数 + 0）</a> </li>
                                <li><a href="javascript:;" title="^-[1-9]\d*|0$">匹配非正整数（负整数 + 0）</a> </li>
                                <li><a href="javascript:;" title="^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$">匹配正浮点数</a> </li>
                                <li><a href="javascript:;" title="^-[1-9]\d*\.\d*|-0\.\d*[1-9]\d*$">匹配负浮点数</a> </li>
                            </ul>
                        </div>
                    </div>
                    <input type="checkbox" value="global" checked="checked" id="optionGlobal" name="optionGlobl">全局搜索
                    <input type="checkbox" value="ignoreCase" id="optionIgnoreCase" name="optionIgnoreCase">忽略大小写
                    <a onclick="return onMatch();" class="btn btn-primary btn-sm"><i class="icon-chevron-down icon-white">
                    </i>测试匹配</a>
                    </form>
                </div>
                <div class="bottomBar">
                    <div class="title">
                        匹配结果：</div>
                    <textarea name="json_input" class="json_input" style="height: 200px;" id="textMatchResult"></textarea>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                       常用的正则表达式大全</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="RegbuttonBarWrap bg-list">
        	 
        	<p class="RegBtnBar clearfix" id="regCommon">
            <a href="javascript:;" title="[\u4e00-\u9fa5]">匹配中文字符</a>
            	 <a href="javascript:;" title="[^\x00-\xff]">匹配双字节字符(包括汉字在内)</a> 
                                <a href="javascript:;" title="\n\s*\r">匹配空白行</a>
                                <a href="javascript:;" title="[\w!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[\w!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?">
                                匹配Email地址</a>
                                <a href="javascript:;" title="[a-zA-z]+://[^\s]*">匹配网址URL</a>
                                <a href="javascript:;" title="\d{3}-\d{8}|\d{4}-\{7,8}">匹配国内电话号码</a> 
                                <a href="javascript:;" title="[1-9][0-9]{4,}">匹配腾讯QQ号</a> 
                                <a href="javascript:;" title="[1-9]\d{5}(?!\d)">匹配中国邮政编码</a> 
                                <a href="javascript:;" title="^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$">匹配18位身份证号</a>
                                
                                <a href="javascript:;" title="([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8])))">匹配(年-月-日)格式日期</a>
                                <a href="javascript:;" title="^[1-9]\d*$">匹配正整数</a>
                                <a href="javascript:;" title="^-[1-9]\d*$">匹配负整数</a> 
                                <a href="javascript:;" title="^-?[1-9]\d*$">匹配整数</a> 
                                <a href="javascript:;" title="^[1-9]\d*|0$">匹配非负整数（正整数 + 0）</a> 
                                <a href="javascript:;" title="^-[1-9]\d*|0$">匹配非正整数（负整数 + 0）</a>
                                <a href="javascript:;" title="^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$">匹配正浮点数</a> 
                                <a href="javascript:;" title="^-[1-9]\d*\.\d*|-0\.\d*[1-9]\d*$">匹配负浮点数</a> 
                <a href="javascript:void(0)" title="\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b">匹配IP</a>
                                <a href="javascript:void(0)" title="^[\u4e00-\u9fa5A-Za-z0-9_]+$">匹配数字,字母,下划线,中文</a>
            </p>
        </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                       正则表达式简介</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="ToolAbout wrapper03">
    <div class="clearfix">

    <div class="col-gray01 ToolAbCont"><div class="lh30 plr20"><b class="fb col-gray03">到底什么是正则表达式？</b></div><div class="lh30 plr20">在编写处理字符串的程序或网页时，经常有查找符合某些复杂规则的字符串的需要。正则表达式就是用于描述这些规则的工具。换句话说，正则表达式就是记录文本规则的代码。</div><div class="clearfix ptb10"><div class="fl pl20 pr20"><div class="lh30"><b class="fb col-gray03">常用元字符</b></div><table cellspacing="0"><thead><tr><th scope="col">代码</th><th scope="col">说明</th></tr></thead><tbody><tr><td><span class="code">.</span></td><td><span class="desc">匹配除换行符以外的任意字符</span></td></tr><tr><td><span class="code">\w</span></td><td><span class="desc">匹配字母或数字或下划线</span></td></tr><tr><td><span class="code">\s</span></td><td><span class="desc">匹配任意的空白符</span></td></tr><tr><td><span class="code">\d</span></td><td><span class="desc">匹配数字</span></td></tr><tr><td><span class="code">\b</span></td><td><span class="desc">匹配单词的开始或结束</span></td></tr><tr><td><span class="code">^</span></td><td><span class="desc">匹配字符串的开始</span></td></tr><tr><td><span class="code">$</span></td><td><span class="desc">匹配字符串的结束</span></td></tr></tbody></table></div><div class="fl pl20 pr20"><div class="lh30"><b class="fb col-gray03">常用限定符</b></div><table cellspacing="0"><thead><tr><th scope="col">代码/语法</th><th scope="col">说明</th></tr></thead><tbody><tr><td><span class="code">*</span></td><td><span class="desc">重复零次或更多次</span></td></tr><tr><td><span class="code">+</span></td><td><span class="desc">重复一次或更多次</span></td></tr><tr><td><span class="code">?</span></td><td><span class="desc">重复零次或一次</span></td></tr><tr><td><span class="code">{n}</span></td><td><span class="desc">重复n次</span></td></tr><tr><td><span class="code">{n,}</span></td><td><span class="desc">重复n次或更多次</span></td></tr><tr><td><span class="code">{n,m}</span></td><td><span class="desc">重复n到m次</span></td></tr></tbody></table></div><div class="fl pl20"><div class="lh30"><b class="fb col-gray03">常用反义词</b></div><table cellspacing="0"><thead><tr><th scope="col">代码/语法</th><th scope="col">说明</th></tr></thead><tbody><tr><td><span class="code">\W</span></td><td><span class="desc">匹配任意不是字母，数字，下划线，汉字的字符</span></td></tr><tr><td><span class="code">\S</span></td><td><span class="desc">匹配任意不是空白符的字符</span></td></tr><tr><td><span class="code">\D</span></td><td><span class="desc">匹配任意非数字的字符</span></td></tr><tr><td><span class="code">\B</span></td><td><span class="desc">匹配不是单词开头或结束的位置</span></td></tr><tr><td><span class="code">[^x]</span></td><td><span class="desc">匹配除了x以外的任意字符</span></td></tr><tr><td><span class="code">[^aeiou]</span></td><td><span class="desc">匹配除了aeiou这几个字母以外的任意字符</span></td></tr></tbody></table></div></div></div>
    </div>
        </div>
    </div>
    <script language="javascript">
        $(document).ready(function () {
            $("#regexUl  a").click(function () {
                $("#textPattern").val($(this).attr("title"));
                onMatch();
            });
            $("#regCommon  a").click(function () {
                $("#textPattern").val($(this).attr("title"));
                onMatch();
            });
        });


        function setVisible(idElement, visible) {
            var obj = document.getElementById(idElement);
            obj.style.visibility = visible ? "visible" : "hidden";
        }
        function isValidFields() {
            var textSour = document.getElementById("textSour");
            if (null == textSour.value || textSour.value.length < 1) {
                textSour.focus();
                // alert("请输入待匹配文本");
                return false;
            }
            var textPattern = document.getElementById("textPattern");
            if (null == textPattern.value || textPattern.value.length < 1) {
                textPattern.focus();
                // alert("请输入正则表达式");
                return false;
            }
            return true;
        }
        function buildRegex() {
            var op = "";
            if (document.getElementById("optionGlobal").checked) op = "g";
            if (document.getElementById("optionIgnoreCase").checked) op = op + "i";
            return new RegExp(document.getElementById("textPattern").value, op);
        }
        function onMatch() {
            if (!isValidFields())
                return false;
            document.getElementById("textMatchResult").value = "";
            var regex = buildRegex();
            var result = document.getElementById("textSour").value.match(regex);
            if (null == result || 0 == result.length) {
                document.getElementById("textMatchResult").value = "（没有匹配）";
                return false;
            }
            if (document.getElementById("optionGlobal").checked) {
                var strResult = "共找到 " + result.length + " 处匹配：\r\n";
                for (var i = 0; i < result.length; ++i) strResult = strResult + result[i] + "\r\n";
                document.getElementById("textMatchResult").value = strResult;
            }
            else {
                document.getElementById("textMatchResult").value = "匹配位置：" + regex.lastIndex + "\r\n匹配结果：" + result[0];
            }
            return true;
        }
        function onReplace() {
            var str = document.getElementById("textSour").value;
            var regex = buildRegex();
            document.getElementById("textReplaceResult").value = str.replace(regex, document.getElementById("textReplace").value);
        }
        function reset() {
            $("#textSour").val("");
            $("#textPattern").val("");
            $("#textMatchResult").val("");
            $("#textReplace").val("");
            $("#textReplaceResult").val("");
        }

        function Empty() {
            document.getElementById('searchText').value = '';
            document.getElementById('inputText').value = '';
            document.getElementById('searchText').select();
        }

        function GetFocus() {
            document.getElementById('content').focus();
        }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
