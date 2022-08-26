$.extend({
	marquee2:function(dom,direction,data){ 
	  var o,oW,oIn,v,speed,_direction=direction,timer;
	  /*
	  var repeat = function(dom,attr,endVal,callBack){
		  var selfVal = dom.attr(attr);
		  var temp = selfVal - 5;
		  if(temp>endVal){
			  dom.attr(attr,temp);
			  window.clearInterval(timer);
		  }
		  else callBack();
	  }
	  */
	  var run = function(){						
		  var time = ((oIn.css(_direction)=="auto")?v:v+parseInt(oIn.css(_direction)))*speed;
		  var data = {};
		  data[_direction]=-v;
		  oIn.animate(data,time,"linear",function(){oIn.css(_direction,0);run();});
		  //setInterval(function(){repeat(oIn,_direction,-v,function(){oIn.css(_direction,0);run();});},30);
	  }			
	  var chkData=function(name,defaultVal){
		  return (data&&data[name])?data[name]:defaultVal;
	  }
	  var bindBtnEvent = function(){
		  var evt = chkData("btnEvent","mouseover");
		  var btnChangeSpeed = chkData("btnChangeSpeed",5);
		  var bind = function(dom,dirct){
  			  var _speed = speed;
			  var _dirct = dirct;			 
			  dom.bind(evt,function(){
				  oIn.stop();
				  if(_direction!=_dirct){
					var v2=0;
					var d2 = "";
				    switch(_dirct){
					  case "top":
						  v2=parseInt(oIn.css("bottom"));
						  d2="bottom";
						  break;
					  case "bottom":
						  v2=parseInt(oIn.css("top"));
						  d2="top";
						  break;
					  case "left":
						  v2=parseInt(oIn.css("right"));
						  d2="right";
						  break;
					  case "right":
						  v2=parseInt(oIn.css("left"));
						  d2="left";
						  break;
					}
					//alert(v2);
					  if(isNaN(v2)) v2=-Math.abs(oW-v-parseInt(oIn.css(_dirct)));
					  _direction=_dirct;
					  var tmp = (oW-v2<0)?-Math.abs(oW-v-v2)+v:oW-v-v2;
					  oIn.css(_direction,tmp).css(d2,"");	
				  }
				  speed=btnChangeSpeed;
				  run();
				 }).mouseout(function(){
					 oIn.stop();
					 speed=_speed;
					 run();					 
				 });
		  }
		  if(data){
			  if(_direction=="left"||_direction=="right"){
				  if(data.leftBtn){
					  bind($(data.leftBtn),"left");
				  }
				  if(data.rightBtn){
					  bind($(data.rightBtn),"right");				  
				  }
			  }
			  else if(_direction=="top"||_direction=="bottom"){
				  if(data.topBtn){
					  bind($(data.topBtn),"top");
				  }	
				  if(data.bottomBtn){
					  bind($(data.bottomBtn),"bottom");
				  }
			  }
		  }
	  }
	  var init = function(){		  			
		o = $(dom);		
		oW=o.width();
		oIn = o.children();
		oIn.children().clone().appendTo(oIn);
		oIn.hover(function(){oIn.stop();},run);
		v = ((_direction=="left"||_direction=="right")? oIn.width(): oIn.height())/2;		
		speed = chkData("speed",40);
		bindBtnEvent();
		run();
	  }();
	}   
});

