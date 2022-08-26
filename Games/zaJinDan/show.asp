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
aa=split(p,"_")
p=aa(0)&"号蛋中有"&aa(1)&"个"& getmoneyname(siteid)
getpic=p
end function
%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>

<%if id<>"" then%>
<card title="等待..." ontimer="<%=http_start%>games/zajindan/result.asp?mymoney=<%=mymoney%>&amp;beishu=<%=beishu%>&amp;id=<%=id%>&amp;classid=<%=classid%>&amp;siteid=<%=siteid%><%=jid2%>">
	<timer value="50"/>
		<p><b>正在砸蛋中...</b>(5秒内)
<%else%>
<card id="main" title="砸金蛋"><p>
<%if request("state")<>"" then%>
---上一局情况----<br/><b>
<%
state=request("state")
ranid=request("allidstr")
if state="1" then
	response.write "您的钱币不够了，请去赚多点再来玩"
elseif state="2" then
	response.write ""&getpic(ranid)&"<br/>恭喜您，赢了 "& request("getmoney") & " 个"& getmoneyname(siteid) &" ！"
elseif state="4" then
  response.write ""&getpic(ranid)&"<br/>抱歉，您输了 "& request("getmoney") & " 个"& getmoneyname(siteid) &" ！"
elseif state="5" then
  response.write "还没有开奖呢？再来吧！"
elseif state="6" then
	response.write "请先下注！"
end if
%></b>
<br/><br/>
<%end if%>
<% if userid="" then %>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录</a>后再玩。<br/>
<%end if%>
以下<img src="egg.gif" alt="蛋"/>中有不同的中奖率！<br/>
<b>我要下注:</b><input type="text" format="*N"  name="mymoney" value="0" size="3" maxlength="3"/> 
<br/>(最多为200)

 <br/>

<anchor>1号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="1"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
 <anchor>2号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="2"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
 <br/>
 <anchor>3号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="3"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
  <anchor>4号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="4"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
 <br/>
 <anchor>5号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="5"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
  <anchor>6号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="6"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
  <br/>
 <anchor>7号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="7"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
  <anchor>8号蛋
 <go href="<%=http_start%>games/zajindan/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="8"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 

<%end if%>
<br/>
<br/><a href="<%=http_start%>games/zajindan/book_list.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">排行榜</a>
<br/><a href="#help">游戏规则</a>
<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a>
	<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
</p>
</card>
<card id="help" title="游戏规则">
<p>
砸金蛋游戏是一种简单有趣的数字竞猜游戏。中奖结果为1-8个蛋中有不同中奖率，最大为你投注的八倍，投注的数次不限制。投注可大可小，中奖率最大1:8。
此游戏规则简单，却变化无穷。入门容易，但精通不易。
<br/><a href="#main">返回上级</a>
</p>
</card>
</wml><%
call CloseConn()%>