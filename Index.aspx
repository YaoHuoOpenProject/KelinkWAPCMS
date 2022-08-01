<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Index.aspx.cs" Inherits="KeLin.WebSite.Index" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE><%=base.strTitle%></TITLE>
<META content="text/html; charset=GB2312" http-equiv=Content-Type>
<meta name="author" content="kelink,kelink.com,chinastrong" />
<meta name="keywords" content="3g,3g手机,3g建站,3g门户,wap,wap建站,手机上网,手机建站,手机看电影,手机游戏,手机看小说,手机流媒体,手机门户,3G门户" />
<meta name="description" content="体验神奇的WAP建站经历，走进一个全新的wap网站时代！无需专业知识，无需特殊软件，只要您会打字，十分钟的简单制作，您就可以拥有自己的精彩wap站点，让亿万手机用户分享您的设计成果与乐趣；同时本站有成熟完善的商业合作模式，致力于与各wap站长一起创造互惠互利的双赢局面,给大家提供一个3G时代创造财富的机会。还犹豫什么呢？赶快申请吧。" />
<LINK rel=stylesheet type=text/css href="NetCSS/WEBCSS.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18975"></HEAD>
<script type="text/javascript" charset="utf-8">
    function openWin() {
        var _w = 142, _h = 66;
        var param = {
            url: location.href,
            type: '4',
            count: '1', /**是否显示转发数，1显示(可选)*/
            appkey: '', /**您申请的应用appkey,显示分享来源(可选)*/
            title: '免费建3G手机网站啦！体验神奇的WAP建站经历，走进一个全新的wap网站3G时代！', /**转发的文字内容(可选，默认为所在页面的title)*/
            pic: '', /**转发图片的路径(可选)*/
            ralateUid: '', /**关联用户的UID，转发微博会@该用户(可选)*/
            rnd: new Date().valueOf()
        }
        var temp = [];
        for (var p in param) {
            temp.push(p + '=' + encodeURIComponent(param[p] || ''))
        }

        window.open('http://service.t.sina.com.cn/share/share.php?' + temp.join('&'), "getmail", "height=350, width=600, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
    }
    function openWinQQ() {

        window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=' + encodeURIComponent(location.href));

    }
</script>
<BODY>

<DIV class=hd> 
<DIV class=logo>
<DIV class=menut style="width: 696px; height: 59px">
<P style="text-align: center"><img src="<%=base.SiteBanner%>" width="500" height="80"> </P></DIV>
<IMG src="<%=base.SiteImage %>" width="185" height="85">

</DIV>
<div class="menu">
<span><a href="javascript:openWinQQ();">腾讯分享</a></span>
<span><a href="javascript:openWin();">新浪分享&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
<span><a>&nbsp;&nbsp;</a></span>

<em class="s">首页</em>
<A href="WebNews.aspx">最新公告</A>
<a href="WebReg.aspx">注册站长</a>
<A href="WebRank.aspx"">网站排行</A>
<A href="WebHelp.aspx">建站帮助</A>
<A href="WebCallMe.aspx">联系我们</A>
<A href="WebAd.aspx">广告营销</A>
<A href="#">本站论坛</A> 
</DIV>
</DIV>



<P class=b20></P><!-- ct start -->
<DIV class=ct>
<DIV class=ctL >
<DIV class=ab>
	
<P>
体验神奇的WAP建站经历，走进一个全新的wap网站时代！无需专业知识，无需特殊软件，只要您会打字，十分钟的简单制作，您就可以拥有自己的精彩wap站点，让亿万手机用户分享您的设计成果与乐趣；同时本站有成熟完善的商业合作模式，致力于与各wap站长一起创造互惠互利的双赢局面,给大家提供一个3G时代创造财富的机会。还犹豫什么呢？赶快申请吧。

</P></DIV>


<DIV class=docmentBox2>
	
<table border="0" width="99%" cellspacing="0" cellpadding="0" height="556">
	<tr>
		<td background="NetImages/iphone.gif" valign="top" align="center">
		<br /><a href="/UploadFiles/QR/1000.png" target="_blank" ><img src="/UploadFiles/QR/1000.png" width="40" height="40" alt="手机二维码软件拍照即可自动打开本网站" border="0" align="bottom"/></a>
		&nbsp;&nbsp;
		
		
		<font color="#707070" size="1">手机访问:<a href="http://<%=base.Domain %>" target="_blank"><%=base.Domain %></a></font>
		<br />
<div style="position:inherit">
<iframe src="http://<%=Request.ServerVariables["HTTP_HOST"] %>/wapindex.aspx?siteid=<%=base.DefaultSiteid %>" width="245" height="380" scrolling="yes"></iframe>
</div>

			
			　</td>
		<td width="321">
<UL class=list>
  <LI>支持WAP1/WAP2/HTML5/平板/电脑版排版。</A></LI>
  <LI>手机和电脑双后台同步管理！</A></LI>
  <LI>三层架构，低层封装，展示层开源。</A></LI>
  <LI>功能强大、界面简洁、操作简单。</LI>
  <LI>模块独立、插件管理、资源共享。</LI>
  <LI>所见即所得，想哪显就往哪里插。</LI>
  <LI>无限级栏目，树型管理一目了然。</LI>
  <LI>强大的UBB调用功能，无所不能。</LI>  
  <LI>自写WAP/HTML5代码功能。在线生成二维码图</LI>  
  <LI>3D图型报表，手机地图定位等，在线播放影音</LI>
  <LI>强大的域名解析系统，自动解析所有二级域名</LI>
  <LI>建无数个网站动态分配域名、空间、到期时间等</LI>
  <LI>多达五十多个业务功能插件，16套高级网站模板</LI>
  <LI>强大的内容审核功能，先审后显或先显后审！</LI>
  <LI>具有多角色访问，自定义VIP身份等级会员等。</LI>
  <LI>双币系统，WAP在线支付，手机网银接口。</LI>
  <LI>自定CSS样式，所见所得CSS样式编辑。</LI>
  <LI>机型适配、界面、多语言选择。</LI>  
  
  <LI>水印，图片DIY，防盗链等。</LI>  
  <LI><font color=red>微信接入，生成苹果APP+安卓APP+二维码</font></LI>
  <LI>WAP业界最受欢迎的程序！</LI>
  <LI>老牌子，技术过硬，服务过硬，值得信赖！</LI>
  <LI>一次购买，永久使用，永久升级！</LI>
 
  </UL>

  		　</td>
	</tr>
</table>

</DIV>
</DIV>
<DIV class=ctR>
<DIV class=rbox>
<iframe src="admin/login.aspx" width="222" height="168" scrolling="no" frameborder=no  ></iframe>
</DIV>
<DIV class="rbox">
<H2>最新公告</H2>
<UL class=list>
<%
    for (int i = 0; (listVo != null && i < listVo.Count && i<10); i++)
    {
        Response.Write("<LI><A href=\"WebNews.aspx?msg_view=" + listVo[i].id + "\">" + listVo[i].msg_title + "</A></LI>");

    }
    if (listVo == null)
    {
        Response.Write("<LI><A href=\"WebNews.aspx\">暂无最新公告</A></LI>");

    }  
    
 %>
  
</UL>
<div class="go"><a href="WebNews.aspx">更多&gt;&gt;</a></div>
</DIV>
<DIV class="rbox bn">
<H2>联系我们</H2>
<P><%=base.Tel %></P>
<P><%=base.Email %></P>

</DIV></DIV></DIV><!-- ct end -->
<P class=b20></P><!-- ft start -->
<DIV class=ft>
<%=WapTool.ToWML(base.CopyRight, this.wmlVo)%>
</DIV>
</BODY>
</HTML>
