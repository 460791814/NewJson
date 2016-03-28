<%@ Page Title="人民币金额（数字）大小写转换" MasterPageFile="~/Main.Master" Language="C#" AutoEventWireup="true"
    CodeBehind="NumToRMB.aspx.cs" Inherits="NewJson.Change.NumToRMB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="人民币大写,人民币金额大写,数字大写,数字大小写转换,人民币大写转换,阿拉伯数字,人民币小写,人民币大小写转换,人民币转换工具">
    <meta name="description" content="专业的金额或数字大小写转换工具，可将输入的阿拉伯（小写）数字转换为大写数字，在线操作，无需下载">
    <style type="text/css">
        P
        {
            margin: 15px 0;
        }
        .box
        {
            line-height: 180%;
            font-size: 13px;
        }
        p
        {
            display: block;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
        }

         .result-op,  .result {
margin-bottom: 14px;
border-collapse: collapse;
}
.c-container {

font-size: 13px;
line-height: 1.54;
word-wrap: break-word;
word-break: break-word;
float:left;
}
    
    .op_exactqa_main a,
    .op_exactqa_tools a{text-decoration:none;}
    .op_exactqa_main a:hover,
    .op_exactqa_tools a:hover{text-decoration:underline;}

    .op_exactqa_tools{color:#999; font-size:0.92em; text-align:right; margin:-15px 0px -3px 0px;}
    .op_exactqa_tools a{color:#999;}
    .op_exactqa_tools_sep{color:#ccc; margin:0px 8px;}
    
    
    .op_exactqa_compare{margin:5px 0 38px 0;}
    .op_exactqa_compare_src,.op_exactqa_compare_equal,.op_exactqa_compare_times,.op_exactqa_compare_des{float:left;position: relative;}
    .op_exactqa_compare_equal{font-size:48px;line-height:78px;color:#999}
    .op_exactqa_compare_times{font-size:30px;line-height:78px;color:#999;}
    .op_exactqa_compare_src p,.op_exactqa_compare_des p{position: absolute;min-width:78px;max-width: 220px;*width: 220px;font:12px "SimSun";text-align:center;*text-align:left;overflow:hidden;text-overflow:ellipsis;white-space: nowrap;word-wrap:normal;}
    .op_exactqa_compare_p1{left:0;top:83px;}
    .op_exactqa_compare_p2{left:0;top:102px;}
    .op_exactqa_extse{overflow:hidden;height:25px;}
    .op_exactqa_extse span{float:left;}
    .op_exactqa_extse a{float:left;white-space:nowrap;word-break:keep-all;}

/*多实体style开始*/
    .op_exactqa_head{}
    .op_exactqa_title{font-size:1.07em; font-weight:bold; color:#333;}
    .op_exactqa_title span{font-weight:normal; color:#999;}
    .op_exactqa_tag{border-bottom:1px solid #f0f0f0; font-size:0.92em; padding-bottom:10px; margin-top:-5px;}
    .op_exactqa_tag_stat0,
    .op_exactqa_tag_stat1,
    .op_exactqa_tag_stat2,
            .op_exactqa_tag_stat3{height:28px; line-height:28px; overflow:hidden;}
        .op_exactqa_tag_item{color:#0000cc; padding:1px 4px 2px 4px; *padding:3px 4px 1px 4px; margin:0px 4px; cursor:pointer; white-space:nowrap;}
    .op_exactqa_tag_item:hover{text-decoration:underline;}
    .op_exactqa_tag_selected{color:#fff; background:#388bff;}
    .op_exactqa_tag_selected:hover{text-decoration:none;}
    .op_exactqa_tag_type{color:#999;}
    
    .op_exactqa_body{padding-bottom:15px;*zoom:1;}
    .op_exactqa_itemsArea{*zoom:normal;}
    .op_exactqa_nodata{text-align:center;}
        .op_exactqa_item p{white-space:nowrap;}
                                                /*多实体图片*/
             /*获取selpic中第二个，即多实体图片格式*/
          /*获取图片高度*/
        .op_exactqa_item p{text-align:center; color:#666;}
        .op_exactqa_item_noimg{background:#dee0e3 url(https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/aladdin/img/exactqa/exactqa_nopic.png) center center no-repeat; cursor:pointer;}
                                       /*4n*6*2展现*/
                        .op_exactqa_item .c-img4{height:78px;}
            
    .op_exactqa_page{clear:both;}
        .op_exactqa_feedback{color:#0000cc; font-weight:bold; text-align:left; cursor:pointer; display:none;}

 /*其他人还搜样式开始*/
    .op_exactqa_others_link{height:20px; overflow:hidden;} 
    .op_exactqa_others_link a{display:inline-block;}
    .c-border {
width: 590px;
float: left;
padding: 9px;
border: 1px solid #e3e3e3;
border-bottom-color: #e0e0e0;
border-right-color: #ececec;
box-shadow: 1px 2px 1px rgba(0,0,0,0.072);
-webkit-box-shadow: 1px 2px 1px rgba(0,0,0,0.072);
-moz-box-shadow: 1px 2px 1px rgba(0,0,0,0.072);
-o-box-shadow: 1px 2px 1px rgba(0,0,0,0.072);
}
 .c-span4{
float: left;
_display: inline;
margin-right: 17px;
list-style: none;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default" style="width: 500px; float: left;margin-right: 50px;">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h2 class="media-heading">
                        人民币金额（数字）大小写转换在线工具</h2>
                </div>
            </div>
        </div>
        <div style="clear: both">
        </div>
        <div class="panel-body">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">小写金额</span>
                <input type="text" class="form-control" id="str" placeholder="1688.99" aria-describedby="basic-addon1">
            </div>
            <div class="input-group" style="margin-top: 20px;" id="rmb">
                <span class="input-group-addon" id="basic-addon1">大写金额:</span>
                <input type="text" class="form-control" id="estr2" placeholder="壹仟陆佰捌拾捌圆玖角玖分" aria-describedby="basic-addon1">
            </div>
            <div class="input-group" style="margin-top: 20px;">
                <span class="input-group-addon" id="Span1">普通转换</span>
                <input type="text" class="form-control" id="estr" placeholder="普通转换后的内容" aria-describedby="basic-addon1">
            </div>
            <div class="btn-group" role="group" aria-label="..." style="margin-top: 20px;">
                <button type="button" class="btn btn-primary" onclick="change(true);">
                    转换为大写金额</button>
                <button type="button" class="btn btn-primary" onclick="change(false);">
                    中文转阿拉伯数字</button>
                <button type="button" class="btn btn-danger" onclick="empty();">
                    清空结果</button>
            </div>
        </div>
    </div>
    <div class="result-op c-container">
        <div class="c-border">
            <div class="op_exactqa_main">
                <div class="op_exactqa_head c-gap-bottom">
                    <div class="op_exactqa_title c-gap-bottom">
                        数字大写：</div>
                </div>
                <div class="op_exactqa_body">
                    <div class="op_exactqa_itemsArea c-row ">
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E4%B8%80&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="一" target="_blank">
                                    <img class="c-img c-img4" src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=712849304,595096477&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com//s?wd=%E4%B8%80&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="一" target="_blank">一</a></p>
                            <p title="壹">
                                壹</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.comhttps://www.baidu.com/s?wd=%E4%BA%8C&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="二" target="_blank">
                                    <img class="c-img c-img4" src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2653948331,4125825491&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E4%BA%8C&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="二" target="_blank">二</a></p>
                            <p title="贰">
                                贰</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E4%B8%89&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="三" target="_blank">
                                    <img class="c-img c-img4" src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3918708826,1461857772&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E4%B8%89&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="三" target="_blank">三</a></p>
                            <p title="叁">
                                叁</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E5%9B%9B&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="四" target="_blank">
                                    <img class="c-img c-img4" src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1701995886,3628165169&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E5%9B%9B&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="四" target="_blank">四</a></p>
                            <p title="肆">
                                肆</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E4%BA%94&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="五" target="_blank">
                                    <img class="c-img c-img4" src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1495767630,1146841287&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E4%BA%94&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="五" target="_blank">五</a></p>
                            <p title="伍">
                                伍</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 c-span-last">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E5%85%AD&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="六" target="_blank">
                                    <img class="c-img c-img4" src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3749868005,903777061&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E5%85%AD&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="六" target="_blank">六</a></p>
                            <p title="陆">
                                陆</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E4%B8%83&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="七" target="_blank">
                                    <img class="c-img c-img4" src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3394627794,3746277627&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E4%B8%83&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="七" target="_blank">七</a></p>
                            <p title="柒">
                                柒</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E5%85%AB&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="八" target="_blank">
                                    <img class="c-img c-img4" src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=570765100,2144292397&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E5%85%AB&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="八" target="_blank">八</a></p>
                            <p title="捌">
                                捌</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E4%B9%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="九" target="_blank">
                                    <img class="c-img c-img4" src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3827738301,1289556286&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E4%B9%9D&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="九" target="_blank">九</a></p>
                            <p title="玖">
                                玖</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E5%8D%81&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="十" target="_blank">
                                    <img class="c-img c-img4" src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1084466427,4260097807&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E5%8D%81&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="十" target="_blank">十</a></p>
                            <p title="拾">
                                拾</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 ">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E7%99%BE&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="百" target="_blank">
                                    <img class="c-img c-img4" src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2356933980,2251312381&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E7%99%BE&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="百" target="_blank">百</a></p>
                            <p title="佰">
                                佰</p>
                        </div>
                        <div class="op_exactqa_item c-gap-bottom c-span4 c-span-last">
                            <div class="op_exactqa_feedback OP_LOG_BTN">
                                有错误?</div>
                            <p class="op_exactqa_item_img">
                                <a href="https://www.baidu.com/s?wd=%E5%8D%83&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="千" target="_blank">
                                    <img class="c-img c-img4" src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=42677371,2106556790&amp;fm=58"></a></p>
                            <p class="c-gap-top-small">
                                <a href="https://www.baidu.com/s?wd=%E5%8D%83&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299"
                                    title="千" target="_blank">千</a></p>
                            <p title="仟">
                                仟</p>
                        </div>
                    </div>
                    <div class="op_exactqa_page" style="display: none;">
                    </div>
                </div>
            </div>
        </div>
        <div class="c-gap-top c-recommend" style="display: none;">
            <i class="c-icon c-icon-bear-circle c-gap-right-small"></i><span class="c-gray">为您推荐：</span>
            <a target="_blank" href="/s?wd=%E4%BA%BA%E6%B0%91%E5%B8%81%E5%A4%A7%E5%86%99%E8%A7%84%E8%8C%83&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299_18695"
                title="人民币大写规范">人民币大写规范</a> <a class="c-gap-left-large" target="_blank" href="/s?wd=%E4%BA%BA%E6%B0%91%E5%B8%81%E5%A4%A7%E5%86%99%E4%B8%87&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299_18695"
                    title="人民币大写万">人民币大写万</a> <a class="c-gap-left-large" target="_blank" href="/s?wd=%E4%BA%BA%E6%B0%91%E5%B8%81%E5%A4%A7%E5%86%99%E5%85%83%E8%BF%98%E6%98%AF%E5%9C%86&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299_18695"
                        title="人民币大写元还是圆">人民币大写元还是圆</a> <a class="c-gap-left-large" target="_blank" href="/s?wd=%E4%BA%BA%E6%B0%91%E5%B8%81%E7%AC%A6%E5%8F%B7&amp;rsv_idx=2&amp;tn=baiduhome_pg&amp;usm=2&amp;ie=utf-8&amp;rsv_cq=%E6%95%B0%E5%AD%97%E5%A4%A7%E5%86%99&amp;rsv_dl=0_left_exactqa_28299_18695"
                            title="人民币符号">人民币符号</a>
        </div>
    </div>
    <div class="panel panel-default" style="float: left">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        人民币简介</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <div class="box">
                <div>
                </div>
                <p>
                    <strong>人民币金额用到的中文大写汉字如下</strong>：<br>
                    零、壹、贰、叁、肆、伍、陆、柒、捌、玖、拾、佰、仟、万、亿。<br>
                    <br>
                </p>
                <p>
                    <strong>人民币常识</strong></p>
                <p>
                    人民币（缩写为RMB）是我国大陆地区的法定货币，尽管每个人几乎天天都要接触到人民币或者支票，但是人民币大写如何写是困扰很多人的问题。尽管生活中看起来极其熟悉而又简单的东西，但发现其实并不会写。人民币在ISO
                    4217简称为CNY（China Yuan），常用简写为RMB（Ren Min Bi）；人民币货币的符号是“ ￥”（'Y'+'='），读音为“YUAN”。人民币按照材料的自然属性划分，有金属币（亦称硬币）、
                    纸币（亦称钞票）。无论纸币、硬币均等价流通，至今已发行了五套人民币。<br>
                    <br>
                </p>
                <p>
                    <strong>人民币大写规范详细介绍</strong></p>
                <p>
                    银行、单位和个人填写的各种票据和结算凭证是办理支付结算和现金收付的重要依据，直接关系到支付结算的准确、及时和安全。票据和结算凭证是银行、单位和个人凭以记载账务的会计凭证，是记载经济业务和明确经济责任的一种书面证明。因此，填写票据和结算凭证必须做到标准化、规范化、要素齐全、数字正确、字迹清晰、不错漏、不潦草、防止涂改。<br>
                    中文大写金额数字应用正楷或行书填写，如壹、贰、叁、肆、伍、陆、柒、捌、玖、拾、佰、仟、万、亿、元、角、分、零、整(正)等字样，不得用一、二(两)、三、四、五、六、七、八、九、十、毛、另(或0)填写，不得自造简化字。如果金额数字书写中使用繁体字，如贰、陆、亿、万、圆的，也应受理。<br>
                    人民币大写的正确写法还应注意以下几项：<br>
                    一、中文大写金额数字到“元”为止的，在“元”之后、应写“整”(或“正”)字；在“角”之后，可以不写“整”(或“正”)字；大写金额数字有“分”的，“分”后面不写“整”(或“正”)字。<br>
                    二、中文大写金额数字前应标明“人民币”字样，大写金额数字应紧接“人民币”字样填写，不得留有空白。大写金额数字前未印“人民币”字样的，应加填“人民币”三字，在票据和结算凭证大写金额栏内不得预印固定的“仟、佰、拾、万、仟、佰、拾、元、角、分”字样。<br>
                    三、阿拉伯数字小写金额数字中有“0”时，中文大写应按照汉语语言规律、金额数字构成和防止涂改的要求进行书写。举例如下：<br>
                    1、阿拉伯数字中间有“0”时，中文大写要写“零”字，如￥1409.50应写成人民币壹仟肆佰零玖元伍角；<br>
                    2、阿拉伯数字中间连续有几个“0”时、中文大写金额中间可以只写一个“零”字，如￥6007.14应写成人民币陆仟零柒元壹角肆分。<br>
                    3、阿拉伯金额数字万位和元位是“0”，或者数字中间连续有几个“0”，万位、元位也是“0”但千位、角位不是“0”时，中文大写金额中可以只写一个零字，也可以不写“零”字，如￥1680.32应写成人民币壹仟陆佰捌拾元零叁角贰分，或者写成人民币壹仟陆佰捌拾元叁角贰分。又如￥107000.53应写成人民币壹拾万柒仟元零伍角叁分，或者写成人民币壹拾万零柒仟元伍角叁分。<br>
                    4、阿拉伯金额数字角位是“0”而分位不是“0”时，中文大写金额“元”后面应写“零”字，如￥16409.02应写成人民币壹万陆仟肆佰零玖元零贰分，又如￥325.04应写成人民币叁佰贰拾伍元零肆分。<br>
                    四、阿拉伯小写金额数字前面均应填写人民币符号“￥”，阿拉伯小写金额数字要认真填写，不得连写分辨不清。<br>
                    五、票据的出票日期必须使用中文大写，为防止变造票据的出票日期，在填写月、日时、月为壹、贰和壹拾的，日为壹至玖和壹拾、贰拾和叁拾的，应在其前加“零”，日为拾壹至拾玖的应在其前加“壹”，如1月15日应写成零壹月壹拾伍日，再如10月20日应写成零壹拾月零贰拾日。<br>
                    六、票据出票日期使用小写填写的，银行不予受理；大写日期未按要求规范填写的，银行可予受理，但由此造成损失的由出票人自行承担。<br>
                    <br>
                </p>
                <p>
                    <strong>人民币上的盲文介绍</strong></p>
                <p>
                    盲文是专供盲人书写摸读的文字字母，以点状表示，又称“点子”“盲字”，目前国际上通用的数目和不同的排列位置，来表示各种文字，人民币上的盲文是代表不同面值，方便盲人识别。盲文凸印在特殊的纸张上，盲人可以通过双手触摸，就可以很好的识别。
                    <br>
                    中国人民币银行发行的前三套人民币纸币均未印有盲文符号，从1987年开始发行第四套人民币起，人民币主币票面上正面右下角货左下角凹印了盲文数字，方便盲人使用和分辨。第四套和第五套人民币主币1元、2元、5元、10元券在正面左下角分别加印1个、2个（竖列）、2个（斜列）、4个小黑点；50元、100元券在正面右下角分别加印5个、7个小黑点。<br>
                    第四套人民币纸币共有1980、1990、1996三个制版年份，其中1元以上的所有钞票，均在正面右下方或左下方用凹版印刷了盲文数字。盲人用手指轻触，可以识别出面额。在目前发行流通的第五套人民币上，也仍然保留了盲文数字。<br>
                    第四套人民币纸币主币上使用的盲文数字符号，是按照盲文6个圆点符号科学组合的规定要求而设计的。1980年版人民币上，1元、2元、5元、10元的盲文面额在票面正面左下方，50元、100元在右下方。第五套人民币首枚100元券于1999年10月1日发行，其它不同面额的券别也相继发行。</p>
                <br>
            </div>
        </div>
    </div>
    <script>
        var hzf = "零壹贰叁肆伍陆柒捌玖";
        function change(sz2hz) {
            var str = $("#str").val();
            if (sz2hz) {
                var res = "";
                for (var i = 0; i < str.length; i++) {
                    var num = str.charAt(i);
                    if (num == ".") {
                        res += "点";
                    } else {
                        res += hzf.charAt(parseInt(num));
                    }
                }
                $("#estr").val(res);
                $("#rmb").show();
                $("#estr2").val(changeNumMoneyToChinese(str));

            } else {
                var numstr = "";
                var length = str.length;
                for (var i = 0; i < length; i++) {
                    var numhz = str.charAt(i);

                    var num = hzf.indexOf(numhz);
                    if (num != -1) {
                        str = str.replace(numhz, num);
                        numstr += num;
                    } else {
                        if (numhz == "元" || numhz == "圆" || numhz == "点") {
                            numstr += ".";
                        }
                    }

                }
                $("#rmb").hide();
                $("#estr").val(numstr);
            }

        }

        function changeNumMoneyToChinese(money) {
            var cnNums = new Array("零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖"); //汉字的数字
            var cnIntRadice = new Array("", "拾", "佰", "仟"); //基本单位
            var cnIntUnits = new Array("", "万", "亿", "兆"); //对应整数部分扩展单位
            var cnDecUnits = new Array("角", "分", "毫", "厘"); //对应小数部分单位
            var cnInteger = "整"; //整数金额时后面跟的字符
            var cnIntLast = "圆"; //整型完以后的单位
            var maxNum = 999999999999999.9999; //最大处理的数字
            var IntegerNum; //金额整数部分
            var DecimalNum; //金额小数部分
            var ChineseStr = ""; //输出的中文金额字符串
            var parts; //分离金额后用的数组，预定义
            if (money == "") {
                return "";
            }
            money = parseFloat(money);
            if (money >= maxNum) {
                alert('超出最大处理数字');
                return "";
            }
            if (money == 0) {
                ChineseStr = cnNums[0] + cnIntLast + cnInteger;
                return ChineseStr;
            }
            money = money.toString(); //转换为字符串
            if (money.indexOf(".") == -1) {
                IntegerNum = money;
                DecimalNum = '';
            } else {
                parts = money.split(".");
                IntegerNum = parts[0];
                DecimalNum = parts[1].substr(0, 4);
            }
            if (parseInt(IntegerNum, 10) > 0) { //获取整型部分转换
                var zeroCount = 0;
                var IntLen = IntegerNum.length;
                for (var i = 0; i < IntLen; i++) {
                    var n = IntegerNum.substr(i, 1);
                    var p = IntLen - i - 1;
                    var q = p / 4;
                    var m = p % 4;
                    if (n == "0") {
                        zeroCount++;
                    } else {
                        if (zeroCount > 0) {
                            ChineseStr += cnNums[0];
                        }
                        zeroCount = 0; //归零
                        ChineseStr += cnNums[parseInt(n)] + cnIntRadice[m];
                    }
                    if (m == 0 && zeroCount < 4) {
                        ChineseStr += cnIntUnits[q];
                    }
                }
                ChineseStr += cnIntLast;
                //整型部分处理完毕
            }
            if (DecimalNum != '') { //小数部分
                var decLen = DecimalNum.length;
                for (var i = 0; i < decLen; i++) {
                    var n = DecimalNum.substr(i, 1);
                    if (n != '0') {
                        ChineseStr += cnNums[Number(n)] + cnDecUnits[i];
                    }
                }
            }
            if (ChineseStr == '') {
                ChineseStr += cnNums[0] + cnIntLast + cnInteger;
            } else if (DecimalNum == '') {
                ChineseStr += cnInteger;
            }
            return ChineseStr;
        }
        function empty() {
            $("#str").val('');
            $("#estr").val('');
            $("#estr2").val('');
        }
	</script>
</asp:Content>
