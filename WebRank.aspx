<%@ Page Language="C#" AutoEventWireup="true" Codebehind="WebRank.aspx.cs" Inherits="KeLin.WebSite.WebRank" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>��վ����</TITLE>
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
<span><a href="javascript:openWinQQ();">��Ѷ����</a></span>
<span><a href="javascript:openWin();">���˷���&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></span>
<span><a>&nbsp;&nbsp;</a></span>
<a href="index.aspx" class="s">��ҳ</a>
<A href="WebNews.aspx">���¹���</A>
<a href="WebReg.aspx">ע��վ��</a>
<em>��վ����</em>
<A href="WebHelp.aspx"">��վ����</A>
<A href="WebCallMe.aspx">��ϵ����</A>
<A href="WebAd.aspx">���Ӫ��</A>
<A href="#">��վ��̳</A> 
</DIV>
</DIV>



<P class=b20></P><!-- ct start -->
<DIV class=ct>
<DIV class=ctR1>
<DIV class="rbox bn">
<H2>��վ�����а�</H2>
<UL class=list>
<%
    for (int i = 0; (listVo_all != null && i < listVo_all.Count && i < 30); i++)
    {
        Response.Write("<LI><A href=\"" + listVo_all[i].vurl + "\" target=_blank>" + listVo_all[i].vtitle + "</A></LI>");

    }

    
 %>
  
</UL>
<div class="go"><a href="javascript:alert('���¼WEB��̨�鿴!');">����&gt;&gt;</a></div>
</DIV>

</DIV>
<DIV class=ctR1>
<DIV class="rbox bn">
<H2>��վ�����а�</H2>
<UL class=list>
<%
    for (int i = 0; (listVo_month != null && i < listVo_month.Count && i < 30); i++)
    {
        Response.Write("<LI><A href=\"" + listVo_month[i].vurl + "\" target=_blank>" + listVo_month[i].vtitle + "</A></LI>");

    }

    
 %>
  
</UL>
<div class="go"><a href="javascript:alert('���¼WEB��̨�鿴!');">����&gt;&gt;</a></div>
</DIV>

</DIV>
<DIV class=ctR1>
<DIV class="rbox bn">
<H2>��վ�����а�</H2>
<UL class=list>
<%
    for (int i = 0; (listVo_week != null && i < listVo_week.Count && i < 30); i++)
    {
        Response.Write("<LI><A href=\"" + listVo_week[i].vurl + "\" target=_blank>" + listVo_week[i].vtitle + "</A></LI>");

    }

    
 %>
  
</UL>
<div class="go"><a href="javascript:alert('���¼WEB��̨�鿴!');">����&gt;&gt;</a></div>
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
            count: '1', /**�Ƿ���ʾת������1��ʾ(��ѡ)*/
            appkey: '', /**�������Ӧ��appkey,��ʾ������Դ(��ѡ)*/
            title: '��ѽ�3G�ֻ���վ�������������WAP��վ�������߽�һ��ȫ�µ�wap��վ3Gʱ����', /**ת������������(��ѡ��Ĭ��Ϊ����ҳ���title)*/
            pic: '', /**ת��ͼƬ��·��(��ѡ)*/
            ralateUid: '', /**�����û���UID��ת��΢����@���û�(��ѡ)*/
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
