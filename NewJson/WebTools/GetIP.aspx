<%@ Page Title="获取您的IP" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="GetIP.aspx.cs" Inherits="NewJson.WebTools.GetIP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="获取您的IP">
<meta name="description" content="获取您的IP">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div class="panel panel-default">
<div class="panel-heading">
<div class="media">
<div class="media-body">
<h4 class="media-heading">获取您的IP</h4>
<div id="desc1">获取用户IP</div>
</div>
</div>
</div>
<div class="panel-body">
<div class="input-group">
<span class="input-group-addon" id="basic-addon1">您的IP:</span>
<input type="text" class="form-control" id="str" value="<%=CommonTool.Utils.GetClientIP() %>" aria-describedby="basic-addon1">
</div>
</div>
<div class="panel-footer"></div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
