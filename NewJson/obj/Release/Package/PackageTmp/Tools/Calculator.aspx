<%@ Page Title="计算器,计算器在线计算,在线计算器,在线计算机,计算器在线使用" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="NewJson.Tools.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
		<meta name="keywords" content="计算器,计算器在线计算,在线计算器,在线计算机,计算器在线使用"/>
		<meta name="description" content="计算器在线计算，提供计算器在线计算，计算器在线使用，你可以选择基础版和高级版的在线计算器，基础版的在线计算机，可提供简单的四术运算，高级版的计算器，还可以提供科学计算器的计算内容，欢迎使用。"/>
                                             <link href="/Css/math/base.css" rel="stylesheet" />  
    <link href="/Css/math/toolstyle.css" rel="stylesheet" />
        <style>
        .nav {
            margin-top: auto;
            position: relative;
            height: auto;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
		 
				<div class="row">
					
 <div class="toolsTab clearfix"  style="margin-top: 20px;">
    <ul class="nav nav-tabs _load">
        <li class="active"><a href="/tools/calculator/">计算器</a></li>
      
    <div class="clear"></div>                          
</div>
					<div class="wrapper UnitCountWrap Tool-MainWrap">
						<div class="CalculatorWrap YaHei">
						  <form name="calc">
						    <div class="CalculTable" border="0">
						      <div class="ShowAreaWrap"><input isnum="true" class="ShowArea" value="0" name="display"></div>
						      <ul class="heachackWrap ptb10 clearfix">
						        <li class="pr15"><input type="radio" class="mr10 HdisaBtn" onclick="inputChangCarry(16)" name="carry" checked="checked">十六进制</li>
						        <li class="pr15"><input type="radio" class="mr10 HdisaBtn" onclick="inputChangCarry(10)" name="carry">十进制</li>
						        <li class="pr15"><input type="radio" class="mr10 HdisaBtn" onclick="inputChangCarry(8)" name="carry">八进制</li>
						        <li class="pr15"><input type="radio" class="mr10 HdisaBtn" onclick="inputChangCarry(2)" name="carry">二进制</li>
						        <li class="pr15"><input type="radio" class="mr10 HdisaBtn" value="d" onclick="inputChangAngle('d')" name="angle">角度制</li>
						        <li><input type="radio" class="mr10 HdisaBtn" value="r" onclick="inputChangAngle('r')" name="angle" checked="checked">弧度制</li>
						      </ul>
						      <ul class="heachackWrap mb20 clearfix">
						        <li class="pr15"><input type="checkbox" class="mr10" onclick="inputshift()" name="shiftf">上档功能</li>
						        <li class="pr15"><input type="checkbox" class="mr10" onclick="inputshift()" name="hypf">双曲函数</li>
						        <li><input class="HTxt01 mr10" readonly="" name="bracket"></li>
						        <li><input class="HTxt01 mr10" readonly="" name="memory" value="M"></li>
						        <li><input class="HTxt01 mr10" readonly="" name="operator"></li>
						        <li class="fr"><input type="button" class="Hcolor01" value="退格" onclick="backspace()"></li>
						        <li class="fr"><input type="button" class="Hcolor01 mr10" value="清屏" onclick="document.calc.display.value = 0 "></li>
						        <li class="fr"><input type="button" class="Hcolor01 mr10" value="全清" onclick="clearall()"></li>
						      </ul>
						      <div class="CentChackBox clearfix"> 
						      
						          <ul class="CentChackLeft fl">
						            <li>
						              <input type="button" class="Lcolor02" value="PI" onclick="inputfunction('pi', 'pi')" name="pi" disabled="disabled">
						              <input type="button" class="Lcolor02" value="E" onclick="inputfunction('e', 'e')" name="e" disabled="disabled">
						              <input type="button" class="Lcolor01" value="d.ms" onclick="inputfunction('dms', 'deg')" name="bt" disabled="disabled">
						            </li>
						            <li>
						              <input type="button" class="Lcolor01" value="(" onclick="addbracket()">
						              <input type="button" class="Lcolor01" value=")" onclick="disbracket()">
						              <input type="button" class="Lcolor01" value="ln" onclick="inputfunction('ln', 'exp')" name="ln">
						            </li>
						            <li>
						              <input type="button" class="Lcolor01" value="sin" onclick="inputtrig('sin', 'arcsin', 'hypsin', 'ahypsin')" name="sin" disabled="disabled">
						              <input type="button" class="Lcolor01" value="x^y" onclick="operation('^', 7)">
						              <input type="button" class="Lcolor01" value="log" onclick="inputfunction('log', 'expdec')" name="log">
						            </li>
						            <li>
						              <input type="button" class="Lcolor01" value="cos" onclick="inputtrig('cos', 'arccos', 'hypcos', 'ahypcos')" name="cos" disabled="disabled">
						              <input type="button" class="Lcolor01" value="x^3" onclick="inputfunction('cube', 'cubt')" name="cube">
						              <input type="button" class="Lcolor01" value="n!" onclick="inputfunction('!', '!')">
						            </li>
						            <li>
						              <input type="button" class="Lcolor01" value="tan" onclick="inputtrig('tan', 'arctan', 'hyptan', 'ahyptan')" name="tan" disabled="disabled">
						              <input type="button" class="Lcolor01" value="x^2" onclick="inputfunction('sqr', 'sqrt')" name="sqr">
						              <input type="button" class="Lcolor01" value="1/x" onclick="inputfunction('recip', 'recip')">
						            </li>
						          </ul>
						          
						          <div class="CentChackSide fl">
						            <input type="button" class="Hcolor01" value="储存" onclick="putmemory()">
						            <input type="button" class="Hcolor01" value="取存" onclick="getmemory()">
						            <input type="button" class="Hcolor01" value="累存" onclick="addmemory()">
						            <input type="button" class="Hcolor01" value="积存" onclick="multimemory()">
						            <input type="button" class="Hcolor01" value="清存" onclick="clearmemory()">
						          </div>
						          
						          <ul class="CentChackRight fl">
						            <li>
						              <input type="button" class="Rcolor01" value="7" onclick="inputkey('7')" name="k7">
						              <input type="button" class="Rcolor01" value="8" onclick="inputkey('8')" name="k8">
						              <input type="button" class="Rcolor01" value="9" onclick="inputkey('9')" name="k9">
						              <input type="button" value="/" class="Rcolor02" onclick="operation('/', 6)">
						              <input type="button" value="取余" class="Rcolor02" onclick="operation('%', 6)">
						              <input type="button" value="与" class="Rcolor02" onclick="operation('&amp;', 3)">
						            </li>
						            <li>
						              <input type="button" class="Rcolor01" value="4" onclick="inputkey('4')" name="k4">
						              <input type="button" class="Rcolor01" value="5" onclick="inputkey('5')" name="k5">
						              <input type="button" class="Rcolor01" value="6" onclick="inputkey('6')" name="k6">
						              <input type="button" value="*" class="Rcolor02" onclick="operation('*', 6)">
						              <input type="button" value="取整" class="Rcolor02" onclick="inputfunction('floor', 'deci')" name="floor">
						              <input type="button" value="或" class="Rcolor02" onclick="operation('|', 1)">
						            </li>
						            <li>
						              <input type="button" class="Rcolor01" value="&#12288;1&#12288;" onclick="inputkey('1')">
						              <input type="button" class="Rcolor01" value="2" onclick="inputkey('2')" name="k2">
						              <input type="button" class="Rcolor01" value="3" onclick="inputkey('3')" name="k3">
						              <input type="button" value="-" class="Rcolor02" onclick="operation('-', 5)">
						              <input type="button" value="左移" class="Rcolor02" onclick="operation('&lt;', 4)">
						              <input type="button" value="非" class="Rcolor02" onclick="inputfunction('~', '~')">
						            </li>
						            <li>
						              <input type="button" value="0" class="Rcolor01" onclick="inputkey('0')">
						              <input type="button" value="+/-" class="Rcolor01" onclick="changeSign()">
						              <input type="button" value="." class="Rcolor01" onclick="inputkey('.')" name="kp" disabled="disabled">
						              <input type="button" class="Rcolor02" value="+" onclick="operation('+', 5)">
						              <input type="button" class="Rcolor02" value="＝" onclick="result()">
						              <input type="button" class="Rcolor02" value="异或" onclick="operation('x', 2)">
						            </li>
						            <li>
						              <input type="button" class="Rcolor01" value="A" onclick="inputkey('a')" name="ka">
						              <input type="button" class="Rcolor01" value="B" onclick="inputkey('b')" name="kb">
						              <input type="button" class="Rcolor01" value="C" onclick="inputkey('c')" name="kc">
						              <input type="button" class="Rcolor01" value="D" onclick="inputkey('d')" name="kd">
						              <input type="button" class="Rcolor01" value="E" onclick="inputkey('e')" name="ke">
						              <input type="button" class="Rcolor01" value="F" onclick="inputkey('f')" name="kf">
						            </li>
						          </ul>
						      
						      </div>
						      
						    </div>
						  </form>
						</div>
					</div>
					<div class="ToolAbout wrapper03 xian mt10">
				   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
				        <div id="toolsIntro" class="fr fz14"></div>
				     	</div>
				   	 <div class="col-gray01 ToolAbCont"><p>科学计算器为您提供计算器,计算器在线计算,计算器在线使用,科学计算器,在线计算器,计算器使用,计算器在线计算使用,计算器使用方法,科学计算器在线计算,科学计算器使用方法,科学计算器在线使用,在线科学计算器。</p></div>
				    </div>
					
				</div>
	
			 
		</div>
    <script src="/Js/tools/calculator/jq-calculator.js"></script>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
