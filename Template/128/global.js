(function(a){a.fn.scrollLoading=function(b){var c={container:a(window),delay:1000,appTopOffset:60,ajax:a.noop};
var d=a.extend(c,b,{});
function e(){var h=document.documentElement.scrollHeight;
var f=document.documentElement.clientHeight;
var g=document.documentElement.scrollTop+document.body.scrollTop;
if((f+g==h)||(f+g==h-c.appTopOffset)){setTimeout(c.ajax,c.delay)
}}c.container.bind("scroll",e)
}
})(Zepto);
function footerSetBottom(){var a=$("#container").height();
var b=$("#footer").height();
var c=$(window).height();
if(!$("html").hasClass("homePage")){if(a+b<c){$("#footer").css({position:"absolute",bottom:"0",left:"0",width:"100%"})
}}}function goTop(){window.scrollTo(0,0)
}$(function(){$(".indexNav li").each(function(a){var b=Math.floor(a/10);
$(this).find("img").attr("index",a-b*10)
});
setInterval(function(){var a=parseInt(Math.random()*10)-$(".indexNav li").length;
$(".indexNav li").eq(a).toggleClass("change")
},2000);
setTimeout(goTop,10);
$(".indexNav .subListIcon").click(function(){if($(this).siblings(".subList").length==0){return
}var a=$(this).parent("li");
a.siblings().removeClass("on").find(".subList").hide();
a.toggleClass("on");
a.find(".subList").toggle()
});
$(".subNav .subBtn").tap(function(){$(".catgoryNavList .subNavList").toggle();
$(this).toggleClass("on")
});
$(window).scroll(function(){var a=document.body.scrollTop;
if(a>120){$("#gotoTop").animate({height:"58px",opacity:1},400)
}else{$("#gotoTop").animate({opacity:0,height:"0"},400)
}});
$("#gotoTop").bind("tap",function(){setTimeout(goTop,10)
});
footerSetBottom()
});