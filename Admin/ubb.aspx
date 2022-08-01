<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ubb.aspx.cs" Inherits="KeLin.WebSite.admin.ubb" %>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"  href="/NetCSS/style.css"/>
<title> UBB 语言</title>
</head>

<body bgcolor="#CCCCCC">
<script>
    function show(ubb) {        
        
      <%if (GetRequestValue("types") != "WEB"){%>
        parent.addubb(ubb);
        <%}else{ %>
        
        //处理将地址加入到父窗口中
        try {
            window.parent.opener.DaoRuMyFuncTohtml(ubb);
        } catch (e) {
            window.parent.DaoRuMyFuncTohtml(ubb);
        }
        alert("成功导入！");
        <%} %>


}
function addpic(){
    window.open("Upload_Photo.aspx?PhotoUrlID=img&info=WEB页面综合排版&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 

}
function addfile(){
    window.open("Upload_Photo.aspx?PhotoUrlID=file&info=WEB页面综合排版&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 

}
function setpic(temp){
show(temp);
}
function daoru() { 
window.open ("../picture/systemindex.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
function daoruFile() {
    window.open("../admin/systemindexFiles.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
function UBB_VIEW_ADD(toubb){
   var winPar= window.showModalDialog('/admin/UBBEdit_Insert.aspx?toubb=' + encodeURIComponent(toubb), null, 'dialogWidth=600px;dialogHeight=450px;menuba=no;resizable=yes');
   if (winPar != null && winPar !="" && winPar !="undefined") {
       show(winPar);
   }

}
function addImgOrFile(a, b) {
    //alert(b);
    a = '<%=this.http_start%>' + a;
    if (b == 'img') {

        var sExt;        
        sExt = a.substr(a.lastIndexOf(".") + 1);
        sExt = sExt.toUpperCase();
        switch (sExt) {
            case "GIF":
            case "JPG":
            case "PNG":
            case "BMP":
            case "JPEG":
                show('[img]' + a + '[/img]');
                break;
            default:
                show('[url=' + a + ']点击下载[/url]');
                break;
        }
        
        
    } else {
        show('[url=' + a + ']点击下载[/url]');
    }
    
    
}
function wap2(){
	window.open("/admin/ubb3.aspx");
	
}
function openubb() {
    window.open("ubb.aspx");

}
function color(str){

  var arr = showModalDialog("/NetImages/edit/selcolor.htm", "", "dialogWidth:18em; dialogHeight:19em; status:0;help:0;scroll:no;");
  if (arr != null) FormatText(str, arr);
  else IframeID.focus();

	
}
function img(){
url=prompt("请输入图片文件地址:","http://");
if(!url || url=="http://") return;
FormatText('InsertImage',url)
}

function RealPlay(){

var arr = showModalDialog("/NetImages/edit/RealPlay.htm", "", "dialogWidth:22em; dialogHeight:11em;status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}

}
function MediaPlayer(){
var arr = showModalDialog("/NetImages/edit/MediaPlayer.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}

}
function img(){
var arr = showModalDialog("/NetImages/edit/Img.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}

}

function flash(){
var arr = showModalDialog("/NetImages/edit/flash.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}
}
function ring(){
var arr = showModalDialog("/NetImages/edit/ring.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}
}
function FormatText(str,sval){

  if (str=='fontname'){
     show("[font=" + sval + "]输入文字[/font]");
  
  }else if(str=='fontsize'){
     show("[size=" + sval + "]输入文字[/size]");
  }else if(str=='backcolor'){
     show("[backcolor=" + sval + "]输入文字[/backcolor]");
  
  }else if(str=='forecolor'){
    show("[forecolor=" + sval + "]输入文字[/forecolor]");
  }else if(str=='bgcolor'){
    show("[bgcolor]" + sval + "[/bgcolor]");
  }

}
</script>


                                  <%if (GetRequestValue("types") != "WEB")
                                    { %>
<table border="0" width="457" cellspacing="1">
                                <TR class="tdbg" > 
                                  <TD class="TD3" width="451" rowspan="2" bgcolor="#CCCCCC"> 
                                    <p align="left">【<a href="javascript:daoruFile()" >导入素材</a>】【<a href="javascript:daoru()" >导入图片</a>】【<a href="javascript:addpic()">上传图片</a>】【<a href="javascript:addfile()">上传文件</a>】【<a href="javascript:wap2()">网站资源链接</a>】【<a href="javascript:openubb()">展开</a>】<br/> 
                                    【<a href="javascript:show('[div=title]录入内容[/div]');" >标题皮肤</a>】【<a href="javascript:show('[div=subtitle]录入内容[/div]');" >副标皮肤</a>】【<a href="javascript:show('[div=content]录入内容[/div]');" >内容皮肤</a>】【<a href="javascript:show('[div=line1]录入内容[/div]');" >行一皮肤</a>】【<a href="javascript:show('[div=line2]录入内容[/div]');" >行二皮肤</a>】【<a href="javascript:show('[div=mylink]录入内容[/div]');" >底部皮肤</a>】
<hr />
<select name="selectFont" onChange="FormatText('fontname',this[this.selectedIndex].value);"><option selected>字体<option value="removeFormat">默认字体<option value="宋体">宋体<option value="黑体">黑体<option value="隶书">隶书<option value="幼圆">幼圆<option value="楷体_GB2312">楷体<option value="仿宋_GB2312">仿宋<option value="新宋体">新宋体<option value="华文彩云">华文彩云<option value="华文仿宋">华文仿宋<option value="华文新魏">华文新魏<option value="Arial">Arial<option value="Arial Black">Arial Black<option value="Arial Narrow">Arial Narrow<option value="Century">Century<option value="Courier New">Courier New<option value="Georgia">Georgia<option value="Impact">Impact<option value="Lucida Console">Lucida Console<option value="MS Sans Serif">MS Sans Serif<option value="System">System<option value="Symbol">Symbol<option value="Tahoma">Tahoma<option value="Times New Roman">Times New Roman&nbsp; &nbsp;<option value="Verdana">Verdana<option value="Webdings">Webdings<option value="Wingdings">Wingdings</option></select> <select onChange="FormatText('fontsize',this[this.selectedIndex].value);" name="D2"><option class="heading" selected>字号<option value=1>一号<option value=2>二号<option value=3>三号<option value=4>四号<option value=5>五号<option value=6>六号<option value=7>七号</option></select>

<img id="backcolor" src=/NetImages/edit/fbcolor.gif alt="字体背景颜色" title="字体背景颜色" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="color('backcolor')">
<img id="forecolor"  src=/NetImages/edit/fgcolor.gif alt="字体颜色" title="字体颜色" align=absmiddle style="cursor:pointer;width:16px;height:16px;"  onClick="color('forecolor')">
<img src=/NetImages/edit/img.gif alt="插入图片" title="插入图片" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="img()">


<img src=/NetImages/edit/strikethrough.gif alt="删除线" title="删除线" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="show('[strike]处输入文字[/strike]')">

<img src=/NetImages/edit/inserthorizontalrule.gif alt="普通水平线" title="普通水平线" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="show('[hr]')">
<img src=/NetImages/edit/bb_code.gif alt="文字飞动" title="文字飞动" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="show('[fly]处输入文字[/fly]')">
<a href="#table">表格</a>  <a href="#tab">Tab切换</a><br />
<br />
可视化操作: <br /><br />
<a href="#" onclick="UBB_VIEW_ADD('[text]纯文本内容，不要在此加入链接、图片等[/text]');">纯文本</a>．
<a href="#" onclick="UBB_VIEW_ADD('[url=URL地址]链接标题[/url]');">文本链接</a>．
<a href="#" onclick="UBB_VIEW_ADD('[imgurl=320*200]图片地址*链接地址[/imgurl]');">图片链接</a>．
<a href="#" onclick="UBB_VIEW_ADD('[img=图片URL地址]说明[/img]');">显示图片</a>．
<a href="#" onclick="UBB_VIEW_ADD('[picurl8=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl8]');">图片带数字轮播</a>．
<a href="#" onclick="UBB_VIEW_ADD('[picurl9=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl9]');">图片从右向左滚动</a>
<br /><br />
<a href="#" onclick="UBB_VIEW_ADD('[picurl10=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl10]');">图片带点滚动</a>．
<a href="#" onclick="UBB_VIEW_ADD('[call=联系号码]说明[/call]');">点击拨号</a>．
<a href="#" onclick="UBB_VIEW_ADD('[js]javascript脚本URL地址[/js]');">插放JS脚本文件</a>．
<a href="#" onclick="UBB_VIEW_ADD('[css]CSS文件URL地址[/css]');">插入CSS文件</a>．
<a href="#" onclick="UBB_VIEW_ADD('[iframe=320*200]链接地址[/iframe]');">插入iframe框架</a>

<%}
                                    else
                                    { %>

<table border="0" width="98%" cellspacing="1">
                                <TR class="tdbg" > 
                                  <TD class="TD3" width="98%" rowspan="2" bgcolor="#CCCCCC"> 
                                  <font color="#FF0000"><b>电脑版的UBB与WAP2.0相同！</b></font>
                                  <hr />
         调用单独模块方法: [code]单独模块ID[/code] 
        <br />【普通栏目】：要显示的地方用[view]，建议自由排版。
        <br />【我的地盘】：要显示的地方用[view]
        <br />【首页】：指WAP2.0的wapindex.aspx页面内容，不建议用[view]，请自由排版，不然加[view]跟WAP2.0页面一样喽。
        <br />【附页】：指非首页/非二级/三级页面之外的页面，如提示信息页面。自由排版，要显示地方加[view]
        <br />【二级页面】：指WAP2.0的：book_list.aspx 即显示标题分页的页面。对应UBB：[view]  
        <br />【三级页面】：指WAP2.0的：book_view.aspx 即显示标题内容的页面。对应UBB：[view]  
        <br />【预览】：需要保存后才能预览，二级页面预览效果为实际效果，三级页面预览时，UBB[view]不能实时解析。因为三级页面要有具体标题ID才会解析的，可以通过先打开二级页面中的[view]效果再点击进入三级页面看效果。
        <br />【[view]】：所有页面通用的UBB！这个UBB是指将WAP2.0的页面代码转成HTML代码，自动识别显示当前页面的内容。其它外围效果，自己加HTML代码或套用模板。如果分页部份，默认去掉WAP2.0页面顶部和底部内容，只转关键的内容。
        <br />技巧： 附页，二级页面，三级页面，可以套用同一个网页模板，要显示动态内容的位置上留个空位，要放个[view]。也可以这么说：除了首页[wapindex.aspx]外，其它电脑版排版出来的页面要留个空位放[view]，至于[view]里的内容效果，请用CSS控制适合电脑版效果或直接改源代码或等以后升级增加UBB！
        

<%} %>
<hr />

                                    <hr />
                                    如何调用CSS代码？请先进行CSS样式管理，UBB方法：<a href="javascript:show('[div=x]内容[/div]');" >[div=x]内容[/div]</a><br/>或<a href="javascript:show('[p=x]内容[/p]');" >[p=x]内容[/p]</a>或<a href="javascript:show('[span=x]内容[/span]');" >[span=x]内容[/span]</a>，
                                    <br />x常用：tip/title/subtitle/content/line1/line2/mylink或自定义，具体查看编辑CSS样式。
                                    
                                    <br /><font color="#FF0000">1.支持内容嵌套！如在[顶]录入[div=xx]，在[插]录入[/div]
                                    <br />2.支持层嵌套，最多嵌套五个，执行顺序：<br />[div=x] [div1=x] [div2=x] [div3=x]...[/div3] [/div2] [/div1] [/div]
                                    <br />或[span=x] [span1] [span2]...[/span2] [/span1][/span]
                                    <br />或[div=x] [span]...[/span][/div]
                                    </font><br/>
                                    触屏按钮效果一调用,如果有五个[url=xx]xx[/url]这样的UBB链接(UBB链接不限，自动识别)：<br />
每行一个按钮：[div=bt1]五个UBB链接[/div]<br />
每行二个按钮：[div=bt2]五个UBB链接[/div]<br />
每行三个按钮：[div=bt3]五个UBB链接[/div]<br />
每行四个按钮：[div=bt4]五个UBB链接[/div]<br />
每行五个按钮：[div=bt5]五个UBB链接[/div]<br />
为了控制按钮之间的间距可以用DIV嵌套一个<br />
例：[div=btBox][div1=bt1]UBB链接[/div1][/div]<br /><br />
触屏按钮效果二调用：[div=linkbtn]UBB链接不限，自动识别[/div]<br />
触屏按钮效果三调用：[div=linetouch]UBB链接不限，自动识别[/div]<br />
                                    <hr />
                                    如何插入WML或XHTML代码？请先建栏目指向WML功能模块，在添加删除内容中添加WML代码，然后用<a href="javascript:show('[getwml=标题ID]');" >[getwml=标题ID]</a>调用或直接转成UBB语法<br/>
                                    <hr />
                                    如何插入表单提交？请先建栏目指向表单设计模块，在添加删除内容中设计好表单，然后用<a href="javascript:show('[getform]标题ID[/getform]');" >[getform]标题ID[/getform]</a>调用。<br/>
                                    <hr />
                                    以下为UBB语法，广告代码等，例：<br/>
                                    
                                    通过缓存返回上级：<a href="javascript:show('[return]返回上级[/return]');" >[return]返回上级[/return]</a><br />
                                    返回首页：<a href="javascript:show('[index]返回首页[/index]');" >[index]返回首页[/index]</a><br/>
                                    返回上级：<a href="javascript:show('[back]返回上级[/back]');" >[back]返回上级，不建议用[/back]</a>
                                    菜单导航：<a href="javascript:show('[nv]');" >[nv]</a>
                                    版本及语言选择：<a href="javascript:show('[vs]');" >[vs]</a>,还有[vs2][vs3]<br/>
                                    换行：<a href="javascript:show('[br]')" >[br]</a>或<a href="javascript:show('///')" >///</a> 或直接按回车键<br/>    
                                    空格：<a href="javascript:show('[tab]')" >[tab]</a>或空格键；全角转半角[]：<a href="javascript:show('［内容］')" >［内容］</a><br/>                                
                                    文本链接：<a href="javascript:show('[url=URL地址]链接标题[/url]');" >[url=URL地址]链接标题[/url]</a><br/>
                                    图片链接：<a href="javascript:show('[imgurl=320*200]图片地址*链接地址[/imgurl]');" >[imgurl=320*200]图片地址*链接地址[/imgurl]</a> <br/>
                                    浮动图片链接：<a href="javascript:show('[float=30*30*10*20*X]/Netimages/chat.png*链接地址[/float]');" >[float=图长*图宽*离左边距离*离顶部距离*X]图片地址*链接地址[/float]</a>（X=0时左边；X=1时右边显示）<br/>
                                    显示图片：<a href="javascript:show('[img]图片URL地址[/img]');" >[img]图片URL地址[/img]</a><br/>   
                                    显示图片2：<a href="javascript:show('[img=图片URL地址]说明[/img]');" >[img=图片URL地址]说明[/img]</a><br/>    
                          
                                    <font color=red>注意：图片后缀为gif|jpg|bmp|jpeg|png其它只能首页显示。</font><br />
                                    
                                    友链防SID盗链接：<a href="javascript:show('[url=/link/g.aspx?siteid=[siteid]&url=外站的URL地址]网站说明[/url]');" >[url=/link/g.aspx?siteid=[siteid]&url=外站的URL地址]网站说明[/url]</a><br/>
                                    无下划线链接：<a href="javascript:show('[anchor=广告地址]广告标题[/anchor]');" >[anchor=广告地址]广告标题[/anchor]</a><br/>
                                    随机图文链接：<a href="javascript:show('[rndurl=地址1|地址2]说明或图片地址1|说明或图片地址2[/rndurl]');" >[rndurl=地址1|地址2]说明或图片地址1|说明或图片地址2[/rndurl]</a><br/>                                    
                                    随机图文显示：<a href="javascript:show('[rndtxt]说明或图片地址1|说明或图片地址2[/rndtxt]');" >[rndtxt]说明或图片地址1|说明或图片地址2[/rndtxt]</a><br/>
                                                                        
                                    <font color=red>(多个用|或｜区分开，支持文字或图片混合链接)</font><br />
                                    带数字滚动图片(=布局8)：<br /><a href="javascript:show('[picurl8=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl8]');" >[picurl8=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl8]</a><br/>
                                    从右向左平滑滚动图片(=布局9)：<br /><a href="javascript:show('[picurl9=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl9]');" >[picurl9=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl9]</a><br/>
                                    
                                    视频播放：<br /><a href="javascript:show('[movie=320*180]视频地址|图片地址[/movie]');" >[movie=320*180]视频地址|图片地址[/movie]</a><br/>
                                    音频播放：<br /><a href="javascript:show('[audio=X]音频地址[/audio]');" >[audio=X]音频地址[/audio]</a><br/>
                                    (X=0时不自动播放，1为自动播放,2自动并循环播放)<br />
                                    手机自动定位地图(HTML5)：<a href="javascript:show('[map]320*240[/map]');" >[map]320*240[/map]</a><br/>
                                    纬度经度定位地图(HTML5)：<a href="javascript:show('[map=23.02978910711622*113.30886358323664]320*240[/map]');" >[map=纬度*经度]320*240[/map]</a><br/>
                                    <a href="#" onclick ="javascript:window.open('/weixin/mapshow.aspx', 'mapwidows', 'height=450, width=580, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no');" >查看经度纬度</a><br />
                                   <br />
                                   
                                    <font color=red>不同版本显示不同内容：<a href="javascript:show('[wap=X]内容[/wap]');" >[wap=X]内容[/wap]</a> (X为0,1,2,3,4...)</font><br />
                                    
                                    登录显示：<a href="javascript:show('[logins]登录后内容[/logins]');" >[logins]登录后内容[/logins]</a> 游客显示：<a href="javascript:show('[nologins]未登录内容[/nologins]');" >[nologins]未登录内容[/nologins]</a><br />
                                    指定模块位置显示：<a href="javascript:show('[show=模块名或路径或栏目ID多个加空格_X]内容[/show]');" >[show=模块名或路径或栏目ID多个加空格_X]内容[/show]</a><br />
                                    (X为0时表示所有网站,1时VIP网站,2时非VIP网站,如[show=bbs_2]内容[/show],或[show=bbs/book_view.aspx_2]内容[/show]) <br />
                                    指定模块不显示：<a href="javascript:show('[noshow=模块名或路径或栏目ID多个加空格_X]内容[/noshow]');" >[noshow=模块名或路径或栏目ID多个加空格_X]内容[/noshow]</a><br />
                                    -------<br />
                                    指定栏目ID位置显示：<a href="javascript:show('[show=栏目ID多个加,_X]内容[/show]');" >[show=栏目ID多个加,_X]内容[/show]</a><br />
                                    (X为0时表示所有网站,1时VIP网站,2时非VIP网站,如[show=0,123,456,789_2]内容[/show],或[show=0_2]内容[/show]) <br />
                                    指定栏目ID不显示：<a href="javascript:show('[noshow=栏目ID多个加,_X]内容[/noshow]');" >[noshow=栏目ID多个加,_X]内容[/noshow]</a><br />
                                    例：所有类型网站除了首页显示内容:[noshow=0_0][div=tip]内容[/div][/noshow]<br />
                                    -------<br />
                                     WAP2.0锚点位置:<a href="javascript:show('[a]标记(英文或数字)[/a]');" >[a]标记(英文或数字)[/a]</a> 例:[a]top[/a]<br />
                                     WAP2.0链接至锚点:<a href="javascript:show('[a=标记]说明[/a]');" >[a=标记]说明[/a]</a> 例:[a=top]返回顶部[/a]<br />
                                     WAP2.0列表前显示圈圈:<a href="javascript:show('[u=myclass]智能判断分行[/u]');" >[u=myclass]智能判断分行[/u]</a>或<a href="javascript:show('[u=myclass][li]行一[/li][li]行二[/li][/u]');" >[u=myclass][li]行一[/li][li]行二[/li][/u]</a><br />
                                    直接拨号：<a href="javascript:show('[call]手机号码[/call]');" >[call]手机号码[/call]</a> 或：<a href="javascript:show('[call=手机号码]说明[/call]');" >[call=号码]说明[/call]</a><br/>
                                    发短信到手机:<a href="javascript:show('[url=sms:手机号码?body=短信内容]点击此发送[/url]');" >[url=sms:手机号码?body=短信内容]点击此发送[/url]</a><br />
                                    
                                    <br/>  
                                    天气预报：<a href="javascript:show('[tq=0]默认地区的区号[/tq]');" >[tq=X]默认地区的区号[/tq]</a><br/>  
                                    (X=0样式0，X=1样式1，X=2样式2)<br />
                                    显示站内信息条数：<a href="javascript:show('[message]');" >[message]</a><br/>  
                                    自动显隐站内信息：<a href="javascript:show('[automsg]');" >[automsg]</a><br/>  
                                    自己定义站内信息：<a href="javascript:show('[msg][img]图片地址[/img]您有x条信息![/msg]');" >[msg][img]图片地址[/img]您有x条信息![/msg]</a> (x会替换成实际数量)<br/>          
                                    背景音乐：<a href="javascript:show('[bgsound]铃声地址[/bgsound]');" >[bgsound]铃声地址[/bgsound]</a><br/>  
                                    例：[bgsound]http://kelink.com/1.mid[/bgsound]<br /> 
                                    居左：<a href="javascript:show('[left]')" >[left]</a><br/> 
                                    居中：<a href="javascript:show('[center]')" >[center]</a><br/> 
                                    居右：<a href="javascript:show('[right]')" >[right]</a><br/> 
                                    加粗：<a href="javascript:show('[b]要加粗字符[/b]')" >[b]要加粗字符[/b]</a><br/>
                                    斜体：<a href="javascript:show('[i]要斜体字符[/i]')" >[i]要斜体字符[/i]</a><br/>
                                    下划线：<a href="javascript:show('[u]要下划线字符[/u]')" >[u]要下划线字符[/u]</a><br/>
                                    当前系统日期和时间：<a href="javascript:show('[now]')" >[now]</a><br/>
                                    显示年份：<a href="javascript:show('[year]')" >[year]</a><br/>
                                    显示当前月份：<a href="javascript:show('[month]')" >[month]</a><br/>
                                    显示当天数：<a href="javascript:show('[day]')" >[day]</a><br/>
                                    显示时钟数：<a href="javascript:show('[hour]')" >[hour]</a><br/>
                                    显示分钟数：<a href="javascript:show('[minute]')" >[minute]</a><br/>
                                    显示秒钟数：<a href="javascript:show('[second]')" >[second]</a><br/>
                                    显示当前系统日期：<a href="javascript:show('[date]')" >[date]</a><br/>
                                    显示当前系统时间：<a href="javascript:show('[time]')" >[time]</a><br/>
                                    显示当日星期：<a href="javascript:show('[weekday]')" >[weekday]</a><br/>
                                    显示农历日期：<a href="javascript:show('[ttcc]')" >[ttcc]</a> <br/>
                                    显示问候语：<a href="javascript:show('[hello]')" >[hello]</a><br/>
                                    倒计天数：<a href="javascript:show('[codo]2012-12-21[/codo]')" >[codo]2012-12-21[/codo]</a><br/>
                                    <hr />
                                    <font color="#FF0000">-----<b>显示标题链接</b></font>---<br/>
                                    </font> 
                                    语法：[功能模块标识=N_M_X_Y_Z] 【<a href="/help/ubb.html" target ="_blank">图文教程</a>】<br/>
                                    <b>N</b>为栏目ID：
                                    <br/>1.为0时表示此功能模块所有内容；
                                    <br/>2.具体栏目ID；
                                    <br/><font color=red>3.某个范围栏目ID，输入A-B，例a=1002栏目，a栏目下面b=1003,c=1004,d=1005，要显示a下面所有栏目标题用1003-1005；
                                    	<b>另一方法指定多个栏目ID，输入用|区分：1003|1004|1005</b>
                                    <br/>4.不支持上级栏目ID，故用第3方法。
                                    </font><br/>
                                    <b>M</b>为返回条数，最多20条<br/>
                                    <b>X</b>为0为最新20条中随机，1为最新，2热点，3精华(论坛，友链，商店，约会)，4为置顶，5为随机所有，6为按回贴量，7为回复时间，8为推荐<br/>
                                    <font color=red><b>Y</b>为标题长度，0为默认长度，小于5时不换行，反之换行。(其中图片和相册模块的 Y=-1 时显示图片不换行，-2显示图片换行)</font><br/>
                                    <b>Z</b>为布局效果，范围0-100，如下载模块 0时只显示标题，1显示栏目+标题，2标题+日期,3时间+标题，4.序号+标题，5安桌下载效果，6列表图（自定义图长宽用:6*320*150），7图文（自定义图长宽用:7*320*150,[后面可接*1去掉显示标题前*和时间，Y值是内容长度]），8图片带数字滚动（自定义图长宽用:8*320*150）、9、10、11。注意有些模块无此功能只能设为0<br/>
                                    文章功能：<a href="javascript:show('[article=N_M_X_Y_Z]')" >[article=N_M_X_Y_Z]</a><br/>
                                    论坛功能：<a href="javascript:show('[bbs=N_M_X_Y_Z]')">[bbs=N_M_X_Y_Z]</a><br/>
                                    论坛专题：<a href="javascript:show('[bbstopic=N_M_X_Y_Z]')">[bbstopic=N_M_X_Y_Z]</a>(N为专题ID)<br/>
                                    聊天内容：<a href="javascript:show('[chat=N_M_X_Y_Z]')">[chat=N_M_X_Y_Z]</a><br/>
                                    家族聊天：<a href="javascript:show('[clanchat=N_M_X_Y_Z]')">[clanchat=N_M_X_Y_Z]</a>(N=1为自己家族,0所有)<br/>
                                    
                                    下载功能：<a href="javascript:show('[download=N_M_X_Y_Z]')">[download=N_M_X_Y_Z]</a><br/>
                                    下载按当前机型对应平台显示：<a href="javascript:show('[dl=N_M_X_Y_Z]')">[dl=N_M_X_Y_Z]</a>(当前机型:[ua1])<br/>
                                    
                                    图片功能：<a href="javascript:show('[picture=N_M_X_Y_Z]')">[picture=N_M_X_Y_Z]</a><br/>
                                    视频功能：<a href="javascript:show('[video=N_M_X_Y_Z]')">[video=N_M_X_Y_Z]</a><br/>
                                    铃声功能：<a href="javascript:show('[ring=N_M_X_Y_Z]')">[ring=N_M_X_Y_Z]</a><br/>
                                    商店功能：<a href="javascript:show('[shop=N_M_X_Y_Z]')">[shop=N_M_X_Y_Z]</a><br/>
                                    订单状态统计UBB:[shopstate]?[/shopstate]，?为状态值，如待收货([shopstate]12[/shopstate])具体?参数值查看我的订单<br />
                                    购物车数量：[shopcard]<br />
                                    购物车链接地址：[url=/shop/book_view_add.aspx?classid=0&siteid=[siteid]]购物车([shopcard])[/url]<br />
                                    我的订单链接地址：[url=/shop/orderlistmy.aspx?&classid=0&siteid=[siteid]]我的订单[/url] (classid=0可以改成具体的栏目值)<br />
                                    拍卖功能：<a href="javascript:show('[paimai=N_M_X_Y_Z]')">[paimai=N_M_X_Y_Z]</a><br/>
                                    酒店功能：<a href="javascript:show('[hotel=N_M_X_Y_Z]')">[hotel=N_M_X_Y_Z]</a><br/>
                                    航班功能：<a href="javascript:show('[airplane=N_M_X_Y_Z]')">[airplane=N_M_X_Y_Z]</a><br/>
                                    约会功能：<a href="javascript:show('[yuehui=N_M_X_Y_Z]')">[yuehui=N_M_X_Y_Z]</a><br/>
                                    留言板功能：<a href="javascript:show('[guessbook=N_M_X_Y_Z]')">[guessbook=N_M_X_Y_Z]</a><br/>
                                    友链功能：<a href="javascript:show('[link=N_M_X_Y_Z]')">[link=N_M_X_Y_Z]</a><br/>
                                    动态友链功能：<a href="javascript:show('[linkactive=N_M_X_Y_Z]')">[linkactive=N_M_X_Y_Z]</a><br/>
                                    WML自写功能：<a href="javascript:show('[wml=N_M_X_Y_Z]')">[wml=N_M_X_Y_Z]</a><br/>
                                    广告功能：<a href="javascript:show('[adlink=N_M_X_Y_Z]')">[adlink=N_M_X_Y_Z]</a><br/>
                                    供求功能：<a href="javascript:show('[gongqiu=N_M_X_Y_Z]')" >[gongqiu=N_M_X_Y_Z]</a><br/>
                                    相册图片：<a href="javascript:show('[album=N_M_X_Y_Z]')" >[album=N_M_X_Y_Z]</a><br/>                                    
                                    日志功能：<a href="javascript:show('[rizhi=N_M_X_Y_Z]')" >[rizhi=N_M_X_Y_Z]</a><br/>
                                    微博功能：<a href="javascript:show('[weibo=N_M_X_Y_Z]')" >[weibo=N_M_X_Y_Z]</a><br/>
                                    广播功能：<a href="javascript:show('[guangbo=N_M_X_Y_Z]')" >[guangbo=N_M_X_Y_Z]</a>(Y=-3显示昵称)<br/>
                                    显示书本：<a href="javascript:show('[novel=N_M_X_Y_Z]')" >[novel=N_M_X_Y_Z]</a>(Y=0才显示作者)<br/>
                                    显示章节：<a href="javascript:show('[section=N_M_X_Y_Z]')" >[section=N_M_X_Y_Z]</a><br/>
                                    挖宝功能：<a href="javascript:show('[wabao=N_M_X_Y_Z]')" >[wabao=N_M_X_Y_Z]</a><br/>
                                    例如您新增了一个栏目指向了文章功能，且这个栏目你已经增加了内容，那么输入[article=12_3_0_10]，12为你的栏目ID（即classid），在界面上将显示随机显示3条标题长度为10个字的链接。NM输入错误返回空。如果想让显示UBB调的标题用li包住，请用UBB:[u=myclass]UBB显示N条标题[/u]
                                    <br/><hr /><a name="tab"></a><b>-------Tab切换效果------</b><br/>
                                    格式:<a href="javascript:show('[tab=说明1|说明2|说明3]列表一|列表二|列表三[/tab]')" >[tab=说明1|说明2|说明3]列表一|列表二|列表三[/tab]</a>
                                    <br />同一个页面可插入多个，需配合CSS+JS才有效。
                                    <br />css样式编辑器加入：
                                    <br /><textarea rows="7" name="S1" cols="50" style="background-color: #C0C0C0"><style>
*{margin:0; padding:0; border:none;}
.tab{width:320px;}
.tabTitle{height:30px; border-bottom: solid 1px #d3d3d3; border-top: solid 1px #d3d3d3; width:320px; overflow-y:auto;}
.tabTitle a{border-right: solid 1px #d3d3d3;  width:106px; display:block; float:left; text-align:center; font:14px/30px "宋体"; background:url(/NetImages/title.gif) repeat-x;}
.tabTitle a.selecter{ background:url(/NetImages/title_selecter.gif) repeat-x;}
ul,li{list-style-type:none;}
</style>
<script src="/NetCSS/tab.js" language="javascript"></script></textarea>
                                   <br />例:[tab=论坛|图片|文章][bbs=0_5_0_0_0]|[picture=0_5_0_0_0]|[aritcle=0_5_0_0_0][/tab]
                                    
                                    
                                    <br/><hr /><a name="table"></a><b>-------表格控制位置------</b><br/>
                                    [table][tr][td]内容[/td][/tr][/table]（td表示列,tr表示行）<br />
                                    或<br />
                                    [table=myclass][tr=myclass][td=myclass]内容[/td][/tr][/table]<br />(myclass是css定义的样式名称)<br />
                                    或<br />
                                    上面二种情况的UBB可以混合使用。需要熟悉html中的表格才能做，默认WAP2.0才支持。 <br />
                                    例：二行三例：
                                    [table][tr][td]1_1[/td][td]1_2[/td][td]1_3[/td][/tr][tr][td]2_1[/td][td]2_2[/td][td]2_3[/td][/tr][/table]<br />
                                    例：控制表格内容样式：<br />
                                    [div=tip][table][tr][td][div5=subtitle]1_1[/div5][/td][td]1_2[/td][td]1_3[/td][/tr][tr][td]2_1[/td][td]2_2[/td][td][div5=title]2_3[/div5][/td][/tr][/table][/div]
                                    <br />建义在css来总控制表格样式效果，主要用来做九宫格效果网站。
                                    <br />CSS中可以录入： 
                                    <br />table{max-width:100%; height:auto; text-align:center;} 
                                    <br />td{ width:33%; height:auto;}
                                    <br />.bt{  width:auto; height:auto; margin-top:5px; display:block;  text-align:center;}
                                    <br />div.jiu{max-width:[width]px;margin:0 auto;}
                                    <br />实例UBB代码三行三列<br /><input type ="text" name ="ts" value="[div=jiu][table][tr][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6516][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545490.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6516]公司介绍[/url][/span][/td][td][url=http://kelink.com/shop/book_list.aspx?action=class&siteid=2108&classid=6517][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545370.png[/img][/url][br][span=bt][url=http://kelink.com/shop/book_list.aspx?action=class&siteid=2108&classid=6517]产品介绍[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99173][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545590.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99173]成功案例[/url][/span][/td][/tr][tr][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6518][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545100.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6518]技术支持[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99168][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1546150.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99168]购买指南[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204577][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545190.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204577]汇款帐号[/url][/span][/td][/tr][tr][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204578][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545270.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204578]诚招代理[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99169][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1544520.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99169]联系我们[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99181][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545590.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99181]友情链接[/url][/span][/td][/tr][/table][/div]"/>
                                    
                                    <br/><hr /><font color="#FF0000"><b>-------WAP1.0/2.0显示下拉框链接------</b></font><br/>
                                    下拉链接：<a href="javascript:show('[sel][option=链接地址]中文名称[/option][/sel]')">[sel][option=链接地址]中文名称[/option][/sel]</a><br/>
                                    例：以下为显示天气预报下拉链接<br/>
                                    [sel][option= ]天气选择[/option][option=/utility/weather/show.aspx?key=020&amp;siteid=[siteid]&amp;classid=[classid]]广州[/option][option=/utility/weather/show.aspx?key=010&amp;siteid=[siteid]&amp;classid=[classid]]北京[/option][/sel]
                                    <br/>此代码任何地方不能有换行符或回车！
                                    <br />WAP2.0第一个[option= ]说明[/option]无效建议写成说明。
                                    <br/><hr /><b><font color="#FF0000">-------WAP1.0和2.0搜索混合例子------</font></b><br/>
                                    <table border="0" width="100%" id="table2" bgcolor="#C0C0C0">
										<tr>
											<td><font size="1">
											[input=15]关键字[/input][ancho=article_0]搜文章[/ancho][ancho=bbs_0]搜论坛[/ancho][form2][input2=5]关键字[/input2][sel2][option2=bbs_0]论坛[/option2][option2=article_0]文章[/option2][option2=http://wap.baidu.com/baidu?word=]百度[/option2][/sel2][button2]搜索[/button2][/form2]
											<br />以上是文章和论坛搜索的例子，具体参数请看下面说明。
											</font></td>
										</tr>
									</table>
                                    <br/><hr /><b><font color="#FF0000">-------显示WAP2.0搜索框------<br/></b></font>
                                    开始：<a href="javascript:show('[form2]')">[form2]</a><br/>
                                    输入框：<a href="javascript:show('[input2=5]关键字[/input2]')">[input2=长度大小]关键字[/input2]</a><br/>
                                    (例:[input2=5]关键字[/input2])<br />
                                    下拉选择开始：<a href="javascript:show('[sel2]')">[sel2]</a><br/>
                                    下拉选项：<a href="javascript:show('[option2=bbs_0]论坛[/option2]')">[option2=功能模块标识_N栏目ID]说明按钮[/option2]</a><br/>
                                    (例:[option2=bbs_0]论坛[/option2][option2=article_0]文章[/option2]，其中0表标搜索某一模块的所有栏目内容，功能模块标识_N栏目ID可以改成外站的地址如:[option2=http://wap.baidu.com/baidu?word=]百度[/option2])<br />
                                    下拉选择结束：<a href="javascript:show('[/sel2]')">[/sel2]</a><br/>
                                    提交按钮：<a href="javascript:show('[button2]搜索[/button2]')">[button2]搜索[/button2]</a><br/>
                                    结束：<a href="javascript:show('[/form2]')">[/form2]</a><br/>
                                    此代码任何地方不能有换行符或回车！例子可参考上面的混合例子。具体参数可参考以下1.0搜索框的值。
                                    
                                    <br/><hr /><b><font color="#FF0000">-------显示WAP1.0搜索框------<br/>
                                    </font></b>输入框：<a href="javascript:show('[input=15]输入关键字[/input]')">[input=长度大小]关键字[/input]</a><br/>
                                    例：[input=15]输入关键字[/input]<br/>
                                    <br/>
                                    搜索按钮：[ancho=功能模块标识_N栏目ID]说明按钮[/ancho]
                                    <br/><font color=red>N为0时所有内容，支持上级栏目ID，最多支持二级</font>
                                    <br/>当前功能模块搜索按钮如下：<br/>
                                    <a href="javascript:show('[ancho=article_N]文章搜索[/ancho]')">[ancho=article_N]文章搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=bbs_N]论坛搜索[/ancho]')">[ancho=bbs_N]论坛搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=picture_N]图片搜索[/ancho]')">[ancho=picture_N]图片搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=ring_N]铃声搜索[/ancho]')">[ancho=ring_N]铃声搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=video_N]视频搜索[/ancho]')">[ancho=video_N]视频搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=download_N]下载搜索[/ancho]')">[ancho=download_N]下载搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=album_N]相册搜索[/ancho]')"> [ancho=album_N]相册搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=link_N]友链搜索[/ancho]')">[ancho=link_N]友链搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=yuehui_N]约会搜索[/ancho]')">[ancho=yuehui_N]约会搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=shop_N]商店搜索[/ancho]')">[ancho=shop_N]商店搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=airplane_N]航班搜索[/ancho]')">[ancho=airplane_N]航班搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=hotel_N]酒店搜索[/ancho]')">[ancho=hotel_N]酒店搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=guessbook_N]留言搜索[/ancho]')">[ancho=guessbook_N]留言搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=paimai_N]拍卖搜索[/ancho]')">[ancho=paimai_N]拍卖搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=wml_N]自写代码搜索[/ancho]')">[ancho=wml_N]自写代码搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=search_N]用户搜索[/ancho]')">[ancho=search_N]用户搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=card_N]名片搜索[/ancho]')">[ancho=card_N]名片搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=class_N]栏目搜索[/ancho]')">[ancho=class_N]栏目搜索[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=gongqiu_N]供求搜索[/ancho]')">[ancho=gongqiu_N]供求搜索[/ancho]</a><br/>
                                    高级使用：取得输入框值[urlancho=地址_参数]说明[/urlancho]<br/>
                                    例1.百度搜索原地址:http://wap.baidu.com/baidu?word=XXXXX<br/>
                                    <a href="javascript:show('[input=15]美女[/input][urlancho=http://wap.baidu.com/baidu_word]百度搜索[/urlancho]')">[input=15]美女[/input][urlancho=http://wap.baidu.com/baidu_word]百度搜索[/urlancho]</a>
                                   <br/>
                                   例2.儒豹搜索原地址:http://wap.roboo.com/auto.jsp?q=XXX&back=123.com&f=123
                                    <br/>
                                  <a href="javascript:show('[input=15]美女[/input][urlancho=http://wap.roboo.com/auto.jsp?back=123.com&f=123_q]儒豹搜索[/urlancho]')">[input=15]美女[/input][urlancho=http://wap.roboo.com/auto.jsp?back=123.com&f=123_q]儒豹搜索[/urlancho]</a>
                                   <br/>
                                    </a>提示：一个页面建议只使用一个输入框！<br/>
									高级使用WML功能模块写搜索代码例：
									<table border="0" width="100%" id="table1" bgcolor="#C0C0C0">
										<tr>
											<td><font size="1">&lt;form name=&quot;g&quot; 
											action=&quot;/bbs/book_list.aspx&quot; 
											method=&quot;get&quot;&gt;&lt;input type=&quot;text&quot; 
											name=&quot;key&quot; size=&quot;5&quot;/&gt;&lt;input 
											type=&quot;hidden&quot; name=&quot;type&quot; 
											value=&quot;title&quot;/&gt;&lt;input type=&quot;hidden&quot; 
											name=&quot;siteid&quot; 
											value=&quot;[siteid]&quot;/&gt;&lt;input 
											type=&quot;hidden&quot; name=&quot;classid&quot; 
											value=&quot;0&quot;/&gt;&lt;input type=&quot;hidden&quot; 
											name=&quot;action&quot; value=&quot;search&quot;/&gt;&lt;input type=&quot;submit&quot; 
											value=&quot;搜论坛&quot;/&gt;&lt;/form&gt;</font></td>
										</tr>
									</table>
									<br/><hr /><font color="#FF0000">
                                    ------<b>显示栏目特别按钮</b>------<br/>
                                    功能模块标识请看上面的“显示搜索框”<br/>
                                    </font>搜索:<a href="javascript:show('[search=功能模块标识_栏目ID]说明[/search]')" >[search=功能模块标识_栏目ID]说明[/search]</a><br/>
                                    关键字:<a href="javascript:show('[key=功能模块标识_栏目ID]说明[/key]')" >[key=功能模块标识_栏目ID]关键字[/key]</a><br/>
                                    最新:<a href="javascript:show('[new=功能模块标识_栏目ID]说明[/new]')" >[new=功能模块标识_栏目ID]说明[/new]</a><br/>	                                    	
                                    热点:<a href="javascript:show('[hot=功能模块标识_栏目ID]说明[/hot]')" >[hot=功能模块标识_栏目ID]说明[/hot]</a><br/>	
                                    精华:<a href="javascript:show('[good=功能模块标识_栏目ID]说明[/good]')" >[good=功能模块标识_栏目ID]说明[/good]</a><br/>	
                                    N天前:<a href="javascript:show('[days=功能模块标识_栏目ID_天数]说明[/days]')" >[days=功能模块标识_栏目ID_天数]说明[/days]</a><br/>
                                    例如你的一个论坛栏目ID为988，以上应用为： 
                                    [search=bbs_988]XX栏目搜索[/search]<br/>
                                    [new=bbs_988]XX栏目最新[/new]<br/>
                                    [hot=bbs_988]XX栏目人气[/hot]<br/>
                                    [good=bbs_988]XX栏目精华[/good]<br/>
                                    [days=bbs_988_1]XX栏目今天发表[/days]
                                    <br/>(其中栏目ID可以为上一级的，最顶级的为0，部分功能模块无此应用)
                                    <br/><hr />
                                    <font color="#FF0000">
                                    ------<b>显示特殊内容</b>------<br/>
                                    </font>登录可见内容:<a href="javascript:show('[login]输入内容[/login]')" >[login]输入内容[/login]</a><br/>
                                    手机可见内容:<a href="javascript:show('[mobi]输入内容[/mobi]')" >[mobi]输入内容[/mobi]</a><br/>	                                    	
                                    金钱可见内容:<a href="javascript:show('[coin=金钱数]输入内容[/coin]')" >[coin=金钱数]输入内容[/coin]</a><br/>	
                                    等级可见内容:<a href="javascript:show('[grade=等级]输入内容[/grade]')" >[grade=等级]输入内容[/grade]</a><br />
                                    身份级别可见内容:<a href="javascript:show('[vip=身份级别ID多个用|区分]输入内容[/vip]')" >[vip=身份级别ID多个用|区分]输入内容[/vip]</a>
                                   <br/><hr />
                                   <font color="#FF0000"><b>-------统计记录数量------</b></font><br/>
                                    语法：[功能模块标识=X_Y]，只能设置X和Y参数，Y要大于99！<br/> 	
                                    X为栏目ID，为0时此模块所有栏目。<br/>
                                    Y为100为总量，101为今天量，102为昨天量，103为本周量,104为本月量,105为本季度量,106为本年量<br/>                                
                                    文章模块：<a href="javascript:show('[article=0_100]')" >[article=X_Y]</a><br/>
                                    论坛模块：<a href="javascript:show('[bbs=0_100]')" >[bbs=X_Y]</a><br/>
                                    论坛回贴：<a href="javascript:show('[bbsre=0_100]')" >[bbsre=X_Y]</a><br/>
                                    下载模块：<a href="javascript:show('[download=0_100]')" >[download=X_Y]</a><br/>
                                    图片模块：<a href="javascript:show('[picture=0_100]')" >[picture=X_Y]</a><br/>
                                    视频模块：<a href="javascript:show('[video=0_100]')" >[video=X_Y]</a><br/>
                                    铃声模块：<a href="javascript:show('[ring=0_100]')" >[ring=X_Y]</a><br/>
                                    商店模块：<a href="javascript:show('[shop=0_100]')" >[shop=X_Y]</a><br/>
                                    约会模块：<a href="javascript:show('[yuehui=0_100]')" >[yuehui=X_Y]</a><br/>
                                    留言板模块：<a href="javascript:show('[guessbook=0_100]')" >[guessbook=X_Y]</a><br/>
                                    友链模块：<a href="javascript:show('[link=0_100]')" >[link=X_Y]</a><br/>
                                    供求模块：<a href="javascript:show('[gongqiu=0_100]')" >[gongqiu=X_Y]</a><br/>
                                    相册模块：<a href="javascript:show('[album=0_100]')" >[album=X_Y]</a><br/>
                                    日志模块：<a href="javascript:show('[rizhi=0_100]')" >[rizhi=X_Y]</a><br/>
                                    例统计下载功能模块栏目的上传量：[dowload=0_101]<br />
                                    其它统计：<br />
                                    我的好友总数：<a href="javascript:show('[friend]0[/friend]')" >[friend]0[/friend]</a><br/>
                                    我的黑名单数：<a href="javascript:show('[friend]1[/friend]')" >[friend]1[/friend]</a><br/>
                                    我的追求总数：<a href="javascript:show('[friend]2[/friend]')" >[friend]2[/friend]</a><br/>
                                    追求我的人数：<a href="javascript:show('[friend]4[/friend]')" >[friend]4[/friend]</a><br/>
                                    我推荐的人数：<a href="javascript:show('[friend]5[/friend]')" >[friend]5[/friend]</a><br/>
                                    <font color="red">提示：实时统计耗资源，请尽量少用！</font>
                                    <br/><hr />
                                    <font color="#FF0000">
                                    ------<b>访问量统计API</b>------<br/>
                                    </font>某个栏目在线人数：<a href="javascript:show('[online=栏目ID]')" >[online=栏目ID]</a><br/>
                                    	(自动带链接，栏目ID=0时显示所有，全局插入广告可用<br/>[online=[classid]])<br/>
                                    	以下为PV值<br />
                                    第几位访问者:<a href="javascript:show('[vtotal]')" >[vtotal]</a><br/>
                                    昨日访问量:<a href="javascript:show('[vyestaday]')" >[vyestaday]</a><br/>
                                    今日访问量:<a href="javascript:show('[vtoday]')" >[vtoday]</a><br/>                                    
                                    本周访问量:<a href="javascript:show('[vweek]')" >[vweek]</a><br/>
                                    本月访问量:<a href="javascript:show('[vmonth]')" >[vmonth]</a><br/>
                                    总访问量:<a href="javascript:show('[vtotal]')" >[vtotal]</a><br/>
                                    当前在线人数:<a href="javascript:show('[online]')" >[online]</a><br/>
                                    所有网站流量:<a href="javascript:show('[valltotal]')" >[valltotal]</a>
                                    <br/><hr />
                                    <font color="#FF0000">---------<b>娱乐游戏UBB</b>--------<br/></font>
                                    游戏:<a href="javascript:show('[games=N_M_X_Y_Z]')" >[games=N_M_X_Y_Z]</a><br/>
                                    N为游戏大厅栏目ID
                                    <br />M为返回多少行                                    
                                    <br />X为显示类别:1为最新挑战内容；2为今日投注总次数；3为今日投注总金额
                                    4.为赢家排行；5.赚币排行                                    
                                    <br />Y，为游戏标识，疯狂石头:stone；赌骰子:touzi；苹果机:apple；乾坤宝:quankun；疯狂吹牛:chuiniu
                                    掠夺军团:war；幸运28:lucky28；疯狂射门:shoot；赛马场:horse
                                    <br />Z,暂时固定为0
                                    
                                    <br/><hr />
                                    <font color="#FF0000">---------<b>会员状态UBB</b>--------<br/></font>
                                    
                                    
                                   
                                    会员状态:<a href="javascript:show('[users=N_M_X_Y_Z]')" >[users=N_M_X_Y_Z]</a><br/>
                                    N为0时随机,1最新，针对X=0,1时有效<br/>
                                    M为返回条数，最多20条；<br/>
                                    X为0时，所有会员活动记录；为7时在线会员活动记录；为1时注册会员在线活动记录；为2时最新注册会员；为3时最新注册男会员，为4时最新注册女会员；
                                    为5时财富榜排行；为6时经验排行榜。(注意，当X>=3时，统计可能会慢，尽量少用)<br/>
                                    Y为0时换行，为1时不换行。<br/><hr />

                                    <font color="#FF0000">---------<b>高级API</b>--------<br/></font>
                                    取流水号:<a href="javascript:show('[fid]')" >[fid]</a><br/>
                                    取网站ID:<a href="javascript:show('[siteid]')" >[siteid]</a><br/>
                                    取当前页栏目ID:<a href="javascript:show('[classid]')" >[classid]</a><br/>
                                    取当前页栏目名称:<a href="javascript:show('[classname]')" >[classname]</a><br/>
                                    取当前页标题名称:<a href="javascript:show('[title]')" >[title]</a><br/>
                                    取当前页标题ID:<a href="javascript:show('[id]')" >[id]</a><br/>
                                    取当前页域名地址:<a href="javascript:show('[domain]')" >[domain]</a><br/>
                                    取当前页父栏目ID:<a href="javascript:show('[parentid]')" >[parentid]</a><br/>
                                    (以下用户登录后有效)<br/>
                                    取用户ID:<a href="javascript:show('[userid]')" >[userid]</a><br/>
                                   <!--  取用户名:<a href="javascript:show('[username]')" >[username]</a><br/>-->
                                    取用昵称:<a href="javascript:show('[nickname]')" >[nickname]</a><br/>
                                   <!-- 取用户MD5密码:<a href="javascript:show('[password]')" >[password]</a><br/>-->
                                    取用户当前币:<a href="javascript:show('[money]')" >[money]</a><br/>
                                    取用户当前RMB:<a href="javascript:show('[rmb]')" >[rmb]</a><br/>
                                    取用户当前身份:<a href="javascript:show('[myvip]')" >[myvip]</a><br/>
                                     取用户当前任务:<a href="javascript:show('[myaction]')" >[myaction]</a><br/>
                                    手机型号:<a href="javascript:show('[ua]')" >[ua]</a><br/>
                                    手机品牌+型号:<a href="javascript:show('[ua1]')" >[ua1]</a><br/>
                                    (终端不支持Cookies时有效)<br/>
                                    
                                    </font>例:URL.aspx?siteid=[siteid]<br/>
                                    &amp;classid=[classid]<br/>
                                    <font color="#FF0000"><br/>
                                    </font>以上为HTTP接口，二次开发通过以上接口可以开发出功能强大模块。<strong><font color="#FF0000"><br/>
                                    </font></strong>
                                    
                                   <br /><hr /> <font color="#FF0000">---------<b>当前访问会员信息</b>--------<br/></font>
                                    格式:<a href="javascript:show('[ui]x[/ui]')" >[ui]x[/ui]</a> 
                                    X为数字，表示如下:<br />
                                    0:会员ID；1:昵称；2:性别；3:年龄；4:体重；5:星座；6:爱好；7:QQ号；8:婚否；9:职业；
                                    10:城市；11:手机号码；12:邮箱；13:网站货币；14:勋章；15:注册时间；16:登录IP地址；
                                    17:最后登录时间；18:头像；19:签名；20:经验；21:RMB帐户；22:虚拟银行存款；
                                    23:等级；24:头衔；25:是否在线；26:论坛发贴数；27:论坛回贴数；28:推荐人数；29:在线时间图标;30:个人空间访问人数
                                    
                                    <!--
                                    <hr /><font color="#FF0000">
                                    ------<b>其它</b>------</font><br/>
                                   当UC浏览器访问时显示：<a href="javascript:show('[uc]UC广告内容[/uc]');" >[uc]UC广告内容[/uc]</a><br />
                                   当QQ浏览器访问时显示：<a href="javascript:show('[qq]QQ广告内容[/qq]');" >[qq]QQ广告内容[/qq]</a>
                                    -->
                                    <hr />
如开通伪静态地址，如下：<br />
通用栏目地址：[url=/wapindex-网站ID-栏目ID.html]栏目名称[/url]<br />
具体栏目地址：[url=/模块名称list-栏目ID-页码.html]栏目名称[/url]<br />
查看内容地址：[url=/模块名称-标题ID.html]标题[/url]<br />
.html后面可带参数。
                                    <P><hr />
                                    <b>建站技巧：</b>1.建好所有的栏目上下结构；2.用电脑IE或Opera8.0(<a href="http://www.kelink.com/download/opera8.rar">点击下载</a>)进行访问查看；3.排版时用[url=在IE或opera地址栏里copy地址]XXX[/url]来插入。
     注意地址中如有&sid=XXX需要变成防串号，没有的需要加上防掉线。
    <br/><b>建站口诀：</b>有了地址想往哪里插，就往哪里[插][顶][底]!
<font color=red><br/><b>建站要领：</b>一个好的网站就像一个人。首先人有骨架，所以建网站先要建好栏目结构；其次人有肌肉，所以网站需要[插][顶][底]录入内容进行排版，达到丰满效果；最后人还要穿衣服，所以网站需要插入CSS样式将排版内容包起来，用到[div=xx]xx[/div]！ 穿真皮，那就是WAP1.0了，穿CSS样式就是WAP2.0了。</font>
                                    <br /><font color=red><b>特别提醒：</b>[div=xx]内容1[/div][div=xx]内容2[/div]连着二个div在WAP2.0和1.0中一定将自动换行，“[/div][div=”中间不能再加换行。如果只在2.0中换行，1.0中不换行，中间加个空格即“[/div]空格[div=”</font></P>
                                    <br/><br/><a name="wap2"></a>
                                    <br/>
                                    </p>
                                  </TD>
                                </TR>
</table>

</body>

</html>