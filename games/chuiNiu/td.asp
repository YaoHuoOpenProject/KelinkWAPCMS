<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"--><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"%>
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="Mon, 1 Jan 1990 00:00:00 GMT"/>
</head>
<card id='main' title='确认应答'>  
<p align='left'>
<%if userid=0 then%>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录/注册</a><br/>
<%
else
id=Clng(request("id"))
yes=int(request("yes"))
if yes<>"1" and yes<>"2" then
response.end
end if
set rss=Server.CreateObject("ADODB.Recordset")
ssql="select money from [user] where userid="& Clng(userid) &" and siteid="&CLng(siteid)
rss.open ssql,conn

 set rsq=Server.CreateObject("ADODB.Recordset")
  ssql="select * from wap_game_chuiniu where id="&id&" and siteid="&siteid
  rsq.open ssql,conn,1,2
  if rsq.eof then
%>
不存在该牛牛!<a href="<%=http_start%>games/chuiniu/add.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">赶紧吹一个吧!</a><br/>
<%else
if clng(rsq("fbz"))=clng(userid) then%>
自己的牛牛不能自己应答!请返回重新操作!<br/>
<%
else%>
内容:<%=rsq("txt")%><br/>
<%
if clng(rsq("zb"))>clng(rss("money")) then
%>
对不起,您的<%=getMoneyName(siteid)%>不足本次吹牛!<br/>
<%else
if Clng(rsq("tzz"))<1 and Clng(rsq("tzcg"))<1 then
rsq("tzcg")=yes
rsq("tzz")=userid
rsq.update
if Cstr(rsq("zs"))=Cstr(rsq("tzcg")) then
conn.execute("update [user] set money=money+"&abs(rsq("zb"))&" where userid="& Clng(userid) &" and siteid="&CLng(siteid))
'conn.execute("update [user] set money=money-"&rsq("zb")&" where userid="&rsq("fbz")) &" and siteid="&CLng(siteid)
conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'你在疯狂吹牛中赢得:"&rsq("zb")&"个"&getMoneyName(siteid)&"("&now&")','"&rsq("zb")&"')") 
  
conn.execute("insert into wap_message(siteid,userid,nickname,title,content,touserid,issystem)values("&siteid&","&siteid&",'系统消息','疯狂吹牛通知：你输了:"&rsq("zb")&"个"&getMoneyName(siteid)&"','你在"& rsq("fbdate") &"吹的牛已被<a href="""& http_start &"bbs/userinfo.aspx?siteid="& siteid &"&amp;classid="&classid&"&amp;sid=[sid]&amp;touserid="& userid &""">ID:"&userid&"</a>抢走了，快去看看吧!<a href="""&http_start&"games/chuiniu/view.asp?siteid="&siteid&"&amp;classid="&classid&"&amp;sid=[sid]&amp;id="&rsq("id")&""">点击</a>',"&rsq("fbz")&",0)")

%>
恭喜你!你获得了这个牛牛!获得<%=rsq("zb")%><%=getMoneyName(siteid)%>!<br/>
<%else
conn.execute("update [user] set money=money-"&abs(rsq("zb"))&" where userid="& Clng(userid) &" and siteid="&CLng(siteid))
conn.execute("update [user] set money=money+"&(Cint(abs(rsq("zb"))) * 2 )&" where userid="&rsq("fbz") &" and siteid="&CLng(siteid))
conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&rsq("fbz")&",'你在疯狂吹牛中赢得:"&rsq("zb")&" 个"&getMoneyName(siteid)&"，一共转入:"&(Cint(rsq("zb")) * 2 )&" 个("&now&")','" & Cint(rsq("zb")) * 2 &"')") 
conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'吹牛失败，扣除"&rsq("zb")&"个','-"&rsq("zb")&"')")    

conn.execute("insert into wap_message(siteid,userid,nickname,title,content,touserid,issystem)values("&siteid&","&siteid&",'系统消息','疯狂吹牛通知：你赢了:"&rsq("zb")&"个"&getMoneyName(siteid)&"','你在"& rsq("fbdate") &"吹的牛已被<a href="""& http_start &"bbs/userinfo.aspx?siteid="& siteid &"&amp;classid="&classid&"&amp;sid=[sid]&amp;touserid="& userid &""">ID:"&userid&"</a>抢走了，快去看看吧!<a href="""&http_start&"games/chuiniu/view.asp?siteid="&siteid&"&amp;classid="&classid&"&amp;sid=[sid]&amp;id="&rsq("id")&""">点击</a>',"&rsq("fbz")&",0)")

%>
很遗憾!你失去了这个牛牛!扣除<%=rsq("zb")%><%=getMoneyName(siteid)%>!<br/>
<%
end if
conn.execute("update [user] set chuiniu='0,0,"&now&"' where userid="&userid&" and siteid="&siteid)
else%>
该牛牛已经被人抢走了！<br/>
<%
end if
end if
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