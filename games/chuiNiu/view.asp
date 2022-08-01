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
<card id='main' title='疯狂吹牛-查看牛牛'>  
<p align='left'>
<%
    dim headurl
    if Trim(Request.QueryString)<>"" then
    headurl=replace(Request.ServerVariables("URL")&"?" & Trim(Request.QueryString),"&","&amp;") 
    session("headurl")=headurl
    end if
    
id=Clng(request("id"))
 set rsq=Server.CreateObject("ADODB.Recordset")
  ssql="select fbz,txt,tzcg,zb,d1,d2,tzz,tzcg,zs from wap_game_chuiniu where id="&id&" and siteid="&siteid
  rsq.open ssql,conn
  if rsq.eof then
%>
不存在该牛牛!<br/>
<%else
set rss=Server.CreateObject("ADODB.Recordset")
ssql="select userid,nickname from [user] where userid="&rsq("fbz")&" and siteid="&CLng(siteid)
rss.open ssql,conn
%>查看牛牛<br/>-----------<br/>
内容:<%=rsq("txt")%><br/>
<%if Clng(rsq("tzcg")) <1 then%>
吹牛者:<a href="<%=http_start%>/bbs/userinfo.aspx?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;touserid=<%=rss("userid")%>"><%=rss("nickname")%></a><br/>
赌注:<%=rsq("zb")%><%=getMoneyName(siteid)%><br/>
<%if userid=0 then%>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录/注册</a><br/>
<%else
if clng(rss("userid"))<>clng(userid) then%>
请选择答案:<br/>
<a href="<%=http_start%>games/chuiniu/td.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;id=<%=id%>&amp;yes=1">1.<%=rsq("d1")%></a><br/>
<a href="<%=http_start%>games/chuiniu/td.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;id=<%=id%>&amp;yes=2">2.<%=rsq("d2")%></a><br/>
<%	else%>
<a href="<%=http_start%>games/chuiniu/del.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;id=<%=id%>">删除该牛牛</a><br/>
<%end if
end if%>
<%else
set rsa=Server.CreateObject("ADODB.Recordset")
ssql="select userid,nickname from [user] where userid="&rsq("tzz")&" and siteid="&CLng(siteid)
'response.write ssql
'response.end
rsa.open ssql,conn
if rsq("tzcg")=rsq("zs") then
slid=rsa("userid")
slname=rsa("nickname")
else
slid=rss("userid")
slname=rss("nickname")
end if%>
对不起，这个牛牛已经被人抢走了...<br/>
答案1:<%=rsq("d1")%><%if rsq("zs")=1 then%>(正确)<%end if%><br/>
答案2:<%=rsq("d2")%><%if rsq("zs")=2 then%>(正确)<%end if%><br/>
吹牛者:<a href="<%=http_start%>/bbs/userinfo.aspx?siteid=<%=siteid%>&amp;touserid=<%=rss("userid")%><%=jid2%>"><%=rss("nickname")%></a><br/>
赌注:<%=rsq("zb")%><%=getMoneyName(siteid)%><br/>
挑战者:<a href="<%=http_start%>/bbs/userinfo.aspx?siteid=<%=siteid%>&amp;touserid=<%=rsa("userid")%><%=jid2%>"><%=rsa("nickname")%></a><br/>
胜利者:<a href="<%=http_start%>/bbs/userinfo.aspx?siteid=<%=siteid%>&amp;touserid=<%=slid%><%=jid2%>"><%=slname%></a><br/>
<%end if
end if
%>
-----------<br/>
<%if managerlvl="00" or managerlvl="01" then %>
<a href="<%=http_start%>games/chuiniu/delall.asp?action=delall&amp;siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;id=<%=id%>">管理员删除</a><br/>
<%end if%>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回吹牛</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%call CloseConn()%>
</p>
</card>
</wml>