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
<card id="main" title="【游戏帮助】">
<p align="left">
<img src='logo.gif' alt='【游戏帮助】'/><br/>
说明:疯狂吹牛是由用户自己开局吹牛与另一个玩家进行心理大战的趣味游戏,游戏过程只允许2个用户参与,吹牛人自行设定吹牛内容,答案,时限以及金币数量(最低100金币,最高10000金币),开局成功后其他应答用户均可以参与,但只有一名用户可以最终参与并应答,游戏金额为吹牛人开局时所设定的金币数,获胜的一方将支付双方的吹牛税.<br/>
【注意事项】<br/>
1,不满100金币无法开吹.<br/>
2,自己吹的牛不能自己来应答!<br/>
3,每人每天可以吹10个牛.<br/>
4,吹牛者牛吹好不能随便取消,每次取消也都需要扣除吹牛币和扣除5%的吹牛税.<br/>
5,吹牛有时间性,过了有效时间,则本金返还,不会扣除吹牛税.<br/>
6,请吹牛者自重!吹牛内容不要违反[<a href="<%=http_start%>games/chuiniu/index02.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">吹牛管理条例</a>],一旦违反将严肃处理,金币将全部扣除!<br/>
7.吹牛币在5000以上的牛牛的，将显示在【大牛推荐】列表中！
<br/>-----------<br/>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回吹牛</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%call CloseConn()%>
</p>
</card>
</wml>