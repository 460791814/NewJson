<%@ Page Title="角度换算" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Angle.aspx.cs" Inherits="NewJson.Math.Angle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
		<meta name="keywords" content="角度换算"/>
		<meta name="description" content="圆周、弧度、毫弧度、度、直角、百分度、秒、分角度之间的转换"/>
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
        <li class="active"> <a href="/math/angle/">角度换算</a></li>
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
		<li class=" "><a href="/math/density/">密度换算</a></li>
		<li class=" "><a href="/math/force/">力换算</a></li>
		<li class=" "><a href="/math/volume/">体积换算</a></li>
    <div class="clear"></div>                          
</div>
				<div class="Tool-MainWrap wrapper pb10" style="height:268px;">
				 <div class="wrapper UnitCountWrap" style="padding-top: 0px; padding-bottom: 0px; height: 213px;">
				     <ul class="UnitCountCent mt10" style="height: 173px;">
				        <li><label class="w30-0"><span>圆周</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				        <li><label class="w30-0"><span>度</span><span class="unit">°</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				        <li><label class="w30-0"><span>秒</span><span class="unit">"</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				        <li><label class="w30-0"><span>弧度</span><span class="unit">rad</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				        <li><label class="w30-0"><span>直角</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				        <li><label class="w30-0"><span>分</span><span class="unit"> ′</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				        <li><label class="w30-0"><span>毫弧度</span><span class="unit">mrad</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				        <li><label class="w30-0"><span>百分度</span><span class="unit">gon</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
				     </ul>
				 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
				 </div>
				</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        	<div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 	<div class="col-gray01 ToolAbCont"><p>圆周、弧度、毫弧度、度、直角、百分度、秒、分角度之间的转换。</p></div>
			    </div>
					
			</div>
		</div>
    	<script>
    	    var bs = [1, 360, 1296000, 6.2831855, 4, 21600, 6283.18548, 399.99996];
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
