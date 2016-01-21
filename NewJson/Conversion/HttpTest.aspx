<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HttpTest.aspx.cs" Inherits="NewJson.Conversion.HttpTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Css/change/all-base.css" rel="stylesheet" type="text/css" />
    <link href="/Css/change/publicstyle.css" rel="stylesheet" type="text/css" />
    <link href="/Css/change/toolstyle.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="media">
                <div class="media-body">
                    <h4 class="media-heading">
                        在线文件大小换算,转换,换算范围（bit,bytes,KB,MB,GB,TB）</h4>
                </div>
            </div>
        </div>
        <div class="panel-body">
        <div class="Tool-MainWrap wrapper">

        <!--IcpSearch-begin-->
        <div class="publicSearch">
          <form autocomplete="off" method="post">
            <div id="totest" class="search-write-wrap w820 clearfix">
                <div class="MainCate-choese _ToolChoese fl">
                       <span class="search-write-choese pr ToolChoese fl"> 
                    
                        <input name="method" value="0" type="hidden" />
                    
                      <div class="btn-group" role="group" aria-label="...">
                    <button id="btn_xsf" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Get<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" onclick="xsf(0,this)">GET</a></li>
                        <li><a href="javascript:;" onclick="xsf(1,this)">POST</a></li>
                    </ul>
                </div>
                     
                </span>
                </div> 
                

                <span class="search-write-left pr fl w460">
                <input type="text" class="form-control " id="namespace_input" placeholder="" aria-describedby="basic-addon1">
                <a href="javascript:" title="清空" class="quickdelete _CentHid"></a></span>
                <div class="validateButtons clear">
                                    <div class="left" style="float: left">
                                       <div class="btn-group" role="group" aria-label="...">
<button type="button" class="btn btn-primary" onclick="CSS('packAdv');">完全压缩</button>
<button type="button" class="btn btn-primary" onclick="CSS('pack');">普通压缩</button>
<button type="button" class="btn btn-primary" onclick="CSS('format');">格式化</button>
<button type="button" class="btn btn-danger" onclick="javascript:$('#text_input').val('').focus(); ">清空结果</button>
</div>
                                        <div>
                                  
                                        </div>
                                    </div>
                                </div>
                <span class="search-write-right fl w80"><input class="search-write-btn w80" type="submit" value="测试" id="btnsubmit" /></span> 
                <input class="search-write-btn fl ml10 w80" type="button" value="添加参数"  id="addparams" /><div class="WebCache pl10 pt10 fl"><input type="checkbox" id="isRAW" /><label class="pl5 col-gray01">批量添加</label></div>
             </div> 
             <div class="portTestear auto pt20 autohide" id="RAW">
                <div class="PorBtnWrap clearfix"><input class="PorTxtear" type="text" id="RAWval" /><input class="PorBtn" type="button" value="OK" id="OK" /></div>
                <p class="Porinfo">输入Raw参数，例如：id=1&url=tool.chinaz.com</p> 
            </div> 
             
                                     <input type="hidden" name="hideRAW" id="hideRAW" value="" /> 
         </form> 
       </div>
        <!--IcpSearch-end-->
    <div style="clear:both"></div>
 
    

</div>
        </div>
        </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Right" runat="server">
</asp:Content>
