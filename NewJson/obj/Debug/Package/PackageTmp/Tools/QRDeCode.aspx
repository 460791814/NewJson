<%@ Page Title="在线二维码解码" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="QRDeCode.aspx.cs" Inherits="NewJson.Tools.QRDeCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Js/jQuery-File-Upload-8.8.5/css/jquery.fileupload-ui.css" rel="stylesheet"
        type="text/css" />
    <script src="/Js/jQuery-File-Upload-8.8.5/js/vendor/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="/Js/jQuery-File-Upload-8.8.5/js/jquery.iframe-transport.js" type="text/javascript"></script>
    <script src="/Js/jQuery-File-Upload-8.8.5/js/jquery.fileupload.js" type="text/javascript"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_reedsolomon.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_qrbase.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_decode.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_qrdecode.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_encode.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_qrcode.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_render.table.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_render.canvas.js"></script>
    <script type="text/javascript" src="/Js/tools/qrdecode/qrcodelib_render.em.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading" style=" width: 150px;float:left">
                        在线二维码解码</h4>   <a href="/tools/qrcode/" class="btn btn-primary btn-xs" >在线二维码生成器</a>
                   
                </div>
            </div>
        </div>
        <script src="/Js/jquery-linedtextarea.js" type="text/javascript"></script>
        <link href="/Css/jquery-linedtextarea.css" type="text/css" rel="stylesheet">
        <!--[if IE]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
        <link rel="stylesheet" href="/Css/screen.css" type="text/css" media="screen, projection">
        <div class="panel-body">
            <div >
                <span class="btn btn-success fileinput-button"><i class="glyphicon glyphicon-plus"></i>
                    <span>选择文件...</span>
                    <input id="fileupload" type="file" name="files[]" data-url="#" multiple />
                </span>
                <div id="progress" class="progress" style="margin-top: 10px; width: 500px; display: none">
                    <div class="progress-bar progress-bar-success" id="pro_text">
                    </div>
                </div>
            </div>
            <div id="canvas_img" style="display: none">
                <canvas id="img"></canvas>
            </div>
            <div class="validateButtons clear">
                <div class="left" style="float: left;margin-top:10px;margin-bottom: 10px;">
                    <div class="btn-group" role="group" aria-label="...">
                      <button type="button" class="btn btn-primary" onclick="decode()">
                            二维码解码</button>
                       
                    </div>
                </div>
            </div>
            <div style="margin-top: 10px;">
                <textarea id="result_input" name="json_input" class="json_input" style="font-size: 11px !important;
                    height: 200px;" rows="32" spellcheck="false" placeholder="这里显示解码的字符串"></textarea>
            </div>
            <div style="clear: both;">
            </div>
        </div>
    </div>
    <script type="text/javascript">



        $(function () {

            $('#fileupload').fileupload({
                dataType: 'json',
                change: function (e, data) {

                    var canvas = $('#img')[0],
                       ctx = canvas.getContext('2d'),
                      file = data.files[0],
                      reader = new FileReader();

                    reader.onload = (function (e) {
                        var img = new Image();

                        img.onload = function () {
                            canvas.width = img.width;
                            canvas.height = img.height;
                            ctx.drawImage(img, 0, 0);
                            $("#canvas_img").show();
                        };

                        img.src = e.target.result;
                    });

                    file && reader.readAsDataURL(file);
                }
            });
        });
        function decode() {


            result = $('#img').QRDecode(function (e) {

                $("#result_input").val(e.message);

                throw e;
            });

            if (result) {

                $("#result_input").val(result);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
