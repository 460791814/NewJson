<%@ Page Title="在线短网址生成,短网址还原,短链接生成,短链接还原,短地址生成" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="ShortUrl.aspx.cs" Inherits="NewJson.Change.ShortUrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="短链在线生成,短链在线生成器,短网址在线生成,在线短网址生成,短网址还原,短链接生成,短链接还原,短地址生成">
<meta name="description" content="短链在线生成,短链在线生成器,短网址在线生成,在线短网址生成,短网址还原,短链接生成,短链接还原,短地址生成">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        短网址生成还原</h4>
                    <div id="desc1">
                        短网址生成还原</div>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">转换前</span>
                <input type="text" id="content" class="form-control" placeholder="要转换的url" aria-describedby="basic-addon1">
            </div>
            <div class="btn-group" style="margin-top: 10px;" role="group" aria-label="...">
                <button type="button" class="btn btn-primary" onclick="encode();">
                    短地址转换</button>
                <button type="button" class="btn btn-primary" onclick="decode();">
                    短地址解码</button>
                <button type="button" class="btn btn-primary" onclick="change();">
                    内容交换</button>
                <button type="button" class="btn btn-danger" onclick="Empty();">
                    清空结果</button>
            </div>
            <div class="input-group" style="margin-top: 10px;">
                <span class="input-group-addon" id="basic-addon1">转换后</span>
                <input type="text" class="form-control" id="result" placeholder="转换后的url" aria-describedby="basic-addon1">
            </div>
        </div>
        <div class="panel-footer">
        </div>
    </div>
    <script type="text/javascript">

        function encode() {

            $.getJSON('/Change/ShortUrl.aspx?method=encode&url=' + jQuery("#content").val(), function (d) {
                    $("#result").val(d[0].url_short);
            })
          
        }
        function decode() {

            $.getJSON('/Change/ShortUrl.aspx?method=decode&url=' + jQuery("#content").val(), function (d) {
                    $("#result").val(d.content);
               
            })
         

        }

        function Empty() {
            document.getElementById('content').value = '';
            document.getElementById('result').value = '';
            document.getElementById('content').select();
        }

        function GetFocus() {
            document.getElementById('content').focus();
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
