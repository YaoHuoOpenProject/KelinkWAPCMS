/**
  **************************************************************************************************
  **********  WFPHP在线订单系统2014官方正式版  *****  官方正版 *** 版权所有 *** 盗版必究  **********
  **********------------------------------------------------------------------------------**********
  **********  官方网站：http://www.wf1805.cn/  *****  官方店铺：http://889889.taobao.com/ **********
  **************************************************************************************************
  */
var marquee = new Array(
    "<p><span>[最新购买]：</span>张**（130****3260）在2分钟前订购了红米NOTE增强版 <font color='#FF0000'>√</font></p>",
    "<p><span>[最新购买]：</span>李**（136****7163）在4分钟前订购了红米NOTE标准版 <font color='#FF0000'>√</font></p>",
    "<p><span>[最新购买]：</span>赵**（139****1955）在7分钟前订购了红米1S双卡双待 <font color='#FF0000'>√</font></p>",
    "<p><span>[最新购买]：</span>刘**（180****6999）在11分钟前订购了红米NOTE增强版 <font color='#FF0000'>√</font></p>",
    "<p><span>[最新购买]：</span>张**（151****2588）在15分钟前订购了红米NOTE标准版 <font color='#FF0000'>√</font></p>",
    "<p><span>[最新购买]：</span>王**（133****4096）在20分钟前订购了红米1S双卡双待 <font color='#FF0000'>√</font></p>"
);
var wfgdaa = 0;
var wfgdbb = 1;
function marqueeL(){
	if(wfgdaa>(marquee.length-1))
	wfgdaa = 0;
	if(wfgdbb>(marquee.length-1))
	wfgdaa = 0;
	wfgdbb = wfgdaa +1;
	var marHTML = marquee[wfgdaa]+marquee[wfgdbb];
	document.getElementById("wffahuo").innerHTML = marHTML;
	wfgdaa +=1;
	wfgdbb +=1;
}
window.setInterval("marqueeL()", 3000);
/*///////////////////////////////////////// WFORDERJSEND /////////////////////////////////////////*/