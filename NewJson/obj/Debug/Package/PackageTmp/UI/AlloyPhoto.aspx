<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlloyPhoto.aspx.cs" Inherits="NewJson.UI.AlloyPhoto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
  <title>AlloyPhoto 简约版--Tencent AlloyTeam</title>
      <meta name="keywords" content="AlloyPhoto,美肤,素描,自然增强,紫调,柔焦,复古,黑白,仿lomo,亮白增强,灰白,灰色,暖秋,木雕,粗糙">
    <meta name="description" content="在线工具,美肤,素描,自然增强,紫调,柔焦,复古,黑白,仿lomo,亮白增强,灰白,灰色,暖秋,木雕,粗糙">
      <link href="/Css/mobile.css" rel="stylesheet" type="text/css" />
    <link href="/Css/header.css" rel="stylesheet" type="text/css" />
    <link href="/Css/ui/alloyphoto/bar.style.css" rel="stylesheet" type="text/css" />
    <link href="/Css/ui/alloyphoto/main.css" rel="stylesheet" type="text/css" />
    <script src="/Js/ui/alloyimage.js" type="text/javascript"></script>
  <script type="text/javascript">
      (function () {
          var Main = {
              img: null,
              addEvent: function (selector, eventType, func) {
                  var proName = "";

                  switch (true) {
                      case /^\./.test(selector):
                          proName = "className";
                          selector = selector.replace(".", "");
                          break;
                      case /^\#/.test(selector):
                          proName = "id";
                          selector = selector.replace("#", "");
                          break;
                      default:
                          proName = "tagName";
                  }

                  document.body.addEventListener(eventType, function (e) {
                      function check(node) {
                          if (!node.parentNode) return;

                          if (node[proName] == selector) {
                              func.call(node, e);
                          };
                          check(node.parentNode);
                      }
                      check(e.target);
                  }, false);
              },
              eventAtt: function () {
                  var _this = this;

                  /*
                  this.addEvent(".pic","dragstart",function(e){
                  var dx = e.offsetX ? e.offsetX : e.layerX;
                  var dy = e.offsetY ? e.offsetY : e.layerY;
                  e.dataTransfer.setData("dx", dx);
                  e.dataTransfer.setData("dy", dy);
                  });

                  this.addEvent(".pic","drag",function(e){
                  e.preventDefault();
                  });
                  this.addEvent(".picWrapper", "dragover", function(e){
                  e.preventDefault();
                  });
                  this.addEvent(".picWrapper", "drop", function(e){
                  var dx = e.dataTransfer.getData("dx");
                  var dy = e.dataTransfer.getData("dy");
                  var x = e.offsetX ? e.offsetX : e.layerX;
                  var y = e.offsetY ? e.offsetY : e.layerY;

                  var pic = document.getElementById("pic");
                
                  pic.style.left = (x - dx) + "px";
                  pic.style.top = (y - dy) + "px";

                
                  });
                  */

                  var clickFlag = 0, dx, dy, left, top;
                  this.addEvent(".pic", "mousedown", function (e) {
                      /*
                      dx = e.offsetX ? e.offsetX : e.layerX;
                      dy = e.offsetY ? e.offsetY : e.layerY;
                      */

                      dx = e.clientX;
                      dy = e.clientY;

                      left = parseInt(pic.style.left);
                      top = parseInt(pic.style.top);

                      clickFlag = 1;
                  });
                  this.addEvent(".picWrapper", "mouseup", function (e) {
                      clickFlag = 0;
                  });

                  document.getElementById("picWrapper").onmousemove = function (e) {
                      /*
                      var x = e.offsetX ? e.offsetX : e.layerX;
                      var y = e.offsetY ? e.offsetY : e.layerY;
                      */
                      var x = e.clientX;
                      var y = e.clientY;

                      if (clickFlag) {
                          var pic = document.getElementById("pic");

                          /*
                          var x = e.offsetX ? e.offsetX : e.layerX;
                          var y = e.offsetY ? e.offsetY : e.layerY;
                          */
                          var x = e.clientX;
                          var y = e.clientY;

                          var rLeft = left + (x - dx);
                          var rTop = top + (y - dy);
                          if (rLeft < 0) rLeft = 0;
                          if (rTop < 0) rTop = 0;
                          console.log("x:" + x + " y:" + y + "| left:" + left + ",top:" + top + "| dx:" + dx + ",dy:" + dy);

                          pic.style.left = rLeft + "px";
                          pic.style.top = rTop + "px";
                      }
                  };

                  this.addEvent(".d_item", "click", function (e) {
                      var img = this.getElementsByTagName("img")[0];
                      var pic = document.getElementById("pic");
                      pic.src = img.src;
                      pic.onload = function () {
                          _this.initView();
                          _this.img = AlloyImage(this);
                      };
                  });

                  this.addEvent(".button", "click", function (e) {
                      document.getElementById("open").click();
                  });

                  this.addEvent(".open", "change", function (e) {
                      _this.openFile(e.target.files[0]);
                  });

                  this.addEvent(".imgWrapper", "click", function (e) {
                      var text = this.childNodes[1].nodeValue.replace("效果", "");
                      var img = document.getElementById("pic");
                      var AP = _this.img.clone();
                      if (text == "原图") AP.replace(img);
                      else {
                          msgEle.style.display = "block";

                          setTimeout(function () {
                              var t = +new Date();
                              AP.ps(text).replace(img);
                              console.log(text + "：" + (+new Date() - t) / 1000 + "s");
                              msgEle.style.display = "none";
                          }, 2);
                      }
                  });

                  document.body.addEventListener("drop", function (e) {
                      e.preventDefault();
                      var fileList = e.dataTransfer.files;
                      _this.openFile(fileList[0]);
                  }, false);

                  window.onresize = function () {
                      _this.initView();
                  };

              },

              init: function () {
                  this.initView();
                  this.showModel();
                  this.eventAtt();

                  var _this = this;
                  var pic = document.getElementById("pic");
                  pic.onload = function () {
                      _this.img = AlloyImage(this);
                      _this.initView();
                  };
              },

              initView: function () {
                  var func = function () {
                      /*
                      var computedStyle = getComputedStyle(document.getElementById("picWrapper"));
                      */
                      var w_width = parseInt(document.body.clientWidth) - 250;
                      var w_height = document.body.clientHeight;
                      var p_width = this.width;
                      var p_height = this.height;

                      var left = (parseInt(w_width) - parseInt(p_width)) / 2;
                      var top = (parseInt(w_height) - parseInt(p_height)) / 2;
                      top = top < 0 ? 0 : top;
                      left = left < 0 ? 0 : left;
                      this.style.left = left + "px";
                      this.style.top = top + "px";
                      msgEle.style.left = (parseInt(w_width) - 100) / 2 + "px";
                      msgEle.style.top = (parseInt(w_height) - 100) / 2 + "px";
                  };
                  func.call(document.getElementById("pic"));

                  var height = document.body.clientHeight;
                  var left = document.querySelector(".left");
                  var leftHeight = height - 143;
                  left.style.height = leftHeight + "px";
              },

              openFile: function (fileUrl) {//打开文件

                  var reader = new FileReader();
                  var _this = this;
                  reader.readAsDataURL(fileUrl);
                  reader.onload = function () {
                      var pic = document.getElementById("pic");
                      pic.src = this.result;
                      pic.onload = function () {
                          _this.initView();
                          _this.img = AlloyImage(this);
                      };
                  };

              },

              showModel: function () {
                  var EasyReflection = {
                      "美肤": "e1",
                      "素描": "e2",
                      "自然增强": "e3",
                      "紫调": "e4",
                      "柔焦": "e5",
                      "复古": "e6",
                      "黑白": "e7",
                      "仿lomo": "e8",
                      "亮白增强": "e9",
                      "灰白": "e10",
                      "灰色": "e11",
                      "暖秋": "e12",
                      "木雕": "e13",
                      "粗糙": "e14"
                  };
                  var effectModel = '<li class="e_item"><div class="imgWrapper"><img src="/picture/AlloyPhoto/{pic}.png" alt="" />{effect}</div></li>';
                  var html = '<li class="e_item"><div class="imgWrapper"><img src="/picture/AlloyPhoto/e1.jpg" alt="" />原图</div></li>';
                  for (var i in EasyReflection) {
                      html += effectModel.replace("{effect}", i.length < 3 ? i + "效果" : i).replace("{pic}", EasyReflection[i]);
                  }

                  document.getElementById("effects").innerHTML = html;
              }

          };

          var msgEle;

          window.addEventListener("DOMContentLoaded", function () {
              msgEle = document.getElementById("infoMsg");
              Main.init();
          }, false);

      })();
  </script>
</head>
<body>
  
	<style>
h1{margin:0;padding:0;}
#header{background: #006cbf url(images/headerbg.gif) left bottom repeat-x;height: 55px;position: relative;z-index: 1;}
#logo{background: url("images/logo.gif") no-repeat;line-height: 50px;cursor:pointer;width:250px;margin:0 0 0 10px;}
.texthidden{text-indent:-9999px;white-space:nowrap;line-height:0;}
</style>
<!--     Tools头部header开始    -->

<!--     Tools头部header结束    --><div class="wrapper">
  <div class="left">
    <h3>效果</h3>
    <ul id="effects" class="effects">
      <li class="e_item">
        <div class="imgWrapper">
        </div>
      </li>
    </ul>
  </div>
  <div class="right">
    <div id="picWrapper" class="picWrapper">
        <img src="/picture/AlloyPhoto/bulding.jpg" class="pic" id="pic" alt="" draggable="false"/>

        <div id="infoMsg">
          处理中
        </div>
    </div>
    
  </div>	
</div>
<div class="command">
  <ul class="demoImg">
    <li>示例图片 <br />demos</li>
    <li class="d_item"><img src="/picture/AlloyPhoto/bulding.jpg" /><div class='lab'>建筑</div></li>
    <li class="d_item"><img src="/picture/AlloyPhoto/big.jpg" /><div class='lab'>特写</div></li>
    <li class="d_item"><img src="/picture/AlloyPhoto/small.jpg" /><div class='lab'>微距</div></li>
    <li class="d_item"><img src="/picture/AlloyPhoto/girl.jpg" /><div class='lab'>人物</div></li>
    <li class="d_item"><img src="/picture/AlloyPhoto/inner.jpg" /><div class='lab'>室内</div></li>
    <li class="d_item"><img src="/picture/AlloyPhoto/pet.jpg" /><div class='lab'>宠物</div></li>
    <li class="d_item"><img src="/picture/AlloyPhoto/scen.jpg" /><div class='lab'>风景</div></li>
    <li class="d_item"><img src="/picture/AlloyPhoto/stop.jpg" /><div class='lab'>静物</div></li>
  </ul>
  <ul class="command_items">
    <li>
        <a class="button" href="#" class="mask">打开图片</a>
    </li>
  </ul>
  <div class="footer">
    <div class="copyright">Copyright &copy; 
    <script>                                                document.write(new Date().getFullYear());</script> 
 <%--   <a href="http://www.AlloyTeam.com/" target="_blank">Tencent AlloyTeam</a>. All Rights Reserved.</div>--%>
  </div>
</div>
<input type="file" name="open" id="open" class="open" />

</body>
</html>

<!-- Generated by OSCTools.NET (Fri Jan 29 15:18:47 CST 2016) 1ms -->