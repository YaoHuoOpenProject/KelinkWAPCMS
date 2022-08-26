(function(b){String.prototype.trim===b&&(String.prototype.trim=function(){return this.replace(/^\s+/,"").replace(/\s+$/,"")
}),Array.prototype.reduce===b&&(Array.prototype.reduce=function(a){if(this===void 0||this===null){throw new TypeError
}var j=Object(this),i=j.length>>>0,h=0,g;
if(typeof a!="function"){throw new TypeError
}if(i==0&&arguments.length==1){throw new TypeError
}if(arguments.length>=2){g=arguments[1]
}else{do{if(h in j){g=j[h++];
break
}if(++h>=i){throw new TypeError
}}while(!0)
}while(h<i){h in j&&(g=a.call(b,g,j[h],h,j)),h++
}return g
})
})();
var Zepto=function(){function A(a){return v.call(a)=="[object Function]"
}function B(a){return a instanceof Object
}function C(b){var c,d;
if(v.call(b)!=="[object Object]"){return !1
}d=A(b.constructor)&&b.constructor.prototype;
if(!d||!hasOwnProperty.call(d,"isPrototypeOf")){return !1
}for(c in b){}return c===a||hasOwnProperty.call(b,c)
}function D(a){return a instanceof Array
}function E(a){return typeof a.length=="number"
}function F(b){return b.filter(function(b){return b!==a&&b!==null
})
}function G(a){return a.length>0?[].concat.apply([],a):a
}function H(a){return a.replace(/::/g,"/").replace(/([A-Z]+)([A-Z][a-z])/g,"$1_$2").replace(/([a-z\d])([A-Z])/g,"$1_$2").replace(/_/g,"-").toLowerCase()
}function I(a){return a in i?i[a]:i[a]=new RegExp("(^|\\s)"+a+"(\\s|$)")
}function J(a,b){return typeof b=="number"&&!k[H(a)]?b+"px":b
}function K(a){var b,c;
return h[a]||(b=g.createElement(a),g.body.appendChild(b),c=j(b,"").getPropertyValue("display"),b.parentNode.removeChild(b),c=="none"&&(c="block"),h[a]=c),h[a]
}function L(b,d){return d===a?c(b):c(b).filter(d)
}function M(a,b,c,d){return A(b)?b.call(a,c,d):b
}function N(a,b,d){var e=a%2?b:b.parentNode;
e?e.insertBefore(d,a?a==1?e.firstChild:a==2?b:null:b.nextSibling):c(d).remove()
}function O(a,b){b(a);
for(var c in a.childNodes){O(a.childNodes[c],b)
}}var a,b,c,d,e=[],f=e.slice,g=window.document,h={},i={},j=g.defaultView.getComputedStyle,k={"column-count":1,columns:1,"font-weight":1,"line-height":1,opacity:1,"z-index":1,zoom:1},l=/^\s*<(\w+|!)[^>]*>/,m=[1,3,8,9,11],n=["after","prepend","before","append"],o=g.createElement("table"),p=g.createElement("tr"),q={tr:g.createElement("tbody"),tbody:o,thead:o,tfoot:o,td:p,th:p,"*":g.createElement("div")},r=/complete|loaded|interactive/,s=/^\.([\w-]+)$/,t=/^#([\w-]+)$/,u=/^[\w-]+$/,v={}.toString,w={},x,y,z=g.createElement("div");
return w.matches=function(a,b){if(!a||a.nodeType!==1){return !1
}var c=a.webkitMatchesSelector||a.mozMatchesSelector||a.oMatchesSelector||a.matchesSelector;
if(c){return c.call(a,b)
}var d,e=a.parentNode,f=!e;
return f&&(e=z).appendChild(a),d=~w.qsa(e,b).indexOf(a),f&&z.removeChild(a),d
},x=function(a){return a.replace(/-+(.)?/g,function(a,b){return b?b.toUpperCase():""
})
},y=function(a){return a.filter(function(b,c){return a.indexOf(b)==c
})
},w.fragment=function(b,d){d===a&&(d=l.test(b)&&RegExp.$1),d in q||(d="*");
var e=q[d];
return e.innerHTML=""+b,c.each(f.call(e.childNodes),function(){e.removeChild(this)
})
},w.Z=function(a,b){return a=a||[],a.__proto__=arguments.callee.prototype,a.selector=b||"",a
},w.isZ=function(a){return a instanceof w.Z
},w.init=function(b,d){if(!b){return w.Z()
}if(A(b)){return c(g).ready(b)
}if(w.isZ(b)){return b
}var e;
if(D(b)){e=F(b)
}else{if(C(b)){e=[c.extend({},b)],b=null
}else{if(m.indexOf(b.nodeType)>=0||b===window){e=[b],b=null
}else{if(l.test(b)){e=w.fragment(b.trim(),RegExp.$1),b=null
}else{if(d!==a){return c(d).find(b)
}e=w.qsa(g,b)
}}}}return w.Z(e,b)
},c=function(a,b){return w.init(a,b)
},c.extend=function(c){return f.call(arguments,1).forEach(function(d){for(b in d){d[b]!==a&&(c[b]=d[b])
}}),c
},w.qsa=function(a,b){var c;
return a===g&&t.test(b)?(c=a.getElementById(RegExp.$1))?[c]:e:a.nodeType!==1&&a.nodeType!==9?e:f.call(s.test(b)?a.getElementsByClassName(RegExp.$1):u.test(b)?a.getElementsByTagName(b):a.querySelectorAll(b))
},c.isFunction=A,c.isObject=B,c.isArray=D,c.isPlainObject=C,c.inArray=function(a,b,c){return e.indexOf.call(b,a,c)
},c.trim=function(a){return a.trim()
},c.uuid=0,c.map=function(a,b){var c,d=[],e,f;
if(E(a)){for(e=0;
e<a.length;
e++){c=b(a[e],e),c!=null&&d.push(c)
}}else{for(f in a){c=b(a[f],f),c!=null&&d.push(c)
}}return G(d)
},c.each=function(a,b){var c,d;
if(E(a)){for(c=0;
c<a.length;
c++){if(b.call(a[c],c,a[c])===!1){return a
}}}else{for(d in a){if(b.call(a[d],d,a[d])===!1){return a
}}}return a
},c.fn={forEach:e.forEach,reduce:e.reduce,push:e.push,indexOf:e.indexOf,concat:e.concat,map:function(a){return c.map(this,function(b,c){return a.call(b,c,b)
})
},slice:function(){return c(f.apply(this,arguments))
},ready:function(a){return r.test(g.readyState)?a(c):g.addEventListener("DOMContentLoaded",function(){a(c)
},!1),this
},get:function(b){return b===a?f.call(this):this[b]
},toArray:function(){return this.get()
},size:function(){return this.length
},remove:function(){return this.each(function(){this.parentNode!=null&&this.parentNode.removeChild(this)
})
},each:function(a){return this.forEach(function(b,c){a.call(b,c,b)
}),this
},filter:function(a){return c([].filter.call(this,function(b){return w.matches(b,a)
}))
},add:function(a,b){return c(y(this.concat(c(a,b))))
},is:function(a){return this.length>0&&w.matches(this[0],a)
},not:function(b){var d=[];
if(A(b)&&b.call!==a){this.each(function(a){b.call(this,a)||d.push(this)
})
}else{var e=typeof b=="string"?this.filter(b):E(b)&&A(b.item)?f.call(b):c(b);
this.forEach(function(a){e.indexOf(a)<0&&d.push(a)
})
}return c(d)
},eq:function(a){return a===-1?this.slice(a):this.slice(a,+a+1)
},first:function(){var a=this[0];
return a&&!B(a)?a:c(a)
},last:function(){var a=this[this.length-1];
return a&&!B(a)?a:c(a)
},find:function(a){var b;
return this.length==1?b=w.qsa(this[0],a):b=this.map(function(){return w.qsa(this,a)
}),c(b)
},closest:function(a,b){var d=this[0];
while(d&&!w.matches(d,a)){d=d!==b&&d!==g&&d.parentNode
}return c(d)
},parents:function(a){var b=[],d=this;
while(d.length>0){d=c.map(d,function(a){if((a=a.parentNode)&&a!==g&&b.indexOf(a)<0){return b.push(a),a
}})
}return L(b,a)
},parent:function(a){return L(y(this.pluck("parentNode")),a)
},children:function(a){return L(this.map(function(){return f.call(this.children)
}),a)
},siblings:function(a){return L(this.map(function(a,b){return f.call(b.parentNode.children).filter(function(a){return a!==b
})
}),a)
},empty:function(){return this.each(function(){this.innerHTML=""
})
},pluck:function(a){return this.map(function(){return this[a]
})
},show:function(){return this.each(function(){this.style.display=="none"&&(this.style.display=null),j(this,"").getPropertyValue("display")=="none"&&(this.style.display=K(this.nodeName))
})
},replaceWith:function(a){return this.before(a).remove()
},wrap:function(a){return this.each(function(){c(this).wrapAll(c(a)[0].cloneNode(!1))
})
},wrapAll:function(a){return this[0]&&(c(this[0]).before(a=c(a)),a.append(this)),this
},unwrap:function(){return this.parent().each(function(){c(this).replaceWith(c(this).children())
}),this
},clone:function(){return c(this.map(function(){return this.cloneNode(!0)
}))
},hide:function(){return this.css("display","none")
},toggle:function(b){return(b===a?this.css("display")=="none":b)?this.show():this.hide()
},prev:function(){return c(this.pluck("previousElementSibling"))
},next:function(){return c(this.pluck("nextElementSibling"))
},html:function(b){return b===a?this.length>0?this[0].innerHTML:null:this.each(function(a){var d=this.innerHTML;
c(this).empty().append(M(this,b,a,d))
})
},text:function(b){return b===a?this.length>0?this[0].textContent:null:this.each(function(){this.textContent=b
})
},attr:function(c,d){var e;
return typeof c=="string"&&d===a?this.length==0||this[0].nodeType!==1?a:c=="value"&&this[0].nodeName=="INPUT"?this.val():!(e=this[0].getAttribute(c))&&c in this[0]?this[0][c]:e:this.each(function(a){if(this.nodeType!==1){return
}if(B(c)){for(b in c){this.setAttribute(b,c[b])
}}else{this.setAttribute(c,M(this,d,a,this.getAttribute(c)))
}})
},removeAttr:function(a){return this.each(function(){this.nodeType===1&&this.removeAttribute(a)
})
},prop:function(b,c){return c===a?this[0]?this[0][b]:a:this.each(function(a){this[b]=M(this,c,a,this[b])
})
},data:function(b,c){var d=this.attr("data-"+H(b),c);
return d!==null?d:a
},val:function(b){return b===a?this.length>0?this[0].value:a:this.each(function(a){this.value=M(this,b,a,this.value)
})
},offset:function(){if(this.length==0){return null
}var a=this[0].getBoundingClientRect();
return{left:a.left+window.pageXOffset,top:a.top+window.pageYOffset,width:a.width,height:a.height}
},css:function(c,d){if(d===a&&typeof c=="string"){return this.length==0?a:this[0].style[x(c)]||j(this[0],"").getPropertyValue(c)
}var e="";
for(b in c){typeof c[b]=="string"&&c[b]==""?this.each(function(){this.style.removeProperty(H(b))
}):e+=H(b)+":"+J(b,c[b])+";"
}return typeof c=="string"&&(d==""?this.each(function(){this.style.removeProperty(H(c))
}):e=H(c)+":"+J(c,d)),this.each(function(){this.style.cssText+=";"+e
})
},index:function(a){return a?this.indexOf(c(a)[0]):this.parent().children().indexOf(this[0])
},hasClass:function(a){return this.length<1?!1:I(a).test(this[0].className)
},addClass:function(a){return this.each(function(b){d=[];
var e=this.className,f=M(this,a,b,e);
f.split(/\s+/g).forEach(function(a){c(this).hasClass(a)||d.push(a)
},this),d.length&&(this.className+=(e?" ":"")+d.join(" "))
})
},removeClass:function(b){return this.each(function(c){if(b===a){return this.className=""
}d=this.className,M(this,b,c,d).split(/\s+/g).forEach(function(a){d=d.replace(I(a)," ")
}),this.className=d.trim()
})
},toggleClass:function(b,d){return this.each(function(e){var f=M(this,b,e,this.className);
(d===a?!c(this).hasClass(f):d)?c(this).addClass(f):c(this).removeClass(f)
})
}},["width","height"].forEach(function(b){c.fn[b]=function(d){var e,f=b.replace(/./,function(a){return a[0].toUpperCase()
});
return d===a?this[0]==window?window["inner"+f]:this[0]==g?g.documentElement["offset"+f]:(e=this.offset())&&e[b]:this.each(function(a){var e=c(this);
e.css(b,M(this,d,a,e[b]()))
})
}
}),n.forEach(function(a,b){c.fn[a]=function(){var a=c.map(arguments,function(a){return B(a)?a:w.fragment(a)
});
if(a.length<1){return this
}var d=this.length,e=d>1,f=b<2;
return this.each(function(c,g){for(var h=0;
h<a.length;
h++){var i=a[f?a.length-h-1:h];
O(i,function(a){a.nodeName!=null&&a.nodeName.toUpperCase()==="SCRIPT"&&(!a.type||a.type==="text/javascript")&&window.eval.call(window,a.innerHTML)
}),e&&c<d-1&&(i=i.cloneNode(!0)),N(b,g,i)
}})
},c.fn[b%2?a+"To":"insert"+(b?"Before":"After")]=function(b){return c(b)[a](this),this
}
}),w.Z.prototype=c.fn,w.camelize=x,w.uniq=y,c.zepto=w,c
}();
window.Zepto=Zepto,"$" in window||(window.$=Zepto),function(H){function C(b){return b._zid||(b._zid=E++)
}function B(f,c,j,i){c=A(c);
if(c.ns){var h=z(c.ns)
}return(F[C(f)]||[]).filter(function(b){return b&&(!c.e||b.e==c.e)&&(!c.ns||h.test(b.ns))&&(!j||C(b.fn)===C(j))&&(!i||b.sel==i)
})
}function A(d){var c=(""+d).split(".");
return{e:c[0],ns:c.slice(1).sort().join(" ")}
}function z(b){return new RegExp("(?:^| )"+b.replace(" "," .* ?")+"(?: |$)")
}function y(a,f,e){H.isObject(a)?H.each(a,e):a.split(/\s/).forEach(function(b){e(b,f)
})
}function x(c,p,o,n,j,h){h=!!h;
var f=C(c),a=F[f]||(F[f]=[]);
y(p,o,function(q,m){var k=j&&j(m,q),i=k||m,g=function(d){var e=i.apply(c,[d].concat(d.data));
return e===!1&&d.preventDefault(),e
},b=H.extend(A(q),{fn:m,proxy:g,sel:n,del:k,i:a.length});
a.push(b),c.addEventListener(b.e,g,h)
})
}function w(f,c,j,i){var g=C(f);
y(c||"",j,function(a,e){B(f,a,e,i).forEach(function(d){delete F[g][d.i],f.removeEventListener(d.e,d.proxy,!1)
})
})
}function s(a){var d=H.extend({originalEvent:a},a);
return H.each(t,function(b,c){d[b]=function(){return this[c]=v,a[b].apply(a,arguments)
},d[c]=u
}),d
}function r(d){if(!("defaultPrevented" in d)){d.defaultPrevented=!1;
var c=d.preventDefault;
d.preventDefault=function(){this.defaultPrevented=!0,c.call(this)
}
}}var G=H.zepto.qsa,F={},E=1,D={};
D.click=D.mousedown=D.mouseup=D.mousemove="MouseEvents",H.event={add:x,remove:w},H.proxy=function(a,f){if(H.isFunction(a)){var e=function(){return a.apply(f,arguments)
};
return e._zid=C(a),e
}if(typeof f=="string"){return H.proxy(a[f],a)
}throw new TypeError("expected function")
},H.fn.bind=function(d,c){return this.each(function(){x(this,d,c)
})
},H.fn.unbind=function(d,c){return this.each(function(){w(this,d,c)
})
},H.fn.one=function(d,c){return this.each(function(b,a){x(this,d,c,null,function(f,e){return function(){var g=f.apply(a,arguments);
return w(a,e,f),g
}
})
})
};
var v=function(){return !0
},u=function(){return !1
},t={preventDefault:"isDefaultPrevented",stopImmediatePropagation:"isImmediatePropagationStopped",stopPropagation:"isPropagationStopped"};
H.fn.delegate=function(a,h,g){var f=!1;
if(h=="blur"||h=="focus"){H.iswebkit?h=h=="blur"?"focusout":h=="focus"?"focusin":h:f=!0
}return this.each(function(c,b){x(b,h,g,a,function(d){return function(k){var j,i=H(k.target).closest(a,b).get(0);
if(i){return j=H.extend(s(k),{currentTarget:i,liveFired:b}),d.apply(i,[j].concat([].slice.call(arguments,1)))
}}
},f)
})
},H.fn.undelegate=function(e,d,f){return this.each(function(){w(this,d,f,e)
})
},H.fn.live=function(a,d){return H(document.body).delegate(this.selector,a,d),this
},H.fn.die=function(a,d){return H(document.body).undelegate(this.selector,a,d),this
},H.fn.on=function(a,f,e){return f==undefined||H.isFunction(f)?this.bind(a,f):this.delegate(f,a,e)
},H.fn.off=function(a,f,e){return f==undefined||H.isFunction(f)?this.unbind(a,f):this.undelegate(f,a,e)
},H.fn.trigger=function(a,d){return typeof a=="string"&&(a=H.Event(a)),r(a),a.data=d,this.each(function(){"dispatchEvent" in this&&this.dispatchEvent(a)
})
},H.fn.triggerHandler=function(a,h){var g,f;
return this.each(function(c,b){g=s(typeof a=="string"?H.Event(a):a),g.data=h,g.target=b,H.each(B(b,a.type||a),function(e,d){f=d.proxy(g);
if(g.isImmediatePropagationStopped()){return !1
}})
}),f
},"focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout change select keydown keypress keyup error".split(" ").forEach(function(a){H.fn[a]=function(b){return this.bind(a,b)
}
}),["focus","blur"].forEach(function(a){H.fn[a]=function(b){if(b){this.bind(a,b)
}else{if(this.length){try{this.get(0)[a]()
}catch(d){}}}return this
}
}),H.Event=function(g,e){var j=document.createEvent(D[g]||"Events"),i=!0;
if(e){for(var h in e){h=="bubbles"?i=!!e[h]:j[h]=e[h]
}}return j.initEvent(g,i,!0,null,null,null,null,null,null,null,null,null,null,null,null),j
}
}(Zepto),function(d){function c(x){var w=this.os={},v=this.browser={},u=x.match(/WebKit\/([\d.]+)/),t=x.match(/(Android)\s+([\d.]+)/),s=x.match(/(iPad).*OS\s([\d_]+)/),r=!s&&x.match(/(iPhone\sOS)\s([\d_]+)/),q=x.match(/(webOS|hpwOS)[\s\/]([\d.]+)/),p=q&&x.match(/TouchPad/),o=x.match(/Kindle\/([\d.]+)/),n=x.match(/Silk\/([\d._]+)/),m=x.match(/(BlackBerry).*Version\/([\d.]+)/);
if(v.webkit=!!u){v.version=u[1]
}t&&(w.android=!0,w.version=t[2]),r&&(w.ios=w.iphone=!0,w.version=r[2].replace(/_/g,".")),s&&(w.ios=w.ipad=!0,w.version=s[2].replace(/_/g,".")),q&&(w.webos=!0,w.version=q[2]),p&&(w.touchpad=!0),m&&(w.blackberry=!0,w.version=m[2]),o&&(w.kindle=!0,w.version=o[1]),n&&(v.silk=!0,v.version=n[1]),!n&&w.android&&x.match(/Kindle Fire/)&&(v.silk=!0)
}c.call(d,navigator.userAgent),d.__detect=c
}(Zepto),function(z,y){function o(b){return b.toLowerCase()
}function n(b){return w?w+b:o(b)
}var x="",w,v,u,t={Webkit:"webkit",Moz:"",O:"o",ms:"MS"},s=window.document,r=s.createElement("div"),q=/^((translate|rotate|scale)(X|Y|Z|3d)?|matrix(3d)?|perspective|skew(X|Y)?)$/i,p={};
z.each(t,function(b,c){if(r.style[b+"TransitionProperty"]!==y){return x="-"+o(b)+"-",w=c,!1
}}),p[x+"transition-property"]=p[x+"transition-duration"]=p[x+"transition-timing-function"]=p[x+"animation-name"]=p[x+"animation-duration"]="",z.fx={off:w===y&&r.style.transitionProperty===y,cssPrefix:x,transitionEnd:n("TransitionEnd"),animationEnd:n("AnimationEnd")},z.fn.animate=function(a,h,g,f){return z.isObject(h)&&(g=h.easing,f=h.complete,h=h.duration),h&&(h/=1000),this.anim(a,h,g,f)
},z.fn.anim=function(E,D,C,B){var A,k={},j,c=this,b,a=z.fx.transitionEnd;
D===y&&(D=0.4),z.fx.off&&(D=0);
if(typeof E=="string"){k[x+"animation-name"]=E,k[x+"animation-duration"]=D+"s",a=z.fx.animationEnd
}else{for(j in E){q.test(j)?(A||(A=[]),A.push(j+"("+E[j]+")")):k[j]=E[j]
}A&&(k[x+"transform"]=A.join(" ")),!z.fx.off&&typeof E=="object"&&(k[x+"transition-property"]=Object.keys(E).join(", "),k[x+"transition-duration"]=D+"s",k[x+"transition-timing-function"]=C||"linear")
}return b=function(d){if(typeof d!="undefined"){if(d.target!==d.currentTarget){return
}z(d.target).unbind(a,arguments.callee)
}z(this).css(p),B&&B.call(this)
},D>0&&this.bind(a,b),setTimeout(function(){c.css(k),D<=0&&setTimeout(function(){c.each(function(){b.call(this)
})
},0)
},0),this
},r=null
}(Zepto),function($){function triggerAndReturn(a,b,c){var d=$.Event(b);
return $(a).trigger(d,c),!d.defaultPrevented
}function triggerGlobal(a,b,c,d){if(a.global){return triggerAndReturn(b||document,c,d)
}}function ajaxStart(a){a.global&&$.active++===0&&triggerGlobal(a,null,"ajaxStart")
}function ajaxStop(a){a.global&&!--$.active&&triggerGlobal(a,null,"ajaxStop")
}function ajaxBeforeSend(a,b){var c=b.context;
if(b.beforeSend.call(c,a,b)===!1||triggerGlobal(b,c,"ajaxBeforeSend",[a,b])===!1){return !1
}triggerGlobal(b,c,"ajaxSend",[a,b])
}function ajaxSuccess(a,b,c){var d=c.context,e="success";
c.success.call(d,a,e,b),triggerGlobal(c,d,"ajaxSuccess",[b,c,a]),ajaxComplete(e,b,c)
}function ajaxError(a,b,c,d){var e=d.context;
d.error.call(e,c,b,a),triggerGlobal(d,e,"ajaxError",[c,d,a]),ajaxComplete(b,c,d)
}function ajaxComplete(a,b,c){var d=c.context;
c.complete.call(d,b,a),triggerGlobal(c,d,"ajaxComplete",[b,c]),ajaxStop(c)
}function empty(){}function mimeToDataType(a){return a&&(a==htmlType?"html":a==jsonType?"json":scriptTypeRE.test(a)?"script":xmlTypeRE.test(a)&&"xml")||"text"
}function appendQuery(a,b){return(a+"&"+b).replace(/[&?]{1,2}/,"?")
}function serializeData(a){isObject(a.data)&&(a.data=$.param(a.data)),a.data&&(!a.type||a.type.toUpperCase()=="GET")&&(a.url=appendQuery(a.url,a.data))
}function serialize(a,b,c,d){var e=$.isArray(b);
$.each(b,function(b,f){d&&(b=c?d:d+"["+(e?"":b)+"]"),!d&&e?a.add(f.name,f.value):(c?$.isArray(f):isObject(f))?serialize(a,f,c,b):a.add(b,f)
})
}var jsonpID=0,isObject=$.isObject,document=window.document,key,name,rscript=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,scriptTypeRE=/^(?:text|application)\/javascript/i,xmlTypeRE=/^(?:text|application)\/xml/i,jsonType="application/json",htmlType="text/html",blankRE=/^\s*$/;
$.active=0,$.ajaxJSONP=function(a){var b="jsonp"+ ++jsonpID,c=document.createElement("script"),d=function(){$(c).remove(),b in window&&(window[b]=empty),ajaxComplete("abort",e,a)
},e={abort:d},f;
return a.error&&(c.onerror=function(){e.abort(),a.error()
}),window[b]=function(d){clearTimeout(f),$(c).remove(),delete window[b],ajaxSuccess(d,e,a)
},serializeData(a),c.src=a.url.replace(/=\?/,"="+b),$("head").append(c),a.timeout>0&&(f=setTimeout(function(){e.abort(),ajaxComplete("timeout",e,a)
},a.timeout)),e
},$.ajaxSettings={type:"GET",beforeSend:empty,success:empty,error:empty,complete:empty,context:null,global:!0,xhr:function(){return new window.XMLHttpRequest
},accepts:{script:"text/javascript, application/javascript",json:jsonType,xml:"application/xml, text/xml",html:htmlType,text:"text/plain"},crossDomain:!1,timeout:0},$.ajax=function(options){var settings=$.extend({},options||{});
for(key in $.ajaxSettings){settings[key]===undefined&&(settings[key]=$.ajaxSettings[key])
}ajaxStart(settings),settings.crossDomain||(settings.crossDomain=/^([\w-]+:)?\/\/([^\/]+)/.test(settings.url)&&RegExp.$2!=window.location.host);
var dataType=settings.dataType,hasPlaceholder=/=\?/.test(settings.url);
if(dataType=="jsonp"||hasPlaceholder){return hasPlaceholder||(settings.url=appendQuery(settings.url,"callback=?")),$.ajaxJSONP(settings)
}settings.url||(settings.url=window.location.toString()),serializeData(settings);
var mime=settings.accepts[dataType],baseHeaders={},protocol=/^([\w-]+:)\/\//.test(settings.url)?RegExp.$1:window.location.protocol,xhr=$.ajaxSettings.xhr(),abortTimeout;
settings.crossDomain||(baseHeaders["X-Requested-With"]="XMLHttpRequest"),mime&&(baseHeaders.Accept=mime,mime.indexOf(",")>-1&&(mime=mime.split(",",2)[0]),xhr.overrideMimeType&&xhr.overrideMimeType(mime));
if(settings.contentType||settings.data&&settings.type.toUpperCase()!="GET"){baseHeaders["Content-Type"]=settings.contentType||"application/x-www-form-urlencoded"
}settings.headers=$.extend(baseHeaders,settings.headers||{}),xhr.onreadystatechange=function(){if(xhr.readyState==4){clearTimeout(abortTimeout);
var result,error=!1;
if(xhr.status>=200&&xhr.status<300||xhr.status==304||xhr.status==0&&protocol=="file:"){dataType=dataType||mimeToDataType(xhr.getResponseHeader("content-type")),result=xhr.responseText;
try{dataType=="script"?(1,eval)(result):dataType=="xml"?result=xhr.responseXML:dataType=="json"&&(result=blankRE.test(result)?null:JSON.parse(result))
}catch(e){error=e
}error?ajaxError(error,"parsererror",xhr,settings):ajaxSuccess(result,xhr,settings)
}else{ajaxError(null,"error",xhr,settings)
}}};
var async="async" in settings?settings.async:!0;
xhr.open(settings.type,settings.url,async);
for(name in settings.headers){xhr.setRequestHeader(name,settings.headers[name])
}return ajaxBeforeSend(xhr,settings)===!1?(xhr.abort(),!1):(settings.timeout>0&&(abortTimeout=setTimeout(function(){xhr.onreadystatechange=empty,xhr.abort(),ajaxError(null,"timeout",xhr,settings)
},settings.timeout)),xhr.send(settings.data?settings.data:null),xhr)
},$.get=function(a,b){return $.ajax({url:a,success:b})
},$.post=function(a,b,c,d){return $.isFunction(b)&&(d=d||c,c=b,b=null),$.ajax({type:"POST",url:a,data:b,success:c,dataType:d})
},$.getJSON=function(a,b){return $.ajax({url:a,success:b,dataType:"json"})
},$.fn.load=function(a,b){if(!this.length){return this
}var c=this,d=a.split(/\s/),e;
return d.length>1&&(a=d[0],e=d[1]),$.get(a,function(a){c.html(e?$(document.createElement("div")).html(a.replace(rscript,"")).find(e).html():a),b&&b.call(c)
}),this
};
var escape=encodeURIComponent;
$.param=function(a,b){var c=[];
return c.add=function(a,b){this.push(escape(a)+"="+escape(b))
},serialize(c,a,b),c.join("&").replace("%20","+")
}
}(Zepto),function(b){b.fn.serializeArray=function(){var a=[],d;
return b(Array.prototype.slice.call(this.get(0).elements)).each(function(){d=b(this);
var c=d.attr("type");
this.nodeName.toLowerCase()!="fieldset"&&!this.disabled&&c!="submit"&&c!="reset"&&c!="button"&&(c!="radio"&&c!="checkbox"||this.checked)&&a.push({name:d.attr("name"),value:d.val()})
}),a
},b.fn.serialize=function(){var c=[];
return this.serializeArray().forEach(function(a){c.push(encodeURIComponent(a.name)+"="+encodeURIComponent(a.value))
}),c.join("&")
},b.fn.submit=function(a){if(a){this.bind("submit",a)
}else{if(this.length){var d=b.Event("submit");
this.eq(0).trigger(d),d.defaultPrevented||this.get(0).submit()
}}return this
}
}(Zepto),function(r){function o(b){return"tagName" in b?b:b.parentNode
}function n(h,g,u,t){var s=Math.abs(h-g),i=Math.abs(u-t);
return s>=i?h-g>0?"Left":"Right":u-t>0?"Up":"Down"
}function k(){l=null,q.last&&(q.el.trigger("longTap"),q={})
}function j(){l&&clearTimeout(l),l=null
}var q={},p,m=750,l;
r(document).ready(function(){var b,a;
r(document.body).bind("touchstart",function(c){b=Date.now(),a=b-(q.last||b),q.el=r(o(c.touches[0].target)),p&&clearTimeout(p),q.x1=c.touches[0].pageX,q.y1=c.touches[0].pageY,a>0&&a<=250&&(q.isDoubleTap=!0),q.last=b,l=setTimeout(k,m)
}).bind("touchmove",function(c){j(),q.x2=c.touches[0].pageX,q.y2=c.touches[0].pageY
}).bind("touchend",function(c){j(),q.isDoubleTap?(q.el.trigger("doubleTap"),q={}):q.x2&&Math.abs(q.x1-q.x2)>30||q.y2&&Math.abs(q.y1-q.y2)>30?(q.el.trigger("swipe")&&q.el.trigger("swipe"+n(q.x1,q.x2,q.y1,q.y2)),q={}):"last" in q&&(q.el.trigger("tap"),p=setTimeout(function(){p=null,q.el.trigger("singleTap"),q={}
},250))
}).bind("touchcancel",function(){p&&clearTimeout(p),l&&clearTimeout(l),l=p=null,q={}
})
}),["swipe","swipeLeft","swipeRight","swipeUp","swipeDown","doubleTap","tap","singleTap","longTap"].forEach(function(a){r.fn[a]=function(b){return this.bind(a,b)
}
})
}(Zepto);
(function(c){if(c.isFunction(c.parseJSON)){return
}var a=/^[\],:{}\s]*$/,b=/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,d=/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,e=/(?:^|:|,)(?:\s*\[)+/g;
c.parseJSON=function(f){if(typeof f!=="string"||!f){return null
}f=c.trim(f);
if(window.JSON&&window.JSON.parse){return window.JSON.parse(f)
}if(a.test(f.replace(b,"@").replace(d,"]").replace(e,""))){return(new Function("return "+f))()
}}
})(Zepto);
(function(b,c,d){var a=a||{};
b.SMT=a;
a.isSending=false;
a.ajax=function(){if(a.isSending){return
}var e="",f={},g;
if(typeof arguments[0]!="undefined"){e=arguments[0]
}if(typeof arguments[1]!="undefined"){if(typeof arguments[1]=="function"){g=arguments[1]
}else{if(typeof arguments[1]=="object"){f=arguments[1]
}}}if(typeof arguments[2]!="undefined"&&typeof arguments[2]=="function"){g=arguments[2]
}if(!!!e||c.isFunction(e)){return
}a.isSending=true;
Zepto.ajax({type:"POST",url:e,data:f,cache:false,complete:function(j){var i=j.getResponseHeader("requestSuccess4Ajax");
if(i==="0"){top.location.reload(true);
return
}a.isSending=false;
var h=j.responseText;
if(Zepto.isFunction(g)){g.apply(this,[h])
}}})
};
a.get=function(e,f){var e=arguments[0],f=arguments[1];
if(!!!e||c.isFunction(e)){return
}Zepto.ajax({type:"get",url:e,cache:false,complete:function(i){var h=i.getResponseHeader("requestSuccess4Ajax");
if(h==="0"){top.location.reload(true);
return
}var g=i.responseText;
if(Zepto.isFunction(f)){f.apply(this,[g])
}}})
}
})(window,Zepto);