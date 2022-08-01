<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"--><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="Mon, 1 Jan 1990 00:00:00 GMT"/>
</head>
<card id="main" title="疯狂吹牛">
<p align="left">
<img src='logo.gif' alt='疯狂吹牛'/><br/>
【疯狂吹牛】-<a href="<%=http_start%>games/chuiniu/index0.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">规则</a><br/>
<%if userid=0 then%>
游客请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录/注册</a><br/>
<%
else
 set rs=Server.CreateObject("ADODB.Recordset")
  ssql="select money from [user] where userid="& Clng(userid) &" and siteid="&CLng(siteid)
  rs.open ssql,conn
  sss="您随身的"&getMoneyName(siteid)&"有:"&rs("money")&"<br/>"
%>
<%end if%>
<a href="<%=http_start%>games/chuiniu/add.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">我要吹牛</a>><a href="<%=http_start%>games/chuiniu/my.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">历史</a>|<a href="<%=http_start%>games/chuiniu/ls.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">记录</a><br/><a href="<%=http_start%>games/chuiniu/book_list.asp?type=3&amp;siteid=<%=siteid%>&amp;classid=<%=request("classid")%>&amp;page=1<%=jid2%>">吹牛大王</a>><a href="<%=http_start%>games/chuiniu/book_list.asp?type=1&amp;siteid=<%=siteid%>&amp;classid=<%=request("classid")%>&amp;page=1<%=jid2%>">英雄</a>|<a href="<%=http_start%>games/chuiniu/book_list.asp?type=2&amp;siteid=<%=siteid%>&amp;classid=<%=request("classid")%>&amp;page=1<%=jid2%>">狗熊</a>
<br/>
<!--#INCLUDE file="k.asp"-->
<!--#INCLUDE file="x.asp"-->
<!--#INCLUDE file="d.asp"-->
-----------<br/>
<a href="<%=http_start%>games/chuiniu/aniu.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">全部吹牛</a>.<a href="<%=http_start%>games/chuiniu/book_list.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">吹牛排行</a><br/><%=sss%><!--#INCLUDE file="w.asp"-->
-----------<br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(request("classid"))%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%call CloseConn()%>
</p>
</card>
</wml>