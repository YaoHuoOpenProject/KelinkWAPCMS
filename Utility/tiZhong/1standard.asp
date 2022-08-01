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
	 
	 if sex="0" then
	 	  shows=(Cint(h)-80 ) * 0.6
	 else
	 	  shows=(Cint(h)-80 ) * 0.7
	 end if
	 
	 per=((Cint(t)-shows)/Cint(t) ) *100
	 per=FormatNumber(per,2)
	
end if
function pershow(per)
  per=Cint(per)
  if per > 20 then
  	 pershow="肥胖"
  	elseif per<= 20 and per >10 then
     pershow="体重超重"
    elseif per <=10 and per >-10 then
    	pershow="正常"
    elseif per<=-10 and per >-20 then
    	pershow="体重过轻"
    elseif per<=-20 then
    	pershow="瘦弱"
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
<card id="main" title="标准体重计算">
<p align="left">
<%if action<>"" then%>	
<b>计算结果如下</b><br/>
<b>标准体重:<%=shows%></b><br/>
<b>超重百分比:<%=per%>%</b><br/>
<b>结果：<%=pershow(per)%></b><br/>



<%end if%>	

----------------<br/>
性别：<select name="sex"><option value="1">男</option><option value="0">女</option></select><br/>
身高:<input type="text" name="h" maxlength="4" size="3"/>CM<br/>
目前体重:<input type="text" name="t" maxlength="4" size="3"/>公斤<br/>
<anchor> 计 算
<go href="<%=http_start%>utility/tizhong/1standard.asp" method="post" accept-charset="utf-8">
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
计算方法：<br/>
男性:(身高cm-80) X 0.7<br/>
女性:(身高cm-80) X 0.6<br/>

<br/><a href="list.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回上级</a>

<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>

</p>
</card>
</wml>