<%@ Page Language="C#" AutoEventWireup="true" %><%Response.ContentType = "text/html; charset=utf-8"; %>
<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0">
<style type="text/css"> 
body   {font-size:18px; width:90%; margin:10 auto;background:#C7EDCC;}
</style>
<title>柯林秘技-UBB大全</title>
</head>
<body>
UBB大全|<a href="ubb3.aspx">网站资源链接</a>|<a href="ubb4.aspx">用户手册</a>|<a href="ubb5.aspx">技术员手册</a>|<a href="http://bbs.kelink.com">WAP建站知识库</a>
<hr />
搜索按 Ctrl+F
<hr />

字体：[font=黑体]输入文字[/font]<br />
字体大小：[size=7]输入文字[/size]<br />
字体背景颜色：[backcolor=#FF0000]输入文字[/backcolor]<br />
字体颜色：[forecolor=#FF0000]输入文字[/forecolor]<br />
删除线：[strike]处输入文字[/strike]<br />
普通水平线：[hr]<br />
文字飞动：[fly]处输入文字[/fly]<br />

以上是对文字具体到点的控制，建义用CSS来总体控制。<br />
<hr />
如何调用CSS代码？请先进行CSS样式管理，UBB方法：[div=x]内容[/div]<br />
或[p=x]内容[/p]或[span=x]内容[/span]， <br />
x常用：tip/title/subtitle/content/line1/line2/mylink或自己定义，具体查看编辑CSS样式。
<br />
1.支持内容嵌套！如在[顶]录入[div=xx]，在[插]录入[/div] <br />
<br />2.支持层嵌套，最多嵌套五个，执行顺序：<br />[div=x] [div1=x] [div2=x] [div3=x]...[/div3] [/div2] [/div1] [/div]
 <br />或[span=x] [span1] [span2]...[/span2] [/span1][/span]
                                    <br />或[div=x] [span]...[/span][/div]
                                  <br/>
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
WAP1.0/2.0如何插入WML或XHTML代码？请先建栏目指向WML功能模块，在添加删除内容中添加WML代码，然后用[getwml=标题ID]调用或直接转成UBB语法
<hr />
 如何插入表单提交？请先建栏目指向表单设计模块，在添加删除内容中设计好表单，然后用[getform]标题ID[/getform]调用。<br/>
 <hr />                      
                                    
电脑版在单独模板新增，建好后用[code]单独模板ID[/code]调用。
<hr />
通过缓存返回上级：[return]返回上级[/return]<br />
返回首页：[index]返回首页[/index]<br />
返回上级：[back]返回上级，不建议用[/back] <br />
菜单导航：[nv] <br />
版本及语言选择：[vs],还有[vs2][vs3]<br />
换行：[br]或/// 或直接按回车键<br />
空格：[tab]或空格键；<br />
全角转半角[]：［内容］<br />
纯文本：[text]纯文本内容，方便UBB可视化解析[/text]<br />
文本链接：[url=URL地址]链接标题[/url]<br />
图片链接：[imgurl=320*200]图片地址*链接地址[/imgurl] <br/>
浮动图片链接：[float=图长*图宽*离左边距离*离顶部距离*X]图片地址*链接地址[/float]（X=0时左边；X=1时右边显示）<br/>
显示图片：[img]图片URL地址[/img]<br />
显示图片2：[img=图片URL地址]说明[/img]<br />
注意：图片后缀为gif|jpg|bmp|jpeg|png其它只能首页显示。<br />
插入js文件：[js]地址[/js]<br />
插入css文件：[css]地址[/css]<br />         
插入iframe框架：[iframe=320*200]链接地址[/iframe] <br/>                   
友链防SID盗链接：[url=/link/g.aspx?siteid=[siteid]&url=外站的URL地址]网站说明[/url]<br />
无下划线链接：[anchor=广告地址]广告标题[/anchor]<br />
随机图文链接：[rndurl=地址1|地址2]说明或图片地址1|说明或图片地址2[/rndurl]<br />
随机图文显示：[rndtxt]说明或图片地址1|说明或图片地址2[/rndtxt]<br />
(多个用|或｜区分开，支持文字或图片混合链接)<br />

带数字滚动图片(=布局8)：[picurl8=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl8]<br/>
从右向左平滑滚动图片(=布局9):[picurl9=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl9]<br />
带点滑滚动图片(=布局10):[picurl10=320*200]图片地址1|图片地址2*链接地址1|链接地址2[/picurl10]<br />
视频播放：[movie=320*180]视频地址|图片地址[/movie]<br/>
音频播放：[audio=X]音频地址[/audio]<br/>
(X=0时不自动播放，1为自动播放,2自动并循环播放)<br />
手机定位地图(HTML5)：[map]320*240[/map]<br/>
纬度经度定位地图(HTML5)：[map=纬度*经度]320*240[/map]<br/>
例:[map=23.02978910711622*113.30886358323664]320*240[/map]
                                                                                                  
                                   
不同版本显示不同内容：[wap=X]内容[/wap] (X为0,1,2,3,4...)<br />
                                    
登录显示：[logins]登录后内容[/logins] <br />
游客显示：[nologins]未登录内容[/nologins]<br />
指定模块位置显示：[show=模块名或路径或栏目ID多个加空格_X]内容[/show]<br />
(X为0时表示所有网站,1时VIP网站,2时非VIP网站,如[show=bbs_2]内容[/show],或[show=bbs/book_view.aspx_2]内容[/show]) <br />
指定模块不显示：[noshow=模块名或路径或栏目ID多个加空格_X]内容[/noshow]<br />
   ------- <br />   
指定栏目ID位置显示：[show=栏目ID多个加,_X]内容[/show]<br />   
(X为0时表示所有网站,1时VIP网站,2时非VIP网站,如[show=0,123,456,789_2]内容[/show],或[show=0_2]内容[/show]) <br />   
指定栏目ID不显示：[noshow=栏目ID多个加,_X]内容[/noshow]<br />   
例：所有类型网站除了首页显示内容:[noshow=0_0][div=tip]内容[/div][/noshow]<br />   
-------                             

WAP2.0锚点位置:[a]标记(英文或数字)[/a] 例[顶]插入:[a]top[/a]<br />
WAP2.0链接至锚点:[a=标记]说明[/a] 例[底]插入:[a=top]返回顶部[/a]<br />
WAP2.0列表前显示圈圈:[u=myclass]智能判断分行[/u]或[u=myclass][li]行一[/li][li]行二[/li][/u]<br />
直接拨号：[call]手机号码[/call] 或：[call=号码]说明[/call]<br />
发短信到手机:[url=sms:手机号码?body=短信内容]点击此发送[/url]<br />

<hr /> 
天气预报：[tq=X]默认地区的区号[/tq]</a><br/>  
                                    (X=0时样式0，X=1时样式1，X=2时样式2)<br />
显示站内信息条数：[message]<br />
自动显隐站内信息：[automsg]<br />
自己定义站内信息：[msg][img]图片地址[/img]您有x条信息![/msg] (x会替换成实际数量)<br />

背景音乐：[bgsound]铃声地址[/bgsound]<br />
例：[bgsound]http://kelink.com/1.mid[/bgsound]<br />
居左：[left]<br />
居中：[center]<br />
居右：[right]<br />
加粗：[b]要加粗字符[/b]<br />
斜体：[i]要斜体字符[/i]<br />
下划线：[u]要下划线字符[/u]<br />
当前系统日期和时间：[now]<br />
显示年份：[year]<br />
显示当前月份：[month]<br />
显示当天数：[day]<br />
显示时钟数：[hour]<br />
显示分钟数：[minute]<br />
显示秒钟数：[second]<br />
显示当前系统日期：[date]<br />
显示当前系统时间：[time]<br />
显示当日星期：[weekday]<br />
显示农历日期：[ttcc] <br />
显示问候语：[hello]<br />
倒计天数：[codo]2012-12-21[/codo]<br />

<hr />
----显示标题链接---<br />
语法：[功能模块标识=N_M_X_Y_Z]<br />
N为栏目ID： <br />
1.为0时表示此功能模块所有内容； <br />
2.具体栏目ID； <br />
3.某个范围栏目ID，输入A-B，例a=1002栏目，a栏目下面b=1003,c=1004,d=1005，要显示a下面所有栏目标题用1003-1005； 另一方法指定多个栏目ID，输入用|区分：1003|1004|1005 <br />
4.不支持上级栏目ID，故用第3方法。 <br />
M为返回条数，最多20条<br />
X为0为最新20条中随机，1为最新，2热点，3精华(论坛，友链，商店，约会，下载)，4为置顶，5为随机所有，6为按回贴量，7为回复时间，8为推荐(下载)<br />
Y为标题长度，0为默认长度，小于5时不换行，反之换行。(其中图片和相册模块的 Y=-1 时显示图片不换行，-2显示图片换行)<br />
<b>Z</b>为布局效果，范围0-100，如下载模块 0时只显示标题，1显示栏目+标题，2标题+日期,3时间+标题，4.序号+标题，5安桌下载效果，，6列表图（自定义图长宽用:6*320*150），7图文（自定义图长宽用:7*320*1507图文（自定义图长宽用:7*320*150,[后面可接*1去掉显示标题前*和时间]，Y值是内容长度），8图片带数字滚动（自定义图长宽用:8*320*150）、9、10、11。注意有些模块无此功能只能设为0<br/>

文章功能：[article=N_M_X_Y_Z]<br />
论坛功能：[bbs=N_M_X_Y_Z]<br />
论坛专题：[bbstopic=N_M_X_Y_Z](N为专题ID)<br />
聊天内容：[chat=N_M_X_Y_Z]<br />
家族聊天：[clanchat=N_M_X_Y_Z](N=1为自己家族,0所有)<br />
下载功能：[download=N_M_X_Y_Z]<br />
下载按当前机型对应平台显示：[dl=N_M_X_Y_Z](当前机型:[ua1])<br />
图片功能：[picture=N_M_X_Y_Z]<br />
视频功能：[video=N_M_X_Y_Z]<br />
铃声功能：[ring=N_M_X_Y_Z]<br />
商店功能：[shop=N_M_X_Y_Z]<br />
订单状态统计UBB:[shopstate]?[/shopstate]，?为状态值，如待收货([shopstate]12[/shopstate])具体?参数值查看我的订单<br />
                                    购物车数量：[shopcard]<br />
                                    购物车链接地址：[url=/shop/book_view_add.aspx?classid=0&siteid=[siteid]]购物车([shopcard])[/url]<br />
                                    我的订单链接地址：[url=/shop/orderlistmy.aspx?&classid=0&siteid=[siteid]]我的订单[/url] (classid=0可以改成具体的栏目值)<br />
拍卖功能：[paimai=N_M_X_Y_Z]<br />
酒店功能：[hotel=N_M_X_Y_Z]<br />
航班功能：[airplane=N_M_X_Y_Z]<br />
约会功能：[yuehui=N_M_X_Y_Z]<br />
留言板功能：[guessbook=N_M_X_Y_Z]<br />
友链功能：[link=N_M_X_Y_Z]<br />
动态友链功能：[linkactive=N_M_X_Y_Z]<br />
WML自写功能：[wml=N_M_X_Y_Z]<br />
广告功能：[adlink=N_M_X_Y_Z]<br />
供求功能：[gongqiu=N_M_X_Y_Z]<br />
相册图片：[album=N_M_X_Y_Z]<br />
日志功能：[rizhi=N_M_X_Y_Z]<br />
微博功能：[weibo=N_M_X_Y_Z]<br />
广播功能：[guangbo=N_M_X_Y_Z](Y=-3显示昵称)<br />
显示书本：[novel=N_M_X_Y_Z](Y=0才显示作者)<br />
显示章节：[section=N_M_X_Y_Z]<br />
挖宝功能：[wabao=N_M_X_Y_Z]<br/>
例如您新增了一个栏目指向了文章功能，且这个栏目你已经增加了内容，那么输入[article=12_3_0_10]，12为你的栏目ID（即classid），在界面上将显示随机显示3条标题长度为10个字的链接。NM输入错误返回空。如果想让显示UBB调的标题li包住，请用UBB:[u=myclass]UBB显示N条标题[/u] <br />

<hr /><b>-------表格控制位置------</b><br/>
                                    [table][tr][td]内容[/td][/tr][/table]<br />
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
                                    <hr />
---WAP1.0/2.0显示下拉框链接---<br />
下拉链接：[sel][option=链接地址]中文名称[/option][/sel]<br />
例：以下为显示天气预报下拉链接
[sel][option= ]天气选择[/option][option=/utility/weather/show.aspx?key=020&siteid=[siteid]&classid=[classid]]广州[/option][option=/utility/weather/show.aspx?key=010&siteid=[siteid]&classid=[classid]]北京[/option][/sel] 
此代码任何地方不能有换行符或回车！ <br />
WAP2.0第一个[option= ]说明[/option]无效建议写成说明。 <br />

<hr />
---WAP1.0和2.0搜索混合例子---<br />
[input=15]关键字[/input][ancho=article_0]搜文章[/ancho][ancho=bbs_0]搜论坛[/ancho][form2][input2=5]关键字[/input2][sel2][option2=bbs_0]论坛[/option2][option2=article_0]文章[/option2][option2=http://wap.baidu.com/baidu?word=]百度[/option2][/sel2][button2]搜索[/button2][/form2] 
以上是文章和论坛搜索的例子，具体参数请看下面说明。  


<hr />
---显示WAP2.0搜索框---<br />
开始：[form2]<br />
输入框：[input2=长度大小]关键字[/input2]<br />
(例:[input2=5]关键字[/input2])<br />
下拉选择开始：[sel2]<br />
下拉选项：[option2=功能模块标识_N栏目ID]说明按钮[/option2]<br />
(例:[option2=bbs_0]论坛[/option2][option2=article_0]文章[/option2]，其中0表标搜索某一模块的所有栏目内容，功能模块标识_N栏目ID可以改成外站的地址如:[option2=http://wap.baidu.com/baidu?word=]百度[/option2])<br />
下拉选择结束：[/sel2]<br />
提交按钮：[button2]搜索[/button2]<br />
结束：[/form2]<br />
此代码任何地方不能有换行符或回车！例子可参考上面的混合例子。具体参数可参考以下1.0搜索框的值。 <br />

<hr />
---显示WAP1.0搜索框---<br />
输入框：[input=长度大小]关键字[/input]<br />
例：[input=15]输入关键字[/input]<br />

搜索按钮：[ancho=功能模块标识_N栏目ID]说明按钮[/ancho] <br />
N为0时所有内容，支持上级栏目ID，最多支持二级 <br />
当前功能模块搜索按钮如下：<br />
[ancho=article_N]文章搜索[/ancho]<br />
[ancho=bbs_N]论坛搜索[/ancho]<br />
[ancho=picture_N]图片搜索[/ancho]<br />
[ancho=ring_N]铃声搜索[/ancho]<br />
[ancho=video_N]视频搜索[/ancho]<br />
[ancho=download_N]下载搜索[/ancho]<br />
[ancho=album_N]相册搜索[/ancho]<br />
[ancho=link_N]友链搜索[/ancho]<br />
[ancho=yuehui_N]约会搜索[/ancho]<br />
[ancho=shop_N]商店搜索[/ancho]<br />
[ancho=airplane_N]航班搜索[/ancho]<br />
[ancho=hotel_N]酒店搜索[/ancho]<br />
[ancho=guessbook_N]留言搜索[/ancho]<br />
[ancho=paimai_N]拍卖搜索[/ancho]<br />
[ancho=wml_N]自写代码搜索[/ancho]<br />
[ancho=search_N]用户搜索[/ancho]<br />
[ancho=card_N]名片搜索[/ancho]<br />
[ancho=class_N]栏目搜索[/ancho]<br />
[ancho=gongqiu_N]供求搜索[/ancho]<br />
高级使用：取得输入框值[urlancho=地址_参数]说明[/urlancho]<br />
例1.百度搜索原地址:http://wap.baidu.com/baidu?word=XXXXX<br />
[input=15]美女[/input][urlancho=http://wap.baidu.com/baidu_word]百度搜索[/urlancho] <br />
例2.儒豹搜索原地址:http://wap.roboo.com/auto.jsp?q=XXX&back=123.com&f=123 <br />
[input=15]美女[/input][urlancho=http://wap.roboo.com/auto.jsp?back=123.com&f=123_q]儒豹搜索[/urlancho] <br />
提示：一个页面建议只使用一个输入框！<br />
<hr />
高级使用WML功能模块写搜索代码例： 
&lt;form name=&quot;g&quot; 
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
											value=&quot;搜论坛&quot;/&gt;&lt;/form&gt;

<br />
<hr />
---显示栏目特别按钮---<br />
功能模块标识请看上面的“显示搜索框”<br />
搜索:[search=功能模块标识_栏目ID]说明[/search]<br />
关键字:[key=功能模块标识_栏目ID]关键字[/key]<br />
最新:[new=功能模块标识_栏目ID]说明[/new]<br />
热点:[hot=功能模块标识_栏目ID]说明[/hot]<br />
精华:[good=功能模块标识_栏目ID]说明[/good]<br />
N天前:[days=功能模块标识_栏目ID_天数]说明[/days]<br />
例如你的一个论坛栏目ID为988，以上应用为： [search=bbs_988]XX栏目搜索[/search]<br />
[new=bbs_988]XX栏目最新[/new]<br />
[hot=bbs_988]XX栏目人气[/hot]<br />
[good=bbs_988]XX栏目精华[/good]<br />
[days=bbs_988_1]XX栏目今天发表[/days] <br />
(其中栏目ID可以为上一级的，最顶级的为0，部分功能模块无此应用) <br />

<hr />
---显示特殊内容---<br />
登录可见内容:[login]输入内容[/login]<br />
手机可见内容:[mobi]输入内容[/mobi]<br />
金钱可见内容:[coin=金钱数]输入内容[/coin]<br />
等级可见内容:[grade=等级]输入内容[/grade] <br />
身份级别可见内容:[vip=身份级别ID多个用|区分]输入内容[/vip]<br />
<hr />
---统计记录数量---<br />
语法：[功能模块标识=X_Y]，只能设置X和Y参数，Y要大于99！<br />
X为栏目ID，为0时此模块所有栏目。<br />
Y为100为总量，101为今天量，102为昨天量，103为本周量,104为本月量,105为本季度量,106为本年量<br />
文章模块：[article=X_Y]<br />
论坛模块：[bbs=X_Y]<br />
论坛回贴：[bbsre=X_Y]<br />
下载模块：[download=X_Y]<br />
图片模块：[picture=X_Y]<br />
视频模块：[video=X_Y]<br />
铃声模块：[ring=X_Y]<br />
商店模块：[shop=X_Y]<br />
约会模块：[yuehui=X_Y]<br />
留言板模块：[guessbook=X_Y]<br />
友链模块：[link=X_Y]<br />
供求模块：[gongqiu=X_Y]<br />
相册模块：[album=X_Y]<br />
日志模块：[rizhi=X_Y]<br />
例统计下载功能模块栏目的上传量：[dowload=0_101]<br />
其它统计：<br />
我的好友总数：[friend]0[/friend]<br />
我的黑名单数：[friend]1[/friend]<br />
我的追求总数：[friend]2[/friend]<br />
追求我的人数：[friend]4[/friend]<br />
我推荐的人数：[friend]5[/friend]<br />
提示：实时统计耗资源，请尽量少用！ <br />

<hr />
---访问量统计API---<br />
某个栏目在线人数：[online=栏目ID]<br />
(自动带链接，栏目ID=0时显示所有，全局插入广告可用<br />
[online=[classid]])<br />
第几位访问者:[vtotal]<br />
昨日访问量:[vyestaday]<br />
今日访问量:[vtoday]<br />
本周访问量:[vweek]<br />
本月访问量:[vmonth]<br />
总访问量:[vtotal]<br />
当前在线人数:[online]<br />
所有网站流量:[valltotal] <br />

<hr />
-----娱乐游戏UBB----<br />
游戏:[games=N_M_X_Y_Z]<br />
N为游戏大厅栏目ID <br />
M为返回多少行 <br />
X为显示类别:1为最新挑战内容；2为今日投注总次数；3为今日投注总金额 4.为赢家排行；5.赚币排行<br /> 
Y，为游戏标识，疯狂石头:stone；赌骰子:touzi；苹果机:apple；乾坤宝:quankun；疯狂吹牛:chuiniu 掠夺军团:war；幸运28:lucky28；疯狂射门:shoot；赛马场:horse 
<br />
Z,暂时固定为0<br />
<hr />

-----会员状态UBB----<br />
会员状态:[users=N_M_X_Y_Z]<br />
N为0时随机,1最新，针对X=0,1时有效<br />
M为返回条数，最多20条；<br />
X为0时，所有会员活动记录；为7时在线会员活动记录；为1时注册会员在线活动记录；为2时最新注册会员；为3时最新注册男会员，为4时最新注册女会员； 为5时财富榜排行；为6时经验排行榜。(注意，当X>=3时，统计可能会慢，尽量少用)<br />
Y为0时换行，为1时不换行。<br />

<hr />
-----高级API----<br />
取流水号:[fid]<br />
取网站ID:[siteid]<br />
取当前页栏目ID:[classid]<br />
取当前页栏目名称:[classname]<br />
取当前页标题名称:[title]<br/>
取当前页标题ID:[id]<br/>
取当前页域名地址:[domain]<br/>
取当前页父栏目ID:[parentid]<br />
(以下用户登录后有效)<br />
取用户ID:[userid]<br />
取用昵称:[nickname]<br />
取用户当前币:[money]<br />
取用户当前RMB:[rmb]<br/>
取用户当前身份:[myvip] <br/>
取用户当前任务:[myaction]<br/>
手机型号:[ua]<br />
手机品牌+型号:[ua1]<br />
(终端不支持Cookies时有效)<br />
例:URL.aspx?siteid=[siteid]
&classid=[classid]
<br />
以上为HTTP接口，二次开发通过以上接口可以开发出功能强大模块。<br />
<br /><hr /> <font color="#FF0000">---------<b>当前访问会员信息</b>--------<br/></font>
                                    格式: [ui]x[/ui] X为数字，表示如下:<br />
                                    0:会员ID；1:昵称；2:性别；3:年龄；4:体重；5:星座；6:爱好；7:QQ号；8:婚否；9:职业；
                                    10:城市；11:手机号码；12:邮箱；13:网站货币；14:勋章；15:注册时间；16:登录IP地址；
                                    17:最后登录时间；18:头像；19:签名；20:经验；21:RMB帐户；22:虚拟银行存款；
                                    23:等级；24:头衔；25:是否在线；26:论坛发贴数；27:论坛回贴数；28:推荐人数； 29:在线时间图标;30:个人空间访问人数
                                    
<hr />
如开通伪静态地址，如下：<br />
通用栏目地址：[url=/wapindex-网站ID-栏目ID.html]栏目名称[/url]<br />
具体栏目地址：[url=/模块名称list-栏目ID-页码.html]栏目名称[/url]<br />
查看内容地址：[url=/模块名称-标题ID.html]标题[/url]<br />
.html后面可带参数。<br />
以下以论坛模块为例：<br />
http://kelink.com/wapindex-2108-204570.html<br />
http://kelink.com/bbslist-204571-1.html<br />
http://www.kelink.com/bbs-184158.html<br />
http://kelink.com/waplogin-2108-0.html?backurl=myfile.aspx%3fsiteid%3d2108<br />
</body>
</html> 
   
