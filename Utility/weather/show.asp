<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<%
'=========================================================
'
'产品名称：Kelink WAP自助建站系统
'版权所有：Kelink Tech
'程序制作：Chinastrong
'技术联系：QQ:85403498 
'Copyright 2005-2007 Kelink.Com - All Rights Reserved.
'
'========================================================
%><!--#include file="../../ASP_API/cookies.asp"--><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"
dim result,id,temp2
result="无法查询！"
classid=request.querystring("classid")
on error resume next


id=request.querystring("id")
city=request.querystring("city")


if id="" then
	 id="020"
end if

if city<>"" then
urls="http://news.3g.net.cn/foryou/weather/tianqi.aspx?sid=&city="&server.urlencode(city)
else
urls="http://news.3g.net.cn/foryou/weather/tianqi.aspx?sid=&id="&id

end if
'开始发送信息
dim Https ,strXML
set Https=server.createobject("MSXML2.XMLHTTP")
'定义一个XMLHTTP对像
Https.open "get",urls,false
Https.SetRequestHeader "Content-Type", "text/vnd.wap.wml"
Https.setRequestHeader "User-Agent","Nokia3108/1.0 (05.08) Profile/MIDP-1.0 Configuration/CLDC-1.0"

Https.send ()
'response.write strXML
'response.end
if Https.readystate=4 then
	 dim objstream
	 set objstream= Server.CreateObject("adod"&"b.stream")
  objstream.Type = 1
  objstream.Mode =3
  objstream.Open
  objstream.Write Https.responseBody
  objstream.Position = 0
  objstream.Type = 2
  objstream.Charset = "UTF-8"
  result = objstream.ReadText
  
  objstream.Close
  set objstream = nothing
  set https=nothing
  
	
	
	star=instr(result,"----------------")
	over=InStr(result,"进")
	result = mid(result,star,over-star)
	

  result= replace(result,"images/","http://news.3g.net.cn/foryou/weather/images/")
 
  arrys=split(result,"----------------")

  if ubound(arrys) =4  then
  	result="----------------" & arrys(1) & "----------------" & arrys(3)  	 &"----------------<br/>"
  else
  	result="----------------<br/>暂时还没有该城市的天气信息！<br/>----------------<br/>"
  end if



	

state=0
else '失败
 result="查询失败"
 state=1
end if


%>
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<template>      
    <do type="prev" label="返回上级"><prev/></do> 
</template>
<card title="天气预报">
<p><img src="<%=http_start%>utility/weather/waptq.png" alt="..."/><br/><%=temp2%>区号:<input type="text" name="id" format="*N" size="4"  maxlength="4"/>
<anchor>查询
 <go href="<%=http_start%>utility/weather/show.asp" method="get" accept-charset="utf-8">
 	<postfield name="id" value="$(id)"/>
  <postfield name="classid" value="<%=classid%>"/>  
 <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> <br/>
 城市:<input type="text" name="city" size="4"/>
<anchor>查询
 <go href="<%=http_start%>utility/weather/show.asp" method="get" accept-charset="utf-8">
 	<postfield name="city" value="$(city)"/>
  <postfield name="classid" value="<%=classid%>"/>  
 <postfield name="siteid" value="<%=siteid%>"/> 
 	<postfield name="sid" value="<%=sid%>"/> 
 </go>
 </anchor> 
  
 <br/>

<%=result%>

<a href="<%=http_start%>wapindex.asp?siteid=<%=siteid%><%=jid2%>">返回首页</a>
</p>
</card>
</wml>