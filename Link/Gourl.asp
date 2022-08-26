<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8"%><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"

http_start="http://"&Request.ServerVariables("HTTP_HOST")&"/"
id=request.QueryString("id")
%><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<card id="main" title="请稍后" ontimer="<%=http_start%>link/gourl.aspx?id=<%=id%>">
<timer value="10"/>  
<p align="left">
请稍后，正在转向中...
</p>
</card>
</wml>