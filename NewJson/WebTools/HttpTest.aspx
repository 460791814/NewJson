<%@ Page Title="接口测试,模拟http请求" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="HttpTest.aspx.cs" Inherits="NewJson.WebTools.HttpTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        接口测试,模拟http请求</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <div class="btn-group" role="group" aria-label="..." style="float: left;">
                    <button id="btn_type" type="button" class="btn btn-default dropdown-toggle" style="border-radius: 0px;height:48px;width:80px"data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Post<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="t('get',this)">Get</a></li>
                        <li><a href="javascript:;" onclick="t('post',this)">Post</a></li>
                    </ul>
                    <input type="hidden" name="name" value="" id="hid_type" />
                </div>
                <div class="input-group" style="float: left; width: 70%">
                    <input type="text" id="url_input" class="form-control filesizetxt" style=" height:48px" aria-describedby="basic-addon2">
                </div>
                <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-primary" style="border-radius: 0px; height:48px" onclick="send();">
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
                        <tr >
                            <td>
                                <input class="form-control filesizetxt" type="text" name="p_name_1" title="参数名称" alt="参数名称"
                                    value="" maxlength="100">
                            </td>
                            <td >
                                <input  type="text" class="form-control filesizetxt" name="p_value_1" title="参数数值" alt="参数数值" value="" maxlength="5000"  style="float: left;width:80%">
                                <button class="btn btn-danger" style=" margin-left:10px"  type="button" onclick="removeparam(this);">删除</button>
                            </td>
                        </tr>
                        <tr >
                            <td colspan="2">
                                <button class="btn btn-primary"   type="button" onclick="addparam(this);">添加参数</button>
                                <button class="btn btn-primary"  type="button">批量添加</button>
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
        <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                                 
                    <span>Response 请求返回值如下：<b></b></span>
             
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
    <script type="text/javascript">

        var paramHtml = "<tr ><td><input class=\"form-control filesizetxt\" type=\"text\" title=\"参数名称\" alt=\"参数名称\"  maxlength=\"100\"></td><td ><input  type=\"text\" class=\"form-control filesizetxt\" title=\"参数数值\" alt=\"参数数值\"  maxlength=\"5000\"  style=\"float: left;width:80%\"><button class=\"btn btn-danger\" style=\" margin-left:10px\" onclick=\"removeparam(this);\" type=\"button\">删除</button></td></tr>";
        function addparam(t) {
            $(t).parent().parent().before(paramHtml);
        }
        function removeparam(t) {
            $(t).parent().parent().remove();
        }
        function t(i, t) {
            $("#hid_type").val(i);
            $("#btn_type").text($(t).text());
        }
        function send() {
            var param = "method=send&type=" + $("#hid_type").val() + "&param=";
            $("#params_table").find("tr").each(function () {
                if ($(this).find("input").eq(0).val()) {
                
                    var tempstr = "|"+$(this).find("input").eq(0).val() + "=" + $(this).find("input").eq(1).val();
                    param += tempstr;
                }

            })
            param += "&url=" + $("#url_input").val();

            $.ajax({
                type: 'POST',
                url: "/WebTools/HttpTest.aspx",
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
