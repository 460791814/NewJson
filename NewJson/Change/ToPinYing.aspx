<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ToPinYing.aspx.cs" Inherits="NewJson.Change.ToPinYing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Css/change/all-base.css" rel="stylesheet" type="text/css" />
    <link href="/Css/change/toolstyle.css" rel="stylesheet" type="text/css" />
    <script src="/Js/change/tools.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线调色板</h4>
                </div>
            </div>
        </div>

        <div class="panel-body">

        <div class="wrapper pt20 pb20"> 
    <div class="GuoLvWrap auto">
    <form autocomplete="off">
        <!--GuoLvWrap-begin--> 
      	<div class="pr"><textarea class="GuoLvWrapAgo bor-a1s h200 WrapHid" name="content"></textarea> 
        <b class="search-hint CentHid">粘贴要转换文本内容</b></div> 
          <div class="GuoLvWrapCenter ptb10 clearfix">
            <div class="GuoLvCbtn"><input type="button" value="转成拼音" class="GLOkBtn" name="trans" /><input type="button" value="清空文本" class="bg-blue02" id="clear" /></div>
       
            
            <div class="MainCate-choese ToolChoese fr pt2">
                 <span class="MainCateW-choese pr SearChoeseWrap w130"> 
                  <div class="MainCateW-cont SearChoese w120">普通翻译</div> 
                      <input name="hidesel" value="1" type="hidden" />
                      <span class="MCicon-drop-down SearChoese"></span>
                      <ul class="MainCateC-down SearChoese-show w130">
                        <li><a href="javascript:" val="1">普通翻译</a></li>           
                        <li><a href="javascript:" val="2">对照（中文在拼音前）</a></li>
                        <li><a href="javascript:" val="3">对照（中文在拼音后）</a></li>
                      </ul>  
                </span>
            </div>  
            
             <div class="GuoLvWay"><input type="checkbox" name="sym" checked="checked" /><span>保留标点符号</span><input type="checkbox" name="sym1" checked="checked" /><span>保留字母</span><input type="checkbox" name="sym2" checked="checked" /><span>空格隔开</span></div>
          </div>
      	<div class="pr"><textarea class="GuoLvWrapAfter bor-a1s h200 WrapHid" name="result"></textarea><b class="search-hint CentHid">转换后的结果</b></div> 
 
        <!--GuoLvWrap-end-->
    </form>
    </div>
</div>

        </div>
        </div>
         <script>             tools.transcoding.wordspell();</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
