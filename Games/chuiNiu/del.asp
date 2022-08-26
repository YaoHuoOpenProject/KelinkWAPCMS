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
<card id='main' title='疯狂吹牛-删除牛牛'>  
<p align='left'>
<%if userid=0 then%>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录/注册</a><br/>
<%
else
id=int(request("id"))
yy=request("yy")
 set rsq=Server.CreateObject("ADODB.Recordset")
  ssql="select * from wap_game_chuiniu where id="&id&" and siteid="&siteid
  rsq.open ssql,conn
  if rsq.eof then
%>
不存在该牛牛!<a href="<%=http_start%>games/chuiniu/add.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">赶紧吹一个吧!</a><br/>
<%else
set rss=Server.CreateObject("ADODB.Recordset")
ssql="select userid,nickname from [user] where userid="&rsq("fbz")&" and siteid="&siteid
rss.open ssql,conn
%>
内容:<%=rsq("txt")%><br/>
<%if clng(rsq("fbz"))<>clng(userid) then%>
这个牛牛不是你的,不能删除!<a href="<%=http_start%>games/chuiniu/add.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">我要吹牛!</a><br/>
<%else
if rsq("tzcg")<1 then
if yy<>"1" then%>
确认删除?除了扣除原来的吹牛币，还要扣取5%的手续费！<br/>
<a href="?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>&amp;yy=1&amp;id=<%=id%>">确认</a>|<anchor>取消<prev/></anchor><br/>
<%else
conn.execute("update [user] set money=money-"&int(abs(rsq("zb")))*0.05&" where userid="&userid&" and siteid="&siteid)
conn.execute("delete from wap_game_chuiniu where id="&id&" and siteid="&siteid)
conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'删除吹牛，扣除手续费"&int(rsq("zb"))*0.05&"个','-"&int(rsq("zb"))*0.05&"')")    
		
%>
删除成功!并扣取5%的手续费!<br/>
<a href="<%=http_start%>games/chuiniu/my.asp??siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">我的牛牛</a><br/>
<%end if
else%>
这个牛牛已经有人抢了,不能删除!<a href="<%=http_start%>games/chuiniu/add.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">我要吹牛!</a><br/>
<%	end if
end if
end if
end if%>
-----------<br/>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回吹牛</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%call CloseConn()%>
</p>
</card>
</wml>