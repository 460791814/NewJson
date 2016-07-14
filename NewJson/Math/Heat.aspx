<%@ Page Title="热量换算" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Heat.aspx.cs" Inherits="NewJson.Math.Heat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	 
		<meta name="keywords" content="热量换算"/>
		<meta name="description" content="卡、千卡、千瓦·时、英制马力·时、米制马力·时、英热单位、公斤·米、英尺·磅、相互之间的热量换算。"/>
            <link href="/Css/math/base.css" rel="stylesheet" />  <link href="/Css/math/toolstyle.css" rel="stylesheet" />
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
        <li class="active"> <a href="/math/heat/">热量换算</a></li>
		<li class=" "> <a href="/math/length/">长度换算</a></li>
		<li class=" "> <a href="/math/area/">面积换算</a></li>
		<li class=" "> <a href="/math/speed/">速度换算</a></li>
		<li class=" "> <a href="/math/datastore/">数据存储换算</a></li>
		<li class=" "> <a href="/math/subnetmask/">子网掩码换算</a></li>
		<li class=" "> <a href="/math/power/">功率换算</a></li>
		<li class=" "><a href="/math/pressure/">压力换算</a></li>
		<li class=" "><a href="/math/temperature/">温度换算</a></li>
		<li class=" "><a href="/math/density/">密度换算</a></li>
		<li class=" "><a href="/math/force/">力换算</a></li>
		<li class=" "><a href="/math/volume/">体积换算</a></li>
    <div class="clear"></div>                          
</div>
				<div class="Tool-MainWrap wrapper pb10" style="height:268px;">
					 <div class="wrapper UnitCountWrap" style="padding-top: 0px; padding-bottom: 0px; height: 213px;">
					     <ul class="UnitCountCent mt10" style="height: 173px;">
					        <li><label class="w30-0"><span>卡</span><span class="unit">cal</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>千卡</span><span class="unit">kcal</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>千瓦·时</span><span class="unit">kW·h</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英制马力·时</span><span class="unit">hp·h</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>米制马力·时</span><span class="unit">ps·h</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>公斤·米</span><span class="unit">kg·m</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英热单位</span><span class="unit">btu</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英尺·磅</span><span class="unit">ft·lb</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					     </ul>
					 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
					 </div>
				</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p>卡、千卡、千瓦·时、英制马力·时、米制马力·时、英热单位、公斤·米、英尺·磅、相互之间的热量换算。</p></div>
			    </div>
				
			</div>
		</div>
    <script>
        var bs = [1, 0.001, 1.1627e-6, 1.5593e-6, 1.5809e-6, 0.4269569, 0.0039674, 3.0874843];
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
