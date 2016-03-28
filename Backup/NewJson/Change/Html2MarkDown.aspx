<%@ Page Title="在线Html转换为MarkDown, Markdown转换为Html工具" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Html2MarkDown.aspx.cs" Inherits="NewJson.Change.Html2MarkDown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="Keywords" content="在线工具,markdown,html转markdown,html转md,markdown转html,html和markdown互转">
<meta name="Description" content="在线工具,提供一款html和markdown标签互转的工具，可以十分方便的在它们两者之间互相转换。">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading" style=" float:left">
                        Html/MarkDown互转工具</h4> 
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div>
                <p style="text-align: center;">
                </p>
                <div style="clear: both;">
                </div>
            </div>
            <div>
                <textarea id="text_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入要处理的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                       <button type="button" class="btn btn-primary" onclick="md_2_html();">
                            Markdown转Html</button>
                        <button type="button" class="btn btn-primary" onclick="html_2_md();">
                            Html转Markdown</button>
                         <button type="button" class="btn btn-primary" onclick="markdemo();">
                            来个Markdown</button>
                        <button type="button" class="btn btn-danger" onclick="empty()">
                            清空结果</button>
                    </div>
                    
                    <div>
                    </div>
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32"  placeholder="这里显示处理后的字符串"></textarea>
            </div>
            <input type="hidden" id="encode" value="1" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    </div>

    <div class="panel panel-default" id="show_panel" style=" display:none">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading" style=" float:left">
                        实时预览(仅供参考)</h4> 
                </div>
            </div>
        </div>
            <div class="panel-body">
            <div id="show" class="well" style="margin-top:10px;">
            </div>
            </div></div>

    
        <div class="panel panel-default" >
          <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    相关链接
                </div>
            </div>
        </div>
      <div class="panel-body">
            <a href="/docs/markdown/"  >Markdown 语法说明(简体中文版)</a>&nbsp&nbsp
    <a href="/docs/markdownbasic/">Markdown 快速入门 语法说明(简体中文版)</a> 
     </div>
       </div>     
    <script src="/Js/change/markdown.min.js" type="text/javascript"></script>
    <script src="/Js/change/to-markdown.js" type="text/javascript"></script>
    <script type="text/javascript">
        var demo = "# MarkDown示例"
                   +"\n"
                   + "### Header 3"
                   + "\n"
                    + "> This is a blockquote.\n"
                    + ">\n "
                    + "> This is the second paragraph in the blockquote.\n"
                    + ">\n"
                    + "> ## This is an H2 in a blockquote";

        function markdemo(){
        
         $("#text_input").val(demo);
        }
        function html_2_md() {
            $('#result_input').val(toMarkdown($('#text_input').val()));
            $("#show_panel").hide();
        }
        function md_2_html() {
            var result = markdown.toHTML($('#text_input').val());
            $('#result_input').val(result);
            $("#show_panel").show();
            $("#show").html(result);
        }
        function empty() {
            $("#show_panel").hide();
            document.getElementById('text_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('text_input').focus();
           
        }
			</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
