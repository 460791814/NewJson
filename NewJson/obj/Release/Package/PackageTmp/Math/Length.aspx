<%@ Page Title="长度转换" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Length.aspx.cs" Inherits="NewJson.Math.Length" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
		<meta name="keywords" content="长度转换"/>
		<meta name="description" content="公里、米、分米、厘米、毫米、丝、微米、里、丈、尺、寸、分、厘、海里、英寻、弗隆、码、英尺、英寸、纳米相互之间的长度转换。"/>
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
        <li class=" "> <a href="/math/heat/">热量换算</a></li>
		<li class="active"> <a href="/math/length/">长度换算</a></li>
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
				<div class="Tool-MainWrap wrapper pb10">
					 <div class="wrapper UnitCountWrap">
					     <ul class="UnitCountCent mt10">
					        <li><label class="w30-0"><span>公里</span><span class="unit">km</span></label>	   <input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>米</span><span class="unit">m</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>分米</span><span class="unit">dm</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>厘米</span><span class="unit">cm</span></label>	   <input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>毫米</span><span class="unit">mm</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>丝</span><span class="unit">dmm</span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>微米</span><span class="unit">um</span></label>	<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>里</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>丈</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>尺</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>寸</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>分</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>厘</span><span class="unit"></span></label>		<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>海里</span><span class="unit">nmi</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英寻</span><span class="unit"></span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英里</span><span class="unit">mi</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>弗隆</span><span class="unit">fur</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>码</span><span class="unit">yd</span></label>				<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英尺</span><span class="unit">ft</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>英寸</span><span class="unit">in</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					        <li><label class="w30-0"><span>纳米</span><span class="unit">nm</span></label>			<input type="submit" value="换算" class="UccBtn"><input type="text" isnums="true" class="UccTxt w46-0"></li>
					     </ul>
					 	<div class="tc ptb10 bg-gray"><input type="submit" value="全部清空" class="UccAllBtn" id="reset"></div>
					 
					 </div>
					</div>
				<div class="ToolAbout wrapper03 xian mt10">
			   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
			        <div id="toolsIntro" class="fr fz14"></div>
			     	</div>
			   	 <div class="col-gray01 ToolAbCont"><p>1千米(km)= 0.621英里(mile)</p><p>1米(m)= 3.281英尺(ft)= 1.094码(yd)</p><p>1丝米(dmm)=10忽米(cmm)=10丝=0.01毫米=0.001厘米</p><p>1厘米(cm)= 0.394英寸(in)</p><p>1厘米（cm)=10毫米（mm)</p><p>1,000,000,000纳米 = 1米（m）</p><p>1,000,000纳米 = 1毫米（mm）</p><p>1,000纳米 = 1微米（µm）</p><p>1纳米 = 10 埃米（记为Å）</p><p>1埃米=10^-10m</p><p>1埃(A)= 10米(m)</p><p>1英里(mile)= 1.609千米(km)</p><p>1英寻(fm)= 1.829(m)　1英尺(ft)= 0.3048米(m)</p><p>1英寸(in)= 2.54厘米(cm)</p><p>1海里(n mile)= 1.852千米(km)</p><p>1链= 66英尺(ft)= 20.1168米　1码(yd)= 0.9144米(m)</p><p>1密耳(mil)= 0.0254毫米(mm)</p><p>1英尺(ft)= 12英寸(in)</p><p>1码(yd)= 3英尺(ft)　1杆(rad)= 16.5英尺(ft)</p><p>1英里(mile)= 5280英尺(ft)</p><p>1海里(n mile)= 1.1516英里(mile)</p><p><strong>市制计量单位：</strong></p><p>1里=150丈&nbsp;1丈=10尺&nbsp;1尺=10寸&nbsp;1寸=10分&nbsp;1分=10厘&nbsp;1厘=10毫</p><p>公里、米、分米、厘米、毫米、丝、微米、里、丈、尺、寸、分、厘、海里、英寻、弗隆、码、英尺、英寸、纳米相互之间的长度转换。</p></div>
			    </div>
					
			</div>
		</div>
    <script>
        var bs = [0.001, 1, 10, 100, 1000, 10000, 1000000, 0.002, 0.3, 3, 30, 300, 3000, 0.00054, 0.5468066, 0.0006214, 0.004971, 1.0936133, 3.2808399, 39.3700787, 1000000000];
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
