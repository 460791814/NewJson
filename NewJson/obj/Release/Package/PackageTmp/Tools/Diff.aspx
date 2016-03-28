<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diff.aspx.cs" Inherits="NewJson.Tools.Diff" %>

<!DOCTYPE html>
<html lang="en" xmlns:wb="http://open.weibo.com/wb">
<head>
	<meta charset="utf-8" />
    <title>在线文件对比工具 - newjson.com</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
	<meta name="description" content="文本对比工具致力于更专业的文本对比服务，提供最高级最全面的文本、代码、文件对比功能。" />
	<meta name="keywords" content="差异,合并,比较,文本比较,代码对比,文本区别,在线文本对比,文件比较" />
	<meta name="author" content="" />
	<link rel="shortcut icon" href="/favicon.ico" />
	<link rel="canonical" href="http://www.newjson.com" />
    <link href='/css/tools/diff/2345d7812e114320a2d2d823782cc6b4.css' rel='stylesheet' type='text/css' />
	<script type="text/javascript" src="/js/tools/diff/jquery.min.js"></script>
	<script type="text/javascript" src="/js/tools/diff/jquery-ui.min.js"></script>
	<link type="text/css" rel="stylesheet" href="/css/tools/diff/jquery-ui-1.10.1.custom.css" />
    <link type='text/css' rel='stylesheet' href='/css/tools/diff/wicked-ui.css' />
	<script type="text/javascript" src="/js/tools/diff/wicked-ui.js"></script>

    <link type='text/css' rel='stylesheet' href='/css/tools/diff/tipsy.css' />
	<script type="text/javascript" src="/js/tools/diff/jquery.tipsy.js"></script>
	<script type="text/javascript" src="/js/tools/diff/farbtastic.js"></script>
	<link type="text/css" rel="stylesheet" href="/css/tools/diff/farbtastic.css" />
    <script type="text/javascript" src="/js/tools/diff/editor.min.js"></script>
    <script type="text/javascript" src="/js/tools/diff/xiaoyaole.min.js"></script>
    <link type='text/css' rel='stylesheet' href='/css/tools/diff/editor.css' />
	<link type="text/css" rel="stylesheet" href="/css/tools/diff/xiaoyaole.css" />
	<script type="text/javascript" src="/js/tools/diff/codemirror.min.js"></script>
	<script type="text/javascript" src="/js/tools/diff/searchcursor.js"></script>
	<link type="text/css" rel="stylesheet" href="/css/tools/diff/codemirror.css" />

	<script type="text/javascript">
	    var key = '';
	    var isSample = key == '4qsmsDyb';
    </script>
    <script src="/js/tools/diff/wb.js" type="text/javascript" charset="utf-8"></script>

    

</head>
<body>
<div id="fb-root"></div>


    <div id="banner"><a  href="http://www.newjson.com" class="logos"></a>
</div>
    
    <!-- menu -->
    <ul id="main-menu">
        <li accesskey="f">
            文件
            <ul>
            <li ><a class="menu-item" href="/tools/diff/" accesskey="n"><span class="icon">新建</span></a></li>
                <li id="file-import" data-icon="icon-import">导入...</li>
                <li id="file-save" accesskey="s" data-hotkey="Alt+S" data-icon="icon-save">保存为 .diff</li>
                <li class="separator"></li>
              
            </ul>
        </li>
        <li accesskey="l">
            左侧
            <ul>
                <li id="edit-left-undo" accesskey="z" data-hotkey="Ctrl+Z" data-icon="icon-undo">撤消</li>
                <li id="edit-left-redo" accesskey="y" data-hotkey="Ctrl+Y" data-icon="icon-redo">恢复</li>
                <li id="edit-left-find">查找</li>
                <li class="separator"></li>
                <li id="edit-left-merge-right" data-hotkey="Alt+&rarr;" data-icon="icon-arrow-right-v">合并差异到右侧</li>
                <li id="edit-left-merge-right-file" data-icon="icon-arrow-right-vv">合并文件到右侧</li>
                <li id="edit-left-readonly">只读</li>
                <li class="separator"></li>
                <li id="edit-left-clear">清除</li>
            </ul>
        </li>
        <li accesskey="r">
            右侧
            <ul>
                <li id="edit-right-undo" accesskey="z" data-hotkey="Ctrl+Z" data-icon="icon-undo">撤销</li>
                <li id="edit-right-redo" accesskey="y" data-hotkey="Ctrl+Y" data-icon="icon-redo">恢复</li>
                <li id="edit-right-find">查找</li>
                <li class="separator"></li>
                <li id="edit-right-merge-left" data-hotkey="Alt+&larr;" data-icon="icon-arrow-left-v">合并差异到左侧</li>
                <li id="edit-right-merge-left-file" data-icon="icon-arrow-left-vv">合并文件到左侧</li>
                <li id="edit-right-readonly">只读</li>
                <li class="separator"></li>
                <li id="edit-right-clear">清除</li>
            </ul>
        </li>
        <li accesskey="v">
            查看
            <ul>
                <li id="view-swap" data-icon="icon-swap">左右互换</li>
                <li class="separator"></li>
                <li id="view-refresh" accesskey="v" data-hotkey="Alt+V" title="生成文本代码差异标记视图">渲染差异视图</li>
                <li id="view-clear" accesskey="c" data-hotkey="Alt+C" title="清除文本代码差异标记视图">清除渲染</li>
                <li class="separator"></li>
                <li id="view-change-prev" data-hotkey="Alt+&uarr;" title="查看上一条差异变更">查看上一条差异</li>
                <li id="view-change-next" data-hotkey="Alt+&darr;" title="查看上一条差异变更">查看下一条差异</li>
            </ul>
        </li>
        <li accesskey="o">
            选项
            <ul>
                <li id="options-wrap">自动换行</li>
                <li id="options-ignorews">忽略空格</li>
                <li class="separator"></li>
                <li id="options-viewport" title="提高大文件对比的性能">允许视图</li>
                <li id="options-sidebars" title="提高大文件对比的性能">启用侧边差异条</li>
                <li id="options-swapmargin">交换换右边界</li>
                <li id="options-linenumbers">启用行号</li>
                <li class="separator"></li>
                <li id="options-autodiff" title="自动计算文件差别，无需手动对比">启用自动差异对比</li>
                <li class="separator"></li>
                <li id="options-colors">颜色设置...</li>
            </ul>
        </li>
      
      
        <li><a  href="http://www.newjson.com/">返回首页</a></li>
    </ul>

    <!-- toolbar -->
    <ul id="toolbar">
       <%-- <li id="tb-file-share" data-icon="icon-share" title="分享">分享</li>--%>
        <li class="separator"></li>
        <li id="tb-file-import" data-icon="icon-import" title="导入">导入</li>
        <li id="tb-file-save" data-icon="icon-save" title="保存为 .diff">保存为 .diff</li>
        <li class="separator"></li>
        <li id="tb-view-change-prev" data-icon="icon-arrow-up" title="上一条差异">上一条差异</li>
        <li id="tb-view-change-next" data-icon="icon-arrow-down" title="下一条差异">下一条差异</li>
        <li class="separator"></li>
        <li id="tb-edit-right-merge-left" data-icon="icon-arrow-left-v" title="合并差异到左侧">合并差异到左侧</li>
        <li id="tb-edit-left-merge-right" data-icon="icon-arrow-right-v" title="合并差异到右侧">合并差异到右侧</li>
        <li id="tb-view-swap" data-icon="icon-swap" title="左右互换">左右互换</li>
    </ul>

    <!-- dialog upload -->
    <div id="dialog-upload" title="File import" style="display:none">
        <div class="tabs">
            <ul>
                <li><a href="#tabs-1">导入文件</a></li>
                <li><a href="#tabs-2">导入URL</a></li>
            </ul>
            <div id="tabs-1">
                <p>
                    文件直接导入到您的浏览器，本地运行对比。  它们不会被上传到服务器，请放心使用。请在对应的文本框后在计算机本地选择需要对比的文件
                </p>
                <label for="file-lhs">左侧文件</label> <input id="file-lhs" style="display:inline-block" type="file"><div id="file-lhs-progress"><div class="progress-label">加载中...</div></div><br />
                <label for="file-rhs">右侧文件</label> <input id="file-rhs" style="display:inline-block" type="file"><div id="file-rhs-progress"><div class="progress-label">加载中...</div></div><br />
            </div>
            <div id="tabs-2">
                <p>
                    网址中的文件将直接导入到您的浏览器，本地运行对比。  它们不会被上传到服务器，请放心使用。请将需要对比的文件路径复制到对应的文本框中。
                </p>
                <label for="url-lhs">左侧URL</label> <input id="url-lhs" type="input" size="40"><div id="file-lhs-progress"><div class="progress-label">加载中...</div></div><br />
                <label for="url-rhs">右侧URL</label> <input id="url-rhs" type="input" size="40"><div id="file-rhs-progress"><div class="progress-label">加载中...</div></div><br />
            </div>
        </div>
    </div>
    
    <!-- dialog colors -->
	<div id="dialog-colors" title="逍遥乐在线对比工具颜色设置" style="display:none">
		<div id="picker" style="float: right;"></div>
		<fieldset>
			<legend>差异</legend>
			<label for="c-border">边框:</label><input type="text" id="c-border" name="c-border" class="colorwell" />
			<br />
			<label for="c-bg">背景:</label><input type="text" id="c-bg" name="c-bg" class="colorwell" />
			<br />
		</fieldset>
		<fieldset>
			<legend>添加</legend>
			<label for="a-border">边框:</label><input type="text" id="a-border" name="a-border" class="colorwell" />
			<br />
			<label for="a-bg">背景:</label><input type="text" id="a-bg" name="a-bg" class="colorwell" />
			<br />
		</fieldset>
		<fieldset>
			<legend>删除</legend>
			<label for="d-border">边框:</label><input type="text" id="d-border" name="d-border" class="colorwell" />
			<br />
			<label for="d-bg">背景:</label><input type="text" id="d-bg" name="d-bg" class="colorwell" />
			<br />
		</fieldset>
	</div>

    <!-- dialog confirm -->
	<div id="dialog-confirm" title="保存的永久副本？" style="display:none;">
		<p>
			你确定要保存？此操作会保存一个文件永久副本到服务器，并创建一个链接供大家分享到电子邮件、博客、微博等社交媒体。<span style="color:#FF0004;">注：本功能暂时未开放</span>
		</p>
	</div>
    
    <!-- find -->
    <div class="find">
        <input type="text" />
        <button class="find-prev"><span class="icon icon-arrow-up"></span></button>
        <button class="find-next"><span class="icon icon-arrow-down"></span></button>
        <button class="find-close"><span class="icon icon-x-mark"></span></button>
    </div>
    
    <!-- editor -->
    <div style="position: absolute;top: 73px;bottom: 10px;left: 5px;right: 5px;overflow-y: hidden;padding-bottom: 2px;">
        <div id="mergely">
        
        </div>
    </div>
    <div style="display:none;">    <script src="http://s11.cnzz.com/stat.php?id=1257658599&web_id=1257658599" language="JavaScript"></script></div>
</body>
</html>
