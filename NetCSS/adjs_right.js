// 
function initEcAd() {
document.all.AdLayer1.style.posTop = -200;
document.all.AdLayer1.style.visibility = 'visible'
//document.all.AdLayer2.style.posTop = -200;
//document.all.AdLayer2.style.visibility = 'visible'
//MoveLeftLayer('AdLayer1');
MoveRightLayer('AdLayer1');
}
function MoveLeftLayer(layerName) {
var x = KL_AD_X;
var y = KL_AD_Y;// 左侧广告距离页首高度 CSS自学www.divcss5.com
var diff = (document.body.scrollTop + y - document.all.AdLayer1.style.posTop)*.40;
var y = document.body.scrollTop + y - diff;
eval("document.all." + layerName + ".style.posTop = parseInt(y)");
eval("document.all." + layerName + ".style.posLeft = x");
setTimeout("MoveLeftLayer('AdLayer1');", 20);
}
function MoveRightLayer(layerName) {
var x = KL_AD_X;
var y = KL_AD_Y;// 右侧广告距离页首高度 divcss5 www.divcss5.com
var diff = (document.body.scrollTop + y - document.all.AdLayer1.style.posTop)*.40;
var y = document.body.scrollTop + y - diff;
eval("document.all." + layerName + ".style.posTop = y");
eval("document.all." + layerName + ".style.posRight = x");
setTimeout("MoveRightLayer('AdLayer1');", 20);
}

//document.write("");
initEcAd()

// JavaScript Document