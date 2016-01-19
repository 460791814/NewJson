<%@ Page Title="在线图片转圆角图片,支持png,gif,jpg" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BorderRadius.aspx.cs" Inherits="NewJson.UI.BorderRadius" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线图片转圆角图片,支持png,gif,jpg">
<meta name="description" content="在线图片转圆角图片,支持png,gif,jpg">
    <script src="/Js/ui/blob.js" type="text/javascript"></script>
    <script src="/Js/ui/libcanvas.js" type="text/javascript"></script>
    <script src="/Js/ui/canvas-toblob.js" type="text/javascript"></script>
    <script src="/Js/ui/filesaver.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

<div class="panel panel-default">
<div class="panel-heading">
<div class="media">
<div class="media-body">
<h4 class="media-heading">在线图片转圆角图片,支持png,gif,jpg</h4>
<div id="desc1">在线图片转圆角图片,支持png,gif,jpg</div>
</div>
</div>
</div>
<div class="panel-body">
<form onkeydown="if(event.keyCode==13)return false;" style="width: 350px;margin: 0 auto;" enctype="multipart/form-data">
<div class="row">
<div class="span one xs-three strong" style="float: left;">上传图片</div>
<div class="span three xs-three" style="float: left;">
<input type="file" class="input-text" id="upimage" accept="image/*" onchange="on_upload_img();">
</div>
</div>
<div class="row" style="margin-top: 10px;">
<div class="span one xs-three strong" style="float: left;">圆角尺寸</div>
<div class="span two xs-three" style="float: left;">
<input type="number" maxlength="3" style="width:50px" class="input-text" onchange="do_round_img();" id="radius" value="20">
</div>
</div>
<div class="row" style="margin-top: 10px;">
<button type="button" class="button success small" onclick="download_img();">下载</button>
</div>
<div class="row" style="margin-top: 10px;">
<div id="prev" class="alert success"></div>
</div>
</form>
<script type="text/javascript">
    var canvas;
    var img;
    // var image_content = '';
    var readImage = function (file, callback) {
        var reader = new FileReader()
        reader.addEventListener('loadend', function (e) {
            if (e.target.readyState == FileReader.DONE) {
                var img = new Image();
                img.src = e.target.result;
                img.onload = function () {
                    callback(img);
                };
            }
        }, false);

        reader.readAsDataURL(file);
    };
    function $_(id) {
        return document.getElementById(id);
    }
    function download_img() {
        var canvas = $_('roundCanvas');
        var ctx = canvas.getContext("2d");
        canvas.toBlob(function (blob) {
            saveAs(blob, "round_corner_image_by_atool.png");
        }, "image/png");
        return false;
    }
    function do_round_img() {
        if (img && canvas) {
            if (!$_('radius')) {
                $_('radius').value = '0';
            }
            libcanvas.pasteImg(canvas, img);
            libcanvas.roundCanvas(canvas, $_('radius').value);
        }
    }
    function on_upload_img() {
        var file = $_('upimage').files[0];
        if (!/image\/\w+/.test(file.type)) {
            alert("请确保文件为图像类型");
            return false;
        }
        readImage(file, function (upimg) {
            img = upimg;
            canvas = libcanvas.createCanvasBasedOnImg(img);
            canvas.id = "roundCanvas";
            if ($_("prev").childNodes.length != 0) {
                $_("prev").removeChild($_("prev").childNodes[0]);
            }

            $_("prev").appendChild(canvas);
            $_("prev").childNodes[0].style['max-width'] = "100%";
            do_round_img();
        });
    }
    window.onload = function () {
        if (typeof (FileReader) === 'undefined') {
            alert("抱歉，你的浏览器不支持 FileReader，请使用现代浏览器操作！");
            $_('upimage').disabled = true;
        }
    }
            </script>
<div class="divider"></div>
</div>
<div class="panel-footer"></div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
