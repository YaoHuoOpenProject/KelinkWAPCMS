<%@ Page Language="C#" AutoEventWireup="true" Codebehind="WebRank.aspx.cs" Inherits="KeLin.WebSite.WebRank" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>网站排行</TITLE>
<META content="text/html; charset=GB2312" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="NetCSS/WEBCSS.css">
<META name=GENERATOR content="MSHTML 8.00.6001.18975"></HEAD>
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
<a href="index.aspx" class="s">首页</a>
<A href="WebNews.aspx">最新公告</A>
<a href="WebReg.aspx">注册站长</a>
<em>网站排行</em>
<A href="WebHelp.aspx"">建站帮助</A>
<A href="WebCallMe.aspx">联系我们</A>
<A href="WebAd.aspx">广告营销</A>
<A href="#">本站论坛</A> 
</DIV>
</DIV>



<P class=b20></P><!-- ct start -->
<DIV class=ct>
<DIV class=ctR1>
<DIV class="rbox bn">
<H2>网站总排行榜</H2>
<UL class=list>
<%
    for (int i = 0; (listVo_all != null && i < listVo_all.Count && i < 30); i++)
    {
        Response.Write("<LI><A href=\"" + listVo_all[i].vurl + "\" target=_blank>" + listVo_all[i].vtitle + "</A></LI>");

    }

    
 %>
  
</UL>
<div class="go"><a href="javascript:alert('请登录WEB后台查看!');">更多&gt;&gt;</a></div>
</DIV>

</DIV>
<DIV class=ctR1>
<DIV class="rbox bn">
<H2>网站月排行榜</H2>
<UL class=list>
<%
    for (int i = 0; (listVo_month != null && i < listVo_month.Count && i < 30); i++)
    {
        Response.Write("<LI><A href=\"" + listVo_month[i].vurl + "\" target=_blank>" + listVo_month[i].vtitle + "</A></LI>");

    }

    
 %>
  
</UL>
<div class="go"><a href="javascript:alert('请登录WEB后台查看!');">更多&gt;&gt;</a></div>
</DIV>

</DIV>
<DIV class=ctR1>
<DIV class="rbox bn">
<H2>网站周排行榜</H2>
<UL class=list>
<%
    for (int i = 0; (listVo_week != null && i < listVo_week.Count && i < 30); i++)
    {
        Response.Write("<LI><A href=\"" + listVo_week[i].vurl + "\" target=_blank>" + listVo_week[i].vtitle + "</A></LI>");

    }

    
 %>
  
</UL>
<div class="go"><a href="javascript:alert('请登录WEB后台查看!');">更多&gt;&gt;</a></div>
</DIV>

</DIV>

</DIV><!-- ct end -->
<P class=b20></P><!-- ft start -->
<DIV class=ft>
<%=WapTool.ToWML(base.CopyRight, this.wmlVo)%>
</DIV>
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
</BODY>
</HTML>
