<%@ Page Title="在线网络计算器 | TCP/IP子网掩码计算换算" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SubNetMask.aspx.cs" Inherits="NewJson.Math.SubNetMask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
		<meta name="keywords" content="子网,子网掩码,子网划分,A类,B类,C类子网区别,网络计算,网络地址分配,掩码计算"/>
		<meta name="description" content="局域网规划工具,子网计算划分,子网掩码各个进制表示换算,IP地址进制表示换算。"/>
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
		<li class="active"> <a href="/math/subnetmask/">子网掩码换算</a></li>
		<li class=" "> <a href="/math/power/">功率换算</a></li>
		<li class=" "><a href="/math/pressure/">压力换算</a></li>
		<li class=" "><a href="/math/temperature/">温度换算</a></li>
		<li class=" "><a href="/math/density/">密度换算</a></li>
		<li class=" "><a href="/math/force/">力换算</a></li>
		<li class=" "><a href="/math/volume/">体积换算</a></li>
    <div class="clear"></div>                          
</div>
				<div class="NetWorkWrap pb10 clearfix Tool-MainWrap">
 
					     <!--NetWork-right-begin-->
				     <div class="NetWork-left fl">
				        <form>
				     	<div class="NetWork-main01 bor-a1s">
				        	<h3 class="MainHead bb-blue"  style="margin-top: 0px; height: 34px;">网络和IP地址计算器</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix ptb10 bb-blue bg-blue02 ipgroup">
				                    <label class="w60 tr">输入IP</label>
				                    <input type="text" n="ip1" name="ip_1" value="192" maxlength="15" size="3" class="Intxt">
				                    <input type="text" n="ip2" name="ip_2" value="168" maxlength="15" size="3" class="Intxt">
				                    <input type="text" n="ip3" name="ip_3" value="0" maxlength="15" size="3" class="Intxt">
				                    <input type="text" n="ip4" name="ip_4" value="1" maxlength="15" size="3" class="Intxt">
				                    <label class="w50 tr">掩码位</label>
				                    <input type="text" name="bits" value="24" size="2" class="Intxt">
				                    <input type="button" onclick="calNBFL(this.form)" value="计算" class="Inbtn">
				                    <input type="button" onclick="resetform4(this.form)" value="清空" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w60 tr">可用IP</label>
				                <input type="text" name="numofaddr" size="10" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w60 tr" >掩码</label>
				                <input type="text" name="snm_1" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="snm_2" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="snm_3" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="snm_4" size="3" maxlength="3" readonly="" class="Intxt">
				                </div>
				                <div class="MCentlist clearfix pt10">
				                <label class="w60 tr">网络</label>
				                <input type="text" name="nwadr_1" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="nwadr_2" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="nwadr_3" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="nwadr_4" size="3" maxlength="3" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w60 tr">第一可用</label>
				                <input type="text" name="firstadr_1" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="firstadr_2" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="firstadr_3" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="firstadr_4" size="3" maxlength="3" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w60 tr">最后可用</label>
				                <input type="text" name="lastadr_1" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="lastadr_2" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="lastadr_3" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="lastadr_4" size="3" maxlength="3" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w60 tr">广播</label>
				                <input type="text" name="bcast_1" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="bcast_2" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="bcast_3" size="3" maxlength="3" readonly="" class="Intxt">
				                <input type="text" name="bcast_4" size="3" maxlength="3" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist ptb10 col-gray04 bor-t1s mt10"><p>显示网络，广播，第一次和最后一个给定的网络地址</p><p>在网络掩码“位格式”也被称为CIDR格式（CIDR=无类别域间路由选择）。</p></div>
				            </div>
				           
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">子网掩码转换器（位点分十进制格式) 	</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix ptb10 bb-blue bg-blue02">
				                <label class="w82 tr">掩码</label>
				                <input type="text" name="bits" value="24" size="4" class="Intxt">
				                <input type="button" onclick="calcNWmaskForm2(this.form)" value="计算" class="Inbtn">
				                <input type="button" onclick="resetform2(this.form)" value="清空" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w82 tr">Dec 十进制</label>
				                <input type="text" name="snm_1" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_2" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_3" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_4" size="3" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix ptb10">
				                <label class="w82 tr">Hex十六进制</label>
				                <input type="text" name="hex_1" size="2" readonly="" class="Intxt">
				                <input type="text" name="hex_2" size="2" readonly="" class="Intxt">
				                <input type="text" name="hex_3" size="2" readonly="" class="Intxt">
				                <input type="text" name="hex_4" size="2" readonly="" class="Intxt">
				                </div>
				            </div>
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">网络/节点计算器</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix pt10 bg-blue02 ipgroup">
				                <label class="w60 tr">子网掩码</label>
				                <input type="text" n="ip1" value="255" maxlength="15" size="3" name="snm1a" class="Intxt">
				                <input type="text" n="ip2" value="255" maxlength="15" size="3" name="snm2a" class="Intxt">
				                <input type="text" n="ip3" value="255" maxlength="15" size="3" name="snm3a" class="Intxt">
				                <input type="text" n="ip4" value="0" maxlength="15" size="3" name="snm4a" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix ptb10 bb-blue bg-blue02 ipgroup">
				                <label class="w60 tr">TCP/IP</label>
				                <input type="text" n="ip1" value="192" maxlength="15" size="3" name="oct1a" class="Intxt">
				                <input type="text" n="ip2" value="168" maxlength="15" size="3" name="oct2a" class="Intxt">
				                <input type="text" n="ip3" value="0" maxlength="15" size="3" name="oct3a" class="Intxt">
				                <input type="text" n="ip4" value="1" maxlength="15" size="3" name="oct4a" class="Intxt">
				                <input type="button" onclick="compute(this.form)" value="计算" class="Inbtn">
				                <input type="button" onclick="nnclear(this.form)" value="清空" class="Inbtn"></div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w60 tr">网络</label>
				                <input type="text" maxlength="3" size="3" name="nw1a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="nw2a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="nw3a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="nw4a" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w60 tr">节点/主机</label>
				                <input type="text" maxlength="3" size="3" name="node1a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="node2a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="node3a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="node4a" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix ptb10">
				                <label class="w60 tr">广播地址</label>
				                <input type="text" maxlength="3" size="3" name="broad1a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="broad2a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="broad3a" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="broad4a" readonly="" class="Intxt">
				                </div>
				            </div>
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">十进制子网掩码逆算器</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix pt10 ipgroup">
				                <label class="w70 tr">点格式掩码</label>
				                <input type="text" n="ip1" value="255" maxlength="15" size="3" name="snm1d" class="Intxt">
				                <input type="text" n="ip2" value="255" maxlength="15" size="3" name="snm2d" class="Intxt">
				                <input type="text" n="ip3" value="255" maxlength="15" size="3" name="snm3d" class="Intxt">
				                <input type="text" n="ip4" value="0" maxlength="15" size="3" name="snm4d" class="Intxt">
				                <input type="button" onclick="computeINV1(this.form);" value="计算" class="Inbtn">
				                <input type="button" onclick="sjzclear(this.form);" value="清空" class="Inbtn"></div>
				            	<div class="MCentlist clearfix ptb10">
				                <label class="w70 tr">逆算掩码</label>
				                <input type="text" maxlength="3" size="3" name="snm1e" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="snm2e" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="snm3e" readonly="" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="snm4e" readonly="" class="Intxt">
				                </div>
				            </div>
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">十进制子网掩码换算器</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix pt10 ipgroup">
				                <label class="w70 tr">点格式掩码</label>
				                <input type="text" n="ip1" maxlength="15" size="3" name="snm1c" class="Intxt">
				                <input type="text" n="ip2" maxlength="15" size="3" name="snm2c" class="Intxt">
				                <input type="text" n="ip3" maxlength="15" size="3" name="snm3c" class="Intxt">
				                <input type="text" n="ip4" maxlength="15" size="3" name="snm4c" class="Intxt">
				                <input type="button" onclick="computeSNMA(this.form);" value="计算" class="Inbtn">
				                <input type="button" onclick="dgsclear(this.form);" value="清空" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix ptb10">
				                <label class="w70 tr">掩码位元数</label>
				                <input type="text" value="24" maxlength="2" size="2" name="snmbitsc" class="Intxt">
				                <input type="button" onclick="computeSNMB(this.form);" value="计算" class="Inbtn">
				                <input type="button" onclick="ymwclear(this.form);" value="清空" class="Inbtn">
				                </div>
				            </div>
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">计算位补一个IP地址（逆）</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix pt10 ipgroup">
				                <input type="text" n="ip1" name="ip_1" value="255" maxlength="15" size="3" class="Intxt">
				                <input type="text" n="ip2" name="ip_2" value="255" maxlength="15" size="3" class="Intxt">
				                <input type="text" n="ip3" name="ip_3" value="255" maxlength="15" size="3" class="Intxt">
				                <input type="text" n="ip4" name="ip_4" value="255" maxlength="15" size="3" class="Intxt">
				                <input type="button" onclick="calcIpInvert(this.form)" value="计算" class="Inbtn">
				                <input type="button" onclick="resetform8(this.form)" value="清空" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix ptb10">
				                <input type="text" name="invert_1" size="3" readonly="" class="Intxt">
				                <input type="text" name="invert_2" size="3" readonly="" class="Intxt">
				                <input type="text" name="invert_3" size="3" readonly="" class="Intxt">
				                <input type="text" name="invert_4" size="3" readonly="" class="Intxt">
				                </div>
				            </div>
				        </div>
				        </form>
				     
				     </div>
				     <!--NetWork-right-end-->
				     <!--NetWork-right-begin-->
				     <div class="NetWork-right fr">
				        <form>
				     	<div class="NetWork-main01 bor-a1s">
				        	<h3 class="MainHead bb-blue">网络和IP地址计算器</h3>
				            <div class="MainCent pr">
				            	<div class="MCentlist clearfix pt10 ipgroup">
				                    <label class="w70 tr">输入IP/TCP</label>
				                    <input type="text" n="ip1" value="192" maxlength="15" size="3" name="oct1" class="Intxt">
				                    <input type="text" n="ip2" value="168" maxlength="15" size="3" name="oct2" class="Intxt">
				                    <input type="text" n="ip3" value="0" maxlength="15" size="3" name="oct3" class="Intxt">
				                    <input type="text" n="ip4" value="1" maxlength="15" size="3" name="oct4" class="Intxt">
				                    <label class="w60 tr pr5">网络类型</label>
				                    <div class="NetWork-choese ToolChoese mr15">
				                        <div class="NetWorkW-choese pr w60"> 
				                        <div class="NetWorkW-cont SearChoese w50" id="nettype">默认</div> 
				                          <input type="hidden" value="1" name="cf">
				                          <span class="NWicon-drop-down SearChoese"></span>
				                          <ul class="NetWorkC-down SearChoese-show w60">
				                            <li><a val="1" href="javascript:">默认</a></li>
				                            <li><a val="2" href="javascript:">A类网</a></li>
				                            <li><a val="3" href="javascript:">B类网</a></li>
				                            <li><a val="4" href="javascript:">C类网</a></li>
				                          </ul>  
				                        </div>
				                    </div>  
				                    
				                   <!-- <input type="text" class="Intxt" />-->
				                    
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                    <label class="w70 tr pr10" style="width: 80px;">子网ip量</label>
				                    <div class="NetWork-choese ToolChoese">
				                        <div class="NetWorkW-choese pr w70"> 
				                        <div class="NetWorkW-cont SearChoese " id="netnum"></div> 
				                          <input type="hidden" value="0" name="network">
				                          <span class="NWicon-drop-down SearChoese"></span>
				                          <ul class="NetWorkC-down SearChoese-show w70" style="margin-top: -5px; width: 72px;">
				                            <li><a val="0" href="javascript:">&nbsp;</a></li>
				                            <li><a val="1" href="javascript:">1</a></li>
				                            <li><a val="2" href="javascript:">2</a></li>
				                            <li><a val="4" href="javascript:">4</a></li>
				                            <li><a val="8" href="javascript:">8</a></li>
				                            <li><a val="16" href="javascript:">16</a></li>
				                            <li><a val="32" href="javascript:">32</a></li>
				                            <li><a val="64" href="javascript:">64</a></li>
				                            <li><a val="128" href="javascript:">128</a></li>
				                            <li><a val="256" href="javascript:">256</a></li>
				                            <li><a val="512" href="javascript:">512</a></li>
				                            <li><a val="1024" href="javascript:">1024</a></li>
				                            <li><a val="2048" href="javascript:">2048</a></li>
				                            <li><a val="4096" href="javascript:">4096</a></li>
				                            <li><a val="8192" href="javascript:">8192</a></li>
				                            <li><a val="16384" href="javascript:">16384</a></li>
				                            <li><a val="32768" href="javascript:">32768</a></li>
				                            <li><a val="65536" href="javascript:">65536</a></li>
				                            <li><a val="131072" href="javascript:">131072</a></li>
				                            <li><a val="262144" href="javascript:">262144</a></li>
				                            <li><a val="524288" href="javascript:">524288</a></li>
				                            <li><a val="1048576" href="javascript:">1048576</a></li>
				                            <li><a val="2097152" href="javascript:">2097152</a></li>
				                            <li><a val="4194304" href="javascript:">4194304</a></li>
				                            <li><a val="8388608" href="javascript:">8388608</a></li>
				                          </ul>  
				                        </div>
				                    </div>  
								</div>
				            	<div class="MCentlist clearfix pt10">
				                    <label class="w70 tr">节点/主机</label>
				                    <div class="NetWork-choese ToolChoese fl ml10">
				                        <div class="NetWorkW-choese pr w100"> 
				                        <div class="NetWorkW-cont SearChoese w90" id="nodenum"></div> 
				                          <input type="hidden" value="0" name="node">
				                          <span class="NWicon-drop-down SearChoese"></span>
				                          <ul class="NetWorkC-down SearChoese-show w100">
				                            <li><a val="0" href="javascript:">&nbsp;</a></li>
				                            <li><a val="1" href="javascript:">1</a></li>
				                            <li><a val="2" href="javascript:">2</a></li>
				                            <li><a val="4" href="javascript:">4</a></li>
				                            <li><a val="8" href="javascript:">8</a></li>
				                            <li><a val="16" href="javascript:">16</a></li>
				                            <li><a val="32" href="javascript:">32</a></li>
				                            <li><a val="64" href="javascript:">64</a></li>
				                            <li><a val="128" href="javascript:">128</a></li>
				                            <li><a val="256" href="javascript:">256</a></li>
				                            <li><a val="512" href="javascript:">512</a></li>
				                            <li><a val="1024" href="javascript:">1024</a></li>
				                            <li><a val="2048" href="javascript:">2048</a></li>
				                            <li><a val="4096" href="javascript:">4096</a></li>
				                            <li><a val="8192" href="javascript:">8192</a></li>
				                            <li><a val="16384" href="javascript:">16384</a></li>
				                            <li><a val="32768" href="javascript:">32768</a></li>
				                            <li><a val="65536" href="javascript:">65536</a></li>
				                            <li><a val="131072" href="javascript:">131072</a></li>
				                            <li><a val="262144" href="javascript:">262144</a></li>
				                            <li><a val="524288" href="javascript:">524288</a></li>
				                            <li><a val="1048576" href="javascript:">1048576</a></li>
				                            <li><a val="2097152" href="javascript:">2097152</a></li>
				                            <li><a val="4194304" href="javascript:">4194304</a></li>
				                            <li><a val="8388608" href="javascript:">8388608</a></li>
				                            <li><a val="16777216" href="javascript:">16777216</a></li>
				                            <li><a val="33554432" href="javascript:">33554432</a></li>
				                            <li><a val="67108864" href="javascript:">67108864</a></li>
				                            <li><a val="134217728" href="javascript:">134217728</a></li>
				                            <li><a val="268435456" href="javascript:">268435456</a></li>
				                            <li><a val="536870912" href="javascript:">536870912</a></li>
				                            <li><a val="1073741824" href="javascript:">1073741824</a></li>
				                            <li><a val="2147483648" href="javascript:">2147483648</a></li>
				                          </ul>  
				                        </div>
				                    </div>  
				                    
				                    <input type="button" onclick="compute2(this.form);" value="计算" class="Inbtn">
				                    <input type="button" onclick="wlclear(this.form);" value="清空" class="Inbtn">
				                    
				            	</div>
				                
				            	<div class="MCentlist clearfix pt10">
				                <label class="w70 tr">网络类型</label>
				                <input type="text" maxlength="7" size="7" name="nwclass" class="Intxt">
				                <input type="text" maxlength="14" size="14" name="subsuper" class="Intxt">
				                <input type="text" maxlength="7" size="7" name="nwclass1" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w70 tr">子网掩码</label>
				                <input type="text" maxlength="3" size="3" name="snm1" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="snm2" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="snm3" class="Intxt">
				                <input type="text" maxlength="3" size="3" name="snm4" class="Intxt">
				                <label class="w70 tr">或</label>
				                <input type="text" maxlength="3" size="3" name="snmbits" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w70 tr">子网</label>
				                <input type="text" maxlength="8" size="10" name="nwquant" class="Intxt w100">
				                <input type="button" onclick="listsubnets(this.form);" class="Inbtn w100 tc ObtLBtN" value="获取网络列表">
				                </div>
				            	<div class="MCentlist clearfix ptb10">
				                <label class="w70 tr">节点/主机</label>
				                <input type="text" maxlength="8" size="10" name="nodequant" class="Intxt w100">
				                </div>
				                <div id="netlist" class="ObtainList autohide">
				                      <h4 class="lh30 col-blue02 pr">网络列表<span class="col-gray02 lh24 fwnone pl10">网络 0.0.0.0 ，掩码0.0.0.0"</span><a class="ObtLClose" href="javascript:">×</a></h4>
				                	  <table width="100%" cellspacing="0" cellpadding="0" border="0">
				                      <tbody>
				                        <tr>
				                          <th rowspan="2">网络</th>
				                          <th colspan="2">主机</th>
				                          <th rowspan="2">广播地址</th>
				                        </tr>
				                        <tr>
				                          <th>起始</th>
				                          <th>结束</th>
				                        </tr>
				                        <tr>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                        </tr>
				                        <tr>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                        </tr>
				                        <tr>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                        </tr>
				                        <tr>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                          <td>0.0.0.0</td>
				                        </tr>
				                       </tbody>
				                    </table>
				                
				                </div>
				            </div>
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">通过主机数量计算掩码地址转换器</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix ptb10 bb-blue bg-blue02">
				                <label class="w60">需要数量</label>
				                <input type="text" name="numofaddr" value="5" size="4" class="Intxt">
				                <input type="button" onclick="calcNeeded(this.form)" value="计算" class="Inbtn">
				                <input type="button" onclick="resetform6(this.form)" value="清空" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w50 pr10 tr">掩码</label>
				                <input type="text" name="bits" size="4" readonly="" class="Intxt">
				                <label class="w110 tr"> dotted dec. 掩码</label>
				                <input type="text" name="snm_1" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_2" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_3" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_4" size="3" readonly="" class="Intxt">
				                </div>
				            	<div class="MCentlist clearfix ptb10">
				                <label class="w60">可用数量</label>
				                <input type="text" name="maxaddr" size="10" readonly="" class="Intxt w100">
				                </div>
				            </div>
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">TCP/IP 进制转换器</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix pt10 ipgroup">
				                <label class="w80 tr">点格式十进制</label>
				                <input type="text" n="ip1" value="192" maxlength="15" size="3" name="oct1b" class="Intxt">
				                <input type="text" n="ip2" value="168" maxlength="15" size="3" name="oct2b" class="Intxt">
				                <input type="text" n="ip3" value="0" maxlength="15" size="3" name="oct3b" class="Intxt">
				                <input type="text" n="ip4" value="1" maxlength="15" size="3" name="oct4b" class="Intxt">
				                <input type="button" onclick="compute3(this.form);" value="计算" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w80 tr">或 二进制</label>
				                <input type="text" maxlength="8" size="8" name="bin1b" class="Intxt w60">
				                <input type="text" maxlength="8" size="8" name="bin2b" class="Intxt w60">
				                <input type="text" maxlength="8" size="8" name="bin3b" class="Intxt w60">
				                <input type="text" maxlength="8" size="8" name="bin4b" class="Intxt w60">
				                <input type="button" onclick="compute4(this.form);" value="计算" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w80 tr">或 十六进制</label>
				                <input type="text" maxlength="2" size="2" name="hex1b" class="Intxt">
				                <input type="text" maxlength="2" size="2" name="hex2b" class="Intxt">
				                <input type="text" maxlength="2" size="2" name="hex3b" class="Intxt">
				                <input type="text" maxlength="2" size="2" name="hex4b" class="Intxt">
				                <input type="button" onclick="compute5(this.form);" value="计算" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix ptb10">
				                <label class="w80 tr">或 十进制</label>
				                <input type="text" maxlength="10" size="10" name="dec1b" class="Intxt w100">
				                <input type="button" onclick="compute6(this.form);" value="计算" class="Inbtn">
				                </div>
				            </div>
				        </div>
				        </form>
				        <form>
				     	<div class="NetWork-main01 bor-a1s mt20">
				        	<h3 class="MainHead bb-blue">掩码转换到网络可用地址的数量</h3>
				            <div class="MainCent">
				            	<div class="MCentlist clearfix ptb10 bb-blue bg-blue02">
				                <label class="w70 tr">掩码</label>
				                <input type="text" name="bits" value="27" size="2" class="Intxt">
				                <input type="button" onclick="calcAmount(this.form)" value="计算" class="Inbtn">
				                <input type="button" onclick="resetform7(this.form)" value="清空" class="Inbtn">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w70 tr">可用地址量</label>
				                <input type="text" name="numofaddr" size="10" readonly="" class="Intxt w100">
				                <label class="w70 tr">可用总量</label>
				                <input type="text" name="maxaddr" size="10" readonly="" class="Intxt w100">
				                </div>
				            	<div class="MCentlist clearfix pt10">
				                <label class="w70 tr">点分十进制</label>
				                <input type="text" name="snm_1" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_2" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_3" size="3" readonly="" class="Intxt">
				                <input type="text" name="snm_4" size="3" readonly="" class="Intxt">
				                </div>
				               	<div class="MCentlist ptb10 col-gray04 bor-t1s mt10">
				                	<p>IP组播地址范围</p>
				                	<p>所有的多播地址可以很容易被认出，因为同位模式“1110”开始。</p>
				                	<p>224.0.0.0 - 224.0.0.255知名多播地址，控制通道</p>
				                	<p>224.0.1.0 - 238.255.255.255全球范围的（互联网宽）组播地址</p>
				                	<p>239.0.0.0 - 239.255.255.255本地多播地址</p>
				                </div>
				            </div>
				        </div>
				        </form>
				
				     
				     </div>
				     <!--NetWork-right-end-->
					
				
					
				</div>
                	<div class="ToolAbout wrapper03 xian mt10">
				   	 	<div class="clearfix"><h4 class="HeadH4 YaHei fz16 col-blue02 fwnone fl">工具简介</h4>
				        <div id="toolsIntro" class="fr fz14"></div>
				     	</div>
				   	 <div class="col-gray01 ToolAbCont"><p>局域网规划工具,子网计算划分,子网掩码各个进制表示换算,IP地址进制表示换算。</p></div>
				    </div>
			</div>
		</div>
    <script src="/Js/math/ipcalc.js"></script>
    <script>
        function nnclear(nform) {
            nform.snm1a.value = 255;
            nform.snm2a.value = 255;
            nform.snm3a.value = 255;
            nform.snm4a.value = 0;

            nform.oct1a.value = 192;
            nform.oct2a.value = 168;
            nform.oct3a.value = 0;
            nform.oct4a.value = 1;

            nform.nw1a.value = "";
            nform.nw2a.value = "";
            nform.nw3a.value = "";
            nform.nw4a.value = "";

            nform.node1a.value = "";
            nform.node2a.value = "";
            nform.node3a.value = "";
            nform.node4a.value = "";

            nform.broad1a.value = "";
            nform.broad2a.value = "";
            nform.broad3a.value = "";
            nform.broad4a.value = "";
        }
        function sjzclear(sform) {
            sform.snm1d.value = 255;
            sform.snm2d.value = 255;
            sform.snm3d.value = 255;
            sform.snm4d.value = 0;

            sform.snm1e.value = "";
            sform.snm2e.value = "";
            sform.snm3e.value = "";
            sform.snm4e.value = "";
        }
        function dgsclear(sform) {
            sform.snm1c.value = "";
            sform.snm2c.value = "";
            sform.snm3c.value = "";
            sform.snm4c.value = "";
        }
        function ymwclear(sform) {
            sform.snmbitsc.value = 24;
        }
        function wlclear(sform) {
            sform.oct1.value = 192;
            sform.oct2.value = 168;
            sform.oct3.value = 0;
            sform.oct4.value = 1;

            jQuery("#nettype").text("默认");
            sform.cf.value = 1;

            jQuery("#netnum").text("");
            sform.network.value = 0;

            jQuery("#nodenum").text("");
            sform.node.value = 0;

            sform.nwclass.value = "";
            sform.subsuper.value = "";
            sform.nwclass1.value = "";
            sform.snm1.value = "";
            sform.snm2.value = "";
            sform.snm3.value = "";
            sform.snm4.value = "";
            sform.snmbits.value = "";
            sform.nwquant.value = "";
            sform.nodequant.value = "";
        }
		</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
