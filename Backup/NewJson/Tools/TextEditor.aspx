<%@ Page Title="在线文字排版工具" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="TextEditor.aspx.cs" Inherits="NewJson.Tools.TextEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="文字排版,自动排版,自动编辑,一键排版编辑" content="keywords">
    <meta name="自动排版工具可自动排版编辑文章，一键轻松实现稿件规范排版。" content="description">
    <script type="text/javascript" src="/js/tools/texteditor/edit.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线自动排版工具</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
            <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
            <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
            <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
            <div>
                <textarea id="thebody" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 360px;" rows="32" spellcheck="false" placeholder="请输入要处理的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <input class="btn btn-primary" title="清除HTML" class="btn btn-primary" onclick="formatjs()"
                            value="清除HTML" type="button" name="body" />
                        <input title="系统自动排版" onclick="format()" value="自动排版" type="button" name="body" class="btn btn-primary" />
                        <!--<input class="button" title="仅用于删除文章内多余空行及空格" onclick=format2() value="消除空行" type="button" name="body1" class="btn btn-primary" />-->
                        <input title="自动段间空行自动排版" onclick="format3()" value="添加空行" type="button" name="body3"
                            class="btn btn-primary" />
                        <input title="替换英文标点符号" onclick="format4()" value="替换标点" type="button" name="chang"
                            class="btn btn-primary" />
                        <input title="检查错别字" onclick="CheckWords()" value="检查错别字" type="button" name="errword"
                            class="btn btn-primary" />
                        <input id="buttonj2f" title="简繁转换" onclick="j2f()" value="简->繁" type="button" name="jachang"
                            class="btn btn-primary" />
                        <input title="统计输入汉字数" onclick="chklen()" value="统计字数" type="button" name="len" class="btn btn-primary" />
                        <button type="button" class="btn btn-primary" id="btn_copy" onclick="copy('content')">
                            复制结果</button>
                        <script type="text/javascript" src="/Js/zeroclipboard.js?v=1288490188066.7"></script>
                        <script>
                            var clip = null;
                            ZeroClipboard.setMoviePath("/Js/ZeroClipboard.swf");
                            $(function () {
                                clip = new ZeroClipboard.Client();
                                clip.setHandCursor(true);
                                clip.setText($("#thebody").val());
                                clip.glue("btn_copy");
                                clip.addEventListener("mouseDown", function () {
                                    clip.setText($("#thebody").val());
                                });
                            })
                            $(window).resize(function () {
                                clip.reposition();
                            });
                          

                        </script>
                        <button type="button" class="btn btn-danger" onclick="javascript:$('#thebody').val('').focus(); ">
                            清空结果</button>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
            <div class="wrap" id="page">
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
