<%@ Page Title="数据存储" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DataStore.aspx.cs" Inherits="NewJson.Math.DataStore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
		<meta name="keywords" content="数据存储"/>
		<meta name="description" content="比特、字节、千兆字节、千字节、拍字节、兆字节、太字节的数据存储。"/>
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
		<li class="active"> <a href="/math/datastore/">数据存储换算</a></li>
		<li class=" "> <a href="/math/subnetmask/">子网掩码换算</a></li>
		<li class=" "> <a href="/math/power/">功率换算</a></li>
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
						        <li><label class="w30-0"><span>比特</span><span class="unit">bit</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>字节</span><span class="unit">b</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千兆字节</span><span class="unit">gb</span></label>	<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>千字节</span><span class="unit">kb</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>拍字节</span><span class="unit">pb</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>兆字节</span><span class="unit">mb</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						        <li><label class="w30-0"><span>太字节</span><span class="unit">tb</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
						     </ul>
						 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
						 </div>
					 
					 </div>
					</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p>比特、字节、千兆字节、千字节、拍字节、兆字节、太字节的数据存储。</p></div>
			    </div>
				
			</div>
		</div>
    <script>
        var bs = [1, 0.125, 1.1642e-10, 0.0001221, 1.1102e-16, 1.1921e-7, 1.1369e-13];
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
