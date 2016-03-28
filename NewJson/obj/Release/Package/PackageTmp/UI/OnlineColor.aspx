<%@ Page Title="在线调色板" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="OnlineColor.aspx.cs" Inherits="NewJson.UI.OnlineColor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线调色板,网页调色板,调色板工具"/>
<meta name="description" content="可以快速查找出相应颜色的编码是多少"/>
    <link href="/Css/change/all-base.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    /*html-colortiaoseban-begin*/
.TsCorBan-Wrap{font-family: 'Microsoft YaHei';}
.TsCorBan-Wrap .TableCent01 th,.TsCorBan-Wrap .TableCent01 td{border: 1px solid #c6cede;border-collapse: collapse;}
.TsCorBan-Wrap .TableCent02 th,.TsCorBan-Wrap .TableCent02 td{ width:100%; height:100%;border: 1px solid #c6cede;border-collapse: collapse;}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        在线调色板</h2>
                </div>
            </div>
        </div>

        <div class="panel-body">
<div class="wrapper pt20 pb20"> 

     
    <div class="TsCorBan-Wrap w570 auto">
    <form name="onlinecolor">
  <table bgcolor="#000000" border="0" cellpadding="0" cellspacing="0" width="100" class="TableCent01">
    <tbody>
      <tr>
        <td width="100%"><table border="0" cellpadding="0" cellspacing="1" width="100">
            <tbody>
              <tr>
                <td bgcolor="#00ff00"><a href="javascript:setcolor('#00FF00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00ff33"><a href="javascript:setcolor('#00FF33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00ff66"><a href="javascript:setcolor('#00FF66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00ff99"><a href="javascript:setcolor('#00FF99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00ffcc"><a href="javascript:setcolor('#00FFCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00ffff"><a href="javascript:setcolor('#00FFFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00cc00"><a href="javascript:setcolor('#00CC00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00cc66"><a href="javascript:setcolor('#00CC66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00cc66"><a href="javascript:setcolor('#00CC66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00cc99"><a href="javascript:setcolor('#00CC99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00cccc"><a href="javascript:setcolor('#00CCCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#00ccff"><a href="javascript:setcolor('#00CCFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#009900"><a href="javascript:setcolor('#009900')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#009933"><a href="javascript:setcolor('#009933')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#009966"><a href="javascript:setcolor('#009966')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#009999"><a href="javascript:setcolor('#009999')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0099cc"><a href="javascript:setcolor('#0099CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0099ff"><a href="javascript:setcolor('#0099FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#33ff00"><a href="javascript:setcolor('#33FF00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33ff33"><a href="javascript:setcolor('#33FF33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33ff66"><a href="javascript:setcolor('#33FF66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33ff99"><a href="javascript:setcolor('#33FF99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33ffcc"><a href="javascript:setcolor('#33FFCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33ffff"><a href="javascript:setcolor('#33FFFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33cc00"><a href="javascript:setcolor('#33CC00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33cc33"><a href="javascript:setcolor('#33CC33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33cc66"><a href="javascript:setcolor('#33CC66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33cc99"><a href="javascript:setcolor('#33CC99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33cccc"><a href="javascript:setcolor('#33CCCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#33ccff"><a href="javascript:setcolor('#33CCFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#339900"><a href="javascript:setcolor('#339900')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#339933"><a href="javascript:setcolor('#339933')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#339966"><a href="javascript:setcolor('#339966')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#339999"><a href="javascript:setcolor('#339999')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3399cc"><a href="javascript:setcolor('#3399CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3399ff"><a href="javascript:setcolor('#3399FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#66ff00"><a href="javascript:setcolor('#66FF00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66ff33"><a href="javascript:setcolor('#66FF33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66ff66"><a href="javascript:setcolor('#66FF66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66ff99"><a href="javascript:setcolor('#66FF99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66ffcc"><a href="javascript:setcolor('#66FFCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66ffff"><a href="javascript:setcolor('#66FFFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66cc00"><a href="javascript:setcolor('#66CC00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66cc33"><a href="javascript:setcolor('#66CC33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66cc66"><a href="javascript:setcolor('#66CC66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66cc99"><a href="javascript:setcolor('#66CC99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66cccc"><a href="javascript:setcolor('#66CCCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#66ccff"><a href="javascript:setcolor('#66CCFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#669900"><a href="javascript:setcolor('#669900')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#669933"><a href="javascript:setcolor('#669933')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#669966"><a href="javascript:setcolor('#669966')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#669999"><a href="javascript:setcolor('#669999')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6699cc"><a href="javascript:setcolor('#6699CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6699ff"><a href="javascript:setcolor('#6699FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#99ff00"><a href="javascript:setcolor('#99FF00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99ff33"><a href="javascript:setcolor('#99FF33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99ff66"><a href="javascript:setcolor('#99FF66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99ff99"><a href="javascript:setcolor('#99FF99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99ffcc"><a href="javascript:setcolor('#99FFCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99ffff"><a href="javascript:setcolor('#99FFFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99cc00"><a href="javascript:setcolor('#99CC00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99cc33"><a href="javascript:setcolor('#99CC33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99cc66"><a href="javascript:setcolor('#99CC66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99cc99"><a href="javascript:setcolor('#99CC99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99cccc"><a href="javascript:setcolor('#99CCCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#99ccff"><a href="javascript:setcolor('#99CCFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#999900"><a href="javascript:setcolor('#999900')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#999933"><a href="javascript:setcolor('#999933')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#999966"><a href="javascript:setcolor('#999966')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#999999"><a href="javascript:setcolor('#999999')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9999cc"><a href="javascript:setcolor('#9999CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9999ff"><a href="javascript:setcolor('#9999FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#ccff00"><a href="javascript:setcolor('#CCFF00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ccff33"><a href="javascript:setcolor('#CCFF33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ccff66"><a href="javascript:setcolor('#CCFF66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ccff99"><a href="javascript:setcolor('#CCFF99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ccffcc"><a href="javascript:setcolor('#CCFFCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ccffff"><a href="javascript:setcolor('#CCFFFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cccc00"><a href="javascript:setcolor('#CCCC00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cccc33"><a href="javascript:setcolor('#CCCC33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cccc66"><a href="javascript:setcolor('#CCCC66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cccc99"><a href="javascript:setcolor('#CCCC99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cccccc"><a href="javascript:setcolor('#CCCCCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ccccff"><a href="javascript:setcolor('#CCCCFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc9900"><a href="javascript:setcolor('#CC9900')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc9933"><a href="javascript:setcolor('#CC9933')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc9966"><a href="javascript:setcolor('#CC9966')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc9999"><a href="javascript:setcolor('#CC9999')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc99cc"><a href="javascript:setcolor('#CC99CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc99ff"><a href="javascript:setcolor('#CC99FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#ffff00"><a href="javascript:setcolor('#FFFF00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffff33"><a href="javascript:setcolor('#FFFF33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffff66"><a href="javascript:setcolor('#FFFF66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffff99"><a href="javascript:setcolor('#FFFF99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffffcc"><a href="javascript:setcolor('#FFFFCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffffff"><a href="javascript:setcolor('#FFFFFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffcc00"><a href="javascript:setcolor('#FFCC00')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffcc33"><a href="javascript:setcolor('#FFCC33')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffcc66"><a href="javascript:setcolor('#FFCC66')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffcc99"><a href="javascript:setcolor('#FFCC99')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffcccc"><a href="javascript:setcolor('#FFCCCC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ffccff"><a href="javascript:setcolor('#FFCCFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff9900"><a href="javascript:setcolor('#FF9900')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff9933"><a href="javascript:setcolor('#FF9933')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff9966"><a href="javascript:setcolor('#FF9966')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff9999"><a href="javascript:setcolor('#FF9999')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff99cc"><a href="javascript:setcolor('#FF99CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff99ff"><a href="javascript:setcolor('#FF99FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#006600"><a href="javascript:setcolor('#006600')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#006633"><a href="javascript:setcolor('#006633')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#006666"><a href="javascript:setcolor('#006666')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#006699"><a href="javascript:setcolor('#006699')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0066cc"><a href="javascript:setcolor('#0066CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0066ff"><a href="javascript:setcolor('#0066FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#003300"><a href="javascript:setcolor('#003300')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#003333"><a href="javascript:setcolor('#003333')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#003366"><a href="javascript:setcolor('#003366')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#003399"><a href="javascript:setcolor('#003399')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0033cc"><a href="javascript:setcolor('#0033CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0033ff"><a href="javascript:setcolor('#0033FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#000000"><a href="javascript:setcolor('#000000')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#000033"><a href="javascript:setcolor('#000033')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#000066"><a href="javascript:setcolor('#000066')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#000099"><a href="javascript:setcolor('#000099')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0000cc"><a href="javascript:setcolor('#0000CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#0000ff"><a href="javascript:setcolor('#0000FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#336600"><a href="javascript:setcolor('#336600')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#336633"><a href="javascript:setcolor('#336633')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#336666"><a href="javascript:setcolor('#336666')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#336699"><a href="javascript:setcolor('#336699')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3366cc"><a href="javascript:setcolor('#3366CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3366ff"><a href="javascript:setcolor('#3366FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#333300"><a href="javascript:setcolor('#333300')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#333333"><a href="javascript:setcolor('#333333')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#333366"><a href="javascript:setcolor('#333366')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#333399"><a href="javascript:setcolor('#333399')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3333cc"><a href="javascript:setcolor('#3333CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3333ff"><a href="javascript:setcolor('#3333FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#330000"><a href="javascript:setcolor('#330000')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#330033"><a href="javascript:setcolor('#330033')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#330066"><a href="javascript:setcolor('#330066')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#330099"><a href="javascript:setcolor('#330099')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3300cc"><a href="javascript:setcolor('#3300CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#3300ff"><a href="javascript:setcolor('#3300FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#666600"><a href="javascript:setcolor('#666600')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#666633"><a href="javascript:setcolor('#666633')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#666666"><a href="javascript:setcolor('#666666')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#666699"><a href="javascript:setcolor('#666699')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6666cc"><a href="javascript:setcolor('#6666CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6666ff"><a href="javascript:setcolor('#6666FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#663300"><a href="javascript:setcolor('#663300')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#663333"><a href="javascript:setcolor('#663333')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#663366"><a href="javascript:setcolor('#663366')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#663399"><a href="javascript:setcolor('#663399')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6633cc"><a href="javascript:setcolor('#6633CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6633ff"><a href="javascript:setcolor('#6633FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#660000"><a href="javascript:setcolor('#660000')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#660033"><a href="javascript:setcolor('#660033')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#660066"><a href="javascript:setcolor('#660066')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#660099"><a href="javascript:setcolor('#660099')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6600cc"><a href="javascript:setcolor('#6600CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#6600ff"><a href="javascript:setcolor('#6600FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#996600"><a href="javascript:setcolor('#996600')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#996633"><a href="javascript:setcolor('#996633')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#996666"><a href="javascript:setcolor('#996666')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#996699"><a href="javascript:setcolor('#996699')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9966cc"><a href="javascript:setcolor('#9966CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9966ff"><a href="javascript:setcolor('#9966FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#993300"><a href="javascript:setcolor('#993300')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#993333"><a href="javascript:setcolor('#993333')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#993366"><a href="javascript:setcolor('#993366')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#993399"><a href="javascript:setcolor('#993399')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9933cc"><a href="javascript:setcolor('#9933CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9933ff"><a href="javascript:setcolor('#9933FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#990000"><a href="javascript:setcolor('#990000')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#990033"><a href="javascript:setcolor('#990033')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#990066"><a href="javascript:setcolor('#990066')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#990099"><a href="javascript:setcolor('#990099')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9900cc"><a href="javascript:setcolor('#9900CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#9900ff"><a href="javascript:setcolor('#9900FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#cc6600"><a href="javascript:setcolor('#CC6600')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc6633"><a href="javascript:setcolor('#CC6633')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc6666"><a href="javascript:setcolor('#CC6666')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc6699"><a href="javascript:setcolor('#CC6699')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc66cc"><a href="javascript:setcolor('#CC66CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc66ff"><a href="javascript:setcolor('#CC66FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc3300"><a href="javascript:setcolor('#CC3300')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc3333"><a href="javascript:setcolor('#CC3333')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc3366"><a href="javascript:setcolor('#CC3366')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc3399"><a href="javascript:setcolor('#CC3399')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc33cc"><a href="javascript:setcolor('#CC33CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc33ff"><a href="javascript:setcolor('#CC33FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc0000"><a href="javascript:setcolor('#CC0000')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc0033"><a href="javascript:setcolor('#CC0033')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc0066"><a href="javascript:setcolor('#CC0066')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc0099"><a href="javascript:setcolor('#CC0099')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc00cc"><a href="javascript:setcolor('#CC00CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#cc00ff"><a href="javascript:setcolor('#CC00FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
              <tr>
                <td bgcolor="#ff6600"><a href="javascript:setcolor('#FF6600')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff6633"><a href="javascript:setcolor('#FF6633')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff6666"><a href="javascript:setcolor('#FF6666')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff6699"><a href="javascript:setcolor('#FF6699')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff66cc"><a href="javascript:setcolor('#FF66CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff66ff"><a href="javascript:setcolor('#FF66FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff3300"><a href="javascript:setcolor('#FF3300')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff3333"><a href="javascript:setcolor('#FF3333')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff3366"><a href="javascript:setcolor('#FF3366')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff3399"><a href="javascript:setcolor('#FF3399')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff33cc"><a href="javascript:setcolor('#FF33CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff33ff"><a href="javascript:setcolor('#FF33FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff0000"><a href="javascript:setcolor('#FF0000')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff0033"><a href="javascript:setcolor('#FF0033')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff0066"><a href="javascript:setcolor('#FF0066')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff0099"><a href="javascript:setcolor('#FF0099')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff00cc"><a href="javascript:setcolor('#FF00CC')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
                <td bgcolor="#ff00ff"><a href="javascript:setcolor('#FF00FF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
              </tr>
            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="290" class="TableCent02 mt10">
    <tbody>
      <tr>
        <td style="text-align:center;" bgcolor="#ffffff"><a href="javascript:setcolor('#FFFFFF')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#dddddd"><a href="javascript:setcolor('#DDDDDD')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#c0c0c0"><a href="javascript:setcolor('#C0C0C0')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#969696"><a href="javascript:setcolor('#969696')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#808080"><a href="javascript:setcolor('#808080')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#646464"><a href="javascript:setcolor('#646464')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#4b4b4b"><a href="javascript:setcolor('#4B4B4B')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#242424"><a href="javascript:setcolor('#242424')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
        <td bgcolor="#000000"><a href="javascript:setcolor('#000000')"><img src="/picture/spacer.gif" height="30" border="0" width="30"></a></td>
      </tr>
    </tbody>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" class="ColorHead mt10">
    <tbody>
      <tr>
        <td align="left" width="100%"><input class="input" onchange="shouldset(this.value)" size="10" value="#FFFFFF" name="onlineCodevalue">
          <img src="/picture/spacer.gif" height="10" border="0" width="10">
          <input class="input bg-white" onfocus="this.blur()" size="24" name="selectcolor" disabled="disabled"></td>
      </tr>
    </tbody>
  </table>
</form>
    
    </div>
  
    

</div>
</div>
</div>
<script type="text/javascript">
    function shouldset(passon) {
        if (document.onlinecolor.onlineCodevalue.value.length == 7) { setcolor(passon) }
    }
    function setcolor(elem) {
        document.onlinecolor.onlineCodevalue.value = elem
        document.onlinecolor.selectcolor.style.backgroundColor = elem
    }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
