<%@ Page Language="C#" AutoEventWireup="true" Codebehind="WebNews.aspx.cs" Inherits="KeLin.WebSite.WebNews" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>���¹���</TITLE>
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
<em>���¹���</em>
<a href="WebReg.aspx">ע��վ��</a>
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
<DIV class=ab>
	
<P>
���������WAP��վ�������߽�һ��ȫ�µ�wap��վʱ��������רҵ֪ʶ���������������ֻҪ������֣�ʮ���ӵļ����������Ϳ���ӵ���Լ��ľ���wapվ�㣬�������ֻ��û�����������Ƴɹ�����Ȥ��ͬʱ��վ�г������Ƶ���ҵ����ģʽ�����������wapվ��һ���컥�ݻ�����˫Ӯ����,������ṩһ��3Gʱ������Ƹ��Ļ��ᡣ����ԥʲô�أ��Ͽ�����ɡ�

</P></DIV>


<DIV class=docmentBox2>
<!--��ʾ���ݿ�ʼ-->
<%
    if (bookVo != null)
    {
        Response.Write("<P><strong>" + bookVo.msg_title + "</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��<a href=\"javascript:window.history.back();\">����</a>��</p>");

        Response.Write("<P>" + bookVo.msg_date + "</p>");

        Response.Write("<P>" + WapTool.ToWML(bookVo.msg_content,this.wmlVo) + "</p>");

    }
    else
    {
    
%>

<!--��ʾ��ҳ��ʼ-->
<UL class=list>
<%
    int all = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        Response.Write("<LI><A href=\"WebNews.aspx?msg_view=" + listVo[i].id + "\">" + listVo[i].msg_title + "</A>(" + listVo[i].msg_date + ")</LI>");

    }


    if (listVo == null)
    {
        Response.Write("<LI><A href=\"WebNews.aspx\">���޼�¼</A></LI>");

    }
    else
    {
        all = listVo.Count;
    }

    for (int k = 0; k < (this.pageSize - all); k++)
    {
        Response.Write("<LI>&nbsp;</LI>");
    }

}
 %>
  
</UL>
<p style="text-align: center">
<% Response.Write(linkURL);%>
</p>
<!--��ʾ��ҳ����-->


</DIV>
</DIV>
<DIV class=ctR>
<DIV class=rbox>
<iframe src="admin/login.aspx" width="222" height="168" scrolling="no" frameBorder=no  ></iframe>
</DIV>
<DIV class="rbox">
<H2>�������</H2>
<UL class=list>
<%
    for (int i = 0; (slistVo != null && i < slistVo.Count); i++)
    {
        Response.Write("<LI><A href=\"WebNews.aspx?msg_type="+slistVo[i].typeid+"\">" + slistVo[i].typename + "</A></LI>");

    }
    if (slistVo == null)
    {
        Response.Write("<LI><A href=\"WebNews.aspx\">���޷���</A></LI>");

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
