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
<title>柯林秘技-网站链接资源</title>
</head>
<body>
<a href="ubb2.aspx">UBB大全</a>|网站资源链接|<a href="ubb4.aspx">用户手册</a>|<a href="ubb5.aspx">技术员手册</a>|<a href="http://bbs.kelink.com">WAP建站知识库</a>
<hr />
搜索按 Ctrl+F
<hr />
下面的url=/可以改成url=/你的域名开头/
<hr />
通用返回原地址参数：<br />backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]
<hr />
通用栏目地址：<br />[url=/wapindex.aspx?siteid=[siteid]&classid=栏目ID]栏目名称[/url]
<br />
具体栏目地址：<br />[url=/目录名如bbs/list.aspx?classid=栏目ID]栏目名称[/url](建议用这个方便搜索引擎收录)
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
<hr />
网站首页：<br />[url=/wapindex.aspx?siteid=[siteid]]首页[/url]
<hr />
登录界面：<br />[url=/waplogin.aspx?siteid=[siteid]&classid=[classid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]登录[/url]
<hr />
会员WAP注册：<br />[url=/wapreg.aspx?siteid=[siteid]&classid=[classid]]注册[/url]
<hr />
退出界面：<br />[url=/waplogout.aspx?siteid=[siteid]]退出[/url]
<hr />
换肤：<br />[url=/wapstyle/skin.aspx?siteid=[siteid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]换肤[/url]
<hr />
语言：<br />[url=/wapstyle/lang.aspx?siteid=[siteid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]语言[/url]
<hr />
机型：<br />[url=/wapstyle/mobileua.aspx?siteid=[siteid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]机型[/url]
<hr />
WAP1.0链接:<br />[url=/wapindex.aspx?siteid=[siteid]&classid=[classid]&amp;sid=-1-[cs]-[lang]-[myua]-[width]]简版[/url] 
<hr />
WAP2.0链接:<br />[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[classid]&sid=-2-[cs]-[lang]-[myua]-[width]]彩版[/url] 
<hr />
电脑链接:<br />[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[classid]&sid=-3-[cs]-[lang]-[myua]-[width]]电脑[/url]
<hr />
平板链接:<br />[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[classid]&sid=-4-[cs]-[lang]-[myua]-[width]]平板[/url] 
<hr />
简体:<br />[url=/wapindex.aspx?siteid=[siteid]&sid=-[ver]-[cs]-0-[myua]-[width]]简版[/url] 
<hr />
繁体:<br />[url=/wapindex.aspx?siteid=[siteid]&sid=-[ver]-[cs]-1-[myua]-[width]]繁体[/url] 
<hr />
英文:<br />[url=/wapindex.aspx?siteid=[siteid]&sid=-[ver]-[cs]-2-[myua]-[width]]英文[/url] 
<hr />
我的地盘:<br />[url=/myfile.aspx?siteid=[siteid]]我的地盘[/url]
<hr />
站内短信:<br />[url=/bbs/messagelist.aspx?siteid=[siteid]&classid=[classid]&types=0&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]信息[/url]

<hr />
我的好友:<br />[url=/bbs/FriendList.aspx?siteid=[siteid]&classid=[classid]&friendtype=0&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]好友[/url]
<hr />
购买勋章:<br />[url=/bbs/toGroupInfo.aspx?siteid=[siteid]&classid=[classid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]购买勋章[/url]
<hr />
我的勋章:<br />[url=/xinzhang/book_view_my.aspx?siteid=[siteid]&classid=[classid]]我的勋章[/url]
<hr />
在线充值:<br />[url=/chinabank_wap/selbank_wap.aspx?siteid=[siteid]]在线充值[/url]

<hr />
购买虚拟币:<br />[url=/chinabank_wap/RMBtoMoney.aspx?siteid=[siteid]]购买虚拟币[/url]
<hr />
我的空间:<br />[url=/bbs/userinfo.aspx?siteid=[siteid]&touserid=[userid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]我的空间[/url]
<hr />
我的收藏:<br />[url=/bbs/myfav.aspx?siteid=[siteid]&classid=[classid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]我的收藏[/url]

<hr />
我的相册:<br />[url=/album/myalbum.aspx?siteid=[siteid]&touserid=[userid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]我的相册[/url]
<hr />
我的微博:<br />[url=/rizhi/myrizhi.aspx?siteid=[siteid]&touserid=[userid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]我的微博[/url]
<hr />
推荐奖励:<br />推荐奖励址：http://你的域名/t.aspx?id=[siteid]_[userid]
<hr />
我的贴子:<br />[url=/bbs/book_list.aspx?action=search&siteid=[siteid]&classid=0&key=[userid]&type=pub]我的贴子[/url] 
<hr />
我的回贴:<br />[url=/bbs/book_re_my.aspx?action=class&siteid=[siteid]&classid=0&touserid=[userid]&]我的回贴[/url]
<hr />
站长管理WAP后台：<br />[url=/admin/basesitemodifywml.aspx?siteid=[siteid]]站长管理WAP后台[/url]
<hr />
超级管理员WAP后台：<br />[url=/admin/basesitemodifywml00.aspx?siteid=[siteid]]超级管理员WAP后台[/url]
 <hr />
站长/超级管理员WEB后台：<br />[url=/admin/login.aspx]WEB管理后台[/url]
  <hr />
下载模块资源链接，其它模块举一反三:<br />
[url=/download/book_list.aspx?action=hot&siteid=网站ID&classid=(具体栏目ID或上级栏目ID或0表示所有)]按点量[/url]<br />
[url=/download/book_list.aspx?action=new&siteid=网站ID&classid=(具体栏目ID或上级栏目ID或0表示所有)]按最新[/url]<br />
[url=/download/book_list.aspx?action=top&siteid=网站ID&classid=(具体栏目ID或上级栏目ID或0表示所有)]按置顶[/url]<br />
[url=/download/book_list.aspx?action=good&siteid=网站ID&classid=(具体栏目ID或上级栏目ID或0表示所有)]按加精[/url]<br />
[url=/download/book_list.aspx?action=recommend&siteid=网站ID&classid=(具体栏目ID或上级栏目ID或0表示所有)]按推荐[/url]<br />
    <hr />
其它：<br />
用电脑IE或Opera8.0(<a href="http://www.kelink.com/download/opera8.rar">点击下载</a>)或手机进行访问查看地址栏，复制地址栏中的地址就是当前页面的地址了。将地址中参数改成动态的即可。
<br />取流水号:[fid]
<br />取网站ID:[siteid]
<br />取当前页栏目ID:[classid]
<br />取当前页栏目名称:[classname]
<br />取当前页父栏目ID:[parentid]
<br />取用户ID:[userid]
<br />取用户名:[username]
<br />取用昵称:[nickname]
<br />其它详细看UBB大全。请举一反三！
<hr />商店相关UBB：<br />
订单状态统计UBB:[shopstate]?[/shopstate]，?为状态值，如待收货([shopstate]12[/shopstate])具体?参数值查看我的订单<br />
                                    购物车数量：[shopcard]<br />
                                    购物车链接地址：[url=/shop/book_view_add.aspx?classid=0&siteid=[siteid]]购物车([shopcard])[/url]<br />
                                    我的订单链接地址：[url=/shop/orderlistmy.aspx?&classid=0&siteid=[siteid]]我的订单[/url] (classid=0可以改成具体的栏目值)<br /><hr />
<br />
以下是客户问得比较多的UBB效果如下：
<br />
1问：如何去掉网站默认自带的：登录|注册|皮肤|语言|机型？
<br />答：先在页面综合排版中，隐慝注册，这样上面的就没有了，用到UBB：登录显示：[logins]登录后内容[/logins] 游客显示：[nologins]未登录内容[/nologins],写成动态显示效果是：
[nologins][div=bt2][url=/waplogin.aspx?siteid=[siteid]&classid=[classid]&backurl=wapindex.aspx%3fsiteid%3d[siteid]%26classid%3d[classid]]登录[/url][url=/wapreg.aspx?siteid=[siteid]&classid=[classid]]注册[/url][/div][/nologins][logins][div=bt1][url=/myfile.aspx?siteid=[siteid]][hello][nickname][/url][/div][/logins] 
<br />
2问：切换1.0/2.0/电脑版怎么写？
<br />答:[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[classid]&sid=-1-[cs]-[lang]-[myua]-[width]]简版[/url]|[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[classid]&sid=-2-[cs]-[lang]-[myua]-[width]]彩版[/url]|[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[classid]&sid=-3-[cs]-[lang]-[myua]-[width]]电脑[/url] 
<hr />
</body>
</html> 
   
