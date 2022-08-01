<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<%
'=========================================================
'
'产品名称：Kelink WAP自助建站系统
'版权所有：Kelink Soft
'程序制作：Chinastrong
'技术联系：QQ:85403498 
'Copyright 2005-2007 Kelink.Com - All Rights Reserved.
'
'========================================================
%><!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"--><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"
dim dotype,classid,beishu,action
classid=request("classid")
id=request.form("id")
mymoney=request.form("mymoney")
beishu=request.form("beishu")

function getpic(p)
'p=234
p=replace(p,"1","<img src=""1.gif"" alt=""1""/>")
p=replace(p,"2","<img src=""2.gif"" alt=""2""/>")
p=replace(p,"3","<img src=""3.gif"" alt=""3""/>")
p=replace(p,"4","<img src=""4.gif"" alt=""4""/>")
p=replace(p,"5","<img src=""5.gif"" alt=""5""/>")
p=replace(p,"6","<img src=""6.gif"" alt=""6""/>") 
getpic=p
end function
%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>

<%if id<>"" then%>
<card title="对方正在摇骰子..." ontimer="<%=http_start%>games/yaotouzi/result.asp?mymoney=<%=mymoney%>&amp;beishu=<%=beishu%>&amp;id=<%=id%>&amp;classid=<%=classid%>&amp;siteid=<%=siteid%><%=jid2%>">
	<timer value="50"/>
		<p><b>等待对方开盘...</b>(5秒内)
<%else%>
<card id="main" title="摇骰子"><p>
<%if request("state")<>"" then%>
---上一局情况----<br/><b>
<%
state=request("state")
ranid=request("allidstr")
if state="1" then
	response.write "您的钱币不够了，请去赚多点再来玩"
elseif state="2" then
	response.write "对方:"&getpic(ranid)&"<br/>恭喜您，赢了 "& request("getmoney") & " 个"& getmoneyname(siteid) &" ！"
elseif state="4" then
  response.write "对方:"&getpic(ranid)&"<br/>抱歉，您输了 "& request("getmoney") & " 个"& getmoneyname(siteid) &" ！"
elseif state="5" then
  response.write "对方还没有出手呢？再来吧！"
elseif state="6" then
	response.write "请先下注！"
end if
%></b>
<br/><br/>
<%end if%>
<% if userid="" then %>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录</a>后再玩。<br/>
<%end if%>
对方出三个骰子，让你猜！<br/>
<b>我要下注:</b><input type="text" format="*N"  name="mymoney" value="0" size="3" maxlength="3"/> 
<br/>(最多为200)
<br/><b>我猜骰子:</b><input type="text" format="*N"  name="id" value="0" size="3" maxlength="2"/> 
<br/>(最多为18)
 <br/>

<anchor>确定啦
 <go href="<%=http_start%>games/yaotouzi/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="$(id)"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 

<%end if%>
<br/>
<br/><a href="<%=http_start%>games/yaotouzi/book_list.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">排行榜</a>
<br/><a href="#help">游戏规则</a>
<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a>
	<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
</p>
</card>
<card id="help" title="游戏规则">
<p>
摇骰子游戏是一种简单有趣的数字竞猜游戏。中奖结果为（1－6）的三颗骰子中随机选出三个数字之和，共有 16 种结果（3－18），投注的注数不限制。投注可大可小，赔率1:1。
此游戏规则简单，却变化无穷。入门容易，但精通不易。<br/><a href="#main">返回上级</a>
</p>
</card>
</wml><%call CloseConn()%>