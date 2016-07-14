<%@ Page Title="温度转换换算器" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Temperature.aspx.cs" Inherits="NewJson.Math.Temperature" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
		<meta name="keywords" content="温度单位转换,温度转换表,温度转换公式,华氏温度转换"/>
		<meta name="description" content="温度转换换算器，可实现在线摄氏度(CELSIUS EQUALS)、华氏度(FAHENHEIT EQUALS)、开氏度(KELVIN EQUALS)、兰氏度(RANKINE EQUALS)、列氏度(REAUMUR EQUALS)五种温度计量单位间的互转互换。"/>
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
 <div class="toolsTab clearfix"  style="  margin-top: 20px;">
    <ul class="nav nav-tabs _load">
        <li class=" "> <a href="/math/angle/">角度换算</a></li>
        <li class=" "> <a href="/math/time/">时间换算</a></li>
        <li class=" "> <a href="/math/heat/">热量换算</a></li>
		<li class=" "> <a href="/math/length/">长度换算</a></li>
		<li class=" "> <a href="/math/area/">面积换算</a></li>
		<li class=" "> <a href="/math/speed/">速度换算</a></li>
		<li class=" "> <a href="/math/datastore/">数据存储换算</a></li>
		<li class=" "> <a href="/math/subnetmask/">子网掩码换算</a></li>
		<li class=" "> <a href="/math/power/">功率换算</a></li>
		<li class=" "><a href="/math/pressure/">压力换算</a></li>
		<li class="active"><a href="/math/temperature/">温度换算</a></li>
		<li class=" "><a href="/math/density/">密度换算</a></li>
		<li class=" "><a href="/math/force/">力换算</a></li>
		<li class=" "><a href="/math/volume/">体积换算</a></li>
    <div class="clear"></div>                          
</div>
				<div class="Tool-MainWrap wrapper pb10">
					 <div class="wrapper UnitCountWrap">
					    <div class="wrapper UnitCountWrap">
						    <ul class="UnitCountCent mt10">
						        <li><label class="w30-0"><span>摄氏度</span><span class="unit">C</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0" isnums="true"></li>
						        <li><label class="w30-0"><span>华氏度</span><span class="unit">K</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0" isnums="true"></li>
						        <li><label class="w30-0"><span>开氏度</span><span class="unit">hPa</span></label>	<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0" isnums="true"></li>
						        <li><label class="w30-0"><span>兰氏度</span><span class="unit">Ra</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0" isnums="true"></li>
						        <li><label class="w30-0"><span>列氏度</span><span class="unit">Re</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0" isnums="true"></li>
						     </ul>
						 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
						 </div>
					 
					 </div>
					</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p>温度转换换算器，可实现在线摄氏度(CELSIUS EQUALS)、华氏度(FAHENHEIT EQUALS)、开氏度(KELVIN EQUALS)、兰氏度(RANKINE EQUALS)、列氏度(REAUMUR EQUALS)五种温度计量单位间的互转互换。</p></div>
			    </div>
				
			</div>
		</div>
    <script>
        var bs = [1, 33.8, 274.15, 493.47, 0.8];
        var num = 0;
        jQuery(".UccBtn").on("click", function () {
            num = jQuery(this).next().val();
            if (num != "" && !isNaN(num)) {
                var tag = num / bs[jQuery(".UnitCountCent li").index(jQuery(this).parent())];
                jQuery(".UnitCountCent li").each(function (ind) {
                    jQuery(this).find("input").eq(1).val(bs[ind] * tag);
                })
            }
        });
        jQuery("#reset").on("click", function () {
            jQuery("input[type='text']").val("");
        });
		</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
