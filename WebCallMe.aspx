<%@ Page Language="C#" AutoEventWireup="true" Codebehind="WebCallMe.aspx.cs" Inherits="KeLin.WebSite.WebCallMe" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>联系我们</TITLE>
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
<A href="WebRank.aspx"">网站排行</A>
<A href="WebHelp.aspx">建站帮助</A>
<em>联系我们</em>
<A href="WebAd.aspx">广告营销</A>
<A href="#">本站论坛</A> 
</DIV>
</DIV>



<P class=b20></P><!-- ct start -->
<DIV class=ct>
<DIV class=ctL >

<DIV class=docmentBox2>


  
<p align=center><p>
<p>&nbsp;</p>
<b>软件类产品：</b><br/><br/>
 
<p>客服电话：13798981178&nbsp;/ 13048036868</p> 
<p>企业ＱＱ：800007757</p>
<p>客服ＱＱ：85403498 或 407589963 或 504730723</p> 
<p>客服MSM：chinastrong@163.com</p>
<p>地址： 广州市番禺区大石宾至路3号楼&nbsp;</p> 
<p>邮编： 511430</p> 


</DIV>
</DIV>
<DIV class=ctR>
<DIV class="rbox">
<H2>最新公告</H2>
<UL class=list>
<%
    for (int i = 0; (listVo != null && i < listVo.Count && i<10); i++)
    {
        Response.Write("<LI><A href=\"WebNews.aspx?msg_view="+listVo[i].id+"\">"+listVo[i].msg_title+"</A></LI>");

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
