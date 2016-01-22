<%@ Page Title="在线图片转Base64编码" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Image2Base64.aspx.cs" Inherits="NewJson.Change.Image2Base64" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="在线图片转Base64编码">
    <meta name="description" content="在线图片转Base64编码">
    <link href="/Js/jQuery-File-Upload-8.8.5/css/jquery.fileupload-ui.css" rel="stylesheet"
        type="text/css" />
    <script src="/Js/jQuery-File-Upload-8.8.5/js/vendor/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="/Js/jQuery-File-Upload-8.8.5/js/jquery.iframe-transport.js" type="text/javascript"></script>
    <script src="/Js/jQuery-File-Upload-8.8.5/js/jquery.fileupload.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线图片转Base64编码</h4>
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div style="margin-left: 10px">
                <span class="btn btn-success fileinput-button"><i class="glyphicon glyphicon-plus"></i>
                    <span>Select files...</span>
                    <input id="fileupload" type="file" name="files[]" data-url="/Change/Image2Base64.aspx?method=base64"
                        multiple />
                </span>
                <div id="progress" class="progress" style=" margin-top:10px;width:500px; display:none">
                    <div class="progress-bar progress-bar-success" id="pro_text">
                    </div>
                </div>
            </div>
            <div style="margin-top: 10px;">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="请输入图片对应的Base64字符串"></textarea>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-primary" id="btn_copy">
                            复制结果</button>
                        <script type="text/javascript" src="/Js/zeroclipboard.js?v=1288490188066.7"></script>
                        <script>
                            var clip = null;
                            ZeroClipboard.setMoviePath("/Js/ZeroClipboard.swf");
                            $(function () {
                                clip = new ZeroClipboard.Client();
                                clip.setHandCursor(true);
                                clip.setText($("#result_input").val());
                                clip.glue("btn_copy");
                                clip.addEventListener("mouseOver", function () {
                                    clip.setText($("#result_input").val());
                                });
                            })
                            $(window).resize(function () {
                                clip.reposition();
                            });
                          

                        </script>
                        <button type="button" class="btn btn-primary" onclick="base2img()">
                            Base64转换成图片</button>
                    </div>
                </div>
            </div>
            <div style="clear: both;">
            </div>
        </div>
    </div>
    <div class="panel panel-default" style="display: none" id="showImg">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        图片使用Base64编码展示效果：</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div style="clear: both">
            </div>
            <img src="" id="img" alt="" />
        </div>
    </div>
    <script>
        $(function () {

            $('#fileupload').fileupload({
                dataType: 'json',
                done: function (e, data) {

                    $("#result_input").val("data:image/png;base64," + data.result.content);
                    $("#img").attr("src", "data:image/png;base64," + data.result.content);
                    $("#showImg").show();
                },
                progressall: function (e, data) {
                    $("#progress").show();
                    var progress = parseInt(data.loaded / data.total * 100, 10);
                    $('#progress .progress-bar').css('width', progress + '%');
                    $("#pro_text").html(progress + '%');
                    if (progress == 100) {
                        $("#progress").hide();
                    }
                }
            });
        });

        function base2img() {
            var baseStr = $("#result_input").val();

            if (baseStr.indexOf("data:image/png;base64,") > -1) {

            } else {
                baseStr = "data:image/png;base64," + baseStr;
            }

            $("#img").attr("src", baseStr);
            $("#showImg").show();
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
