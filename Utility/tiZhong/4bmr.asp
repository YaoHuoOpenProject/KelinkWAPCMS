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
	 age=request.form("age")
	 sport=request.form("sport")
	 if not isnumeric(h) then h="0" end if
	 if not isnumeric(t) then t="0" end if
	 if not isnumeric(age) then age="0" end if
	 
	 if sex="0" then
	 	  per=655+ (9.6*t) + (1.8*h) - (4.8*age)
	 else
	 	  per=66+ (13.7*t) + (5*h) - (6.8*age)
	 end if
	 
	 'per=((Cint(t)-shows)/Cint(t) ) *100
	 perS=per*sport
	 perS=FormatNumber(perS,2)
	 per=FormatNumber(per,2)
	
end if

%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<template>      
    <do type="prev" label="返回上级"><prev/></do> 
</template>
<card id="main" title="基础代谢计算">
<p align="left">
<%if action<>"" then%>	
<b>计算结果如下</b><br/>
<b>BMR：<%=per%> Kcal</b><br/>
<b>第日所需热量至少<%=perS%> Kcal</b><br/>


<%end if%>	

----------------<br/>
性别：<select name="sex"><option value="1">男</option><option value="0">女</option></select><br/>
身高:<input type="text" name="h" maxlength="4" size="3"/>CM<br/>
目前体重:<input type="text" name="t" maxlength="4" size="3"/>公斤<br/>
年龄:<input type="text" name="age" maxlength="4" size="3"/>岁<br/>
每日的活動量：<br/>
<select name="sport" value="2">
<option value="1.2">久坐上班族（几乎不运动者）</option>
<option value="1.357">轻度运动(每周锻炼1~2次)</option>
<option value="1.55">中等强度运动（每周锻炼3~4次）</option>
<option value="1.17">高强度运动（每周锻炼5~6次）</option>
<option value="2">专业运动员或重体力劳动者</option>

</select><br/>
<anchor> 计 算
<go href="<%=http_start%>utility/tizhong/4bmr.asp" method="post" accept-charset="utf-8">
<postfield name="action" value="go"/>  
<postfield name="sex" value="$(sex)"/> 
<postfield name="h" value="$(h)"/> 
<postfield name="t" value="$(t)"/> 
<postfield name="age" value="$(age)"/> 
<postfield name="sport" value="$(sport)"/> 
<postfield name="siteid" value="<%=siteid%>"/> 
<postfield name="classid" value="<%=classid%>"/> 
<postfield name="sid" value="<%=sid%>"/> 
</go>
</anchor>
 <br/>

说明：整天呆在床上所消耗的一日热量！
<br/><a href="list.asp?siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回上级</a>

<br/><a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>

</p>
</card>
</wml>