﻿<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"-->
<%
nadu=3
id=Cint(request("id")) '1--18
mymoney=abs(CLng(request("mymoney"))) '1-200
classid=request("classid")
password=""
nickname=""
money=0

beishu="1"



if mymoney > 200 then mymoney=200 end if

if mymoney=0 then 
	 response.redirect http_start&"games/gunzhuoqiu/show.asp?state=6&siteid="&siteid&"&classid="&classid  &"&sid="&sid   '下注
	response.end
end if

'校验用户名
if userid="" then
   response.redirect http_start&"waplogin.asp?siteid="&siteid&"&classid="&classid   
   
end if

set rs=conn.execute("select nickname,password,money,SidTimeOut from [user] where  userid="&Clng(userid) &" and siteid="&CLng(siteid))
if not rs.eof then
	 nickname=rs("nickname")
	 password=rs("password")
	 money=rs("money")
	 SidTimeOut=rs("SidTimeOut")
end if
rs.close
set rs=nothing
   if len(password)<>16 then
   	  password=MD5(password)
   end if
if isNull(SidTimeOut) or SidTimeOut<>sessionid then
   response.redirect http_start&"error.asp?typevalue=5" 
   response.end	 	
end if

'校验金钱是否够
if mymoney > Clng(money) then
	 response.redirect http_start&"games/gunzhuoqiu/show.asp?state=1&siteid="&siteid&"&classid="&classid  &"&sid="&sid   '钱不够了
    
else
	
   set ifrs=conn.execute("select top 1 id from [wap_games_count] where gametype=3 and userid="&userid&" and siteid="&siteid)
   if ifrs.eof then
      conn.execute("insert into wap_games_count (siteid,userid,nickname,times,counts,gametype)values("&siteid&","&userid&",'"&nickname&"',1,"&(mymoney*beishu)&",3)")
	 end if
	 ifrs.close
	 set ifrs=nothing
	
	KL_CheckIPTime=5 '5秒后有效
	
	if  1=1 then
	   '随机显示
	   randomize
     ranid1=int(15*rnd)
     
	   randomize
     ranid2=int(15*rnd)
     
	   randomize
     ranid3=int(15*rnd)
     
     allid=ranid1 + ranid2 + ranid3
     allidstr=ranid1 &"_"& ranid2 &"_"& ranid3

   

  if  id=allid then '赢了  
  	
  	
    conn.execute("update [user] set money=money+"&(mymoney*beishu)&" where userid="&userid)  
    conn.execute("update [wap_games_count] set nickname='"&nickname&"',times=times+1,counts=counts+"&(mymoney)&" where  gametype=3 and userid="&userid&" and siteid="&siteid )
	
	  response.redirect http_start&"games/gunzhuoqiu/show.asp?allidstr="&allidstr&"&state=2&getmoney="&(mymoney) &"&siteid="&siteid&"&classid="&classid   &"&sid="&sid  
 else
  	
  	conn.execute("update [user] set money=money-"&mymoney&" where userid="&userid)
    conn.execute("update [wap_games_count] set  nickname='"&nickname&"',times=times+1 where  gametype=3 and userid="&userid&" and siteid="&siteid )
  	response.redirect http_start&"games/gunzhuoqiu/show.asp?allidstr="&allidstr&"&state=4&getmoney="&mymoney &"&siteid="&siteid&"&classid="&classid&"&sid="&sid
  end if
	
  else
	  response.redirect http_start&"games/gunzhuoqiu/show.asp?state=5&siteid="&siteid&"&classid="&classid  &"&sid="&sid   '超时
  end if
	
end if



call CloseConn()
%>
