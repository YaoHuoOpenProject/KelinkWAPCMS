<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/userconfig.asp"--><%
action=request.form("action")
classid=Clng(request("classid"))
dim msg,proposemoney,seekmoney,seektitle,seekcontent,racemoney
select case action	
	case "modify"
	    modify()
end select 

sub modify()
   
   
   proposemoney=left(request.form("proposemoney"),9)
   seekmoney=left(request.form("seekmoney"),9)
   racemoney=left(request.form("racemoney"),9)
   seektitle= tohtm(request.form("seektitle"))
   seekcontent= tohtm(request.form("seekcontent"))
 
   if not isNumeric(proposemoney) then proposemoney="0" end if
   if not isNumeric(seekmoney) then seekmoney="0" end if
   if not isNumeric(racemoney) then racemoney="0" end if

 

   checkpassword=request.form("checkpassword")
   if len(password)=16 then
	    checkpassword=MD5(checkpassword)
   end if
   if lcase(checkpassword)=lcase(password) then
   

   	if (managerlvl="00" or managerlvl="01") then   
   		set rs=conn.execute("select * from [wap_fun_setting] where siteid="&siteid)
   		if not rs.eof then		
         conn.execute("update [wap_fun_setting] set marry_proposemoney='"&proposemoney&"',marry_seekmoney='"&seekmoney&"',marry_seektitle='"&seektitle&"',marry_seekcontent='"&seekcontent&"',car_racemoney='"&racemoney&"' where  siteid="&siteid) 
      else
         conn.execute("insert into wap_fun_setting(siteid,marry_proposemoney,marry_seekmoney,marry_seektitle,marry_seekcontent,car_racemoney)values("&siteid&",'"&proposemoney&"','"&seekmoney&"','"&seektitle&"','"&seekcontent&"','"&racemoney&"')")
      end if
      rs.close
      set rs=nothing
    
    end if  	

   
   'application.contents.Remove("siteInfo_"&siteid) '首页信息
   msg="<b>更新成功！</b><br/>"
  else
    msg="<b>密码输入错误！</b><br/>"
  end if
   
end sub

randomize
ranNum=int(900*rnd)+100
temp=year(now)&hour(now)&minute(now)&second(now)&ranNum		
dim  rs,classname
set rspid=conn.execute("select * from [wap_fun_setting] where siteid="&Clng(siteid))
if not rspid.eof then
   proposemoney=rspid("marry_proposemoney")
   seekmoney=rspid("marry_seekmoney")
   seektitle=rspid("marry_seektitle")
   seekcontent=rspid("marry_seekcontent")
   racemoney=rspid("car_racemoney")
end if
rspid.close
set rspid=nothing

%>
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<template>      
    <do type="prev" label="返回上级"><prev/></do> 
</template> 
<card id="notice" title="恋爱结婚配置">
<p align="left">
	<%=msg%>

<%if (managerlvl="00" or managerlvl="01") then	%>
求婚手续费:<input type="text" name="proposemoney<%=temp%>" value="<%=proposemoney%>" size="3"/><br/>
征婚手续费:<input type="text" name="seekmoney<%=temp%>" value="<%=seekmoney%>" size="3"/><br/>
征婚默认标题:<input type="text" name="seektitle<%=temp%>" value="<%=seektitle%>"/><br/>
征婚默认内容:<input type="text" name="seekcontent<%=temp%>" value="<%=seekcontent%>"/><br/>
------------------<br/>
汽车比赛至少金额:<input type="text" name="racemoney<%=temp%>" value="<%=racemoney%>" size="3"/><br/>
------------------<br/>
我的密码:<input type="text"  name="checkpassword" size="8"/>

<br/><anchor><go href="<%=http_start%>fun/config.asp" method="post">
<postfield name="action" value="modify"/>
<postfield name="siteid" value="<%=siteid%>"/>
<postfield name="classid" value="<%=classid%>"/>
<postfield name="proposemoney" value="$(proposemoney<%=temp%>)"/>
<postfield name="seekmoney" value="$(seekmoney<%=temp%>)"/>
<postfield name="seektitle" value="$(seektitle<%=temp%>)"/>
<postfield name="seekcontent" value="$(seekcontent<%=temp%>)"/>
<postfield name="racemoney" value="$(racemoney<%=temp%>)"/>
<postfield name="checkpassword" value="$(checkpassword)"/>
<postfield name="sid" value="<%=sid%>"/>
</go>确定更新</anchor>

<%else%>
	
您没有权限操作！
<%end if%>
<br/>------------<br/>
<a href="<%=http_start%>fun/admin.asp?action=login&amp;siteid=<%=siteid%>&amp;classid=<%=classid%><%=jid2%>">返回上一级</a>


</p>
</card>
</wml>
<%call closeconn()%>