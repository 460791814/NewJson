<%@ Page Title="Xml转Json,Json转Xml" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true"
    CodeBehind="Xml2Json.aspx.cs" Inherits="NewJson.Json.Xml2Json" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <meta name="keywords" content="在线,JSON,Xml转Json,Json转Xml">
    <meta name="description" content="在线,JSON,Xml转Json,Json转Xml">  
    <script src="/Js/objtree.js" type="text/javascript"></script>
    <script src="/Js/jkl-dumper.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
    <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
   <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
    <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Xml转Json Json转Xml</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div>
                <p style="text-align: center;">
                </p>
                <div style="clear: both;">
                </div>
            </div>
            <form id="JSONValidate" method="post" action="" name="JSONValidate" style="margin-top: 10px;">
            <input type="hidden" id="reformat" value="1" />
            <input type="hidden" id="compress" value="0" />
            <div>
                <textarea id="json_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入需要处理的XML字符串或Json字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left"  >
                    <div class="btn-group" role="group" aria-label="...">
                        <input type="button" name="name" onclick="xmltojson();" class="btn btn-primary" value="Xml转Json" />
                        <input type="button" name="name" onclick="jsontoxml();" class="btn btn-primary" value="Json转Xml" />
                        <input type="button" name="name" onclick="javascript:$('#json_input').val('').focus(); "
                            type="reset" class="btn btn-danger" value="清空" />
                       
                          
                    </div>
                                <div class="btn-group"  >
        <div class=" btn checkbox" style="margin-top: inherit;">
      <label>
       <input id="bianma" type="checkbox">转义编码
      </label>
   </div>
   </div>
                    <div>
                    </div>
                </div>
            </div>
            </form>
            <div style="clear: both;">
            </div>
            <div class="top10">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="这里输出转换结果"></textarea>
            </div>
            <pre id="results" class="top10" style="display: none;"></pre>
        </div>
    </div>
    <script>
        function repalceFh(c) {
            return c.replace(/&gt;/g, ">").replace(/&lt;/g, "<").replace(/&quot;/g, "\"");
        }
        function xmltojson() {
            var xotree = new XML.ObjTree();
            var dumper = new JKL.Dumper();
            var xmlText = $("#json_input").val();
            if ($("#bianma").attr("checked")) {
                xmlText = repalceFh(xmlText);
            }
            var tree = xotree.parseXML(xmlText);
            $("#result_input").val(dumper.dump(tree));
        }
        function jsontoxml() {
            var xotree = new XML.ObjTree();
            var json = eval("(" + $("#json_input").val() + ")");
            $("#result_input").val(formatXml(xotree.writeXML(json)));
        }
        function example() {
            $("#json_input").val('<animals><dog><name>Rufus</name><breed>labrador</breed></dog><dog><name>Marty</name><breed>whippet</breed></dog><cat name="Matilda"/></animals>');
        }

    </script>
</asp:Content>
