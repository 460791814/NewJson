<%@ Page Title="在线体积和容量计量单位转换器" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Volume.aspx.cs" Inherits="NewJson.Math.Volume" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
		<meta name="keywords" content="体积换算,体积转换升,单位转换,体积转换器,体积计算,体积转换重量,体积转换成重量"/>
		<meta name="description" content="在线立方米(Cubic meter)、公石(hectoliter)、十升(dekaliter)、立方分米(Cubic dm)、升(liter)、分升(deciliter)、厘升(centiliter)、立方厘米(Cubic cm)、毫升(milliliter)、立方毫米(Cubic millimeter)、桶(Barrel)、蒲式耳(Bushel)、配克(Peck)、夸脱(Quart)、品脱(Pint)、加仑(Gallon)、盎司(Ounce)、打兰(dram)、量滴(Minim)、立方码(Cubic yard)、立方英尺(Cubic foot)、立方英寸(Cubic inch)等体积和容量单位转换器在线转换。 "/>
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
		<li class=" "><a href="/math/density/">密度换算</a></li>
		<li class=" "><a href="/math/force/">力换算</a></li>
		<li class="active"><a href="/math/volume/">体积换算</a></li>
    <div class="clear"></div>                          
</div>
				<div class="wrapper UnitCountWrap Tool-MainWrap">
			     <h3 class="lh30 h30 tl pt10 pl15"><span class="plr20 dinline bg-blue col-blue02">公制</span></h3>
			     <ul class="UnitCountCent bor-t1s03"> 
			        <li><label class="w30-0"><span>立方米</span><span class="unit">m³</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>公石</span><span class="unit">hl</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>十升</span><span class="unit">dal</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>立方分米</span><span class="unit">(dm³)=升(l)</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>分升</span><span class="unit">dl</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>厘升</span><span class="unit">cl</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>立方厘米</span><span class="unit">(cm³)=毫升(ml)</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>立方毫米</span><span class="unit">mm³</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" class="UccTxt w46-0"></li>
			     </ul>
			     <h3 class="lh30 h30 tl pt10 pl15"><span class="plr20 dinline bg-blue col-blue02">美制干量</span></h3>
			     <ul class="UnitCountCent bor-t1s03"> 
			        <li><label class="w30-0"><span>桶</span><span class="unit"></span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>蒲式耳</span><span class="unit">bu</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>配克</span><span class="unit">pk</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>夸脱</span><span class="unit">qt</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>品脱</span><span class="unit">pt</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			     </ul>
			     <h3 class="lh30 h30 tl pt10 pl15"><span class="plr20 dinline bg-blue col-blue02">英制液量和干量</span></h3>
			     <ul class="UnitCountCent bor-t1s03"> 
			        <li><label class="w30-0"><span>桶</span><span class="unit"></span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>蒲式耳</span><span class="unit">bu</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>加仑</span><span class="unit">bal</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>品脱</span><span class="unit">pt</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>液量盎司</span><span class="unit">fl oz</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			     </ul>
			     <h3 class="lh30 h30 tl pt10 pl15"><span class="plr20 dinline bg-blue col-blue02">公制烹调制式</span></h3>
			     <ul class="UnitCountCent bor-t1s03"> 
			        <li><label class="w30-0"><span>汤勺</span><span class="unit">Table spoon</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>调羹</span><span class="unit">Tea spoon</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			     </ul>
			     <h3 class="lh30 h30 tl pt10 pl15"><span class="plr20 dinline bg-blue col-blue02">美制烹调制式</span></h3>
			     <ul class="UnitCountCent bor-t1s03"> 
			        <li><label class="w30-0"><span>汤勺</span><span class="unit">Tbs</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>调羹</span><span class="unit">tsp</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>杯</span><span class="unit">fl oz</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			     </ul>
			     <h3 class="lh30 h30 tl pt10 pl15"><span class="plr20 dinline bg-blue col-blue02">美制液量</span></h3>
			     <ul class="UnitCountCent bor-t1s03"> 
			        <li><label class="w30-0"><span>桶</span><span class="unit">42gal</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>加仑</span><span class="unit">gal</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>夸脱</span><span class="unit">qt</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>品脱</span><span class="unit">pt</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>及耳</span><span class="unit">gi</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>液量盎司</span><span class="unit">oz</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>液量打兰</span><span class="unit">fl dr</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>量滴</span><span class="unit">min</span></label>					<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			     </ul>
			     <h3 class="lh30 h30 tl pt10 pl15"><span class="plr20 dinline bg-blue col-blue02">美英同制体积计量</span></h3>
			     <ul class="UnitCountCent bor-t1s03"> 
			        <li><label class="w30-0"><span>亩英尺</span><span class="unit"></span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>立方码</span><span class="unit"></span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>立方英尺</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			        <li><label class="w30-0"><span>立方英寸</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
			     </ul>
			 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
			 
			 </div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p><strong>法制计量单位</strong></p><p>1立方米(m³)=1000升(liter)= 1000立方分米（dm³)</p><p>1立方分米=1000立方厘米</p><p>1立方厘米=1000立方毫米</p><p><strong>英美式计量单位</strong></p><p>1立方英尺(ft)= 0.0283立方米(m3)= 28.317升(liter)</p><p>1千立方英尺(mcf)= 28.317立方米(m3)</p><p>1百万立方英尺(MMcf)=2.8317万立方米(m3)</p><p>10亿立方英尺(bcf)= 2831.7万立方米(m3)</p><p>1万亿立方英尺(tcf)= 283.17亿立方米(m3)</p><p>1立方英寸(in)= 16.3871立方厘米(cm3)</p><p>1英亩·英尺=1234立方米(m3)　1桶(bbl)= 0.159立方米(m3)= 42美加仑(gal)</p><p>1美加仑(gal)= 3.785升(l)</p><p>1美夸脱(qt)= 0.946升(l)　1美品脱(pt)= 0.473升(l)　1美吉耳(gi)= 0.118升(l)</p><p>1英加仑(gal)= 4.546升(l)</p><p><strong>中国古代计量单位</strong></p><p>1石（dàn） = 10斗（dǒu）</p><p>1斛（hú） = 本为10斗，后来改为5斗</p><p>1斗（dǒu） = 10升</p><p>1龠(yuè) = 0.5合（gě）</p><p>1升 = 10合（gě）</p></div>
			    </div>
				
			</div>
		</div>
    <script>
        var bs = [1, 10, 100, 1000, 10000, 100000, 1000000, 1000000000, 8.6484898, 28.3775933, 113.5103730, 908.0829843, 1816.1659685, 6.1102569, 27.4961560, 219.9692483, 1759.7539864, 35195.0797279, 66666.6666667, 200000, 67628.0454037, 202884.1362111, 4226.7528377, 6.2898108, 264.1720524, 1056.6882094, 2113.3764189, 8453.5056755, 33814.0227018, 270512.1816147, 2077533554.801234, 0.0008107, 1.3079506, 35.3146667, 61023.7440947];
        var num = 0;
        jQuery(".UccBtn").on("click", function () {
            num = jQuery(this).next().val();
            if (num != "" && !isNaN(num)) {
                var tag = num / bs[jQuery(".UnitCountWrap li").index(jQuery(this).parent())];
                jQuery(".UnitCountWrap li").each(function (ind) {
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
