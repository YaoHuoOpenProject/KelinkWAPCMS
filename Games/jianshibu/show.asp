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
 if p="1" then
 	  getpic="<img src=""scissors.gif"" alt=""剪刀""/>"
 elseif p="2" then
    getpic="<img src=""rock.gif"" alt=""石头""/>"
 elseif p="3" then
	  getpic="<img src=""paper.gif"" alt=""布""/>"
 end if
end function
%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>

<%if id<>"" then%>
<card title="对方正在出手..." ontimer="<%=http_start%>games/jianshibu/result.asp?mymoney=<%=mymoney%>&amp;beishu=<%=beishu%>&amp;id=<%=id%>&amp;classid=<%=classid%>&amp;siteid=<%=siteid%><%=jid2%>">
	<timer value="50"/>
		<p><b>等待对方出手中...</b>(5秒内)
<%else%>
<card title="剪刀石头布"><p>
<%if request("state")<>"" then%>
---上一局情况----<br/><b>
<%
state=request("state")
ranid=request("ranid")
if state="1" then
	response.write "您的钱币不够了，请去赚多点再来玩"
elseif state="2" then
	response.write "对方:"&getpic(ranid)&"<br/>恭喜您，赢了 "& request("getmoney") & " 个"& getmoneyname(siteid) &" ！"
elseif state="3" then
	response.write "对方:"&getpic(ranid)&"<br/>打平手了，下次再努力！"
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
<b>选择赔率:</b>
<br/><select name="beishu" value="1">
	<option value="1">(难度一)1:1</option>
	<option value="5">(难度二)1:5</option>
	<option value="10">(难度三)1:10</option>
	<option value="15">(难度四)1:15</option>
	<option value="20">(难度五)1:20</option>
	<option value="25">(难度六)1:25</option>
	<option value="30">(难度七)1:30</option>
	<option value="100">(难度八)1:100</option>
</select><br/>
<b>我要下注:</b><input type="text" format="*N"  name="mymoney" value="0" size="3" maxlength="3"/> 
<br/>(最多为200)
 <br/>
<img src="<%=http_start%>games/jianshibu/scissors.gif" alt="."/>
<anchor>剪刀
 <go href="<%=http_start%>games/jianshibu/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="beishu" value="$(beishu)"/>
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="1"/>
  <postfield name="classid" value="<%=classid%>"/>  
  <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
 <br/>
 <img src="<%=http_start%>games/jianshibu/rock.gif" alt="."/>
 <anchor>石头
 <go href="<%=http_start%>games/jianshibu/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="beishu" value="$(beishu)"/>
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="2"/>
  <postfield name="classid" value="<%=classid%>"/>  
 <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
  <br/>
 <img src="<%=http_start%>games/jianshibu/paper.gif" alt="."/>
 <anchor>布
 <go href="<%=http_start%>games/jianshibu/show.asp" method="post" accept-charset="utf-8">
 	<postfield name="beishu" value="$(beishu)"/>
 	<postfield name="mymoney" value="$(mymoney)"/>
 	<postfield name="id" value="3"/>
  <postfield name="classid" value="<%=classid%>"/>  
 <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
<%end if%>
<br/>
<br/><a href="<%=http_start%>games/jianshibu/book_list.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">排行榜</a>
<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a>
	<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
</p>
</card>
</wml><%call CloseConn()%>