<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="OpenWeb.aspx.cs" Inherits="NewJson.WebTools.OpenWeb" %>
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
 
 	<div class="OpenCanShu-wrap DelHeadFilter">
        
    <form autocomplete="off">
        <div class="filter-contlist pr clearfix casual"> 
            <div class="OpenCanShu-top">
                <label>输入URL</label><input class="OCStxt w200" value="http://" name="url" type="text" />
            </div>
            <ol class="item js-FilterItem w870 h30">
                <li class="pr PLcx" val="ON"><p><label hidefocus="on">本窗口打开</label></p><input hidefocus="on" type="hidden" name="selfopen"></li>
                <li class="pr PLcx" val="ON"><p><label hidefocus="on">工具栏</label></p><input hidefocus="on" type="hidden" name="tool"></li> 
                <li class="pr PLcx" val="ON"><p><label hidefocus="on">地址栏</label></p><input hidefocus="on" type="hidden" name="loc"></li> 
                <li class="pr PLcx" val="ON"><p><label hidefocus="on">状态栏</label></p><input hidefocus="on" type="hidden" name="stat"></li>
                <li class="pr PLcx" val="ON"><p><label hidefocus="on">菜单栏</label></p><input hidefocus="on" type="hidden" name="menu"></li> 
                <li class="pr PLcx" val="ON"><p><label hidefocus="on">调大小</label></p><input hidefocus="on" type="hidden" name="resize"></li> 
                <li class="pr PLcx" val="ON"><p><label hidefocus="on">滚动条</label></p><input hidefocus="on" type="hidden" name="scroll"></li> 
            </ol>
            <div class="OpenCanShu-top pt10 clear">
                <label>上边距</label><input type="text" class="OCStxt w70" name="T" />
                <label>左边距</label><input type="text" class="OCStxt w70" name="L" />
                <label>宽度</label><input type="text" class="OCStxt w70" name="width" />
                <label>高度</label><input type="text" class="OCStxt w70" name="height" />
            </div>
        </div>
        <div class="col-red lh30 fz14 tc" id="errorinfo"></div>
      </form>
     </div>
        
     
 
 
    <div class="GuoLvWrap auto">
        <!--GuoLvWrap-begin--> 
        <div class="pr"><textarea class="GuoLvWrapAgo bor-a1s h200 col-gray WrapHid" id="showcode" name="textarea"></textarea> <b class="search-hint CentHid">window.open("http://", "newwindow");</b></div>
      	
       <!--GuoLvWrap-end-->
        <div class="GuoLvWrapCenter ptb10 clearfix">
            <div class="GuoLvCbtn"><input type="button" value="清空" class="bg-blue02" id="clear" /><input type="button" value="复制" class="bg-blue02" id="clip" data-clipboard-target="showcode" /><input class="GLOkBtn" type="button" value="预览" name="button" id="test"/><input class="GLOkBtn" type="button" value="生成代码" name="Button" id="gen" /></div>
        </div>
    
    </div>
</div>
        </div>
        </div>
        <script>            tools.openweb.init('/template/default/images');</script>
    <script type="text/javascript">
       function openAttr(istest) {
            var address = $("input[name='url']").val();
            var op_tool = $("input[name='tool']").val() ? "toolbar=yes," : "";
            var op_loc = $("input[name='loc']").val() ? "location=yes," : "";
            var op_stat = $("input[name='stat']").val() ? "status=yes," : "";
            var op_menu = $("input[name='menu']").val() ? "menubar=yes," : "";
            var op_scroll = $("input[name='scroll']").val() ? "scrollbars=yes," : "";
            var op_resize = $("input[name='resize']").val() ? "resizable=yes," : "";
            var op_selfopen = $("input[name='selfopen']").val() ? "_self" : "newwindow";
            var op_width = $("input[name='width']").val() ? "width=" + $("input[name='width']").val() + "," : "";
            var op_height = $("input[name='height']").val() ? "height=" + $("input[name='height']").val() + "," : "";
            var op_L = $("input[name='L']").val() ? "left=" + $("input[name='L']").val() + "," : "";
            var op_T = $("input[name='T']").val() ? "top=" + $("input[name='T']").val() + "," : "";
            if (op_tool == "" && op_loc == "" && op_stat == "" && op_menu == "" && op_scroll == "" && op_resize == "" && op_width == "" && op_height == "" && op_L == "" && op_T == "") {
                tempopenstyle = "";
            } else {
                tempopenstyle = op_width + op_height + op_L + op_T + op_tool + op_loc + op_stat + op_menu + op_scroll + op_resize;
                tempopenstyle = tempopenstyle.substring(0, tempopenstyle.length - 1);
                tempopenstyle = tempopenstyle;
            }
            if (istest) {
                if (address == "http://" || !address) { $("#errorinfo").text("请输入URL！").show(); return; }
                window.open(address, op_selfopen, tempopenstyle);
                return;
            }
            $("#errorinfo").text("").hide();
            return "window.open('" + address + "','" + op_selfopen + "'" + (tempopenstyle ? ",'" + tempopenstyle + "'" : "") + ")";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
