<%@ Page Title="在线文件大小转换，转换范围（bit,bytes,KB,MB,GB,TB）" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FileSize.aspx.cs" Inherits="NewJson.Convert.FileSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线文件大小转换，转换范围（bit,bytes,KB,MB,GB,TB），在线实时转换">
<meta name="description" content="在线文件大小转换，转换范围（bit,bytes,KB,MB,GB,TB），在线实时转换">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div class="panel panel-default">
<div class="panel-heading">
<div class="media">
<div class="media-body">
<h4 class="media-heading">在线文件大小(bit,bytes,KB,MB,GB,TB)转换换算</h4>

</div>
</div>
</div>
<div class="panel-body">
<div class="row" id="filesizeContainer" style="width:320px;margin:0 auto;">
<div class="input-group">
<input type="text" id="bitTxt" class="form-control filesizetxt" aria-describedby="basic-addon2">
<span class="input-group-addon" id="basic-addon2">Bit</span>
</div>
<div class="input-group">
<input type="text" id="bytesTxt" class="form-control filesizetxt" aria-describedby="basic-addon2">
<span class="input-group-addon" id="basic-addon2">Bytes</span>
</div>
<div class="input-group">
<input type="text" id="kbTxt" class="form-control filesizetxt" aria-describedby="basic-addon2">
<span class="input-group-addon" id="basic-addon2">KB</span>
</div>
<div class="input-group">
<input type="text" id="mbTxt" class="form-control filesizetxt" aria-describedby="basic-addon2">
<span class="input-group-addon" id="basic-addon2">MB</span>
</div>
<div class="input-group">
<input type="text" id="gbTxt" class="form-control filesizetxt" aria-describedby="basic-addon2">
<span class="input-group-addon" id="basic-addon2">GB</span>
</div>
<div class="input-group">
<input type="text" id="tbTxt" class="form-control filesizetxt" aria-describedby="basic-addon2">
<span class="input-group-addon" id="basic-addon2">TB</span>
</div>
</div>
</div>
<script>
    function setSize(bit, byte1, kb, mb, gb, tb) {
        $("#bitTxt").val(bit);
        $("#bytesTxt").val(byte1);
        $("#kbTxt").val(kb);
        $("#mbTxt").val(mb);
        $("#gbTxt").val(gb);
        $("#tbTxt").val(tb);
    }

    $("#bitTxt").keyup(function () {
        var value = $(this).val();
        if (value == "") return;
        value = parseFloat(value);
        var bit = value;
        var byte1 = value / 8;
        var kb = value / 8 / 1024;
        var mb = value / 8 / 1024 / 1024;
        var gb = value / 8 / 1024 / 1024 / 1024;
        var tb = value / 8 / 1024 / 1024 / 1024 / 1024;
        setSize(bit, byte1, kb, mb, gb, tb);
    })

    $("#bytesTxt").keyup(function () {
        var value = $(this).val();
        if (value == "") return;
        value = parseFloat(value);
        var bit = value * 8;
        var byte1 = value;
        var kb = value / 1024;
        var mb = value / 1024 / 1024;
        var gb = value / 1024 / 1024 / 1024;
        var tb = value / 1024 / 1024 / 1024 / 1024;
        setSize(bit, byte1, kb, mb, gb, tb);
    })

    $("#kbTxt").keyup(function () {
        var value = $(this).val();
        if (value == "") return;
        value = parseFloat(value);
        var bit = value * 8 * 1024;
        var byte1 = value * 1024;
        var kb = value;
        var mb = value / 1024;
        var gb = value / 1024 / 1024;
        var tb = value / 1024 / 1024 / 1024;
        setSize(bit, byte1, kb, mb, gb, tb);
    })

    $("#mbTxt").keyup(function () {
        var value = $(this).val();
        if (value == "") return;
        value = parseFloat(value);
        var bit = value * 8 * 1024 * 1024;
        var byte1 = value * 1024 * 1024;
        var kb = value * 1024;
        var mb = value;
        var gb = value / 1024;
        var tb = value / 1024 / 1024;
        setSize(bit, byte1, kb, mb, gb, tb);
    })

    $("#gbTxt").keyup(function () {
        var value = $(this).val();
        if (value == "") return;
        value = parseFloat(value);
        var bit = value * 8 * 1024 * 1024 * 1024;
        var byte1 = value * 1024 * 1024 * 1024;
        var kb = value * 1024 * 1024;
        var mb = value * 1024;
        var gb = value;
        var tb = value / 1024;
        setSize(bit, byte1, kb, mb, gb, tb);
    })

    $("#tbTxt").keyup(function () {
        var value = $(this).val();
        if (value == "") return;
        value = parseFloat(value);
        var bit = value * 8 * 1024 * 1024 * 1024 * 1024;
        var byte1 = value * 1024 * 1024 * 1024 * 1024;
        var kb = value * 1024 * 1024 * 1024;
        var mb = value * 1024 * 1024;
        var gb = value * 1024;
        var tb = value;
        setSize(bit, byte1, kb, mb, gb, tb);
    })
		
		
	</script>
<div class="panel-footer"></div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
