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
<card id='main' title='我要吹牛'>  
<p align='left'>
<%if userid=0 then%>
请先<a href="<%=http_start%>waplogin.asp?siteid=<%=siteid%>&amp;classid=<%=classid%>">登录/注册</a><br/>
<%
else
set objgbrs=Server.CreateObject("ADODB.Recordset")
  ssql="select money from [user] where userid="& Clng(userid) &" and siteid="&CLng(siteid)
  objgbrs.open ssql,conn
%>
您现在的<%=getMoneyName(siteid)%>有:<% =objgbrs("money")%><br/>
吹牛内容:<input name="txt<%=minute(now)%><%=second(now)%>" emptyok="true" maxlength="100" value=""/><br/>
答案一:<input name="d1<%=minute(now)%><%=second(now)%>" emptyok="true" maxlength="50" value="信"/><br/>
答案二:<input name="d2<%=minute(now)%><%=second(now)%>" emptyok="true" maxlength="50" value="不信"/><br/>
真实答案:<select name="zs<%=minute(now)%><%=second(now)%>" value="1">
<option value='1'>答案1</option>
<option value='2'>答案2</option>
</select><br/>
吹牛钻币:<input name="zb<%=minute(now)%><%=second(now)%>" size="5" emptyok="true" maxlength="9" value="100"/><br/>
我的密码:<input type="text"  name="checkpassword" size="5"/><br/>
<anchor title="确定">[确认发表]<go href="<%=http_start%>games/chuiniu/addcl.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>" method="post" accept-charset="utf-8">
<postfield name="txt" value="$(txt<%=minute(now)%><%=second(now)%>)"/>
<postfield name="d1" value="$(d1<%=minute(now)%><%=second(now)%>)"/>
<postfield name="d2" value="$(d2<%=minute(now)%><%=second(now)%>)"/>
<postfield name="zs" value="$(zs<%=minute(now)%><%=second(now)%>)"/>
<postfield name="zb" value="$(zb<%=minute(now)%><%=second(now)%>)"/>
<postfield name="checkpassword" value="$(checkpassword)"/>
</go></anchor><br/>
<%end if%>
<!--#INCLUDE file="w.asp"-->
-----------<br/>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">吹牛首页</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(classid)%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%conn.close
set conn=nothing
%>
</p>
</card>
</wml>