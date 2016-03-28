<%@ Page Title="在线生成指定大小的图片" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ImageResize.aspx.cs" Inherits="NewJson.UI.ImageResize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="在线生成指定大小的图片" />
<meta name="description" content="在线生成指定大小的图片">
    <link href="/Css/ui/placeholder.almost-flat.min.css" rel="stylesheet" type="text/css" />
    <link href="/Css/ui/uikit.almost-flat.min.css" rel="stylesheet" type="text/css" />
    <link href="/Css/ui/progress.almost-flat.min.css" rel="stylesheet" type="text/css" />
    <script src="/Js/ui/qiniu.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

<div class="panel panel-default">
<div class="panel-heading">
<div class="media">
<div class="media-body">
<h4 class="media-heading">在线生成指定大小的图片</h4>
<div id="desc1">
在线生成指定大小的图片 <p style="color: red;">修改完之后保存就可以变成你指定宽度高度的图片了。</p>
</div>
</div>
</div>
</div>
<div class="panel-body">
<div class="uk-container uk-container-center">
<div class="uk-grid">
<div class="uk-width-1-1">
<div id="upload-drop" class="uk-placeholder uk-text-center">
<button class="uk-button uk-button-primary uk-button-large" type="button">
<span class="uk-icon-cloud-upload"></span>&nbsp;上传文件</button>
</div>
<div id="upload-progress" class="uk-progress">
<div id="upload-progress-bar" class="uk-progress-bar " style="width: 0%;"></div>
</div>
<div style="text-align: center;">
<div id="toolb" style="display:block;">
<div class="btn-group" data-toggle="buttons">
<label class="btn btn-primary " onclick="changeDbs()">
<input type="checkbox" name="ire" id="ire" autocomplete="off" checked><span id="sf1">等比缩放</span>
</label>
<label class="btn btn-primary " onclick="changeSize(16,16)">
<input type="radio" name="options" id="option1" autocomplete="off">16×16
</label>
<label class="btn btn-primary" onclick="changeSize(32,32)">
<input type="radio" name="options" id="option2" autocomplete="off">32×32
</label>
<label class="btn btn-primary" onclick="changeSize(64,64)">
<input type="radio" name="options" id="option3" autocomplete="off">64x64
</label>
<label class="btn btn-primary " onclick="changeSize(128,128)">
<input type="radio" name="options" id="option4" autocomplete="off">128*128
</label>
<label class="btn btn-primary" onclick="changeSize(256,256)">
<input type="radio" name="options" id="option5" autocomplete="off">256*256
</label>
<label class="btn btn-primary" onclick="changeSize(512,512)">
<input type="radio" name="options" id="option5" autocomplete="off">512*512
</label>
<label class="btn btn-primary active" onclick="changeSize(0,0)">
<input type="radio" name="options" id="option5" autocomplete="off" checked>原大小
</label>
</div>
<div class="row" style="padding-top:10px;">
<div class="input-group" style="text-align: center;width:100%">
width:
<input type="text" id="diyWidth" style="width:120px" placeholder="请自定义宽度">
height:
<input type="text" id="diyHeight" style="width:120px" placeholder="请自定义高度">
<input type="button" class="btn btn-primary btn-sm" onclick="changeSize($('#diyWidth').val(),$('#diyHeight').val())" style="margin-left:10px" value="转换大小">
</div>
</div>
<br/>
<img id="imgr" style="margin-top: 10px;"/>
</div>
</div>
<input id="dbs" type="hidden" value="1" />
</div>
</div>
</div>
<script>
    function changeDbs() {
        var dbsval = $("#dbs").val();
        $("#sf1").text(dbsval == 1 ? "不等比缩放" : "等比缩放");
        $("#dbs").val(dbsval == "1" ? 0 : 1);
    }
    function changeSize(w, h) {
        var src = $("#imgr").attr("src");
        if (src.indexOf("?") != -1) {
            src = src.substring(0, src.indexOf("?"));
        }
        if (w != 0) {
            src = src + "?imageView2/" + $("#dbs").val() + "/w/" + w + "/h/" + h;
        }
        $("#imgr").attr("src", src);
    }

    (function ($) {
        var bucketName = "bejson-temp";
        var bucketUrl = "http://7xkmrw.com1.z0.glb.clouddn.com/";
        var uploadToken = "LqCJA1IqM78VpGYAc2v3TPqlP8KVco3m5Qq229Pm:lPVJsKcXiIvDjgwmTs3Tm-5cGwk=:eyJzY29wZSI6ImJlanNvbi10ZW1wIiwic2F2ZUtleSI6IjUyNEJGNUVGLTYyRjctNTM0OC1FOTZBLUExREJCM0NEOEQwRCIsImRlYWRsaW5lIjoxNDUzMjAwNzk1LCJyZXR1cm5Cb2R5Ijoie1wibmFtZVwiOiAkKGZuYW1lKSxcInNpemVcIjogJChmc2l6ZSl9In0=";
        var bucket = qiniu.bucket(bucketName, {
            "putToken": uploadToken
        });
        qiniu.bind($('#upload-drop'), {
            filter: 'image'
        }).bind.dnd($('#upload-drop'), {
            filter: 'image'
        }).on('file', function (file) {
            var time = new Date().getTime();
            var random = Math.random() * 100000000000000000;
            var name = "upload/" + random + file.name;
            bucket.putFile(name, file, {
                before: function (xhr, key, file, options) {
                    $('#upload-progress').addClass("uk-progress-striped");
                    $('#upload-progress').addClass("uk-active");
                },
                progress: function (percent, loaded, total) {
                    $('#upload-progress-bar').css("width", percent.toFixed(2) + "%");
                    $('#upload-progress-bar').html(percent.toFixed(2) + "%");
                }
            }, function (err, reply) {
                $('#upload-progress').removeClass("uk-active");
                $('#upload-progress').removeClass("uk-progress-striped");
                if (err) {
                    $('#upload-progress').addClass("uk-progress-danger");
                    $('#upload-progress-bar').html("Error: " + err);
                } else {
                    $('#upload-progress').addClass("uk-progress-success");
                    $('#upload-progress-bar').html("上传成功!");
                    $("#toolb").show();
                    $("#imgr").attr("src", bucketUrl + 'upload/' + random + reply.name);
                    //$('#upload-progress').after('<p><a target="_blank" href="' + bucketUrl + 'upload/' + reply.name + '">' + bucketUrl + 'upload/' + reply.name + '</a></p>');
                }
            });
        });
    })(jQuery);
			</script>
</div>
<div class="panel-footer"></div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
