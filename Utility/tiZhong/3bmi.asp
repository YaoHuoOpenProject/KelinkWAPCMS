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
	 
 
	 per=10000*Cint(t)/(Cint(h)*Cint(h))
	 per=FormatNumber(per,2)
	
end if
function pershow(per)
  per=Cint(per)
  if per < 18.5 then
  	 pershow="过轻"
  	elseif per>= 18.5 and per <24 then
     pershow="正常"
    elseif per >=24 and per <27 then
    	pershow="过重"
    elseif per>=27 and per <30 then
    	pershow="过度肥胖"
    elseif per>=30 and per <35 then
    	pershow="中度肥胖"
    elseif per>=35 then
    	pershow="重度肥胖"
    end if

end function
%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<template>      
    <do type="prev" label="返回上级"><prev/></do> 
</template>
<card id="main" title="身体质量指数(BMI)计算">
<p align="left">
<%if action<>"" then%>	
<b>计算结果如下</b><br/>

<b>BMI:<%=per%></b><br/>
<b>结果: <%=pershow(per)%></b><br/>



<%end if%>	

----------------<br/>
身高:<input type="text" name="h" maxlength="4" size="3"/>CM<br/>
体重:<input type="text" name="t" maxlength="4" size="3"/>公斤<br/>
<anchor> 计 算
<go href="<%=http_start%>utility/tizhong/3bmi.asp" method="post" accept-charset="utf-8">
<postfield name="action" value="go"/>  
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