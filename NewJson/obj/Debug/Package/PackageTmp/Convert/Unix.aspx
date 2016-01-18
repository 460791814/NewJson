<%@ Page Title="Unix时间戳" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Unix.aspx.cs"
    Inherits="NewJson.Convert.Unix" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="Unix时间戳">
<meta name="description" content="Unix时间戳转换">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Unix时间戳</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">当前时间戳</span>
                <input type="text" class="form-control" id="now_timestamp" style="width: 300px" placeholder=""
                    aria-describedby="basic-addon1">
            </div>
            <div style="margin-top: 20px;">
                <p>
                    Unix时间戳(Unix timestamp) → 北京时间</p>
                <div class="input-group" style="float: left; width: 400px;">
                    <span class="input-group-addon" id="basic-addon1">Unix时间戳</span>
                    <input type="text" class="form-control" style="width: 300px" id="unixtime" placeholder="要转换的时间戳"
                        aria-describedby="basic-addon1">
                </div>
                <button type="button" class="btn btn-primary" style="float: left; width: 200px" id="toGMT">
                    转换日期→
                </button>
                <div class="input-group" style="float: left; width: 200px; margin-left: 10px;">
                    <span class="input-group-addon" id="basic-addon1">北京时间</span>
                    <input type="text" class="form-control" id="result_GMT" style="width: 200px" placeholder="转换后的时间戳"
                        aria-describedby="basic-addon1">
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div style="margin-top: 40px;">
                <p>
                    北京时间 → Unix时间戳(Unix timestamp)</p>
                <div class="input-group" id="bjc1" style="float: left; width: 400px">
                    <input type="text" class="bjtime" id="year"><span>年</span>
                    <input type="text" class="bjtime" id="month"><span>月</span>
                    <input type="text" class="bjtime" id="day"><span>日</span>
                    <input type="text" class="bjtime" id="hour"><span>时</span>
                    <input type="text" class="bjtime" id="minute"><span>分</span>
                    <input type="text" class="bjtime" id="second"><span>秒</span>
                </div>
                <button type="button" class="btn btn-primary" style="float: left; width: 200px" id="toUNIX">
                    转换时间戳→
                </button>
                <div class="input-group" style="float: left; width: 200px; margin-left: 10px;">
                    <span class="input-group-addon" id="basic-addon1">时间戳</span>
                    <input type="text" class="form-control" id="result_unix" style="width: 200px" placeholder="转换后的时间戳"
                        aria-describedby="basic-addon1">
                </div>
            </div>
        </div>
        <input type="hidden" id="encode" value="1" />
    </div>
    <script src="/Js/convert/unix_time.js" type="text/javascript"></script>
    <style>
        .bjtime
        {
            float: left;
            width: 40px;
        }
        #bjc1 span
        {
            float: left;
            margin: 4px;
        }
    </style>
    <script type="text/javascript">
        function md5encode() {
            $("#estr").val(CryptoJS.MD5($("#str").val()));
        }

        function Empty() {
            document.getElementById('str').value = '';
            document.getElementById('estr').value = '';
            document.getElementById('str').select();
        }
        function GetFocus() {
            document.getElementById('str').focus();
        }
</script>
</asp:Content>
