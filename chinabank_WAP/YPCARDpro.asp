<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<wml><!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/userconfig.asp"--><%
Response.Expires = -1
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "Cache-Control", "no-cache, must-revalidate"

dim isclose,remark,tomoney,rs
isclose=0
set rs=conn.execute("select tomoney,isclose,remark from [chinabank_wap_config] where banktype=0 and  siteid="&siteid)
if not rs.eof then
	 tomoney=rs("tomoney")
	 isclose=rs("isclose")
	 remark=rs("remark")
end if
rs.close
set rs=nothing
randomize
ranNum=int(900*rnd)+100
ranNum=minute(now)&second(now)&ranNum	
%>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<card id="main" title="易宝一卡通卡支付">
<p align="left">
<%if Cint(isclose)=1 then%>
<br/>
支付金额:<br/>
<input type="text" format="*m"  name="p3_Amt<%=ranNum%>" value=""/><br/>

易宝一卡通卡序列号:<br/>
<input type="text" format="*m"  name="pa7_cardNo<%=ranNum%>" value=""/><br/>

充值卡密码:<br/>
<input type="text" format="*m"  name="pa8_cardPwd<%=ranNum%>" value=""/><br/>

<anchor> 马 上 支 付
 <go href="<%=http_start%>chinabank_wap/req.asp" method="post" accept-charset="utf-8">
  <postfield name="p3_Amt" value="$(p3_Amt<%=ranNum%>)"/>
  <postfield name="pa7_cardNo" value="$(pa7_cardNo<%=ranNum%>)"/>
  <postfield name="pa8_cardPwd" value="$(pa8_cardPwd<%=ranNum%>)"/>
  <postfield name="pd_FrpId" value="YPCARD"/>
 	<postfield name="pa_MP" value="<%=siteid%>"/>
  <postfield name="sid" value="<%=sid%>"/>
 </go>
 </anchor>
 <br/>---------<br/>
<%else%>
	此网站站长还没有开启此项功能！<br/>
<%end if%>
<b>备注：<%=remark%><br/>(点击支付后可能显示乱码，点击“Click Back”返回，点击“我的充值记录”查看充值结果)</b>
  <br/>---------<br/>
<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">返回上级</a>	<br/>
<a href="<%=http_start%>myfile.aspx?siteid=<%=siteid%><%=jid2%>">我的地盘</a>	

</p>
</card></wml><%call closeconn()%>