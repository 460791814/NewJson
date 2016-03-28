<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TaxTool.aspx.cs" Inherits="NewJson.Math.TaxTool" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head><title>
	9米计算器，好用的个税计算器，带税后反推税前、社保明细、年终奖扣税、年薪计算
</title><link rel="shortcut icon" href="../images/favicon.ico" />

    <link href="/Css/math/9me.css" rel="stylesheet" type="text/css" />
	<!--<link href="css/9mime.css" rel="stylesheet" type="text/css" />-->
	

    <script src="/Js/math/jquery-1.4.3.min.js" type="text/javascript"></script>
    <script src="/Js/math/jquery-addinfo.js" type="text/javascript"></script>
	
    <script type="text/javascript" language="javascript">
        Pretax = "个人因任职或者受雇而取得的工资、薪金、奖金、年终加薪、劳动分红、津贴、补贴以及与任职或者受雇有关的其他所得";
        addInfo("Pretax", Pretax);
        AftertaxDIV = "税后月收入=税前月收入-(个人社保缴费+公积金缴费)-个人所得税";
        addInfo("AftertaxDIV", AftertaxDIV);
        Paying = "个人所得税=(应纳税所得-3500)*适用税率-速算扣除数<br />应纳税所得=税前收入-(个人社保缴费+公积金缴费)";
        addInfo("Paying", Paying);
        ContBase = "本年度月缴费基数为上年度工资收入总额的月平均数，其中新进员工以职工本人起薪当月的足月工资收入作为缴费基数。社保缴费基数的上限为当地社会平均工资的300%，下限为60%；公积金缴费基数的上限为当地社会平均工资的300%，下限为当地的最低工资。可按实际核定数修改。";
        addInfo("ContBase", ContBase);
        Sfd = "缴费基数上限又称封顶数，是指职工工资收入超过上一年当地在岗职工月平均工资（又称社平工资）300%以上的部份不计入缴费基数";
        addInfo("Sfd", Sfd);
        Taxthreshold = "个税起征点又称扣除标准。现行个税方案采用7级税率，个税起征点为3500元。外籍人士的减除标准为4800元。现行个税方案于2011年9月1日起正式实施。计算结果仅供参考。";
        addInfo("Taxthreshold", Taxthreshold);
        mzsm = "9米计算器的各种信息系通过网络收集整理。9米计算器会尽量保证信息的准确与及时更新，但由于个人所得税计算涉及多种法律法规及实施办法，各个地区及各个单位均可在法律范围内（或法律范围之外）进行各种调整，因此，通过9米计算器计算的结果仅供参考，不可作为合同、劳动争议、仲裁等的依据；9米博客所列各种与个人所得税相关的法规、条例、办法、知识等，均应以国家正式文件为准。如有任何疑问，请咨询相关人事部门、当地劳动及社会保障机构、税务机构等权威部门。";
        addInfo("mzsm", mzsm);
</script>
    <script src="/Js/math/globaljquery.js" type="text/javascript"></script>
    <script src="/Js/math/latest.js" type="text/javascript"></script>

</head>
<body>
    <form name="form1" method="post" action="default1.aspx?interfaceID=1" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJOTkxMTcyNTk5ZGSJjzI0B2XCmwnbnJVLE/BUM2OmxA==" />
</div>


<script language="javascript" type="text/javascript">
    var App = {

        "GetDate": function (clientCallBack) {
            return Ajax_CallBack('app_default', null, 'GetDate', [], clientCallBack, false, false, false, false, 'http://b.9mi.me/app/default1.aspx?interfaceID=1&Ajax_CallBack=true');
        },

        "ChangeThisCity": function (cityName, clientCallBack) {
            return Ajax_CallBack('app_default', null, 'ChangeThisCity', [cityName], clientCallBack, false, false, false, false, 'http:/b.9mi.me//app/default1.aspx?interfaceID=1&Ajax_CallBack=true');
        },

        "ShowCityDIV": function (cityName, area, clientCallBack) {
            return Ajax_CallBack('app_default', null, 'ShowCityDIV', [cityName, area], clientCallBack, false, false, false, false, 'http:/b.9mi.me//app/default1.aspx?interfaceID=1&Ajax_CallBack=true');
        },

        "SelCityName": function (cityName, clientCallBack) {
            return Ajax_CallBack('app_default', null, 'SelCityName', [cityName], clientCallBack, false, false, false, false, 'http:/b.9mi.me//app/default1.aspx?interfaceID=1&Ajax_CallBack=true');
        },

        "DBAppend": function (salary, aftertax, city, clientCallBack) {
            return Ajax_CallBack('app_default', null, 'DBAppend', [salary, aftertax, city], clientCallBack, false, false, false, false, 'http:/b.9mi.me//app/default1.aspx?interfaceID=1&Ajax_CallBack=true');
        },

        "DBAppendOther": function (salary, aftertax, inquireType, clientCallBack) {
            return Ajax_CallBack('app_default', null, 'DBAppendOther', [salary, aftertax, inquireType], clientCallBack, false, false, false, false, 'http://b.9mi.me/app/default1.aspx?interfaceID=1&Ajax_CallBack=true');
        }

    };
</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="38B459EC" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBQKE0N/bBwKDhrjXCALQgu+0BAKR+46RDgLKkvacBbrYK+LRRsbkO+1DISN1y39ORt4c" />
</div>
    <div id="mengban" ></div> 
    <div id="MBContent" class="divMengban"></div>    
    <iframe id="DivShim" src="" scrolling="no" frameborder="0"></iframe>
	 
   <div id="info_div" style="display: none;"></div>
   <div id="main-body">
		   <div class="head_select">
			  <div class="f-l w110">收入类型：</div>
			  <div class="f-l w200"><select class="selectclass" onchange="changeType();" id="taxType">

									<option value="0" selected="selected">工资薪金所得（月薪）</option>
									<option value="14">工资薪金所得（简版，带个税反推）</option>
									<option value="11">工资薪金所得（年薪）</option>
									<option value="1">年终奖</option>
									<option value="12">经济补偿金</option>
									<option value="13">——————————</option>
									<option value="2">劳务报酬所得</option>
									<option value="3">稿酬所得</option>
									<option value="4">特许权使用费所得</option>
									<option value="5">财产租赁所得</option>
									<option value="6">财产转让所得</option>
									<option value="7">利息、股息、红利所得</option>
                                    <option value="8">个体工商户的生产、经营所得</option>
									<option value="9">对企事业单位的承包、承租经营所得</option>
									<option value="10">偶然所得</option>
									</select>
			 </div>
		  </div>
		  <!--工资薪金所得（月薪）开始-->
		   <div id="payrollDIV" style="margin:0 auto;"> 
			   <div class="main-bot-top h538">
				 <div class="mbt5_body">
	 
				   <div class="mbt_body_list" style="position:relative;">
					 <div class="f-l w110">选择城市：</div>
					 <div class="f-l w170" id="cityInptDIV">
						<input name="city" type="text" id="city" onclick="showCityDIV();" readonly="readonly" onkeyup="changPosition(event);" class="w120 inputclass" value="请选择城市" />
						<input id="cityId" type="hidden" value="0" />
						<input name="area" type="hidden" id="area" value="0" />
						<input name="otherID" type="hidden" id="otherID" value="43" />
					 </div>
					 <div class="com_body" style="display:none;" id="cityDIV"></div>   
				   </div>
				   
				   <div class="mbt_body_list">
					 <div id="Pretax" class="list_l" onmouseover="this.className='list_la'" onmouseout="this.className='list_l'">税前月收入：</div>
					 <div class="f-l w170"><input onkeyup="salaryKeydown(event);" onblur="chkfloat($(this)[0]);" id="salary" type="text" class="w120 inputclass" /> 元</div> 
					 <div onmouseout="this.className='fast_button'" onmouseover="this.className='fast_button_over'" class="fast_button">
						<div class="fast_button-font" onclick="calculateTax();">计算</div>
					 </div>
				   </div>
				   
				   <div class="mbt_body_list">
					 <div id="AftertaxDIV" class="list_l" onmouseover="this.className='list_la'" onmouseout="this.className='list_l'">税后月收入：</div>
					 <div class="f-l w170"><input type="text" onkeyup='aftertaxKeydown(event);' onblur="chkfloat($(this)[0]);" id="aftertax" class="w120 inputclass" /> 元</div> 
					 <div onmouseout="this.className='fast_button'" onmouseover="this.className='fast_button_over'" class="fast_button">
						<div class="fast_button-font" onclick="calculateAftertax1();">反推</div>
					 </div>
				   </div>
				   
				   <div class="mbt_body_list">
					 <div id="Paying" class="list_l" onmouseover="this.className='list_la'" onmouseout="this.className='list_l'">缴纳个税：</div>
					 <div class="f-l w170"><input type="text" id="tax" class="w120 not_o nota" disabled="disabled" /> 元</div> 
					 <div onmouseout="this.className='fast_button'" onmouseover="this.className='fast_button_over'" class="fast_button">
						<div class="fast_button-font" onclick="salaryReset();">重置</div>
					 </div>
				   </div>
				 </div>
				 <div class="clear"></div>
				 <div class="statement"><span class="red">计算结果仅供参考</span>  <a href="javascript:void(0)" target="_blank" id="mzsm">免责声明</a></div>
				 
				 <hr class="h_b" />
				 
				 <div class="main-bot-head">社保与公积金缴费明细<span>(可调整参数)</span></div>
				 <div class="main-bot-center">
				   <div class="mbc_body">
					  <div class="w186">
						  <div class="w95 f-l">个人缴费合计：</div>
						  <div class="w90 f-l" id="personalTotal"></div>
					  </div>
					  <div class="w186">
						  <div class="w95 f-l">应纳税额总计：</div>
						  <div class="w90 f-l" id="pretaxTotal"></div>
					  </div>
					  <div class="w186">
						<div class="w110 f-l">养老　 <input type="text" id="pension" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w75 f-l" id="pensionSpan"></div>			  
					  </div>
					  <div class="w186">
						<div class="w110 f-l">医疗　 <input type="text" id="medicare" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w75 f-l" id="medicareSpan"></div>			  
					  </div>
					  <div class="w186">
						<div class="w110 f-l">失业　 <input type="text" id="unemploymentInsurance" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w75 f-l" id="unemploymentInsuranceSpan"></div>			  
					  </div>
					  <div class="w186">
						<div class="w110 f-l mgt50">公积金 <input type="text" id="fund" onkeyup="fundDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w75 f-l mgt50" id="fundSpan"></div>			  
					  </div>
					
				   </div>
				   
				 <div class="mbc_body_r">
					  <div class="w185">
						<div class="w95 f-l">单位缴费合计：</div>
						<div class="w89 f-l" id="firmTotal"></div>
					  </div>
					  <div class="w185">
						<div class="w95 f-l">单位支出总计：</div>
						<div class="w89 f-l" id="firmExpenseTotal"></div>
					  </div>
					  <div class="w185">
						<div class="w110 f-l">养老　 <input type="text" id="pensionFirm" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w74 f-l" id="pensionFirmSpan"></div>			  
					  </div>
					  <div class="w185">
						<div class="w110 f-l">医疗　 <input type="text" id="medicareFirm" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w74 f-l" id="medicareFirmSpan"></div>			  
					  </div>
					  <div class="w185">
						<div class="w110 f-l">失业　 <input type="text" id="unemploymentInsuranceFirm" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w74 f-l" id="unemploymentInsuranceFirmSpan"></div>			  
					  </div>
					  <div class="w185">
						<div class="w110 f-l">工伤　 <input type="text" id="industrialInjuryFirm" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w74 f-l" id="industrialInjuryFirmSpan"></div>			  
					  </div>
					  <div class="w185">
						<div class="w110 f-l">生育　 <input type="text" id="maternityInsuranceFirm" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w74 f-l" id="maternityInsuranceFirmSpan"></div>			  
					  </div>
					  <div class="w185">
						<div class="w110 f-l">公积金 <input type="text" id="fundFirm" onkeyup="fundFirmDetailKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
						<div class="w74 f-l" id="fundFirmSpan"></div>			  
					  </div>
				   </div> 
				 </div>
				 
				 <hr class="h_b" />
				 
				 <div class="main-bot-bot">
				    <div class="mbb_body">
					   <div  id="ContBase" class="mbb_js">缴费基数：</div>
					   <div class="mbb_sb" onmouseover="this.className='mbb_sba'" onmouseout="this.className='mbb_sb'">社保<input id="insuranceBase" onkeyup="insuranceBaseKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" type="text" class="w_input inputclass" /></div>
					   <div class="mbb_gj" onmouseover="this.className='mbb_gja'" onmouseout="this.className='mbb_gj'">公积金<input type="text" id="fundBase" onkeyup="fundBaseKeyup($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w_input inputclass" /></div>
					   <div id="Sfd" class="mbb_fd" onmouseover="this.className='mbb_fda'" onmouseout="this.className='mbb_fd'">封顶数<input id="insuranceMax" onkeyup="salaryDetailKeyup($(this)[0]);" onblur="chkInt($(this)[0]);" type="text" class="w_input inputclass" /></div>
					</div>
					<div class="mbb_body">
					  <div id="Taxthreshold" class="mbb_l" onmouseover="this.className='mbb_la'" onmouseout="this.className='mbb_l'">个税起征点：　<input id="threshold" onkeyup="salaryDetailKeyup($(this)[0]);"  onblur="chkfloat($(this)[0]);" type="text" class="w60 not_o"  value="3500" /></div>
					  <div class="mbb_l"><input type="radio" id="domestic" name="nationality" class="Chackbox" onclick="salaryDetailClick();" checked="checked" align="absmiddle" />国内　<input name="nationality" id="overseas" onclick="salaryDetailClick();" type="radio" class="Chackbox" align="absmiddle" />外籍</div>
					</div>

					<!--<div class="mbb_z"><a href ="http://9mi.me/current.aspx" target="_blank">旧版个税计算器(2000元起征) 点击这里</a>
</div>-->
					<div class="mbb_z"><a href ="http://9mi.me/jobs.html" target="_blank">9米计算器改版诚征开发高手！</a>
</div>
				 </div>
				 
			   </div>


		   </div>
		  <!--工资薪金所得（月薪）结束-->
		   
		   <!--年薪制开始-->
		   <div id="annualDIV" style="margin:0 auto;display:none;"> 
			   <div class="main-bot-top h538" style="display:block">
	 
					<div class="mbty_body">
					
					   <div class="mbty_body_list" style="position:relative;">
						 <div class="f-l w110">选择城市：</div>
						 <div class="f-l w170" id="annualCityInptDIV">
						    <input name="annualCity" type="text" id="annualCity" readonly="readonly" onclick="showCityDIVAnnual();" onkeyup="changPosition(event);" class="w120 inputclass" value="请选择城市" />
						 </div>
						 <div class="com_body" style="display:none;" id="annualCityDIV"></div>   
					   </div>
		
					   <div class="mbty_body_list">
						 <div class="f-l FontBold w110">年薪：</div>
						 <div class="f-l w170"><input id="annualPay" onkeypress="annualPayKeyUp();" onblur="chkfloat($(this)[0]);" type="text" class="w120 inputclass" /> 元</div>
					   </div>
			   
					   <div class="mbty_body_list">
						 <div class="f-l FontBold w110">每月领取：</div>
						 <div class="f-l w170"><input id="annualMonthSalary" onkeyup="annualMonthSalaryKeyUp();" onblur="chkfloat($(this)[0]);" type="text" class="w120 inputclass" /> 元</div>  
					   </div>
					   
					   <div class="mbty_body_list">
						 <div class="f-l w110">年底其它奖金：</div>
						 <div class="f-l w170"><input type="text" id="annualBonus" onkeyup="annualPayKeyUp()" onblur="chkfloat($(this)[0]);" class="w120 inputclass" /> 元</div>
						 <div class="fast_button" onkeyup="if(event.keyCode == 13){calculateTaxAnnual(1);}" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
							<div class="fast_button-font" onclick="calculateTaxAnnual(1);">计算</div>
						 </div>
					   </div>
					   
					   <div class="mbty_body_list pt8">
						 <div class="f-l w170">月缴个税：<span id="annualMonthTax"></span></div>
						 <div class="f-l w130">月缴社保：<span id="annualMonthInsurance"></span></div>
					   </div>
					   
					   <div class="mbty_body_list pb8">
						 <div class="f-l w170">剩余年薪：<span id="annualSalary"></span></div>
						 <div class="f-l w130">年底缴税：<span id="annualTax"></span></div>
					   </div>
					   
					   <div class="mbty_body_list">
						 <div class="f-l FontBold w110">年缴税总计：</div>
						 <div class="f-l nian120"><input type="text" id="annualTaxTotal" disabled="disabled" class="w120 not_o nota" /></div> 
						 <div class="f-l red">计算结果仅供参考</div>
					   </div>
					   
					   <div class="mbty_body_list">
						 <div class="f-l FontBold w110">年税后收入：</div>
						 <div class="f-l w170"><input type="text" id="annualIncome" disabled="disabled" class="w120 not_o nota" /></div>
						 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
							<div class="fast_button-font" onclick="resetAnnual();">重置</div>
						 </div> 
					   </div>
					   
					</div>
		
					<hr class="hy_b" />
					 
					<div class="main-boty-head">社保与公积金月缴费明细<span class="normal">(可调整参数)</span></div>
					   <div class="main-boty-center">
						 <div class="mbcy_body">
						  <div class="w186">
							  <div class="w95 f-l">个人缴费合计：</div>
							  <div class="w90 f-l" id="annualPersonalTotal"></div>
						  </div>
						  <div class="w186">
							  <div class="w95 f-l">应纳税额总计：</div>
							  <div class="w90 f-l" id="annualPretaxTotal"></div>
						  </div>
						  <div class="w186">
							<div class="w110 f-l">养老　 <input id="annualPension" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" type="text" class="w30 inputclass" />%：</div>
							<div class="w75 f-l" id="annualPensionSpan"></div>			  
						  </div>
						  <div class="w186">
							<div class="w110 f-l">医疗　 <input id="annualMedicare" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" type="text" class="w30 inputclass" />%：</div>
							<div class="w75 f-l" id="annualMedicareSpan"></div>			  
						  </div>
						  <div class="w186">
							<div class="w110 f-l">失业　 <input id="annualUnemploymentInsurance" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" type="text" class="w30 inputclass" />%：</div>
							<div class="w75 f-l" id="annualUnemploymentInsuranceSpan"></div>			  
						  </div>
						  <div class="w186">
							<div class="w110 f-l mgt50">公积金 <input id="annualFund" onkeyup="fundDetailKeyupAnnual($(this)[0]);" type="text" class="w30 inputclass" />%：</div>
							<div class="w75 f-l mgt50" id="annualFundSpan"></div>			  
						  </div>
						
					   </div>
					   
						 <div class="mbcy_body_r">
						  <div class="w185">
							<div class="w95 f-l">单位缴费合计：</div>
							<div class="w89 f-l" id="annualFirmTotal"></div>
						  </div>
						  <div class="w185">
							<div class="w95 f-l">单位支出总计：</div>
							<div class="w89 f-l" id="annualFirmExpenseTotal"></div>
						  </div>
						  <div class="w185">
							<div class="w110 f-l">养老　 <input type="text" id="annualPensionFirm" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
							<div class="w74 f-l" id="annualPensionFirmSpan"></div>			  
						  </div>
						  <div class="w185">
							<div class="w110 f-l">医疗　 <input type="text" id="annualMedicareFirm" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
							<div class="w74 f-l" id="annualMedicareFirmSpan"></div>			  
						  </div>
						  <div class="w185">
							<div class="w110 f-l">失业　 <input type="text" id="annualUnemploymentInsuranceFirm" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
							<div class="w74 f-l" id="annualUnemploymentInsuranceFirmSpan"></div>			  
						  </div>
						  <div class="w185">
							<div class="w110 f-l">工伤　 <input type="text" id="annualIndustrialInjuryFirm" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
							<div class="w74 f-l" id="annualndustrialInjuryFirmSpan"></div>			  
						  </div>
						  <div class="w185">
							<div class="w110 f-l">生育　 <input type="text" id="annualMaternityInsuranceFirm" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
							<div class="w74 f-l" id="annualMaternityInsuranceFirmSpan"></div>			  
						  </div>
						  <div class="w185">
							<div class="w110 f-l">公积金 <input type="text" id="annualFundFirm" onkeyup="fundFirmDetailKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w30 inputclass" />%：</div>
							<div class="w74 f-l" id="annualFundFirmSpan"></div>			  
						  </div>
					   </div> 
					   </div>
					 
					<hr class="hy_b" />
					 
					<div class="main-bot-bot">
					    <div class="mbb_body">
						   <div class="mbby_js">缴费基数：</div>
						   <div class="mbby_sb">社保<input id="annualInsuranceBase" onkeyup="insuranceBaseKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" type="text" class="w_input inputclass" /></div>
						   <div class="mbby_gj">公积金<input type="text" id="annualFundBase" onkeyup="annualFundBaseKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" class="w_input inputclass" /></div>
						   <div class="mbby_fd">封顶数<input id="annualInsuranceMax" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" onblur="chkfloat($(this)[0]);" type="text" class="w_input inputclass" /></div>
					    </div>
						 
						<div class="mbb_body">
							<div class="mbby_l" onmouseover="this.className='mbby_la'" onmouseout="this.className='mbby_l'">个税起征点：　<input id="annualThreshold" onkeyup="salaryDetailKeyupAnnual($(this)[0]);" type="text" class="w60 not_o"  value="3500" /></div>
							<div class="mbby_l"><input type="radio" id="annualDomestic" onclick="salaryDetailClickAnnual();" class="Chackbox" name="annualNationality" checked="checked" align="absmiddle" />国内　<input id="annualOverseas" onclick="salaryDetailClickAnnual();" name="annualNationality" type="radio" class="Chackbox" align="absmiddle" />外籍</div>
						</div>
						
						<div class="mbb_link">参考阅读：<a href="http://b.9mi.me/?p=258" target="_blank">采用年薪制如何缴纳个人所得税</a></div>
						
				 </div>
				 
			  </div>
		   </div>
		  <!--年薪制结束-->
		  
		  
		  <!--经济补偿金开始-->
		  <div id="compensationDIV" style="margin:0 auto; display:none"> 
			 <div class="main-bot-top h538">
		       <div class="mbt_body">
				  <div class="mbt_body_list" style="position:relative;">
					 <div class="f-l w110">选择城市：</div>
					 <div class="f-l w170" id="compensationCityInptDIV">
						<input type="text" id="compensationCity" readonly="readonly" onclick="showCityDIVCompensation();" onkeyup="changPosition(event);" class="w120 inputclass" value="请选择城市" />
					 </div>
					 <div class="com_body" style="" id="compensationCityDIV"><div style="display: block;" class="com_hotresults" onkeyup="changPosition(event);"><div style="width: 100%;"><div class="ac_title"><span>可用箭头键<span style="font-family: simsun;">&nbsp;←↑↓→&nbsp;</span>选择</span><a class="ac_close" href="#?" method="close" title="关闭"></a></div><ul class="AbcSearch clx"><li class="action">热门</li><li onclick="changeArea('1');" onmouseover="this.className='ac_over'" onmouseout="this.className=''" class="">A-D</li><li onclick="changeArea('2');" onmouseover="this.className='ac_over'" onmouseout="this.className=''" class="">E-J</li><li onclick="changeArea('3');" onmouseover="this.className='ac_over'" onmouseout="this.className=''">K-N</li><li onclick="changeArea('4');" onmouseover="this.className='ac_over'" onmouseout="this.className=''" class="">O-W</li><li onclick="changeArea('5');" onmouseover="this.className='ac_over'" onmouseout="this.className=''" class="">X-Z</li><li onclick="changeArea('6');" onmouseover="this.className='ac_over'" onmouseout="this.className=''" class="">其它</li><div style="clear:both"></div></ul><div style="clear:both"></div><ul style="overflow: auto; max-height: 260px;"><li class="ac_odd" id="0_0" onclick="setCity('0','1','北京');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">北京</li><li class="ac_odd" id="0_1" onclick="setCity('0','2','上海');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">上海</li><li class="ac_odd" id="0_2" onclick="setCity('0','3','广州');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">广州</li><li class="ac_odd" id="0_3" onclick="setCity('0','12','深圳');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">深圳</li><li class="ac_odd" id="0_4" onclick="setCity('0','9','杭州');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">杭州</li><li class="ac_odd" id="0_5" onclick="setCity('0','8','苏州');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">苏州</li><li class="ac_odd " id="0_6" onclick="setCity('0','10','宁波');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">宁波</li><li class="ac_odd " id="0_7" onclick="setCity('0','6','南京');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">南京</li><li class="ac_odd" id="0_8" onclick="setCity('0','29','厦门');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">厦门</li><li class="ac_odd " id="0_9" onclick="setCity('0','42','珠海');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">珠海</li><li class="ac_odd " id="0_10" onclick="setCity('0','39','武汉');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">武汉</li><li class="ac_odd" id="0_11" onclick="setCity('0','13','成都');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">成都</li><li class="ac_odd " id="0_12" onclick="setCity('0','5','重庆');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">重庆</li><li class="ac_odd " id="0_13" onclick="setCity('0','30','西安');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">西安</li><li class="ac_odd " id="0_14" onclick="setCity('0','25','昆明');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">昆明</li><li class="ac_odd " id="0_15" onclick="setCity('0','34','青岛');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">青岛</li><li class="ac_odd " id="0_16" onclick="setCity('0','24','沈阳');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">沈阳</li><li class="ac_odd " id="0_17" onclick="setCity('0','4','天津');" onmouseover="this.className='ac_odd ac_over'" onmouseout="this.className='ac_odd'">天津</li></ul><input id="cityCount" type="hidden" value="18"></div><div class="clear"></div></div></div>
				   </div>
				   
				  <div class="mbt_body_list">
					 <div class="f-l FontBold w110">税前补偿金：</div>
					 <div class="f-l w170"><input id="compensationBefor" onkeyup="compensationBeforKeyUp(event);" onblur="chkfloat($(this)[0]);" type="text" class="w120 inputclass" /> 元</div>
				  </div>
				   
				  <div class="mbt_body_list">
					 <div class="f-l w110">年社平工资：</div>
					 <div class="f-l w170"><input type="text" id="wagesAVG" onkeyup="wagesAVGKeyUp();" onblur="chkInt($(this)[0]);" class="w120 inputclass" /> 元</div>
				  </div>	
				  
				  <div class="mbt_body_list">
					 <div class="f-l w110">月缴四金：</div>
					 <div class="f-l w170"><input type="text" id="compensationInsurance" onkeyup="compensationInsuranceKeyUp();" onblur="chkfloat($(this)[0]);" class="w120 inputclass" /> 元</div>
				  </div>
				   
				   <div class="mbt_body_list">
					 <div class="f-l FontBold w110">工作年限：</div>
					 <div class="f-l w170">
						<select id="compensationTime" onchange="compensationTimeChange();">
							<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12" >12</option>
						</select> 年
					</div>
					<div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
						<div class="fast_button-font" onclick="calculateTaxCompensation(1);">计算</div>
					 </div>
				   </div>
	
				   <div class="mbt_body_list">
					 <div class="f-l FontBold w110">缴纳个税：</div>
					 <div class="f-l w170"><input disabled="disabled" id="compensationTax" type="text" class="w120 not_o nota" /> 元</div> 
					 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
						<div class="fast_button-font" onclick="resetCompensation();">重置</div>
					 </div>
					 
				   </div>
				   
				   <div class="mbt_body_list">
					 <div class="f-l FontBold w110">税后补偿金：</div>
					 <div class="f-l w170"><input type="text" disabled="disabled" id="compensationAfter" class="w120 not_o nota" /> 元</div> 
					 <!--<div class="f-l">单位：<span class="FontBold">元</span></div>-->
				   </div>
	
				 </div>
				<div class="statement"><span class="red">计算结果仅供参考</span>  <a href="http://www.9mi.me/Statement.html" target="_blank">免责声明</a></div>
			 
			 <hr class="h_b" />
			 
			  <!--经济补偿金内容开始-->
			   <div class="introduction">
               <p>　　个人因与用人单位解除劳动关系而取得的一次性补偿收入(包括用人单位发放的经济补偿金、生活补助费和其他补助费用)，其收入在当地上年职工平均工资3倍数额以内的部分，免征个人所得税；超过的部分按照《国家税务总局关于个人因解除劳动合同取得经济补偿金征收个人所得税问题的通知》(国税发［1999］178号)的有关规定，计算征收个人所得税。</p>
               <p>　　参考阅读：<a href="http://b.9mi.me/?p=294" target="_blank">公司支付的经济补偿金如何缴纳个人所得税</a></p>
               </div>
			  <!--经济补偿金内容结束-->
			 </div>
		  </div>
          <!--经济补偿金结束-->
          
          <!--分割线内容开始-->
		   <div id="decollator" style="margin:0 auto; display:none"> 
			  <div class="main-bot-top h484 pt50">
			   <div class="mbt_body"></div>
			   
			      <hr class="h_b"> 
			      <div class="line" style="display:block;">
				   <p>感谢您使用9米计算器。如果您觉得9米计算器有用、好用，可以加入到收藏夹，或与你的好友分享。 </p>
				   <p>&nbsp;</p>
				   <p>如果您想了解更多的内容，请访问<a href="http://b.9mi.me" target="_blank">9米博客</a>。</p>
				   <p>&nbsp;</p>
				   <p>如果您有任何意见或建议，可以直接添加评论，或通过以下方式与我们联系：<br />关注<a href="http://t.sina.com.cn/9mi9mi" target="_blank">9米新浪微博</a><br />发送邮件到 <a href="mailto:9mi.mee@gmail.com">9mi.mee@gmail.com</a><br />您的帮助会让9米计算器更加好用。</p>
				   <p>&nbsp;</p>
				   <p>请切换“收入类型”选择要计算的内容。</p>
				 </div>
			  </div>
		  </div>
		  <!--分割线内容结束-->
		  
		  
		  
		  
		   <div id="otherDIV" style="display:none;margin:0 auto">
			 <div class="main-bot-top h538">
			 
			 <!--带反推 开始-->	
			   <div class="mbt_body" id="otherRapidDIV" style="display:none">
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税前收入：</div>
				 <div class="f-l w170"><input type="text" id="otherBeforeTax" onkeydown='chkfloat($(this)[0]);if(event.keyCode==13){otherCalculate();};' onblur="chkfloat($(this)[0]);" class="w120 inputclass" /> 元</div> 
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="otherCalculate();">计算</div>
				 </div>
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税后收入：</div>
				 <div class="f-l w170"><input id="otherAfterTax" onkeydown='chkfloat($(this)[0]);if(event.keyCode==13){otherCalculateAfter();};' onblur="chkfloat($(this)[0]);" type="text" disabled="disabled" class="w120 inputclass" /> 元</div> 

			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">缴纳个税：</div>
				 <div class="f-l w170"><input id="otherTax" type="text" disabled="disabled" class="w120 not_o nota" /> 元</div> 
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="otherRapidReset();">重置</div>
				 </div>
			   </div>

			 </div>
			<!--带反推 结束-->	
			 
			<!--不带反推 开始-->			 
			 <div class="mbt_body" id="otherRapidDIV2" style="display:none">
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税前收入：</div>
				 <div class="f-l w170"><input type="text" id="otherBeforeTax2" onkeydown='chkfloat($(this)[0]);if(event.keyCode==13){otherCalculateDetail();};' onblur="chkfloat($(this)[0]);" class="w120 inputclass" /> 元</div> 
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="otherCalculateDetail();">计算</div>
				 </div>
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税后收入：</div>
				 <div class="f-l w170"><input id="otherAfterTax2" disabled="disabled" type="text" class="w120 not_o nota" /> 元</div>
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">缴纳个税：</div>
				 <div class="f-l w170"><input id="otherTax2" type="text" disabled="disabled" class="w120 not_o nota" /> 元</div> 
			   </div>

			 </div>			 
			<!--不带反推 结束--> 
			
			<!--对企事业单位的承包、承租经营所得 开始-->
			 <div class="mbt_body" id="enterpriseDIV" style="display:none">
 
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税前收入：</div>
				 <div class="f-l w170"><input id="enterpriseRevenue" onkeydown='chkfloat($(this)[0]);if(event.keyCode==13){enterpriseCalculate();};' onblur="chkfloat($(this)[0]);" type="text" class="w120 inputclass" /> 元</div>
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="enterpriseCalculate();">计算</div>
				 </div>
			   </div>
			   

			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">经营时间：</div>
				 <div class="f-l w170">
				    <select id="enterpriseTime">
				        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12" selected="selected">12</option>
                    </select> 月
                </div>
			   </div>

			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税后收入：</div>
				 <div class="f-l w170"><input id="enterpriseProfits" disabled="disabled" type="text" class="w120 not_o nota" /> 元</div> 
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">缴纳个税：</div>
				 <div class="f-l w170"><input id="enterpriseTax" type="text" disabled="disabled" class="w120 not_o nota" /> 元</div> 
				 <!--<div class="f-l">单位：<span class="FontBold">元</span></div>-->
			   </div>

			 </div>
			<!--对企事业单位的承包、承租经营所得 结束-->
			 
			<!--个体工商户的生产、经营所得 开始-->
			   <div class="mbt_body" id="privatelyDIV" style="display:none">

			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">年度收入：</div>
				 <div class="f-l w170"><input id="privatelyRevenue" onkeydown='chkfloat($(this)[0]);if(event.keyCode==13){privatelyCalculate();};' onblur="chkfloat($(this)[0]);" type="text" class="w120 inputclass" /> 元</div>
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="privatelyCalculate();">计算</div>
				 </div>
			   </div>

			   <div class="mbt_body_list">
				 <div class="f-l FontBold w130">成本、费用及损失：</div>
				 <div class="f-l w170"><input id="privatelyExpense" onblur="chkfloat($(this)[0]);" type="text" class="w100 inputclass" /> 元</div>
			   </div>
			   			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税后收入：</div>
				 <div class="f-l w170"><input type="text" id="privatelyProfits" disabled="disabled" class="w120 not_o nota" /> 元</div>  
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">缴纳个税：</div>
				 <div class="f-l w170"><input type="text" id="privatelyTax" disabled="disabled" class="w120 not_o nota" /> 元</div> 
				<!-- <div class="f-l">单位：<span class="FontBold">元</span></div>-->
			   </div>

			 </div>
			<!--个体工商户的生产、经营所得 结束-->
			
			<!--工资薪金所得月薪制简化版 开始-->			 
			 <div class="mbt_body" id="simplifiedDIV" style="display:none;">
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税前月收入：</div>
				 <div class="f-l w170"><input type="text" id="simplifiedSalary" onkeyup="simplifiedSalaryKeydown(event)" onblur="chkfloat($(this)[0])" class="w120 inputclass" /> 元</div> 
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="simplifiedCalculateSalary()">计算</div>
				 </div>
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l w110">社保/公积金：</div>
				 <div class="f-l w170"><input type="text" id="simplifiedInsurance" class="w120 inputclass" /> 元</div>
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">税后月收入：</div>
				 <div class="f-l w170"><input type="text" class="w120 inputclass" id="simplifiedAftertax" onkeyup="simplifiedAftertaxKeydown(event)" onblur="chkfloat($(this)[0])" /> 元</div>
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="simplifiedCalculateAftertax()">反推</div>
				 </div>
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l FontBold w110">缴纳个税：</div>
				 <div class="f-l w170"><input type="text" class="w120 inputclass" id="simplifiedTax" onkeyup="simplifiedTaxKeydown(event)" onblur="chkfloat($(this)[0])" /> 元</div> 
				 <div class="fast_button" onmouseover="this.className='fast_button_over'" onmouseout="this.className='fast_button'">
					<div class="fast_button-font" onclick="simplifiedCalculateTax()">反推</div>
				 </div>
			   </div>
			   
			   <div class="mbt_body_list">
				 <div class="f-l w110">个税起征点：</div>
				 <div class="f-l w170"><input type="text" id="simplifiedThreshold" onkeyup="chkfloatKeyup($(this)[0])" onblur="chkfloat($(this)[0])" value="3500" class="w120 inputclass" /> 元</div> 
			   </div>

			 </div>			 
			<!--工资薪金所得月薪制简化版 结束--> 
			
			<div class="statement"><span class="red">计算结果仅供参考</span>  <a href="http://www.9mi.me/Statement.html" target="_blank">免责声明</a></div>
		  <hr class="h_b" />
			 
			   <div id="DIV1" class="introduction" style="display:none;">
			    <p>　　年终奖个税计算方法：纳税人取得全年一次性奖金，单独作为一个月工资、薪金所得计算纳税，并按以下计税办法，由扣缴义务人发放时代扣代缴：<br/>
　　先将雇员当月内取得的全年一次性奖金，除以12个月，按其商数确定适用税率和速算扣除数。<br/>
　　如果在发放年终一次性奖金的当月，雇员当月工资薪金所得低于税法规定的费用扣除额，应将全年一次性奖金减除“雇员当月工资薪金所得与费用扣除额的差额”后的余额，按上述办法确定全年一次性奖金的适用税率和速算扣除数。<br/></p><br/>

                <p>参考阅读：<a href="http://b.9mi.me/?p=67" title="年底双薪如何扣税" target="_blank">年底双薪如何扣税</a>、
                <a href="http://b.9mi.me/?p=24" title="年终奖扣税办法" target="_blank">年终奖扣税办法</a>、<a href="http://b.9mi.me/?p=350" target="_blank">警惕年终奖扣税陷井</a></p>
			   </div>
			    <div id="DIV2" class="introduction" style="display:none;">
			    <p>　　劳务报酬所得，是指个人从事设计、装潢、安装、制图、化验、测试、医疗、法律、会计、咨询、讲学、新闻、广播、翻译、审稿、书画、雕刻、影视、录音、录像、演出、表演、广告、展览、技术服务、介绍服务、经纪服务、代办服务以及其他劳务取得的所得。</p>
                <p>　　劳务报酬所得个税计算方法：1. 劳务报酬所得适用比例税率，税率为20%；2. 每次收入不超过4000元的，减除费用800元；4000元以上的，减除20%的费用，其余额为应纳税所得额；3. 对劳务报酬所得一次收入畸高（应纳税所得额超过2万元）的，要实行加成征收办法，具体是：对应纳税所得额超过2万元至5万元的部分，依照税法规定计算应纳税额后再按照应纳税额加征五成；超过5万元的部分，加征十成。</p>
			   <p>　　参考阅读：<a href="http://b.9mi.me/2010/10/21/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95/" title="中华人民共和国个人所得税法" target="_blank">中华人民共和国个人所得税法</a>、<a href="http://b.9mi.me/2010/10/22/%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95%E5%AE%9E%E6%96%BD%E6%9D%A1%E4%BE%8B/" title="个人所得税法实施条例" target="_blank">个人所得税法实施条例</a></p>
               </div>
			    <div id="DIV3" class="introduction" style="display:none;">
               <p>　　稿酬所得，是指个人因其作品以图书、报刊形式出版、发表而取得的所得。</p>
               <p>　　稿酬所得以每次出版、发表取得的收入为一次，计算缴纳个人所得税。</p>
               <p>　　稿酬所得个税的计算方法：1. 稿酬所得适用比例税率，税率为20%，并按应纳税额减征30%。2. 每次收入不超过4000元的，减除费用800元；4000元以上的，减除20%的费用，其余额为应纳税所得额。</p>
               <p>　　参考阅读：<a href="http://b.9mi.me/2010/10/21/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95/" title="中华人民共和国个人所得税法" target="_blank">中华人民共和国个人所得税法</a>、<a href="http://b.9mi.me/2010/10/22/%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95%E5%AE%9E%E6%96%BD%E6%9D%A1%E4%BE%8B/" title="个人所得税法实施条例" target="_blank">个人所得税法实施条例</a></p>
               </div>
			    <div id="DIV4" class="introduction" style="display:none;">
               <p>　　特许权使用费所得，是指个人提供专利权、商标权、著作权、非专利技术以及其他特许权的使用权取得的所得。提供著作权的使用权取得的所得，不包括稿酬所得。<br />
　　特许权使用费所得税的计算方法：1. 特许权使用费所得适用20%的税率。2. 每次收入不超过4000元的，可以扣除费用800元；每次收入4000元以上的，可以扣除20%的费用，其余额为应纳税所得额。</p>
			   <p>　　参考阅读：<a href="http://b.9mi.me/2010/10/21/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95/" title="中华人民共和国个人所得税法" target="_blank">中华人民共和国个人所得税法</a>、<a href="http://b.9mi.me/2010/10/22/%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95%E5%AE%9E%E6%96%BD%E6%9D%A1%E4%BE%8B/" title="个人所得税法实施条例" target="_blank">个人所得税法实施条例</a></p>
</div>
			    <div id="DIV5" class="introduction" style="display:none;">
               <p>　　财产租赁所得，是指个人出租建筑物、土地使用权、机器设备、车船以及其他财产取得的所得。</p>
               <p>　　财产租赁所得适用20%的税率。财产租赁所得以一个月内取得的收入为一次，每次收入不超过4000元的，减除费用800元；4000元以上的，减除20%的费用，其余额为应纳税所得额。</p>
               <p>　　参考阅读：<a href="http://b.9mi.me/2010/10/21/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95/" title="中华人民共和国个人所得税法" target="_blank">中华人民共和国个人所得税法</a>、<a href="http://b.9mi.me/2010/10/22/%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95%E5%AE%9E%E6%96%BD%E6%9D%A1%E4%BE%8B/" title="个人所得税法实施条例" target="_blank">个人所得税法实施条例</a></p>
			   </div>
			    <div id="DIV6" class="introduction" style="display:none;">
               <p>　　财产转让所得是指个人转让有价证券、股权、建筑物、土地使用权、机器设备、车船以及其他财产取得的所得。</p>
               <p>　　财产转让所得，以一次转让财产收入额（不管分多少次支付，均应合并为一次转让财产收入）减去财产原值和合理费用后的余额为应纳税所得额，适用20%的税率。</p>
               <p>　　参考阅读：<a href="http://b.9mi.me/2010/10/21/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95/" title="中华人民共和国个人所得税法" target="_blank">中华人民共和国个人所得税法</a>、<a href="http://b.9mi.me/2010/10/22/%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95%E5%AE%9E%E6%96%BD%E6%9D%A1%E4%BE%8B/" title="个人所得税法实施条例" target="_blank">个人所得税法实施条例</a></p>
               </div>
			    <div id="DIV7" class="introduction" style="display:none;">
               <p>　　利息、股息、红利所得，是指个人拥有债权、股权而取得的利息、股息、红利所得。<br />　　计算缴纳个人所得税的方法是：以每次利息、股息、红利所得为应纳税所得额，适用20%的税率。</p>
               <p>　　参考阅读：<a href="http://b.9mi.me/2010/10/21/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95/" title="中华人民共和国个人所得税法" target="_blank">中华人民共和国个人所得税法</a>、<a href="http://b.9mi.me/2010/10/22/%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95%E5%AE%9E%E6%96%BD%E6%9D%A1%E4%BE%8B/" title="个人所得税法实施条例" target="_blank">个人所得税法实施条例</a></p>
               </div>
			   <div id="DIV9" class="introduction" style="display:none;">
               <p>　　个人对企事业单位的承包经营、承租经营所得，是指个人承包经营、承租经营以及转包、转租取得的所得，包括个人按月或者按次取得的工资、薪金性质的所得。</p>
               <p>　　对企事业单位的承包经营、承租经营所得，以每一纳税年度的收入总额，减除必要费用后的余额，为应纳税所得额，适用百分之五至百分之三十五的超额累进税率。（参考<a href="http://b.9mi.me/2010/12/01/2010%E5%B9%B4%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E7%A8%8E%E7%8E%87%E8%A1%A8%E5%92%8C%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E8%AE%A1%E7%AE%97%E6%96%B9%E6%B3%95/" title="个人所得税税率表" target="_blank">个人所得税税率表</a>）</p>
               <p>　　纳税年度的收入总额，是指纳税义务人按照承包经营、承租经营合同规定分得的经营利润和工资、薪金性质的所得；减除必要费用，是指按月减除2000元。</p>
               </div>
               <div id="DIV8" class="introduction" style="display:none;">
               <p>　　个体工商户的生产、经营所得是指：1.个体工商户从事工业、手工业、建筑业、交通运输业、商业、饮食业、服务业、修理业以及其他行业生产、经营取得的所得；2.个人经政府有关部门批准，取得执照，从事办学、医疗、咨询以及其他有偿服务活动取得的所得；3.其他个人从事个体工商业生产、经营取得的所得；4.上述个体工商户和个人取得的与生产、经营有关的各项应纳税所得。</p>
               <p>　　个体工商户的生产、经营所得，以每一纳税年度的收入总额，减除成本、费用以及损失后的余额，为应纳税所得额，适用百分之五至百分之三十五的超额累进税率。（<a href="http://b.9mi.me/2010/12/01/2010%E5%B9%B4%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E7%A8%8E%E7%8E%87%E8%A1%A8%E5%92%8C%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E8%AE%A1%E7%AE%97%E6%96%B9%E6%B3%95/" title="个人所得税税率表" target="_blank">个人所得税税率表</a>）</p>
               <p>　　此处的成本、费用，是指纳税义务人从事生产、经营所发生的各项直接支出和分配计入成本的间接费用以及销售费用、管理费用、财务费用；所说的损失，是指纳税义务人在生产、经营过程中发生的各项营业外支出。</p>
               </div>
			   <div id="DIV10" class="introduction" style="display:none;"><p>　　偶然所得，是指个人得奖、中奖、中彩以及其他偶然性质的所得。</p>
               <p>　　偶然所得个税的计算方法：偶然所得适用税率为20%。</p>
               <p>　　参考阅读：<a href="http://b.9mi.me/2010/10/21/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95/" title="中华人民共和国个人所得税法" target="_blank">中华人民共和国个人所得税法</a>、<a href="http://b.9mi.me/2010/10/22/%E4%B8%AA%E4%BA%BA%E6%89%80%E5%BE%97%E7%A8%8E%E6%B3%95%E5%AE%9E%E6%96%BD%E6%9D%A1%E4%BE%8B/" title="个人所得税法实施条例" target="_blank">个人所得税法实施条例</a></p>
              </div>
			  <!--工资薪金所得月薪制简化版-->
			  <div id="DIV14" class="introduction" style="display:none;">
			  <p>　　输入税前月收入（及社保/公积金缴费数），可计算税后收入及个税；输入税后月收入（及社保/公积金缴费数），可反推税前收入；输入缴纳个税（及社保/公积金缴费数），也可反推税前及税后收入！</p>
			  <p>&nbsp;</p>
			  <p>　　参考阅读：<a target="_blank" href="http://b.9mi.me/2010/12/09/%E4%BB%80%E4%B9%88%E6%98%AF%E7%A8%8E%E5%89%8D%E5%B7%A5%E8%B5%84%E5%92%8C%E7%A8%8E%E5%90%8E%E5%B7%A5%E8%B5%84/">什么是税前工资和税后工资</a></p>
			  </div> 
			  <!--工资薪金所得月薪制简化版--> 
			</div>
            
		  </div>
  </div>
  
  <script type="text/javascript" language="javascript">      getDate();</script>
    </form>
</body>
</html>
