<%@ Page Title="压力单位换算器" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Pressure.aspx.cs" Inherits="NewJson.Math.Pressure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
		<meta name="keywords" content="在线,压力,换算,转换"/>
		<meta name="description" content="可以实现巴(bar)，兆帕(MPa)，千帕(kPa)，百帕(hPa)，毫巴(mbar)，帕斯卡，标准大气压，毫米汞柱(托)，磅力/英尺，磅力/英寸，英吋汞柱，公斤力/厘米，公斤力/米，毫米水柱，等各种压力单位间的换算。"/>
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
		<li class="active"><a href="/math/pressure/">压力换算</a></li>
		<li class=" "><a href="/math/temperature/">温度换算</a></li>
		<li class=" "><a href="/math/density/">密度换算</a></li>
		<li class=" "><a href="/math/force/">力换算</a></li>
		<li class=" "><a href="/math/volume/">体积换算</a></li>
    <div class="clear"></div>                          
</div>
				<div class="Tool-MainWrap wrapper pb10">
					 <div class="wrapper UnitCountWrap">
					    <div class="wrapper UnitCountWrap">
						     <ul class="UnitCountCent mt10">
						        <li><label class="w30-0"><span>巴</span><span class="unit">bar</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千帕</span><span class="unit">kPa</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>百帕</span><span class="unit">hPa</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>毫巴</span><span class="unit">mbar</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>帕斯卡</span><span class="unit">Pa = N/㎡</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>标准大气压</span><span class="unit">atm</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>毫米汞柱(托)</span><span class="unit">mm Hg=Torr</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>磅力/英尺㎡</span><span class="unit">lbf/ft㎡</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>磅力/英寸㎡</span><span class="unit">lbf/in㎡ = PSI</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>英吋汞柱</span><span class="unit">in Hg</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>公斤力/厘米㎡</span><span class="unit">kgf/㎡</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>公斤力/米㎡</span><span class="unit">kgf/c㎡</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>毫米水柱</span><span class="unit">mmH<sub>2</sub>O</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						     </ul>
						 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
						 </div>
					 
					 </div>
					</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p>可以实现巴(bar)，兆帕(MPa)，千帕(kPa)，百帕(hPa)，毫巴(mbar)，帕斯卡，标准大气压，毫米汞柱(托)，磅力/英尺，磅力/英寸，英吋汞柱，公斤力/厘米，公斤力/米，毫米水柱，等各种压力单位间的换算。</p></div>
			    </div>
					
			</div>
		</div>
    <script>
        var bs = [1, 100, 1000, 1000, 100000, 0.9869233, 750.0616827, 2088.5435121, 14.5037744, 29.5299875, 1.0197162, 10197.1621298, 10197.2];
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
