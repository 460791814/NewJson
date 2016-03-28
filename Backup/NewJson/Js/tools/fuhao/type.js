var Xpos = 0;
var Ypos = 0;
var Xwidht = 780;
var Ygravity = 0.5;
var scrollPos = 0;
var oldScrollPos = 0;

function FloatMenu() {
	if(window.attachEvent) { //for ie
docWidth = document.documentElement.clientWidth; 
docHeight = document.documentElement.clientHeight;
oldScrollPos = scrollPos;
scrollPos = document.documentElement.scrollTop; 
	}
	else {
docWidth = document.body.clientWidth; 
docHeight = document.body.clientHeight;
oldScrollPos = scrollPos;
scrollPos = document.body.scrollTop; 	
	}
Xpos = 0;
Yboundary = scrollPos + 130;
if (type.offsetTop < Yboundary - 50) Ypos += 35;
if (type.offsetTop > Yboundary + 50) Ypos -= 35;

Ypos *= Ygravity;
if (navigator.appName == "Netscape"){
Xpos += "px";
Ypos = scrollPos + 130 + "px";
type.style.left = Xpos;
type.style.top = Ypos;
}
else {
type.style.pixelLeft = Xpos;
type.style.pixelTop += Ypos;
}
if (screen.width <= 800){type.style.display = "none";}
}
window.setInterval("FloatMenu()", 1);