<%@ Page Title="在线HTTP,GET/POST接口测试,模拟http请求" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="HttpTest.aspx.cs" Inherits="NewJson.WebTools.HttpTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="Keywords" content="aTool,在线工具,接口测试,HTTP接口测试,GET/POST模拟请求测试工具">
<meta name="Description" content="aTool,在线工具,本工具提供任意接口的HTTP GET和POST测试，并且提供测试返回值，接口返回时间，后续会对异常状态数据进行获取。">
    <script type="text/javascript">
        function centerModals() {
            $('.modal').each(function (i) {
                var $clone = $(this).clone().css('display', 'block').appendTo('body'); var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
                top = top > 0 ? top : 0;
                $clone.remove();
                $(this).find('.modal-content').css("margin-top", top);
            });
        }
        $('.modal').on('show.bs.modal', centerModals);
        $(window).on('resize', centerModals);
    </script>
    <style type="text/css"> 
  .modal{ 
 width: 100%; 
 position: fixed; 
 text-align: center; 
 margin: 0px auto; 
 top: 0px; left: 0px; 
 bottom: 0px; 
 right: 0px; 
 z-index: 1050; 
 } 
 .modal_wrapper{ 
 display: table; 
 overflow: auto; 
 overflow-y: scroll; 
 height: 100%; 
 -webkit-overflow-scrolling: touch; 
 outline: 0; 
 text-align: center; 
 margin: 0px auto; } 
 .modal-dialog{ 
 margin-top: 0px; 
 display: table-cell; 
 vertical-align: middle; 
 margin: 0px 20px; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        在线HTTP,GET/POST接口测试,模拟http请求</h2>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <div class="btn-group" role="group" aria-label="..." style="float: left;">
                    <button id="btn_type" type="button" class="btn btn-default dropdown-toggle" style="border-radius: 0px;
                        height: 48px; width: 80px;font-size:18px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Post<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="t('GET',this)">GET</a></li>
                        <li><a href="javascript:;" onclick="t('POST',this)">POST</a></li>
<%--                        <li><a href="javascript:;" onclick="t('PUT',this)">PUT</a></li>
                        <li><a href="javascript:;" onclick="t('PATCH',this)">PATCH</a></li>
                        <li><a href="javascript:;" onclick="t('DELETE',this)">DELETE</a></li>
                        <li><a href="javascript:;" onclick="t('COPY',this)">COPY</a></li>
                        <li><a href="javascript:;" onclick="t('HEAD',this)">HEAD</a></li>
                        <li><a href="javascript:;" onclick="t('OPTIONS',this)">OPTIONS</a></li>
                        <li><a href="javascript:;" onclick="t('LINK',this)">LINK</a></li>
                        <li><a href="javascript:;" onclick="t('UNLINK',this)">UNLINK</a></li>
                        <li><a href="javascript:;" onclick="t('PURGE',this)">PURGE</a></li>--%>
                   
                    </ul>
                    <input type="hidden" name="name" value="post" id="hid_type" />
                </div>
                <div class="input-group" style="float: left; width: 70%">
                    <input type="text" id="url_input" class="form-control filesizetxt" style="height: 48px;font-size:18px"
                        aria-describedby="basic-addon2">
                </div>
                <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-primary" style="border-radius: 0px; height: 48px"
                        onclick="send();">
                        发送请求</button>
                </div>
            </div>
            <div>
                <table id="params_table" class="table table-bordered" style="margin-top: 20px">
                    <thead>
                        <tr>
                            <th width="35%">
                                参数名称
                            </th>
                            <th>
                                参数值
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class="form-control filesizetxt" type="text" name="p_name_1" title="参数名称"
                                    alt="参数名称" value="" maxlength="100">
                            </td>
                            <td>
                                <input type="text" class="form-control filesizetxt" name="p_value_1" title="参数数值"
                                    alt="参数数值" value="" maxlength="5000" style="float: left; width: 80%">
                                <button class="btn btn-danger" style="margin-left: 10px" type="button" onclick="removeparam(this);">
                                    删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button class="btn btn-primary" type="button" id="addparam" onclick="addparam();">
                                    添加参数</button>
                                <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#myModal" >
                                    批量添加</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <table id="headers_table" class="table table-bordered" style="margin-top: 20px">
                    <thead>
                        <tr>
                            <th width="35%">
                                Header名称
                            </th>
                            <th>
                                Header值
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class="form-control filesizetxt" type="text" name="p_name_1" title="Header参数名称"
                                    alt="Header参数名称" value="" maxlength="100">
                            </td>
                            <td>
                                <input type="text" class="form-control filesizetxt" name="p_value_1" title="Header参数数值"
                                    alt="Header参数数值" value="" maxlength="5000" style="float: left; width: 80%">
                                <button class="btn btn-danger" style="margin-left: 10px" type="button" onclick="removeparam(this);">
                                    删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button class="btn btn-primary" type="button" onclick="addparam(this);">
                                    添加Header</button>
                       
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                   <span>Response 请求返回值如下：<b></b></span>
                     <button type="button" class="btn btn-primary btn-xs" id="btn_copy"  >复制结果</button>
                         <script type="text/javascript" src="/Js/zeroclipboard.js?v=1288490188066.7"></script>
                                <script>
                                    var clip = null;
                                    ZeroClipboard.setMoviePath("/Js/ZeroClipboard.swf");
                                    $(function () {
                                        clip = new ZeroClipboard.Client();
                                        clip.setHandCursor(true);
                                        clip.setText($("#result_html").text());
                                        clip.glue("btn_copy");
                                        clip.addEventListener("mouseDown", function () {
                                            clip.setText($("#result_html").text());
                                        });
                                    })
                                    $(window).resize(function () {
                                        clip.reposition();
                                    });
                          

	                    </script>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="IcpMain02 pb20">
                <div class="portRtitCent auto">
                    <div class="RtitCeCode" style="word-break: break-all">
                        <pre style="white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap;
                            white-space: -o-pre-wrap;" id="result_html"></pre>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    Response Headers 响应头信息
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="IcpMain02 pb20">
                <div class="portRtitCent auto">
                    <div class="RtitCeCode" style="word-break: break-all">
                        <pre style="white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap;
                            white-space: -o-pre-wrap;" id="result_header"></pre>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

   
    <div class="modal fade  " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal_wrapper">
<div class="modal-dialog"  role="document">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
<h4 class="modal-title" id="myModalLabel">批量添加参数(例如：id=1&age=5)</h4>
</div>
<div class="modal-body" >
        <input type="text" class="form-control filesizetxt" id="batch_text"  placeholder="例如：id=1&age=5" value="" maxlength="5000" style=" width:100%">
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
<button type="button" class="btn btn-primary" onclick="BatchAdd()">确认</button>
</div>
</div>
</div>
</div>
</div>

    <script type="text/javascript">

        var paramHtml = "<tr ><td><input class=\"form-control filesizetxt\" type=\"text\" title=\"参数名称\" alt=\"参数名称\"  maxlength=\"100\"></td><td ><input  type=\"text\" class=\"form-control filesizetxt\" title=\"参数数值\" alt=\"参数数值\"  maxlength=\"5000\"  style=\"float: left;width:80%\"><button class=\"btn btn-danger\" style=\" margin-left:10px\" onclick=\"removeparam(this);\" type=\"button\">删除</button></td></tr>";
        function addparam() {
            $("#addparam").parent().parent().before(paramHtml);
        }
        function removeparam(t) {
            $(t).parent().parent().remove();
        }
        function t(i, t) {
            $("#hid_type").val(i);
            $("#btn_type").text($(t).text());
        }
        function BatchAdd() {

            var p = $("#batch_text").val().replace(/[ ]/g, "");
            if (p != "") {
                var strs = new Array(); //定义一数组 
                strs = p.split("&"); //字符分割 
                for (i = 0; i < strs.length; i++) {
                    var ps = strs[i].split("=");
                    var h = "<tr ><td><input class=\"form-control filesizetxt\" type=\"text\" value=\"" + ps[0] + "\"  maxlength=\"100\"></td><td ><input  type=\"text\" class=\"form-control filesizetxt\" value=\"" + ps[1] + "\"   maxlength=\"5000\"  style=\"float: left;width:80%\"><button class=\"btn btn-danger\" style=\" margin-left:10px\" onclick=\"removeparam(this);\" type=\"button\">删除</button></td></tr>"; ;
                    $("#addparam").parent().parent().before(h);
                } 
            }
        $('#myModal').modal('hide');
        }
        function send() {
            $("#result_html").text("正在提交,获取中...");
            $("#result_header").text("正在提交,获取中...");
            var url = $("#url_input").val().replace(/[ ]/g, "");
            if (url == "") {
                return;
            }
            if (url.substr(0, 3).toLowerCase() == "www") {
                url = "http://" + url;
                $("#url_input").val(url);
            }else if (url.substr(0, 7).toLowerCase() != "http://" && url.substr(0, 8).toLowerCase() != "https://") {
                url = "http://" + url;
                $("#url_input").val(url);
            }

            var param = "method=send&type=" + $("#hid_type").val();
            var paramValue = "&param=";
            var headerValue = "&headers=";
            $("#params_table").find("tr").each(function () {
                if ($(this).find("input").eq(0).val()) {
                    paramValue += "|" + $(this).find("input").eq(0).val() + "=" + $(this).find("input").eq(1).val();
                }

            })
            $("#params_table").find("tr").each(function () {
                if ($(this).find("input").eq(0).val()) {
                    headerValue += "|" + $(this).find("input").eq(0).val() + "=" + $(this).find("input").eq(1).val() ;
                }

            })

            param += paramValue;
            param += headerValue;
            param += "&url=" + url;

            $.ajax({
                type: 'POST',
                url: "/WebTools/Handler/HttpTest.ashx",
                data: param,
                success: function (data) {

                    data = $.parseJSON(data);

                    $("#result_html").text(data.content);
                    $("#result_header").text(data.header);
                }

            });


        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
