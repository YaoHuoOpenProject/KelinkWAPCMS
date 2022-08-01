<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mapShow.aspx.cs" Inherits="WeiXinWeb.WeiXin.mapShow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>经纬度获取</title>
</head>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>
<body>
  <form action="" method="get">
  <label >地点：</label>
  <input id="where" name="where" type="text" >
  <input type="button" value="地图上找" onClick="sear(document.getElementById('where').value);" />
  

  <div style="width:520px;height:340px;border:1px solid gray" id="container"></div>
  

  请拖动红点及点击，纬度：<input id="lat" name="lat" type="text" size="10"> 经度： <input id="lng" name="lng" type="text" size="10">  <input type="button" name="back" value=" 确 定 "  class="bt" style="width:60px;" onclick="daoru();" /><br /><br />  
</form>
<script type="text/javascript">
    function daoru() {
        eval(window.opener.document.form1.lat.value = document.getElementById("lat").value);
        eval(window.opener.document.form1.lng.value = document.getElementById("lng").value);
        window.close();
    }

//在指定的容器内创建地图实例
var map = new BMap.Map("container");

map.setDefaultCursor("crosshair");//设置地图默认的鼠标指针样式
map.enableScrollWheelZoom();//启用滚轮放大缩小，默认禁用。
//创建点坐标
var point = new BMap.Point(113.30995, 23.134938);
//初始化地图，设置中心点坐标和地图级别
map.centerAndZoom(point, 13);
//panTo()方法 等待两秒钟后-让地图平滑移动至新中心点
/**window.setTimeout(function(){ 
map.panTo(new BMap.Point(120.386266, 30.307407)); }, 2000);**/
//***********************地址解析类  
var gc = new BMap.Geocoder();
//向map中添加--------------------------------------控件
/**地图API中提供的控件有：
Control：控件的抽象基类，所有控件均继承此类的方法、属性。通过此类您可实现自定义控件。
NavigationControl：地图平移缩放控件，默认位于地图左上方，它包含控制地图的平移和缩放的功能。
OverviewMapControl：缩略地图控件，默认位于地图右下方，是一个可折叠的缩略地图。
ScaleControl：比例尺控件，默认位于地图左下方，显示地图的比例关系。
MapTypeControl：地图类型控件，默认位于地图右上方。
CopyrightControl：版权控件，默认位于地图左下方。
**/
//NavigationControl 地图平移缩放控件，默认位于地图左上方 它包含控制地图的平移和缩放的功能。
map.addControl(new BMap.NavigationControl()); 
//OverviewMapControl 缩略地图控件，默认位于地图右下方，是一个可折叠的缩略地图
map.addControl(new BMap.OverviewMapControl());
//ScaleControl：比例尺控件，默认位于地图左下方，显示地图的比例关系。
map.addControl(new BMap.ScaleControl());
//MapTypeControl：地图类型控件，默认位于地图右上方。
map.addControl(new BMap.MapTypeControl());
//CopyrightControl：版权控件，默认位于地图左下方
map.addControl(new BMap.CopyrightControl());

//----------------------------------------------地图覆盖物
/**地图API提供了如下几种覆盖物：
Overlay：覆盖物的抽象基类，所有的覆盖物均继承此类的方法。
Marker：标注表示地图上的点，可自定义标注的图标。
Label：表示地图上的文本标注，您可以自定义标注的文本内容。
Polyline：表示地图上的折线。
Polygon：表示地图上的多边形。多边形类似于闭合的折线，另外您也可以为其添加填充颜色。
Circle: 表示地图上的圆。
InfoWindow：信息窗口也是一种特殊的覆盖物，它可以展示更为丰富的文字和多媒体信息。注意：同一时刻只能有一个信息窗口在地图上打开。
可以使用map.addOverlay方法向地图添加覆盖物，使用map.removeOverlay方法移除覆盖物，注意此方法不适用于InfoWindow。
**/
// 创建标注  
var marker = new BMap.Marker(point);   
// 将标注添加到地图中
map.addOverlay(marker);
//********************************************监听标注事件
//点击事件
marker.addEventListener("click", function(e){
ocument.getElementById("lat").value = e.point.lat;
document.getElementById("lng").value = e.point.lng;
}); 
//*******************************************可托拽的标注
//marker的enableDragging和disableDragging方法可用来开启和关闭标注的拖拽功能。
marker.enableDragging();
//监听标注的dragend事件来捕获拖拽后标注的最新位置
marker.addEventListener("dragend",function(e){
	gc.getLocation(e.point, function(rs){  
        	showLocationInfo(e.point, rs);  
    	});  
});

//*****************************信息窗口
//显示地址信息窗口  
function showLocationInfo(pt, rs){  
    var opts = {  
      width : 250,     //信息窗口宽度  
      height: 150,     //信息窗口高度  
      title : "当前位置"  //信息窗口标题  
    }  
    
    var addComp = rs.addressComponents;  
    var addr = "当前位置：" + addComp.province + ", " + addComp.city + ", " + addComp.district + ", " + addComp.street + ", " + addComp.streetNumber + "<br/>";  
    addr += "纬度: " + pt.lat + ", " + "经度：" + pt.lng;  
      
    var infoWindow = new BMap.InfoWindow(addr, opts);  //创建信息窗口对象  
    marker.openInfoWindow(infoWindow);  
} 

map.addEventListener("click", function(e){//地图单击事件
document.getElementById("lat").value =  e.point.lat;
document.getElementById("lng").value = e.point.lng ;
});

//**************************** 目前百度地图提供的图层包括：
//TrafficLayer：交通流量图层
// 创建交通流量图层实例  
var traffic = new BMap.TrafficLayer();     
// 将图层添加到地图上  
map.addTileLayer(traffic);                    
/**
百度地图提供了交互功能更为复杂的“工具”，它包括：
PushpinTool：标注工具。通过此工具用户可在地图任意区域添加标注。
DistanceTool：测距工具。通过此工具用户可测量地图上任意位置之间的距离。
DragAndZoomTool：区域缩放工具。此工具将根据用户拖拽绘制的矩形区域大小对地图进行放大或缩小操作。
**/
// 创建标注工具实例  
//var myPushpin = new BMap.PushpinTool(map);
// 监听事件，提示标注点坐标信息
//myPushpin.addEventListener("markend",function(e){
//	alert("你标注的位置:"+e.point.lng+","+e.point.lat);
//});
// 开启标注工具  
//myPushpin.open();


function iploac(result){//根据IP设置地图中心
    var cityName = result.name;
    //map.setCenter(cityName);
}
var myCity = new BMap.LocalCity();
myCity.get(iploac);
function sear(result){//地图搜索
	var local = new BMap.LocalSearch(map, {
  		renderOptions:{map: map}
	});
	local.search(result);
}
</script>
	
	<!--<h3>说明：输入地点然后点击“地图上找”搜索，点击地图地点获取相应经纬度，也可拖动红点获取。</h3>-->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12599330-14']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
</body>
</html>