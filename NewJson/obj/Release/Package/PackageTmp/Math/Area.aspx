<%@ Page Title="面积换算" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Area.aspx.cs" Inherits="NewJson.Math.Area" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
		<meta name="keywords" content="面积换算"/>
		<meta name="description" content="平方公里、公顷、市亩、平方米、平方分米、平方厘米、平方毫米、平方毫米、英亩、平方竿、平方码、平方英尺、平方英寸相互之间的长度转换。"/>
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
		<li class="active"> <a href="/math/area/">面积换算</a></li>
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
				<div class="Tool-MainWrap wrapper pb10">
					 <div class="wrapper UnitCountWrap">
					     <ul class="UnitCountCent mt10">
					        <li><label class="w30-0"><span>平方公里</span><span class="unit">km²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>公顷</span><span class="unit">ha</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>市亩</span><span class="unit"></span></label>						<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方米</span><span class="unit">m²</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方分米</span><span class="unit">dm²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方厘米</span><span class="unit">cm²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方毫米</span><span class="unit">mm²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方英里</span><span class="unit">sqmi</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英亩</span><span class="unit"></span></label>						<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方竿</span><span class="unit">sq rd²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方码</span><span class="unit">sq yd²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方英尺</span><span class="unit">sq ft²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>平方英寸</span><span class="unit">sq in²</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					    </ul>
					 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
					 </div>
				</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p><strong>法制计量单位</strong></p><p>1平方公里(km)= 100公顷(hm)= 247.1英亩(acre)= 0.386平方英里(mile)</p><p>1平方米(m)= 10.764平方英尺(ft)　 1公亩(are)= 100平方米(m)</p><p>1公顷(hm)=15亩=1hm2=10000平方米(m)= 2.471英亩(acre)=0.01平方千米　(其中h表示百米，hm2的含义就是百米的平方)</p><p>1平方英里(mile)= 2.590平方公里(km)</p><p>1英亩(acre)= 0.4047公顷(ha)= 4.047×10平方公里(km)= 4047平方米(m)</p><p>1平方英尺(ft)= 0.093平方米(m)　1平方英寸(in)= 6.452平方厘米(cm)</p><p>1平方码(yd)= 0.8361平方米(m)</p><p>1亩=2000/3平方米≈666.666平方米</p><p><strong>市制计量单位</strong></p><p>1平方里=22500平方丈</p><p>1平方丈=100平方尺</p><p>1平方尺=100平方寸</p><p>1平方寸=100平方分</p><p>1平方分=100平方厘</p><p>1平方厘=100平方毫</p></div>
			    </div>
					
			</div>
		</div>
    <script>
        var bs = [1e-6, 0.0001, 0.0015, 1, 100, 10000, 1000000, 3.8610e-7, 0.0002471, 0.0395369, 1.19599, 9, 900];
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
