<%@ Page Language="C#" AutoEventWireup="true" Codebehind="WebReg.aspx.cs" Inherits="KeLin.WebSite.WebReg" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>ע��վ��</TITLE>
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

<A href="Index.aspx" class="s">��ҳ</A>

<a href="WebNews.aspx">���¹���</a>
<em>ע��վ��</em>
<A href="WebRank.aspx"">��վ����</A>
<A href="WebHelp.aspx">��վ����</A>
<A href="WebCallMe.aspx">��ϵ����</A>
<A href="WebAd.aspx">���Ӫ��</A>
<A href="#">��վ��̳</A> 
</DIV>
</DIV>



<P class=b20></P><!-- ct start -->
<DIV class=ct>
<DIV class=ctL >



<DIV class=docmentBox2>

<IFRAME name=preview2 frameBorder=no  height=600  src="admin/reg.aspx" width=100%></IFRAME>



</DIV>
</DIV>
<DIV class=ctR>
<DIV class="rbox">
<H2>����ע��</H2>
<UL class=list>
<%
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        Response.Write("<LI><A href=\""+ listVo[i].vurl + "\" target=_blank>" + listVo[i].vtitle + "</A>(" + string.Format("{0:MM-dd HH:mm}", listVo[i].vregtime) + ")</LI>");

    }

    
    
 %>
  
</UL>

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
