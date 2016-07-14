<%@ Page Title="在线功率换算" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Power.aspx.cs" Inherits="NewJson.Math.Power" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	 
		<meta name="keywords" content="在线,功率,换算,转换"/>
		<meta name="description" content="在线,功率,换算,转换。"/>
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
		<li class="active"> <a href="/math/power/">功率换算</a></li>
		<li class=" "><a href="/math/pressure/">压力换算</a></li>
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
						        <li><label class="w30-0"><span>米制马力</span><span class="unit">ps</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千卡/秒</span><span class="unit">kcal/s</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千瓦</span><span class="unit">kW</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>英制马力</span><span class="unit">hp</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>英尺·磅/秒</span><span class="unit">ft·lb/s</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>焦耳/秒</span><span class="unit">J/s</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>英热单位/秒</span><span class="unit">Btu/s</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>公斤·米/秒/秒</span><span class="unit">kg·m/s</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>牛顿·米/秒</span><span class="unit">N·m/s</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						     </ul>
						 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
						 </div>
					 
					 </div>
					</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p>米制马力、千卡/秒、千瓦、英制马力、英尺·磅/秒、焦耳/秒、英热单位/秒、公斤·米/秒/秒、牛顿·米/秒转换相互之间的功率转换。</p></div>
			    </div>
					
			</div>
		</div>
    <script>
        var bs = [1, 0.1757842, 0.7354987, 0.9863201, 542.4760385, 735.49875, 0.6971183, 75, 735.49875];
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
