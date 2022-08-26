<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"

%><!--#include file="../../ASP_API/cookies.asp"--><!--#include file="../../ASP_API/conn.asp"--><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<template>      
    <do type="prev" label="返回上级"><prev/></do> 
</template>
<card id="main" title="体重计算工具">
<%
dim classid

classid=request("classid")
classid=getpid(classid)
closeconn
%>
<p align="left">
1.<a href="1standard.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">标准体重计算</a><br/>
2.<a href="2exchange.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">身高及体重换算</a><br/>
3.<a href="3bmi.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">身体质量指数(BMI)计算</a><br/>
4.<a href="4bmr.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">基础代谢计算</a><br/>
5.<a href="5bfr.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">体脂(BFR)计算</a><br/>
<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回上级</a>
<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>

</p>
</card>
</wml>