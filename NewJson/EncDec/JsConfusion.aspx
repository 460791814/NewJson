<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsConfusion.aspx.cs" Inherits="NewJson.EncDec.JsConfusion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>HDS在线JS混淆加密器</title>
    <meta name="description" content="弘德软件在线JS混淆加密器" />
    <meta name="Keywords" content="javascript混淆,javascript压缩,javascript加密,JS混淆,JS压缩,JS加密,javascript混淆工具,javascript混淆器,javascript加密器,javascript混淆加密器,javascript在线混淆,JS混淆工具,JS混淆器,JS加密器,js混淆加密器,JS在线混淆" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <script src="/Js/encdec/hdsojso.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/hdsojso.css" />
</head>
<body>
    <div id="viewport">
        <div id="bd">
            <div class="tabControl" style="position: relative; padding:1px; width: 850px;height: 480px;">
                <table border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
                    <tbody>
                        <tr valign="top">
                            <td class="td_tabContent" valign="top">
                                <div class="div_tabContent">
                                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                        <tr>
                                            <td height="30"><span id="lblInitCode">初始代码：</span></td>
                                            <td align="right">
                                            <input class="btn" type="button" value="清空" onclick="Empty();" /> </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <textarea style="width: 835px; height: 195px;" id="txtInitCode">
/* 这个是一个类 */
function xx(num,str){
    //说明
    var a=num;
    this.aa = a;
    this.bb = function() {alert(str);}
    this.cc = function() {
        for (var i=0;i<10;i++){
            document.title = i;
        }
    }
    this.yy=new yy();
    function xxf(){
        alert("xxf");
        if ((/\{\d+\}/).test("a\sdf{2}12d"))
            alert("{\\d} is match!");
    }
}
xx.prototype.dd=function(){
    alert("dd");
    a.yy.ll();
    var fnx=function(i) {
        this.index = i;
        this.aa = function() {
            alert(this.index);
        }
    }
    var f1 = new fnx(12);
    f1.aa();
}
function yy(){
    alert('yy');
}
yy.prototype.ll=function(){
    alert("yyll");
}
var a = new xx(100,"hello"), b = new xx(0,"ttyp");
eval("a.aa=20");
a.bb();
b.dd();
alert(a.aa);

var k = 9;
function kk() {
    var k = 0;
    alert(k);
}
kk();
alert(k);
//show:"yy"->"yy"->"hello"->"dd"->"yyll"->"12"->"20"->"0"->"9"

                                                </textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="30"><span id="lblResultCode">结果代码：</span> &nbsp;<span id="lblRadio"></span></td>
                                            <td align="right"><input class="btn" type="button" value="混淆选项" onclick="ConfusionOptions()" /> 
                                            <input class="btn" type="button" value="混淆" onclick="Confuse()" /> 
                                            <input class="btn" type="button" value="排版" onclick="Format()" /> 
                                            <input class="btn" type="button" value="普通压缩" onclick="BasicCompression()" /> 
                                            <input class="btn" type="button" value="加密" onclick="Encrypt()" /> 
                                            <input class="btn" type="button" value="混淆加密" onclick="ConfuseEncrypt()" /> 
                                            <input class="btn" type="button" value="拷贝" onclick="Copy()" />
                                            <input class="btn" type="button" value="执行" onclick="Exec()" /> </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <textarea style="width:835px; height:195px;" id="txtResultCode"></textarea>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div style="clear: both;">
            </div>
        </div>
    </div>    
    
    <div id="ConfusionOptions" style="width:400px;padding:8px;text-align:left;display:none;">
        <table border="0" cellpadding="0" cellspacing="0" align="center" width="98%">
            <tr><td style="font-weight:bold;">混淆选项设置</td></tr>
            <tr>
                <td><input id="IsMoveStr" type="checkbox" /><label for="IsMoveStr">移动字符串</label>
                <input id="IsEncodeStr" type="checkbox" /><label for="IsEncodeStr">转义字符串</label>
                <input id="IsIntToHex" type="checkbox" /><label for="IsIntToHex">将整数用"0x"十六进制形式表示</label>
                </td>
            </tr>
            <tr>
                <td><input id="IsUseSquareBracket" type="checkbox" /><label for="IsUseSquareBracket">使用中括号访问成员</label>
                <input id="IsIncludeSystemObject" type="checkbox" /><label for="IsIncludeSystemObject">包括系统对象成员</label>
                </td>
            </tr>
            <tr>
                <td><input id="IsConfuseVariable" type="checkbox" checked="checked" /><label for="IsConfuseVariable">混淆变量名</label>
                <input id="IsConfuseFunctionName" type="checkbox" checked="checked" /><label for="IsConfuseFunctionName">混淆函数名或类构造函数名</label>
                <input id="IsConfuseClassMember" type="checkbox" checked="checked" /><label for="IsConfuseClassMember">混淆类的成员</label>
                </td>
            </tr>
            <tr>
                <td><input id="IsVariablePre" type="checkbox" /><label for="IsVariablePre">变量名加前缀</label>
                <label>前缀:</label><input id="VariablePre" type="text" style="width:40px;" />
                &nbsp;&nbsp;<label>混淆种子:</label><input id="Seed" type="text" style="width:40px;" />&nbsp;&nbsp;<label>变量位数:</label><input id="VarLength" type="text" value="0" style="width:20px;" />
                </td>
            </tr>
            <tr>
                <td><input id="IsConfusePre_" type="checkbox" checked="checked" /><label for="IsConfusePre_">混淆以下划线(_)起始的标识符</label>
                <input id="IsConfusePreS" type="checkbox" checked="checked" /><label for="IsConfusePreS">混淆以美元符($)起始的标识符</label>
                </td>
            </tr>
            <tr>
                <td>不混淆的变量名称(用","分隔)：<br />
                    <textarea id="NoVariable" cols="20" rows="2" style="width:390px;height:60px;overflow:auto;"></textarea>
                </td>
            </tr>
            <tr>
                <td>不混淆的类成员名称(用","分隔)：<br />
                    <textarea id="NoClassMember" cols="20" rows="2" style="width:390px;height:60px;overflow:auto;"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" height="25"><input id="Button1" type="button" value="确定" style="width: 80px; height: 23px;" onclick="if(CheckSet(true)) $('#ConfusionOptions').jqmHide();" /> &nbsp; &nbsp;<input id="Button2" type="button" value="默认" style="width: 80px; height: 23px;"  onclick="RestoreDefault();" /></td>
            </tr>
        </table>
    </div>
<script src='/Js/encdec/stat.php' language='JavaScript' charset='gb2312' type="text/javascript"></script>
</body>
</html>
