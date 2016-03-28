<%@ Page Title="中文转换拼音,汉字转换拼音" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ToPinYing.aspx.cs" Inherits="NewJson.Change.ToPinYing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        中文转换拼音,汉字转换拼音</h2>
                </div>
            </div>
        </div>

        
                <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
            <form autocomplete="off">
        <div class="panel-body">
            <div>
                <p style="text-align: center;">
                </p>
                <div style="clear: both;">
                </div>
            </div>
            <div>
                <textarea id="text_input" name="json_input" onkeyup="" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入你要转换的字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left"  >
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" onclick="convert()">
                            转换成拼音</button>
           
                        <button type="button" class="btn btn-danger" onclick="empty()">
                            清空结果</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="...">
                    <button id="btn_type" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        普通翻译<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="t(1,this)">普通翻译</a></li>
                        <li><a href="javascript:;" onclick="t(2,this)">对照（中文在拼音前）</a></li>
                         <li><a href="javascript:;" onclick="t(3,this)">对照（中文在拼音后）</a></li>
                    </ul>
           
            <%--       <div  style=" width:400px;padding-top: 7px;">
                   <input type="checkbox" name="sym" checked="checked" />
                   <span>保留标点符号</span>
                   <input type="checkbox" name="sym1" checked="checked" />
                   <span>保留字母</span>
                   <input type="checkbox" name="sym2" checked="checked" />
                   <span>空格隔开</span>
                   </div>--%>
                         </div>
            <div class="btn-group"  >
        <div class=" btn checkbox" style="margin-top: inherit;">
      <label>
      <input type="checkbox"  name="sym" checked="checked" > 保留标点符号
      </label>
   </div>
   <div class="btn checkbox" style="margin-top: inherit;">
      <label>
      <input type="checkbox" name="sym1" checked="checked" > 保留字母
      </label>
   </div>
      <div class="btn checkbox" style="margin-top: inherit;">
      <label>
      <input type="checkbox" name="sym2" checked="checked"> 空格隔开
      </label>
   </div>
   </div>
                 
                </div>
            </div>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="这里显示转换后的结果"></textarea>
            </div>
             <input name="hidesel" id="hidesel" value="1" type="hidden" />
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
        </form>

        

        
        </div>
    <script src="/Js/change/pinyin.js" type="text/javascript"></script>
    <script type="text/javascript">
        function t(i, t) {
            $("#hidesel").val(i);
            $("#btn_type").text($(t).text());
        }
        function convert() {
            var forms = document.forms[0];
            
            var str = toPinyin({ str: $("#text_input").val(), dz: forms.hidesel.value, sym: forms.sym.checked, sym1: forms.sym1.checked, sym2: forms.sym2.checked });
            $("#result_input").val(str);
        }
        function empty() {
            document.getElementById('text_input').value = '';
            document.getElementById('result_input').value = '';
            document.getElementById('text_input').select();
        }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
