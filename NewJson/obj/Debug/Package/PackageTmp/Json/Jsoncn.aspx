<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Jsoncn.aspx.cs" Inherits="NewJson.Json.Jsoncn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%--    <link href="/Js/json/font-awesome.min.css" rel="stylesheet" type="text/css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        Json在线解析</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
       

    <div >
        <textarea id="json-src" name="json_input" class="json_input"  placeholder="在此输入json字符串或XML字符串..."   class="form-control"  style="height:554px;padding:20px;border:0;border:solid 1px #ddd;border-radius:0;resize: none; outline:none;">{&#13"Json解析":"支持格式化高亮折叠",&#13"支持XML转换":"支持XML转换Json,Json转XML",&#13"Json格式验证":"更详细准确的错误信息"</textarea>
    </div>
                <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button name="validate" id="validate" value="Validate" class="btn btn-primary">
                            校验</button>
                              <button name="validate" id="Button1" value="Validate" class="btn btn-primary">
                            压缩</button>

                        <input name="validate" class="btn btn-danger" onclick="javascript:$('#json_input').focus(); "
                            type="reset" value="清空" />
                    </div>
                </div>
            </div>
                        <div style="clear: both;">
            </div>
            <div style="border:solid 1px #ddd; ">
                    <div id="json-target"  style="height:510px;padding:20px;border-right:solid 1px #ddd;border-bottom:solid 1px #ddd;border-radius:0;resize: none;overflow-y:scroll; outline:none;">
             </div>
             </div>
    <div class="col-md-7" style="padding:0;">
        <div style="padding:10px;font-size:16px;border:solid 1px #ddd;" class="navi">
            <a href="#" class="tip zip" title="压缩"  data-placement="bottom"><i class="fa fa-database"></i></a>
            <a href="#" class="tip xml" title="转XML"  data-placement="bottom"><i class="fa fa-file-excel-o"></i></a>
         
            <a href="#" class="tip clear" title="清空"  data-placement="bottom"><i class="fa fa-trash"></i></a>
            <a href="#" class="tip save" title="保存"  data-placement="bottom"><i class="fa fa-floppy-o"></i></a>
        </div>


        
    </div>
    <br style="clear:both;" />

 </div>
        </div>



<%--   
<script src="/Js/json/jquery.min.js"></script>
<script src="/Js/json/jquery.message.js"></script>--%>
<script src="/Js/json/jquery.json.js"></script>


<%--<script src="/Js/json/jquery.json2xml.js"></script>
<script src="/Js/json/json2.js"></script>--%>
<script src="/Js/json/jsonlint.js"></script>
    <script src="/Js/json/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
    var current_json = '';
    var current_json_str = '';
    var xml_flag = false;
    var zip_flag = false;
    $('.tip').tooltip();
    function init() {
        xml_flag = false;
        zip_flag = false;
        $('.xml').attr('style', 'color:#999;');
        $('.zip').attr('style', 'color:#999;');
    }
    $('#json-src').keyup(function () {
        init();
        var content = $.trim($(this).val());
        var result = '';
        if (content != '') {
            //如果是xml,那么转换为json
            if (content.substr(0, 1) === '<' && content.substr(-1, 1) === '>') {
                try {
                    var json_obj = $.xml2json(content);
                    content = JSON.stringify(json_obj);
                } catch (e) {
                    result = '解析错误：<span style="color: #f1592a;font-weight:bold;">' + e.message + '</span>';
                    current_json_str = result;
                    $('#json-target').html(result);
                    return false;
                }

            }
            try {
                current_json = jsonlint.parse(content);
                current_json_str = JSON.stringify(current_json);
                //current_json = JSON.parse(content);
                result = new JSONFormat(content, 4).toString();
            } catch (e) {
                result = '<span style="color: #f1592a;font-weight:bold;">' + e + '</span>';
                current_json_str = result;
            }

            $('#json-target').html(result);
        } else {
            $('#json-target').html('');
        }

    });
    $('.xml').click(function () {
        if (xml_flag) {
            $('#json-src').keyup();
        } else {
            var result = $.json2xml(current_json);
            $('#json-target').html('<textarea style="width:100%;height:100%;border:0;resize:none;">' + result + '</textarea>');
            xml_flag = true;
            $(this).attr('style', 'color:#15b374;');
        }

    });
    $('.zip').click(function () {
        if (zip_flag) {
            $('#json-src').keyup();
        } else {
            $('#json-target').html(current_json_str);
            zip_flag = true;
            $(this).attr('style', 'color:#15b374;');
        }

    });
    $('.clear').click(function () {
        $('#json-src').val('');
        $('#json-target').html('');
    });
    $('.save').click(function () {
        var content = JSON.stringify(current_json);
        $('#txt-content').val(content);
        $("#form-save").submit();
    });
    $('#json-src').keyup();
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
