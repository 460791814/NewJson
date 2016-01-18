// JavaScript Document

function copyCode(id){ 
    var testCode=document.getElementById(id).value; 
    if(copy2Clipboard(testCode)!=false){ 
        alert("生成的代码已经复制到粘贴板，你可以使用Ctrl+V 贴到需要的地方去了哦！ "); 
    } 
} 
copy2Clipboard=function(txt){ 
    if(window.clipboardData){ 
        window.clipboardData.clearData(); 
        window.clipboardData.setData("Text",txt); 
    } 
    else if(navigator.userAgent.indexOf("Opera")!=-1){ 
        window.location=txt; 
    } 
    else if(window.netscape){ 
        try{ 
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect"); 
        } 
        catch(e){ 
            alert("您的firefox安全限制限制您进行剪贴板操作，请打开'about:config'将signed.applets.codebase_principal_support'设置为true'之后重试，相对路径为firefox根目录/greprefs/all.js"); 
            return false; 
        } 
        var clip=Components.classes['@mozilla.org/widget/clipboard;1'].createInstance(Components.interfaces.nsIClipboard); 
        if(!clip)return; 
        var trans=Components.classes['@mozilla.org/widget/transferable;1'].createInstance(Components.interfaces.nsITransferable); 
        if(!trans)return; 
        trans.addDataFlavor('text/unicode'); 
        var str=new Object(); 
        var len=new Object(); 
        var str=Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString); 
        var copytext=txt;str.data=copytext; 
        trans.setTransferData("text/unicode",str,copytext.length*2); 
        var clipid=Components.interfaces.nsIClipboard; 
        if(!clip)return false; 
        clip.setData(trans,null,clipid.kGlobalClipboard); 
    } 
} 
