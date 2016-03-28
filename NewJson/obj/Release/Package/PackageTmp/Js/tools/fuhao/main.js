function addfav(url)
{
	if(window.sidebar){
			window.sidebar.addPanel('',url,'');
		}else{
			try{
				window.external.AddFavorite(url,'');
			}catch(e){
				alert("您的浏览器不支持该功能,请使用Ctrl+D收藏本页");
			}
	}
}
//===========================
function Setcookie(Cookie_name)　　
{　　
　var Then = new Date();
　Then.setTime(Then.getTime() + 600000);//3600000==1小时
　document.cookie = Cookie_name+"=true;expires="+ Then.toGMTString();　
}
function close_tool_desc(toolname) {
document.getElementById("tool_desc").style.display = "none";
Setcookie(toolname);
}
//=============================
function Loadingimg() {
document.getElementById("showthis").innerHTML = "<br><br><br><br><br><br><br><br>";
flow_loading.style.display = "block";
}
