<%@ Page Title="在线Html转换为MarkDown工具" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Html2MarkDown.aspx.cs" Inherits="NewJson.Change.Html2MarkDown" %>
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
                        Html转换为MarkDown工具</h4> 
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
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入要加密的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="html_2_md();">
                            Html转Markdown</button>
                        <button type="button" class="btn btn-primary" onclick="md_2_html();">
                            Markdown转Html</button>
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
                    height: 200px;" rows="32"  placeholder="这里显示加密或解密后的字符串"></textarea>
            </div>
            <input type="hidden" id="encode" value="1" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    </div>


    <div  style="border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;padding:15px;margin-bottom:15px">
    <a href="/tools/qrcode/" class="btn btn-default btn-xs" >Markdown 语法说明(简体中文版)</a>
    <a href="/tools/qrcode/" class="btn btn-default btn-xs">Markdown 快速入门 语法说明(简体中文版)</a> 
    </div>

            <div style="padding:30px;line-height:30px;border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;">
            <table class="wikitable">
<tbody><tr>
<th width="33%">Markdown语法的文本</th>
<th width="33%">对应的HTML</th>
<th width="33%">最终浏览器上效果</th>
</tr>
<tr valign="top">
<td>
<div class="mw-highlight mw-content-ltr" dir="ltr">
<pre><span class="gh">Heading</span>
<span class="gh">=======</span>

<span class="gh">Sub-heading</span>
<span class="gh">-----------</span>
 
### Another deeper heading
 
Paragraphs are separated
by a blank line.

Leave 2 spaces at the end of a line to do a  
line break

Text attributes <span class="ge">*italic*</span>, <span class="gs">**bold**</span>, 
<span class="nv">`monospace`</span>, ~~strikethrough~~ .

Shopping list:

  <span class="m">*</span> apples
  <span class="m">*</span> oranges
  <span class="m">*</span> pears

Numbered list:

  <span class="m">1.</span> apples
  <span class="m">2.</span> oranges
  <span class="m">3.</span> pears

The rain---not the reign---in
Spain.

A [link](http://example.com).
</pre></div>
<sup id="cite_ref-28" class="reference"></sup></td>
<td>
<div class="mw-highlight mw-content-ltr" dir="ltr">
<pre><span class="nt">&lt;h1&gt;</span>Heading<span class="nt">&lt;/h1&gt;</span>

<span class="nt">&lt;h2&gt;</span>Sub-heading<span class="nt">&lt;/h2&gt;</span>

<span class="nt">&lt;h3&gt;</span>Another deeper heading<span class="nt">&lt;/h3&gt;</span>

<span class="nt">&lt;p&gt;</span>Paragraphs are separated
by a blank line.<span class="nt">&lt;/p&gt;</span>

<span class="nt">&lt;p&gt;</span>Leave 2 spaces at the end of a line to do a<span class="nt">&lt;br</span> <span class="nt">/&gt;</span>
line break<span class="nt">&lt;/p&gt;</span>

<span class="nt">&lt;p&gt;</span>Text attributes <span class="nt">&lt;em&gt;</span>italic<span class="nt">&lt;/em&gt;</span>, <span class="nt">&lt;strong&gt;</span>bold<span class="nt">&lt;/strong&gt;</span>,
<span class="nt">&lt;code&gt;</span>monospace<span class="nt">&lt;/code&gt;</span>, <span class="nt">&lt;s&gt;</span>strikethrough<span class="nt">&lt;/s&gt;</span>.<span class="nt">&lt;/p&gt;</span>

<span class="nt">&lt;p&gt;</span>Shopping list:<span class="nt">&lt;/p&gt;</span>

<span class="nt">&lt;ul&gt;</span>
<span class="nt">&lt;li&gt;</span>apples<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;li&gt;</span>oranges<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;li&gt;</span>pears<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ul&gt;</span>

<span class="nt">&lt;p&gt;</span>Numbered list:<span class="nt">&lt;/p&gt;</span>

<span class="nt">&lt;ol&gt;</span>
<span class="nt">&lt;li&gt;</span>apples<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;li&gt;</span>oranges<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;li&gt;</span>pears<span class="nt">&lt;/li&gt;</span>
<span class="nt">&lt;/ol&gt;</span>

<span class="nt">&lt;p&gt;</span>The rain<span class="ni">&amp;mdash;</span>not the
reign<span class="ni">&amp;mdash;</span>in Spain.<span class="nt">&lt;/p&gt;</span>

<span class="nt">&lt;p&gt;</span>A <span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">"http://example.com"</span><span class="nt">&gt;</span>link<span class="nt">&lt;/a&gt;</span>.<span class="nt">&lt;/p&gt;</span>
</pre></div>
</td>
<td>
<div  style="border-left:solid 1px #ddd;border:solid 1px #ddd;border-radius:5px;" >
<div style="color: #000000; background: none; overflow: hidden; page-break-after: avoid; font-size: 1.5em; font-family: Georgia,Times,serif; margin-top: 1em; margin-bottom: 0.25em; line-height: 1.3; padding: 0; border-bottom: 1px solid #AAAAAA;">Heading</div>
<div style="color: #000000; background: none; overflow: hidden; page-break-after: avoid; font-size: 1.17em; font-weight: bold; margin-top: 0.3em; margin-bottom: 0; line-height: 1.6; padding-top: 0.5em; padding-bottom: 0;">Sub-heading</div>
<div style="color: #000000; background: none; overflow: hidden; page-break-after: avoid; font-size: 100%; font-weight: bold; margin-top: 0.3em; margin-bottom: 0; line-height: 1.6; padding-top: 0.5em; padding-bottom: 0;">Another deeper heading</div>
<p>Paragraphs are separated by a blank line.</p>
<p>Leave 2 spaces at the end of a line to do a<br>
line break</p>
<p>Text attributes <i>italic</i>, <strong>bold</strong>, <code>monospace</code>, <s>strikethrough</s>.</p>
<p>Shopping list:</p>
<ul>
<li>apples</li>
<li>oranges</li>
<li>pears</li>
</ul>
<p>Numbered list:</p>
<ol>
<li>apples</li>
<li>oranges</li>
<li>pears</li>
</ol>
<p>The rain—not the reign—in Spain.</p>
<p>A <a rel="nofollow" class="external text" href="http://example.com">link</a>.</p>
</div>
</td>
</tr>
</tbody></table>
            </div>
    <script src="/Js/change/markdown.min.js" type="text/javascript"></script>
    <script src="/Js/change/to-markdown.js" type="text/javascript"></script>
    <script type="text/javascript">
        function html_2_md() {
            $('#result_input').val(toMarkdown($('#text_input').val()));
        }
        function md_2_html() {
            $('#result_input').val(markdown.toHTML($('#text_input').val()));
        }
        function empty() {
            document.getElementById('morse_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('morse_input').focus();
        }
			</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
