<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../../ASP_API/cookies.asp"--><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"
dim classid,action,sex,h,t,shows

classid=request("classid")
action=request.form("action")
if action="go" then
	 sex=request.form("sex")
	 h=request.form("h")
	 t=request.form("t")
	 if not isnumeric(h) then h="0" end if
	 if not isnumeric(t) then t="0" end if
	 
	 if sex="0" then ' 英寸-&gt公分CM
	 	  showh=Cint(h)*2.54 &"(公分)"
	 	  showt=CInt(t)*0.45 &"(公斤)"
	 else
	 	  showh=Cint(h)*0.39 &"(英寸)"
	 	  showt=CInt(t)*2.20 &"(英磅)"
	 end if

	
end if

%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<template>      
    <do type="prev" label="返回上级"><prev/></do> 
</template>
<card id="main" title="身高及体重换算">
<p align="left">
<%if action<>"" then%>	
<b>计算结果如下</b><br/>
<b>身高:<%=showh%></b><br/>
<b>体重:<%=showt%></b><br/>

<%end if%>	

----------------<br/>
<select name="sex"><option value="1">公分CM/公斤-&gt;英寸/英磅</option><option value="0">英寸/英磅-&gt;公分CM/公斤</option></select><br/>
身高:<input type="text" name="h" maxlength="4" size="3"/><br/>
体重:<input type="text" name="t" maxlength="4" size="3"/><br/>
<anchor> 计 算
<go href="<%=http_start%>utility/tizhong/2exchange.asp" method="post" accept-charset="utf-8">
<postfield name="action" value="go"/>  
<postfield name="sex" value="$(sex)"/> 
<postfield name="h" value="$(h)"/> 
<postfield name="t" value="$(t)"/> 
<postfield name="siteid" value="<%=siteid%>"/> 
<postfield name="classid" value="<%=classid%>"/> 
<postfield name="sid" value="<%=sid%>"/> 
</go>
</anchor>
 <br/>


<br/><a href="list.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回上级</a>

<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>

</p>
</card>
</wml>