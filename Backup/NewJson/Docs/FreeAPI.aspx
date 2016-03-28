<%@ Page Title="免费API接口" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FreeAPI.aspx.cs" Inherits="NewJson.Docs.FreeAPI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="keywords" content="json 免费API接口 电商接口 物流接口 快递接口  谷歌接口 百度接口 天气接口 音乐接口 地图接口 IP接口 翻译接口  其它接口" />
<meta name="description" content="json 免费API接口 电商接口 物流接口 快递接口  谷歌接口 百度接口 天气接口 音乐接口 地图接口 IP接口 翻译接口  其它接口 ">
    <style type="text/css">
    .code {
    background-color: whiteSmoke;
    font-family: Courier New;
    font-size: 12px;
    border: 1px solid #CCC;
    padding: 5px;
    word-break: break-all;
    overflow: auto;
    width: 98%;
    margin: 5px 0px;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div class="panel panel-default">
<div class="panel-heading">
<div class="media">
<div class="media-body">
<h4 class="media-heading">JSON API免费接口</h4>
</div>
</div>
</div>
<div class="panel-body">
<div style="margin:0 auto;top:0;width:100%;padding:30px;line-height:30px;" id="container">
<div id="header">
<div class="code" style="float:left;width:466px;"> 这里为大家搜集了一些能够返回JSON格式的服务接口。部分需要用JSONP调用。
</div>
</div>
<div style="clear: both">
            </div>
<h3>电商接口</h3>
<ul>
<li>
<span>京东获取单个商品价格接口:</span>
<div class="code">http://p.3.cn/prices/mgets?skuIds=J_商品ID&amp;type=1
<a href="http://www.oschina.net/code/snippet_160697_34201" onclick="return jump2(this);" class="demo">用例</a>
<br>
<div class="des">
ps:商品ID这么获取:http://item.jd.com/<font color="red">954086</font>.html
</div>
</div>
<span>淘宝商品搜索建议:</span>
<div class="code">http://suggest.taobao.com/sug?code=utf-8&amp;q=商品关键字&amp;callback=cb
<a href="http://suggest.taobao.com/sug?code=utf-8&amp;q=%E5%8D%AB%E8%A1%A3&amp;callback=cb" onclick="return jump2(this);" class="demo">用例</a>
<br>
<div class="des">
ps:callback是回调函数设定
</div>
</div>
</li>
</ul>
<div class="fix"></div>
<h3>物流接口</h3>
<ul>
<li>
<span>快递接口:</span>
<div class="code">http://www.kuaidi100.com/query?type=快递公司代号&amp;postid=快递单号
<br>
<div class="des">
ps:快递公司编码:申通="shentong" EMS="ems" 顺丰="shunfeng" 圆通="yuantong" 中通="zhongtong" 韵达="yunda" 天天="tiantian" 汇通="huitongkuaidi" 全峰="quanfengkuaidi" 德邦="debangwuliu" 宅急送="zhaijisong"
</div>
</div>
</li>
</ul>
<h3>谷歌接口</h3>
<ul>
<li>
<span>FeedXml转json接口:</span>
<div class="code">http://ajax.googleapis.com/ajax/services/feed/load?q=Feed地址&amp;v=1.0 <a href="http://ajax.googleapis.com/ajax/services/feed/load?q=http://www.bilibili.tv/rss-13.xml&amp;v=1.0" class="demo" onclick="return jump2(this);">用例(请右击在新窗口打开)</a><a href="https://developers.google.com/feed/v1/jsondevguide#resultJson" target="_blank">官方文档</a></div>
<div class="des">
备选参数:callback：&amp;callback=foo就会在json外面嵌套foo({})方便做jsonp使用。
<br>
备选参数:n：返回多少条记录。
</div>
</li>
</ul>
<h3>百度接口</h3>
<ul>
<li>
<span>百度百科接口:</span>
<div class="code">http://baike.baidu.com/api/openapi/BaikeLemmaCardApi?scope=103&amp;format=json&amp;appid=379020&amp;bk_key=关键字&amp;bk_length=600<a href="http://baike.baidu.com/api/openapi/BaikeLemmaCardApi?scope=103&amp;format=json&amp;appid=379020&amp;bk_key=%E9%93%B6%E9%AD%82&amp;bk_length=600" class="demo" onclick="return jump2(this);">用例(请右击在新窗口打开)</a></div>
<div class="des">
查询出错示例如下：查看原始页面 {"error_code":"20000","error_msg":"search word not found"}
</div>
</li>
</ul>
<h3>天气接口</h3>
<ul>
<li>
<span>百度接口:</span>
<div class="code">http://api.map.baidu.com/telematics/v3/weather?location=嘉兴&amp;output=json&amp;ak=5slgyqGDENN7Sy7pw29IUvrZ <a href="http://www.oschina.net/code/snippet_554046_35134" class="demo" onclick="return jump2(this);">用例</a><a href="http://developer.baidu.com/map/carapi-7.htm" onclick="return jump2(this);">官方文档</a></div>
<div class="des">
location:城市名或经纬度 ak:开发者密钥 output:默认xml
</div>
</li>
<li>
<span>气象局接口:</span>
<div class="code">http://m.weather.com.cn/data/101010100.html <a href="http://blog.csdn.net/zgyulongfei/article/details/7956118" target="_blank">解析</a> <a href="http://bejson.com/demos/weather.php" class="demo" onclick="return jump2(this);">用例</a></div>
</li>
<li>
<a name="sinaWeather"></a>
<span>新浪接口:</span>
<div class="code">http://php.weather.sina.com.cn/iframe/index/w_cl.php?code=js&amp;day=0&amp;city=&amp;dfc=1&amp;charset=utf-8 <a href="/demo/sinaweather/" class="demo" onclick="return jump2(this);">用例</a></div>
<div class="des">参数中city如果给了参数就是相关的城市,否则会自动判断<br>
day=0的话是今天
<br>返回的参数 大家看着办吧,具体的我也不清楚,新浪没给API。</div>
</li>
</ul>
<h3>音乐接口</h3>
<ul>
<li>
<span>虾米接口</span>
<div class="code">http://kuang.xiami.com/app/nineteen/search/key/歌曲名称/diandian/1/page/歌曲当前页?_=当前毫秒&amp;callback=getXiamiData <a href="http://bejson.com/demos/xiamiDemo.php" class="demo" onclick="return jump2(this);">用例</a> <a href="http://www.jqdemo.com/927.html" onclick="return jump2(this);">代码解释和下载</a>
</div>
</li>
<li>
<span>QQ空间音乐接口</span>
<div class="code">http://qzone-music.qq.com/fcg-bin/cgi_playlist_xml.fcg?uin=QQ号码&amp;json=1&amp;g_tk=1916754934<a href="http://bejson.com/demos/qqmusic/" onclick="return jump2(this);" class="demo">用例</a> <a href="http://www.jqdemo.com/932.html" onclick="return jump2(this);">代码解释和下载</a>
</div>
</li>
<li>
<span>QQ空间收藏音乐接口</span>
<div class="code">http://qzone-music.qq.com/fcg-bin/fcg_music_fav_getinfo.fcg?dirinfo=0&amp;dirid=1&amp;uin=QQ号&amp;p=0.519638272547262&amp;g_tk=1284234856
</div>
</li>
<li>
<span>多米音乐接口</span>
<div class="code">http://v5.pc.duomi.com/search-ajaxsearch-searchall?kw=关键字&amp;pi=页码&amp;pz=每页音乐数
</div>
</li>
<li>
<span>soso接口</span>
<div class="code">http://cgi.music.soso.com/fcgi-bin/fcg_search_xmldata.q?source=10&amp;w=关键字&amp;perpage=1&amp;ie=utf-8
</div>
</li>
</ul>
<h3>视频信息接口<a style="color:white" href="http://www.bejson.com/" title="JSON在线工具">JSON在线工具</a></h3>
<ul>
<li>
<span>优酷</span>
<div class="code">http://v.youku.com/player/getPlayList/VideoIDS/视频ID (比如 http://v.youku.com/v_show/id_<font color="red">XNTQxNzc4ODg0</font>.html的ID就是XNTQxNzc4ODg0)
</div>
</li>
<li>
<span>爱奇艺</span>
<div class="code">http://cache.video.iqiyi.com/jp/avlist/202861101/1/?callback=jsonp9</div>
</li>
<li>
<span>土豆接口</span>
<div class="code">http://api.tudou.com/v3/gw?method=album.item.get&amp;appKey=Appkey&amp;format=json&amp;albumId=视频剧集ID&amp;pageNo=当前页&amp;pageSize=每页显示 <a href="http://api.tudou.com/v3/gw?method=album.item.get&amp;appKey=myKey&amp;format=json&amp;albumId=Lqfme5hSolM&amp;pageNo=5&amp;pageSize=100" class="demo" onclick="return jump2(this);">示例(火影忍者剧集)</a> <a onclick="return jump2(this);" href="http://api.tudou.com/apidoc/index.php/%E5%89%A7%E9%9B%86%E8%8A%82%E7%9B%AE%E6%9F%A5%E8%AF%A2" target="_blank">官方文档</a></div>
<div class="code">http://www.tudou.com/tvp/getMultiTvcCodeByAreaCode.action?type=3&amp;app=4&amp;codes=Lqfme5hSolM&amp;areaCode=320500&amp;jsoncallback=__TVP_getMultiTvcCodeByAreaCode <a href="http://www.tudou.com/tvp/getMultiTvcCodeByAreaCode.action?type=3&amp;app=4&amp;codes=Lqfme5hSolM&amp;areaCode=320500&amp;jsoncallback=__TVP_getMultiTvcCodeByAreaCode" class="demo" target="_blank">示例(火影忍者APP剧集)</a></div>
</li>
</ul>
<h3>地图接口</h3>
<ul>
<li>
<span>阿里云根据地区名获取经纬度接口</span>
<div class="code">http://gc.ditu.aliyun.com/geocoding?a=苏州市 <a href="http://ditu.aliyun.com/jsdoc/geocode_api.html" target="_blank">官方文档</a>
</div>
<div class="des">
<div class="param">参数解释: 纬度,经度
type 001 (100代表道路，010代表POI，001代表门址，111可以同时显示前三项)</div>
</div>
</li>
<li>
<span>阿里云根据经纬度获取地区名接口</span>
<div class="code">http://gc.ditu.aliyun.com/regeocoding?l=39.938133,116.395739&amp;type=001 <a href="http://ditu.aliyun.com/jsdoc/geocode_api.html" target="_blank">官方文档</a>
</div>
</li>
<li>
<span>获取用户的IP,国家代码缩写,经纬度</span>
<div class="code">http://www.telize.com/geoip?callback=a <a href="http://www.telize.com/geoip?callback=cb" target="_blank">测试用例</a>
</div>
<div class="des">
<div class="param">参数解释: callback是回调函数</div>
</div>
</li>
<li>
<span>获取用户经纬度，以及获取附近建筑物名/span&gt;
<div class="code">http://ditu.amap.com/service/pl/pl.json?rand=635840524184357321<a href="http://ditu.amap.com/service/pl/pl.json?rand=635840524184357321" target="_blank">测试用例</a>
</div>
<div class="code">http://ditu.amap.com/service/regeo?longitude=121.04925573429551&amp;latitude=31.315590522490712<a href="http://ditu.amap.com/service/regeo?longitude=121.04925573429551&amp;latitude=31.315590522490712" target="_blank">测试用例</a>
</div>
</span></li>
</ul>
<h3>IP接口</h3>
<ul>
<li>
<span>新浪接口(ip值为空的时候 获取本地的)</span>
<div class="code">http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&amp;ip=218.4.255.255
</div>
</li>
<li>
<span>淘宝接口</span>
<div class="code">http://ip.taobao.com/service/getIpInfo.php?ip=63.223.108.42</div>
</li>
</ul>
<h3>手机信息查询接口 <a style="color:white" href="http://www.bejson.com/" title="JSON在线工具">JSON在线工具</a></h3>
<ul>
<li>
<span>淘宝网接口</span>
<div class="code">http://tcc.taobao.com/cc/json/mobile_tel_segment.htm?tel=手机号
</div>
</li>
<li>
<span>拍拍接口</span>
<div class="code">http://virtual.paipai.com/extinfo/GetMobileProductInfo?mobile=手机号&amp;amount=10000&amp;callname=getPhoneNumInfoExtCallback <a href="http://bejson.com/demos/paipai-tel.php" class="demo">用例</a>
</div>
</li>
<li>
<span>百付宝接口</span>
<div class="code">https://www.baifubao.com/callback?cmd=1059&amp;callback=phone&amp;phone=手机号
</div>
</li>
<li>
<span>115接口</span>
<div class="code">http://cz.115.com/?ct=index&amp;ac=get_mobile_local&amp;callback=jsonp1333962541001&amp;mobile=手机号
</div>
</li>
<li>
<span>有道接口</span>
<div class="code">http://www.youdao.com/smartresult-xml/search.s?jsFlag=true&amp;type=mobile&amp;q=手机号
</div>
</li>
<li>
<span>手机在线接口</span>
<div class="code">http://api.showji.com/Locating/www.showji.com.aspx?m=手机号&amp;output=json&amp;callback=querycallback
</div>
</li>
</ul>
<h3>翻译、词典接口</h3>
<ul>
<li>
<span>腾讯</span>
<div class="code">http://dict.qq.com/dict?q=词语
</div>
</li>
</ul>
<h3>腾讯的部分接口</h3>
<ul>
<li>
<span>获取QQ昵称和用户头像</span>
<div class="code">http://r.qzone.qq.com/cgi-bin/user/cgi_personal_card?uin=QQ(不过是jsonp哦)</div>
</li>
</ul>
<h3>其他接口</h3>
<ul>
<li>
<span>360笑话接口</span>
<div class="code">http://xiaohua.hao.360.cn/m/itxt?page=1&amp;callback=jsonp7</div>
</li>
</ul>
</div>



</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
