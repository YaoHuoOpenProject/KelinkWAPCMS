﻿<!--#include file="../../ASP_API/cookies.asp"--><%

dim agent,str
agent=request.ServerVariables("HTTP_USER_AGENT")

classid=request("classid")
action=request("action")
if instr(agent,"Mozilla")=0 then
tourl= "list.asp?siteid="&siteid&"&amp;classid="&classid&jid2 'WAP页面显示
toWML()
else

str=agent
str=replace(str,"Opera","")
str=replace(str,"SmartPhone","")
str=replace(str,"CE","")
str=replace(str,"UC","")
str=replace(str,"Symbian","")
str=replace(str,"NetFront","")
str=replace(str,"Android","")
str=replace(str,"Ios","")
str=replace(str,"Safari","")
if Len(agent)=Len(str) then
response.redirect "info.asp?siteid="&siteid&"&classid="&classid '后台管理地址

else
tourl= "list.asp?siteid="&siteid&"&amp;classid="&classid&jid2  'WAP页面显示
toWML()
end if

end if

sub toWML()
  if request("jump")="" then
  	  	path="http://"&Request.ServerVariables("HTTP_HOST")&Request.ServerVariables("SCRIPT_NAME")
  	path=replace(path,"index.asp","")
  	response.redirect path&replace(tourl,"&amp;","&")
    response.end
  end if
%><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" 
Response.Expires = -1
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "Cache-Control", "no-cache, must-revalidate"
%><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-control" content="no-cache" />
</head>
<card id="card3" ontimer="<%response.write tourl%>" title="欢迎光临">            
<timer value="1"/>
<p align="left">
<br/>
<big>正在装载中...</big>
</p>
</card>
</wml><%end sub%>