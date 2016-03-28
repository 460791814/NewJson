function mousePosition(ev){
    //firefox
    if(ev.pageX || ev.pageY){
        return {x:ev.pageX, y:ev.pageY};
     }
    //IE
	return {
		x:ev.clientX + document.body.scrollLeft - document.body.clientLeft,
		y:ev.clientY + document.body.scrollTop - document.body.clientTop
	};
}
function mouseMove(ev){
    var eve = ev || window.event;
    var mousePos = mousePosition(eve);
        var bodyWidth = document.body.clientWidth -30;
		var baseMouseX = mousePos.x + 20;
		var infoDivWidth =  $("#info_div").width();
		document.getElementById('info_div').style.left = (baseMouseX + infoDivWidth) > bodyWidth ?(bodyWidth - infoDivWidth) +"px":mousePos.x+10+"px";
        document.getElementById('info_div').style.top = mousePos.y+15+"px";
}
function mouseOut(){
		$("#info_div").hide();
}
//事件添加
function addInfo(id,content){  
	 $(document).ready(function(){
		$("#" + id).mouseover(function(){
		    if($("#cityDIV").is(":visible"))
		    {
		        $("#info_div").html("");
			    $("#info_div").hide();			    
			}
			else
			{
			    $('#info_div').html(content);
			    $('#info_div').show();
			}
			});
		$("#" + id).mouseout(function(){mouseOut();});
	});
}
$(document).ready(function(){
	document.onmousemove = mouseMove;
	//jQuery(document).click(function(){alert("ddd");});
});