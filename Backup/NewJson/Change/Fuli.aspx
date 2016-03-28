<%@ Page Title="复利计算器,在线复利计算器" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Fuli.aspx.cs" Inherits="NewJson.Change.Fuli" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="Keywords" content="在线复利计算器,复利计算器在线">
    <meta name="Description" content="在线复利计算器,复利计算器在线">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        复利计算器,在线复利计算器</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="left" id="part-left">
                <div class="shipin">
                    <div class="chadiv" style="margin: 20px auto; padding-left: 20px; padding-right: 20px;">
                        <fieldset>
                            <p style="height: 30px; padding-left: 200px;">
                                计算项目:
                                <input type="radio" language="javascript" id="rd_CalcPrinc" onclick="OnSelectChange()"
                                    value="rd_CalcPrinc" name="RadioGroup"><label for="rd_CalcPrinc">本金</label>&nbsp;&nbsp;
                                <input type="radio" language="javascript" id="rd_CalcComp" onclick="OnSelectChange()"
                                    tabindex="1" checked="" value="rd_CalcComp" name="RadioGroup"><label for="rd_CalcComp">复利</label></p>
                            <p style="height: 30px; padding-left: 200px;">
                                存入本金：<input type="text" size="36" class="txtnum" id="principal" name="principal"
                                    tabindex="2"></p>
                            <p style="height: 30px; padding-left: 200px;">
                                年利率比：<input type="text" size="36" class="txtnum" id="yearrate" name="yearrate" tabindex="3">（%）</p>
                            <p style="height: 30px; padding-left: 200px;">
                                存入年限：<input type="text" size="36" class="txtnum" tabindex="4" id="years" name="years"></p>
                            <p style="height: 30px; padding-left: 200px;">
                                复利次数：<input type="text" size="36" class="txtnum" id="bonustime" name="bonustime"
                                    tabindex="5">（年）</p>
                            <p style="height: 30px; padding-left: 200px;">
                                复利终值：<input type="text" size="36" class="txtnum" id="compinterest" disabled="" value="最终计算结果"
                                    name="compinterest"></p>
                            <p style="height: 30px; padding-left: 200px;">
                                <input type="button" tabindex="9" class="btn" id="btnenter" onclick="javascript:calc();"
                                    value="  填好了，现在就开始计算  " name="btnenter"></p>
                        </fieldset>
                     
                        
                        

                    </div>
                </div>
            </div>
            
            </div>
            

        </div>
                <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="media">
                        <div class="media-body">
                            <h4 class="media-heading">
                                复利终值/现值计算器(追加期初复利投资计算器)</h4>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                <form id="form1" method="post" style="margin: 0px;" action="" name="form1">
                        <table height="820" cellspacing="0" bgcolor="#dddddd" style="width: 100%">
                            <tbody>
                                <tr>
                                    <td valign="top" height="822" bgcolor="#f5f5f5" style="height: 25px">
                                        <table width="100%" cellspacing="0" cellpadding="0" border="1" align="center" bordercolorlight="#000000"
                                            bordercolordark="#ffffff" class="unnamed1">
                                            <tbody>
                                                <tr align="center">
                                                    <td width="80">
                                                        时间
                                                    </td>
                                                    <td width="80">
                                                        期初投资
                                                    </td>
                                                    <td width="135">
                                                        期末总资产
                                                    </td>
                                                    <td width="110">
                                                        平均收益率
                                                    </td>
                                                    <td width="80">
                                                        期末日期
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 1 <span id="danwei0">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money0" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total0">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li0">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year0">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 2 <span id="danwei1">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money1" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total1">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li1">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year1">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 3 <span id="danwei2">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money2" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total2">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li2">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year2">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 4 <span id="danwei3">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money3" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total3">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li3">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year3">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 5 <span id="danwei4">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money4" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total4">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li4">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year4">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 6 <span id="danwei5">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money5" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total5">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li5">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year5">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 7 <span id="danwei6">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money6" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total6">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li6">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year6">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 8 <span id="danwei7">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money7" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total7">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li7">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year7">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 9 <span id="danwei8">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money8" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total8">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li8">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year8">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 10 <span id="danwei9">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money9" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total9">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li9">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year9">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 11 <span id="danwei10">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money10" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total10">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li10">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year10">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 12 <span id="danwei11">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money11" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total11">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li11">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year11">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 13 <span id="danwei12">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money12" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total12">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li12">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year12">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 14 <span id="danwei13">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money13" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total13">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li13">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year13">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 15 <span id="danwei14">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money14" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total14">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li14">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year14">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 16 <span id="danwei15">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money15" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total15">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li15">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year15">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 17 <span id="danwei16">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money16" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total16">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li16">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year16">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 18 <span id="danwei17">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money17" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total17">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li17">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year17">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 19 <span id="danwei18">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money18" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total18">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li18">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year18">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 20 <span id="danwei19">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money19" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total19">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li19">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year19">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 21 <span id="danwei20">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money20" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total20">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li20">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year20">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 22 <span id="danwei21">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money21" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total21">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li21">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year21">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 23 <span id="danwei22">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money22" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total22">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li22">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year22">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 24 <span id="danwei23">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money23" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total23">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li23">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year23">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 25 <span id="danwei24">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money24" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total24">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li24">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year24">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 26 <span id="danwei25">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money25" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total25">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li25">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year25">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 27 <span id="danwei26">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money26" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total26">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li26">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year26">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 28 <span id="danwei27">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money27" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total27">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li27">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year27">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 29 <span id="danwei28">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money28" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total28">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li28">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year28">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center">
                                                        第 30 <span id="danwei29">年度</span>
                                                    </td>
                                                    <td align="center">
                                                        <input id="money29" value="0" size="15" maxlength="15">
                                                        元
                                                    </td>
                                                    <td align="right">
                                                        <span id="total29">0</span>
                                                    </td>
                                                    <td align="right">
                                                        <span id="li29">0</span>
                                                    </td>
                                                    <td align="center">
                                                        <span id="year29">&nbsp;</span>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td height="25" colspan="5">
                                                        期初投资累计总额
                                                        <input id="zonge" value="0" size="15" maxlength="15">
                                                        &nbsp;元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;收益率：
                                                        <select id="select" onchange="select_change();" name="select">
                                                            <option selected="" value="年度">年度</option>
                                                            <option value="季度">季度</option>
                                                            <option value="月度">月度</option>
                                                        </select>
                                                        <input class="smallInput" maxlength="5" size="5" value="4" name="rate" id="rate">
                                                        %
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div align="center" style="margin-top: 10px;">
                                            <p>
                                                <input type="button" value="计算" id="Calc" onclick="calc_onClick();">
                                                <input type="reset" onclick="form1onreset();" id="reset" value="重设">
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        </form>
                </div>
                </div>

                                <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="media">
                        <div class="media-body">
                            <h4 class="media-heading">
                                复利终值/现值计算器(追加期初复利投资计算器) 使用教程</h4>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                <div style="text-align: left; text-indent: 2em;">
                            追加期初投资复利计算器所采用的是复利计算公式进行计算复利现值，期初投资允许第二个期限初追加投资，比如第二年，你可再投入多少元，不追加时，可不填写。
                            在收益率处选择期限类型（年度/季度/月度）和输入该期限下的利率。如果计算的期限超过30，可以把30期限后计算的期末总资产再填入期初投资，计算余下的期限。<br /><fontcolor="#3300FF"><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;例如:需要计算的是59年的本金与收益之和，那么操作方法：<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1）、收益率选择年度，先计算30年；<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2）、再把30年后的期末总资产与第31年追加的投资进行想加，将得到的值填写到第一年度的期初投资，依此类推，相应填入后续投资，然后进行计算，直到计算到第29年的期末总资产，也就是最终的59年的收益与本金和。按照此法，无论计算多少年，如法炮制即可。</font><br>
                            &nbsp;</div>
                </div>
                </div>
        <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="media">
                        <div class="media-body">
                            <h4 class="media-heading">
                                复利相关知识</h4>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <fieldset>
                        <legend align="center">
                            <h3>
                                复利计算器公式</h3>
                        </legend>
                        <p style="padding-left: 10px;">
                            F=P*(1+i)^n<br />
                            F=A((1+i)^n-1)/i<br />
                           公式描述：<br />
                            F：终值（Future Value），或叫未来值，即期末本利和的价值。<br />
                            P：现值（Present Value），或叫期初金额。<br />
                            A ：年金（Annuity），或叫等额值。<br />
                            i：利率或折现率<br />
                            n：计息期数(公式中为（1+i）的次方数)<br />
                        </p>
                    </fieldset>
                    <fieldset>
                        <legend align="center">
                            <h3>
                                复利计算器名片</h3>
                        </legend>
                        <p style="padding-left: 10px; text-indent: 2em;">
                            复利计算器又叫复利终值计算器或复利现值计算器。严格按照最新复利计算公式准确无误的计算现值复利。复利计算值可以精确到小数点后四位，也可以通过复利终值来计算本金，这个时候的复利终值精确到小数点后两位，而本金则可以计算到小数点后四位。复利终值计算器是计算以复利方式记息的终值或现值。复利的计算是考虑前一期利息再生利息的问题，要计入本金重复计息，即“利生利”“利滚利”。
                        </p>
                    </fieldset>
                </div>
                </div>
                            <script src="/Js/change/checkdata.js" type="text/javascript"></script>

            <script src="/Js/change/numeral.min.js" type="text/javascript"></script>
            <script language="javaScript" type="text/javascript">
                function select_change() {

                    for (i = 0; i <= 29; i++) {
                        document.getElementById("danwei" + i.toString()).innerHTML = form1.select.value;
                    }
                }
                function Check(Num) {
                    check = false;
                    if (Num >= 0)
                        check = true;
                    return check;
                }

                function calc_onClick() {
                    var d = new Date();
                    for (i = 0; i <= 29; i++) {
                        if (form1.select.selectedIndex == 0)  //选择年度
                        {
                            document.getElementById("year" + i.toString()).innerHTML = d.getFullYear() + i + 1;

                        }
                        if (form1.select.selectedIndex == 1)//选择季度
                        {
                            d = new Date();
                            nian = DateAdd("m", (1 + i) * 3, d);

                            document.getElementById("year" + i.toString()).innerHTML = nian.getFullYear() + "年" + (nian.getMonth() + 1) + "月";

                        }
                        if (form1.select.selectedIndex == 2)//选择月度
                        {
                            d = new Date();
                            nian = DateAdd("m", i + 1, d);
                            document.getElementById("year" + i.toString()).innerHTML = nian.getFullYear() + "年" + (nian.getMonth() + 1) + "月";

                        }
                    }

                    var leijia;
                    leijia = 0
                    if (!(Check(form1.rate.value) && Check(form1.money0.value))) {
                        alert("初始值有错，请核对后重新输入！ ");
                        exit;
                    }
                    else {
                        for (i = 0; i <= 29; i++) {
                            leijia = leijia + parseFloat(document.getElementById("money" + i.toString()).value);
                        }
                        form1.zonge.value = leijia;
                    }

                    document.getElementById("total0").innerHTML = numeral(form1.money0.value * (1 + form1.rate.value / 100)).format('0,0.00');

                    if (form1.money0.value == "0") {
                        document.getElementById("li0").innerHTML = 0;
                    }
                    else {
                        total0zhi = numeral().unformat(document.getElementById("total0").innerHTML);
                        document.getElementById("li0").innerHTML = numeral(total0zhi / parseFloat(form1.money0.value) - 1).format('0.00%');
                    }

                    for (i = 1; i <= 29; i++) {
                        if (Check((document.getElementById("money" + i.toString()).value))) {
                            var totali_1 = numeral().unformat(document.getElementById("total" + parseInt(i - 1).toString()).innerHTML);
                            var moneyi = parseFloat(document.getElementById("money" + i.toString()).value) * 1;
                            document.getElementById("total" + i.toString()).innerHTML = numeral((parseFloat(totali_1 * 1) + moneyi) * (1 + form1.rate.value / 100)).format('0,0.00');
                            totalmoney = 0;
                            for (j = 0; j <= i; j++) {
                                totalmoney = totalmoney + parseFloat(document.getElementById("money" + j.toString()).value) * 1;
                            }
                            if (totalmoney == 0) {
                                document.getElementById("li" + i.toString()).innerHTML = 0;
                            }
                            else {
                                var totali = numeral().unformat(document.getElementById("total" + i.toString()).innerHTML);
                                document.getElementById("li" + i.toString()).innerHTML = numeral((totali) / totalmoney - 1).format('0.00%');
                            }
                        }
                        else {
                            alert("输入值有错，请核对后重新输入！");
                            document.getElementById("money" + i.toString()).select();
                            document.getElementById("money" + i.toString()).focus();
                            exit;
                        }
                    }

                }
                //因为非IE浏览器无法显示，所以这里用其他函数代替显示。多熟悉Jquery，可以使用Jquery开发。
                function calc_onClick_Chrome_Ee() {
                    var d = new Date();
                    for (i = 0; i <= 29; i++) {
                        if (form1.select.selectedIndex == 0)  //选择年度
                        {
                            document.getElementById("year" + i.toString()).innerHTML = d.getYear() + i + 1;

                        }
                        if (form1.select.selectedIndex == 1)//选择季度
                        {
                            d = new Date();
                            nian = DateAdd("m", (1 + i) * 3, d);

                            document.getElementById("year" + i.toString()).innerHTML = nian.getYear() + "年" + (nian.getMonth() + 1) + "月";

                        }
                        if (form1.select.selectedIndex == 2)//选择月度
                        {
                            d = new Date();
                            nian = DateAdd("m", i + 1, d);
                            document.getElementById("year" + i.toString()).innerHTML = nian.getYear() + "年" + (nian.getMonth() + 1) + "月";

                        }
                    }

                    var leijia;
                    leijia = 0
                    if (!(Check(form1.rate.value) && Check(form1.money0.value))) {
                        alert("初始值有错，请核对后重新输入！ ");
                        exit;
                    }
                    else {
                        for (i = 0; i <= 29; i++) {
                            leijia = leijia + parseFloat(document.getElementById("money" + i.toString()).value);
                        }
                        form1.zonge.value = leijia;
                    }

                    document.getElementById("total0").innerHTML = baoLiu(form1.money0.value * (1 + form1.rate.value / 100), 2);

                    if (form1.money0.value == "0") {
                        document.getElementById("li0").innerHTML = 0;
                    }
                    else {
                        total0zhi = document.getElementById("total0").innerHTML;
                        document.getElementById("li0").innerHTML = baoLiu(total0zhi / parseFloat(form1.money0.value) - 1, 4);
                    }


                    for (i = 1; i <= 29; i++) {
                        if (Check((document.getElementById("money" + i.toString()).value))) {
                            var totali_1 = document.getElementById("total" + parseInt(i - 1).toString()).innerHTML;
                            var moneyi = parseFloat(document.getElementById("money" + i.toString()).value) * 1;
                            document.getElementById("total" + i.toString()).innerHTML = baoLiu((parseFloat(totali_1 * 1) + moneyi) * (1 + form1.rate.value / 100), 2);
                            totalmoney = 0;
                            for (j = 0; j <= i; j++) {
                                totalmoney = totalmoney + parseFloat(document.getElementById("money" + j.toString()).value) * 1;
                            }
                            if (totalmoney == 0) {
                                document.getElementById("li" + i.toString()).innerHTML = 0;
                            }
                            else {
                                var totali = document.getElementById("total" + i.toString()).innerHTML;
                                document.getElementById("li" + i.toString()).innerHTML = baoLiu((totali) / totalmoney - 1, 4);
                            }
                        }
                        else {
                            alert("输入值有错，请核对后重新输入！");
                            document.getElementById("money" + i.toString()).select();
                            document.getElementById("money" + i.toString()).focus();
                            exit;
                        }
                    }

                }

                function DateAdd(interval, number, date) {
                    switch (interval.toLowerCase()) {
                        case "y": return new Date(date.setFullYear(date.getFullYear() + number));
                        case "m": return new Date(date.setMonth(date.getMonth() + number));
                        case "d": return new Date(date.setDate(date.getDate() + number));
                        case "w": return new Date(date.setDate(date.getDate() + 7 * number));
                        case "h": return new Date(date.setHours(date.getHours() + number));
                        case "n": return new Date(date.setMinutes(date.getMinutes() + number));
                        case "s": return new Date(date.setSeconds(date.getSeconds() + number));
                        case "l": return new Date(date.setMilliseconds(date.getMilliseconds() + number));
                    }
                }

                function baoLiu(number, fractionDigits) {
                    with (Math) {
                        return round(number * pow(10, fractionDigits)) / pow(10, fractionDigits);
                    }
                }
                function CheckData() {
                    if (document.all.rd_CalcComp.checked)
                        if (!CheckFN(document.all.principal, "存入本金请输入正数（小数点后两位）", null, 2)) return false;
                    if (!CheckFN(document.all.yearrate, "年利率请输入正数", null, 2)) return false;
                    if (!CheckFN(document.all.years, "存入年限请输入正数", null, 1)) return false;
                    if (!CheckPN(document.all.bonustime, "年复利次数请输入正整数", false, null)) return false;
                    if (document.all.rd_CalcPrinc.checked)
                        if (!CheckFN(document.all.compinterest, "复利终值请输入正数（小数点后两位）", null, 2)) return false;
                    return true;
                }

                function calc() {
                    if (!CheckData()) return false;
                    var r = parseFloat(document.all.yearrate.value) / 100.0;
                    var M = parseInt(document.all.bonustime.value);
                    var n = parseFloat(document.all.years.value);
                    var i = Math.pow(1.0 + r / M, M) - 1;
                    if (document.all.rd_CalcComp.checked) // 输入本金求终值
                    {
                        var P = parseFloat(document.all.principal.value);
                        var S = P * Math.pow(1.0 + i, n);
                        document.all.compinterest.value = Round(S, 4);
                    }
                    else									// 输入终值求本金
                    {
                        var S = parseFloat(document.all.compinterest.value);
                        var P = S * Math.pow(1.0 + i, -n);
                        document.all.principal.value = Round(P, 4);
                    }
                    return true;
                }

                function OnSelectChange() {
                    if (document.all.rd_CalcComp.checked) {
                        document.all.compinterest.disabled = true;
                        document.all.compinterest.value = "最终计算结果";
                        document.all.principal.disabled = false;
                        document.all.principal.value = "";
                    }
                    else {
                        document.all.principal.disabled = true;
                        document.all.principal.value = "最终计算结果";
                        document.all.compinterest.disabled = false;
                        document.all.compinterest.value = "";
                    }
                }
            </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
