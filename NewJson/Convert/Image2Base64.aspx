<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Image2Base64.aspx.cs" Inherits="NewJson.Convert.Image2Base64" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Js/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
    <script src="/Js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

<input type="file" name="file_upload" id="file_upload" />
<a href="javascript:$('#file_upload').uploadify('upload','*')">Upload Files</a>
    <script type="text/javascript">

        $(function () {
            $("#file_upload").uploadify({
                'auto': false,
                'swf': '/uploadify/uploadify.swf',
                'uploader': '/uploadify/uploadify.php'
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
