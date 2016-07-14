<%@ Page Title="密度单位换算器" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Density.aspx.cs" Inherits="NewJson.Math.Density" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
		<meta name="keywords" content="在线,密度转换器,密度单位转换,密度换算,密度单位换算,密度单位"/>
		<meta name="description" content="密度单位转换器，密度转换器，单位转换器，单位转换器在线，压力单位转换器，重量单位转换器，温度单位转换器，长度单位转换器，流量单位转换器的互转互换。"/>
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
		<li class=" "><a href="/math/temperature/">温度换算</a></li>
		<li class="active"><a href="/math/density/">密度换算</a></li>
		<li class=" "><a href="/math/force/">力换算</a></li>
		<li class=" "><a href="/math/volume/">体积换算</a></li>
    <div class="clear"></div>                          
</div>
				<div class="Tool-MainWrap wrapper pb10">
					 <div class="wrapper UnitCountWrap">
					    <div class="wrapper UnitCountWrap">
						    <ul class="UnitCountCent mt10">
						        <li><label class="w30-0"><span>克/立方厘米</span><span class="unit">g/cm³</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千克/立方厘米</span><span class="unit">kg/cm³</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千克/立方分米</span><span class="unit">kg/dm³</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>克/立方米</span><span class="unit">g/m³</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>克/立方分米</span><span class="unit">g/dm³</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千克/立方米</span><span class="unit">kg/m³</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						     </ul>
						 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
						 </div>
					 
					 </div>
					</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p>密度单位转换器，密度转换器，单位转换器，单位转换器在线，压力单位转换器，重量单位转换器，温度单位转换器，长度单位转换器，流量单位转换器的互转互换。</p><p>1千克/立方米(kg/m3)= 0.001克/立方厘米(g/cm3)= 0.0624磅/立方英尺(lb/ft3)</p><p>1磅/立方英尺(lb/ft3)= 16.02千克/立方米(kg/m3)</p><p>1磅/立方英寸(lb/in3)= 27679.9千克/立方米(kg/m3)</p><p>1磅/立方美加仑(lb/gal3)= 119.826千克/立方米(kg/m3)</p><p>1磅/立方英加仑(lb/gal3)= 99.776千克/立方米(kg/m3)</p><p>1磅/立方(石油)桶(lb/bbl3)= 2.853千克/立方米(kg/m3)</p><p>1波美密度(B)=140/15.5℃时的比重－130</p><p>API度=141.5/15.5℃时的比重－131.5</p></div>
			    </div>
					
			</div>
		</div>
    <script>
        var bs = [1, 0.001, 1, 1000000, 1000, 1000];
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
