<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><% Response.ContentType="text/vnd.wap.wml; charset=gb2312" %><?xml version="1.0" encoding="GB2312"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<wml><!--#include file="../ASP_API/cookies.asp"--><!--#include file="../ASP_API/conngb.asp"--><!-- #include file="yeepayCommon.asp" -->
<%
'**************************************************
'* @Description 易宝支付非银行卡支付专业版接口范例 
'* @V3.0
'* @Author rui.xin
'**************************************************

	Dim p2_Order
	Dim p3_Amt
	Dim p8_Url
	Dim pa7_cardNo
	Dim pa8_cardPwd
	Dim pd_FrpId
	Dim returnMsg

	'	商家设置用户购买商品的支付信息.
	''易宝支付平台统一使用GBK/GB2312编码方式,参数如用到中文，请注意转码
	
	'	商户订单号,选填.
	''若不为""，提交的订单号必须在自身账户交易中唯一;为""时，易宝支付会自动生成随机的商户订单号.
	'p2_Order				=	request("p2_Order")
	curdate = now()										' 根据系统时间产生订单，格式：YYYYMMDD-v_mid-HMMSS
	p2_Order = year(curdate) & right("0"&month(curdate),2) &  right("0"&day(curdate),2) & right("0"&hour(curdate),2) & right("0"&minute(curdate),2) & right("0"&second(curdate),2) &"-" & siteid

	
	
	'	支付金额,必填.
	''单位:元，精确到分.
	p3_Amt					=	request("p3_Amt")
	if p3_Amt="" then p3_Amt="0" end if
	'	商户接收支付成功数据的地址,支付成功后易宝支付会向该地址发送两次成功通知.
	'p8_Url					= request("p8_Url")		
	p8_Url=http_start&"chinabank_wap/callBack.asp"
	
	'	商户扩展信息.
	''商户可以任意填写1K 的字符串,支付成功时将原样返回，此参数如用到中文，请注意转码.
	pa_MP						= request("pa_MP") '用于存放网站ID
	
	' 非银行卡序列号
	pa7_cardNo			= request("pa7_cardNo")
	if pa7_cardNo="" then pa7_cardNo="0" end if
	' 非银行卡密码
	pa8_cardPwd			= request("pa8_cardPwd")
	if pa8_cardPwd="" then pa8_cardPwd="0" end if
	'	银行编码
	pd_FrpId			  = request("pd_FrpId")
	
  '以下将重要数据库写入数据库中
  sql="insert into [chinabank_wap_order](siteid,userid,orderid,amount,cardno,cardpwd,frpid,code,banktype)values"
  sql=sql&"('"&siteid&"',"&userid&",'"&p2_Order&"',"&p3_Amt&",'"&pa7_cardNo&"','"&pa8_cardPwd&"','"&pd_FrpId&"','0',0)"
  conn.execute(sql)
  closeconn()
	
	' 非银行卡支付正式请求,接口测试通过后请调用该正式请求
	 returnMsg = annulCard(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	' 非银行卡支付测试请求,测试时请调用该请求
	'returnMsg = annulCardTest(p2_Order,p3_Amt,p8_Url,pa_MP,pa7_cardNo,pa8_cardPwd,pd_FrpId)
	

%>   
<card id="main" title="神州行卡支付">
<p align="left">
<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">&lt;&lt;Click Back</a>	<br/>
<b>支付结果：</b><br/>
<%
	
returnMsg=replace(returnMsg,"&","&amp;") 
returnMsg=replace(returnMsg,"<BR>","<br/>")
response.write returnMsg
%>
<br/><br/>
<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">&lt;&lt;FORWARD</a>	<br/>
<a href="<%=http_start%>myfile.asp?siteid=<%=siteid%><%=jid2%>">&lt;&lt;BACKZone</a>	<br/>
<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">返回上级</a>	<br/>
</p>
</card></wml>