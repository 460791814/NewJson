<%@ Page Title="在线OPEN参数生成器,弹出窗口生成器 " Language="C#" MasterPageFile="~/Main.Master"
    AutoEventWireup="true" CodeBehind="OpenWeb.aspx.cs" Inherits="NewJson.UI.OpenWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="OPEN参数生成器,弹窗代码生成器,弹出窗口生成器,在线生成弹出窗口代码，弹出窗口代码，弹窗生成器，弹窗，弹窗代码，站长工具，TOOL,工具,在线工具">
    <meta name="description" content="帮助您设置弹窗及打开窗口的参数和方式，包括窗口的大小、链接、地址栏、滚动条、状态栏等等。弹出窗口生成器,在线生成弹出窗口代码，弹出窗口代码，弹窗生成器，弹窗，弹窗代码，站长工具，TOOL,工具,在线工具">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        OPEN参数生成器,弹出窗口生成器</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">输入URL</span>
                    <input type="text" class="form-control" id="url_input" style="width: 70%" name="url"
                        onkeyup="openAttr(false);" placeholder="http://" value="http://" aria-describedby="basic-addon1">
                </div>
                <div style="margin-top: 15px" class="validateButtons clear">
                    <input type="button" name="name" class="btn btn-default" onclick="check(this,'selfopen')"
                        value="本窗口打开" />
                    <input type="button" name="name" class="btn btn-default" onclick="check(this,'tool')"
                        value="工具栏" />
                    <input type="button" name="name" class="btn btn-default" onclick="check(this,'loc')"
                        value="地址栏" />
                    <input type="button" name="name" class="btn btn-default" onclick="check(this,'stat')"
                        value="状态栏" />
                    <input type="button" name="name" class="btn btn-default" onclick="check(this,'menu')"
                        value="菜单栏" />
                    <input type="button" name="name" class="btn btn-default" onclick="check(this,'resize')"
                        value="调大小" />
                    <input type="button" name="name" class="btn btn-default" onclick="check(this,'scroll')"
                        value="滚动条" />
                    <input hidefocus="on" type="hidden" name="selfopen"></li>
                    <input hidefocus="on" type="hidden" name="tool"></li>
                    <input hidefocus="on" type="hidden" name="loc"></li>
                    <input hidefocus="on" type="hidden" name="stat"></li>
                    <input hidefocus="on" type="hidden" name="menu"></li>
                    <input hidefocus="on" type="hidden" name="resize"></li>
                    <input hidefocus="on" type="hidden" name="scroll"></li>
                </div>
                <div style="float: left; margin-top: 15px">
                    <div class="input-group" style="float: left; width: 200px;">
                        <span class="input-group-addon" id="Span1">上边距</span>
                        <input type="text" class="form-control" name="T" style="width: 100px" placeholder=""
                            onkeyup="openAttr(false);" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group" style="float: left; width: 200px;">
                        <span class="input-group-addon" id="Span2">左边距</span>
                        <input type="text" class="form-control" name="L" style="width: 100px" placeholder=""
                            onkeyup="openAttr(false);" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group" style="float: left; width: 200px;">
                        <span class="input-group-addon" id="Span3">宽度</span>
                        <input type="text" class="form-control" name="width" style="width: 100px" placeholder=""
                            onkeyup="openAttr(false);" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group" style="float: left; width: 200px;">
                        <span class="input-group-addon" id="Span4">高度</span>
                        <input type="text" class="form-control" name="height" style="width: 100px" placeholder=""
                            onkeyup="openAttr(false);" aria-describedby="basic-addon1">
                    </div>
                </div>
                <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
                <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
                <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
                <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
                <div style="clear: both">
                </div>
                <div style="margin-top: 15px">
                    <textarea id="result_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;
                        height: 200px;" rows="32" spellcheck="false" placeholder="这里显示生成的结果"></textarea>
                </div>
                <div class="validateButtons clear">
                    <div class="left" style="float: left">
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" class="btn btn-primary" onclick="openAttr(true);">
                                预览</button>
                            <button type="button" class="btn btn-primary" id="btn_copy" data-clipboard-target="result_input">
                                复制结果</button>
                            <script type="text/javascript" src="/Js/zeroclipboard.js?v=1288490188066.7"></script>
                            <script>

                                var clip = null;
                                ZeroClipboard.setMoviePath("/Js/ZeroClipboard.swf");
                                $(function () {
                                    clip = new ZeroClipboard.Client();
                                    clip.setHandCursor(true);
                                    clip.setText($("#result_input").val());
                                    clip.glue("btn_copy");
                                    clip.addEventListener("mouseDown", function () {
                                        clip.setText($("#result_input").val());
                                    });
                                })

                                $(window).resize(function () {
                                    clip.reposition();
                                });
                          

                            </script>
                            <button type="button" class="btn btn-danger" onclick="empty()">
                                清空结果</button>
                        </div>
                        <div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function check(t, n) {
            var temp = $("input[name='" + n + "']").val();
            if (temp) {
                //选中
                $(t).removeClass("btn-primary");
                $(t).addClass("btn-default");
                $("input[name='" + n + "']").val("");
            } else {
                $(t).removeClass("btn-default");
                $(t).addClass("btn-primary");
                $("input[name='" + n + "']").val("on");
            }
            openAttr(false);
        }
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
                if (address == "http://" || !address) { alert("请输入URL！"); return; }

                window.open(address, op_selfopen, tempopenstyle);
                return;
            }

            $("#result_input").val("window.open('" + address + "','" + op_selfopen + "'" + (tempopenstyle ? ",'" + tempopenstyle + "'" : "") + ")");
        }
        function empty() {

            document.getElementById('result_input').value = '';
            document.getElementById('url_input').focus();
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
