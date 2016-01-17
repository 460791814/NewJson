<%@ Page Title="MD5在线加密-MD5加密-MD5加密工具" Language="C#" MasterPageFile="~/Main.Master"
    AutoEventWireup="true" CodeBehind="MD5.aspx.cs" Inherits="NewJson.EncDec.MD5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="MD5在线加密,md5加密,md5加密算法,md5加密工具">
    <meta name="description" content="本工具可以提供32位，16位等MD5加密。">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        MD5加密</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">要加密的字符串</span>
                <input type="text" class="form-control" id="text_input" placeholder="要加密的字符串" aria-describedby="basic-addon1">
            </div>
            <div class="btn-group" role="group" aria-label="..." style="margin-top: 20px;">
                <button type="button" class="btn btn-primary" onclick="md5encode();">
                    MD5加密</button>
                <button type="button" class="btn btn-danger" onclick="empty();">
                    清空结果</button>
            </div>
            <div class="input-group" style="margin-top: 20px;">
                <span class="input-group-addon" id="Span1">16位 小写</span>
                <input type="text" class="form-control" id="result_input" placeholder="16位 小写" aria-describedby="basic-addon1">
            </div>
            <div class="input-group" style="margin-top: 20px;">
                <span class="input-group-addon" id="Span2">16位 大写</span>
                <input type="text" class="form-control" id="result2_input" placeholder="16位 大写" aria-describedby="basic-addon1">
            </div>
            <div class="input-group" style="margin-top: 20px;">
                <span class="input-group-addon" id="Span3">32位 小写</span>
                <input type="text" class="form-control" id="result3_input" placeholder="32位 小写" aria-describedby="basic-addon1">
            </div>
            <div class="input-group" style="margin-top: 20px;">
                <span class="input-group-addon" id="Span4">32位 大写</span>
                <input type="text" class="form-control" id="result4_input" placeholder="32位 大写" aria-describedby="basic-addon1">
            </div>
        </div>
    </div>
    <script src="/Js/encdec/md5.js" type="text/javascript"></script>
    <script type="text/javascript">
        function md5encode() {
            var md5str = CryptoJS.MD5($("#text_input").val()).toString();
            $("#result_input").val(md5str.substring(8, 24).toLowerCase());
            $("#result2_input").val(md5str.substring(8, 24).toUpperCase());
            $("#result3_input").val(md5str.toLowerCase());
            $("#result4_input").val(md5str.toUpperCase());
        }

        function empty() {
            document.getElementById('text_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('result2_input').value = '';
            document.getElementById('result3_input').value = '';
            document.getElementById('result4_input').value = '';
            document.getElementById('text_input').select();
        }

        function GetFocus() {
            document.getElementById('text_input').focus();
        }
    </script>
</asp:Content>
