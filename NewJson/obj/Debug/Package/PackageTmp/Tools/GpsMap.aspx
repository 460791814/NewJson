<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GpsMap.aspx.cs" Inherits="NewJson.Tools.GpsMap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
 <title>经纬度查询_经纬度在线查询_经纬度转换_经纬度定位- newjson.com</title>
 <meta name="keywords" content="在线工具,经纬度查询,经纬度转换,经纬度定位,经纬度地图,经纬度在线查询,经纬度定位地图,获取经纬度工具">
 <meta name="description" content="在线工具,经纬度查询,经纬度转换,经纬度定位,经纬度地图,经纬度在线查询,经纬度定位地图,获取经纬度工具">
	<style type="text/css">
	body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
	#allmap {height: 100%;width:100%;overflow: hidden;}
	#result {width:100%;font-size:12px;}
	dl,dt,dd,ul,li{
		margin:0;
		padding:0;
		list-style:none;
	}
	dt{
		font-size:14px;
		font-family:"微软雅黑";
		font-weight:bold;
		border-bottom:1px dotted #000;
		padding:5px 0 5px 5px;
		margin:5px 0;
	}
	dd{
		padding:5px 0 0 5px;
	}
	li{
		line-height:20px;
	}
	</style>
	<link rel="stylesheet" type="text/css" href="/css/tools/gpsmap/style.css">
	<script src="/js/tools/gpsmap/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="/js/tools/gpsmap/f5a75a65b94a49898ee8e28ef27d4484.js"></script>
    <script type="text/javascript" src="/js/tools/gpsmap/searchinfowindow_min.js"></script>
	<link rel="stylesheet" href="/css/tools/gpsmap/searchinfowindow_min.css" />
	
</head>
<body>
 <div id="left-panel" class="" style="height: 831px; display:none">   
    <div id="searchbox" class="clearfix">
<div id="searchbox-container">
<div id="sole-searchbox-content" class="searchbox-content" style="display: block;">
<input id="sole-input" class="searchbox-content-common" type="text" name="word"  autocomplete="off" maxlength="256" placeholder="输入经纬度用逗号连接" value="">
<div class="input-clear" title="清空" style="display: none;"></div>
<div class="" data-title="路线" data-tooltip="1">
</div>
</div>
<!--<div id="nearby-searchbox-content" class="searchbox-content" style="display: none;">   </div>-->
</div>
<button id="search-button" data-title="搜索" onclick="theLocation()" data-tooltip="2"></button>
<div id="toast-wrapper" class="">
<div id="toast" class="warning">


</div>
</div>
</div>
    
  </div>
  
   <div id="hide" align='center' ><img src='/picture/loading.gif'></div>
    
	<div id="allmap" style='display:none'>
	                
	    
	</div>
    <div id="r-result"></div>
    <div style=" display:none">
    <script src="http://s11.cnzz.com/stat.php?id=1257658599&web_id=1257658599" language="JavaScript"></script>
    </div>
</body>
</html>
<script type="text/javascript">
    $(function () {

        $('input:text:first').focus(); //把焦点放在第一个文本框 
        var $inp = $('input'); //所有的input元素 
        $inp.keypress(function (e) { //这里给function一个事件参数命名为e，叫event也行，随意的，e就是IE窗口发生的事件。 
            var key = e.which; //e.which是按键的值 
            if (key == 13) {
                theLocation();
            }
        });

        /*Javascript代码片段*/


    })



    // 百度地图API功能
    var map = new BMap.Map("allmap");

    var point = new BMap.Point();
    map.centerAndZoom(point, 16);

    map.enableScrollWheelZoom(true);
    map.addEventListener("tilesloaded", function () {

        $("#hide").hide();
        $("#allmap").show(200);
        $("#left-panel").show(200);
        //theLocation();


    })
    var geoc = new BMap.Geocoder();
    var geolocation = new BMap.Geolocation();



    geolocation.getCurrentPosition(function (r) {
        if (this.getStatus() == BMAP_STATUS_SUCCESS) {
            var mk = new BMap.Marker(r.point);
            //map.addOverlay(mk);
            map.panTo(r.point);
            geoc.getLocation(r.point, function (rs) {
                var addComp = rs.addressComponents;
                //alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
                var content = '<div style="margin:0;line-height:20px;padding:2px;">' + addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + "" + addComp.streetNumber + '<br> 当前坐标:' + r.point.lng + "," + r.point.lat + '</div>';
                $("#sole-input").val(r.point.lng + "," + r.point.lat)
                theLocation();
                //创建检索信息窗口对象
                var searchInfoWindow = null;
                searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
                    title: "我的位置",      //标题
                    width: 290,             //宽度
                    height: 50,              //高度
                    panel: "panel",         //检索结果面板
                    enableAutoPan: true,     //自动平移
                    searchTypes: [
							BMAPLIB_TAB_SEARCH,   //周边检索
							BMAPLIB_TAB_TO_HERE,  //到这里去
							BMAPLIB_TAB_FROM_HERE //从这里出发
						]
                });
                var marker = new BMap.Marker(r.point);


                searchInfoWindow.open(marker);
                map.addOverlay(marker);
            });
        }
        else {
            alert('failed' + this.getStatus());
        }
    }, { enableHighAccuracy: true })

    map.addEventListener("click", function (e) {
        //alert(e.point.lng + "," + e.point.lat);
        var weizhi = "";
        geoc.getLocation(e.point, function (rs) {
            var addComp = rs.addressComponents;
            //alert(addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
            var content = '<div style="margin:0;line-height:20px;padding:2px;">' + addComp.district + ", " + addComp.street + "" + addComp.streetNumber + '<br> 当前坐标:' + e.point.lng + "," + e.point.lat + '</div>';
            $("#sole-input").val(e.point.lng + "," + e.point.lat)
            //创建检索信息窗口对象
            var searchInfoWindow = null;
            searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
                title: "点击位置",      //标题
                width: 290,             //宽度
                height: 50,              //高度
                panel: "panel",         //检索结果面板
                enableAutoPan: true,     //自动平移
                searchTypes: [
							BMAPLIB_TAB_SEARCH,   //周边检索
							BMAPLIB_TAB_TO_HERE,  //到这里去
							BMAPLIB_TAB_FROM_HERE //从这里出发
						]
            });
            var marker = new BMap.Marker(e.point);
            marker.enableDragging(); //marker可拖拽
            marker.addEventListener("click", function (e) {
                searchInfoWindow.open(marker);
            })
            searchInfoWindow.open(marker);
            map.addOverlay(marker);
        });








    });
    // 用经纬度设置地图中心点
    function theLocation() {
        if ($("#sole-input").val()) {
            map.clearOverlays();

            var str = $("#sole-input").val();
            var xy = new Array(); //定义一数组 
            xy = str.split(","); //字符分割 
            var new_point = new BMap.Point(xy[0], xy[1]);
            var marker = new BMap.Marker(new_point);  // 创建标注
            map.panTo(new_point);
            geoc.getLocation(new_point, function (rs) {
                var addComp = rs.addressComponents;
                //alert(addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber);
                var content = '<div style="margin:0;line-height:20px;padding:2px;">' + addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + "" + addComp.streetNumber + '<br> 当前坐标:' + new_point.lng + "," + new_point.lat + '</div>';

                //创建检索信息窗口对象
                var searchInfoWindow = null;
                searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
                    title: "我的位置",      //标题
                    width: 290,             //宽度
                    height: 50,              //高度
                    panel: "panel",         //检索结果面板
                    enableAutoPan: true,     //自动平移
                    searchTypes: [
							BMAPLIB_TAB_SEARCH,   //周边检索
							BMAPLIB_TAB_TO_HERE,  //到这里去
							BMAPLIB_TAB_FROM_HERE //从这里出发
						]
                });
                var marker = new BMap.Marker(new_point);


                searchInfoWindow.open(marker);
                map.addOverlay(marker);
            });
        }
    }
    //关于状态码
    //BMAP_STATUS_SUCCESS	检索成功。对应数值"0"。
    //BMAP_STATUS_CITY_LIST	城市列表。对应数值"1"。
    //BMAP_STATUS_UNKNOWN_LOCATION	位置结果未知。对应数值"2"。
    //BMAP_STATUS_UNKNOWN_ROUTE	导航结果未知。对应数值"3"。
    //BMAP_STATUS_INVALID_KEY	非法密钥。对应数值"4"。
    //BMAP_STATUS_INVALID_REQUEST	非法请求。对应数值"5"。
    //BMAP_STATUS_PERMISSION_DENIED	没有权限。对应数值"6"。(自 1.1 新增)
    //BMAP_STATUS_SERVICE_UNAVAILABLE	服务不可用。对应数值"7"。(自 1.1 新增)
    //BMAP_STATUS_TIMEOUT	超时。对应数值"8"。(自 1.1 新增)
</script>
