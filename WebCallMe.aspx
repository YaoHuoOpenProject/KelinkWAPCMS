<%@ Page Language="C#" AutoEventWireup="true" Codebehind="WebCallMe.aspx.cs" Inherits="KeLin.WebSite.WebCallMe" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>��ϵ����</TITLE>
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
<A href="WebRank.aspx"">��վ����</A>
<A href="WebHelp.aspx">��վ����</A>
<em>��ϵ����</em>
<A href="WebAd.aspx">���Ӫ��</A>
<A href="#">��վ��̳</A> 
</DIV>
</DIV>



<P class=b20></P><!-- ct start -->
<DIV class=ct>
<DIV class=ctL >

<DIV class=docmentBox2>


  
<p align=center><p>
<p>&nbsp;</p>
<b>������Ʒ��</b><br/><br/>
 
<p>�ͷ��绰��13798981178&nbsp;/ 13048036868</p> 
<p>��ҵ�ѣѣ�800007757</p>
<p>�ͷ��ѣѣ�85403498 �� 407589963 �� 504730723</p> 
<p>�ͷ�MSM��chinastrong@163.com</p>
<p>��ַ�� �����з�خ����ʯ����·3��¥&nbsp;</p> 
<p>�ʱࣺ 511430</p> 


</DIV>
</DIV>
<DIV class=ctR>
<DIV class="rbox">
<H2>���¹���</H2>
<UL class=list>
<%
    for (int i = 0; (listVo != null && i < listVo.Count && i<10); i++)
    {
        Response.Write("<LI><A href=\"WebNews.aspx?msg_view="+listVo[i].id+"\">"+listVo[i].msg_title+"</A></LI>");

    }
    if (listVo == null)
    {
        Response.Write("<LI><A href=\"WebNews.aspx\">�������¹���</A></LI>");

    }  
    
 %>
  
</UL>
<div class="go"><a href="WebNews.aspx">����&gt;&gt;</a></div>
</DIV>
<DIV class="rbox bn">
<H2>��ϵ����</H2>
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
