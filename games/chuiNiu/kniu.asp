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
<card id='main' title='等待应答'>  
<p align='left'>
<%if userid=0 then%>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录/注册</a><br/>
<%
userid=0
else
 set rs=Server.CreateObject("ADODB.Recordset")
  ssql="select money from [user] where userid="& Clng(userid) &" and siteid="&CLng(siteid)
  rs.open ssql,conn
%>
您现在的<%=getMoneyName(siteid)%>有:<% =rs("money")%><br/>
<%end if%>
【等待应答】<br/>
<%
 set rsq=Server.CreateObject("ADODB.Recordset")
  ssql="select * from wap_game_chuiniu where siteid="&siteid&" and tzcg<1 and fbz<>"&userid&" order by id desc"
  rsq.open ssql,conn,3
  if rsq.eof then%>
  暂时没有牛牛记录!<a href="<%=http_start%>games/chuiniu/add.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">赶紧吹一个吧!</a><br/>
  <%
  else
rsq.pagesize=8
if request("page")<>"" then
  epage=cint(request("page"))
   if epage<1 then epage=1
   if epage>rsq.pagecount then epage=rsq.pagecount
else
epage=1
end if
rsq.absolutepage=epage
for i=0 to rsq.pagesize-1
if rsq.bof or rsq.eof then exit for
txt=left(rsq("txt"),15)
if len(rsq("txt"))>15 then txt=txt&"..."
response.write epage*rsq.pagesize-(rsq.pagesize-i)+1&".<a href='"&http_start&"games/chuiniu/view.asp?id=" & rsq("id")&"&amp;siteid="&siteid&"&amp;classid="&classid&jid2&"'>"&txt&"</a>("&rsq("zb")&getMoneyName(siteid)&")<br/>"
rsq.MoveNext
next
if epage*rsq.pagesize<rsq.recordcount then
response.write("<a href='"&http_start&"games/chuiniu/kniu.asp??siteid="&siteid&"&amp;classid="&classid&jid2&"&amp;page=" & epage+1 & "'>下页</a> ")
end if
if epage>1 then
response.write("<a href='"&http_start&"games/chuiniu/kniu.asp??siteid="&siteid&"&amp;classid="&classid&jid2&"&amp;page=" & epage-1 & "'>上页</a>")
end if
%>
<br/>共<%=rsq.recordcount%>条.第<%=epage%>/<%=rsq.pagecount%>页<br/>
<%
end if%>
-----------<br/>
<!--#INCLUDE file="w.asp"-->
-----------<br/>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回吹牛</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%call CloseConn()%>
</p>
</card>
</wml>