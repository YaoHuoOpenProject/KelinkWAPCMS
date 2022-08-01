<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/userconfig.asp"--><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<card id="wapindex" title="易宝支付充值">
<p align="left">
我现有RMB￥:<b><%=RMB%></b><br/>
<a href="<%=http_start%>chinabank_wap/mylist.asp?siteid=<%=siteid%>&amp;banktype=0<%=jid2%>">我的充值记录</a><br/>

-------------<br/>
1.<a href="<%=http_start%>chinabank_wap/SZXpro.asp?siteid=<%=siteid%><%=jid2%>">神州行卡支付</a><br/>
2.<a href="<%=http_start%>chinabank_wap/UNICOMpro.asp?siteid=<%=siteid%><%=jid2%>">联通卡支付</a><br/>
3.<a href="<%=http_start%>chinabank_wap/SNDApro.asp?siteid=<%=siteid%><%=jid2%>">盛大卡支付</a><br/>
4.<a href="<%=http_start%>chinabank_wap/ZHTpro.asp?siteid=<%=siteid%><%=jid2%>">征途卡支付</a><br/>
5.<a href="<%=http_start%>chinabank_wap/JUNNETpro.asp?siteid=<%=siteid%><%=jid2%>">骏网一卡通支付</a><br/>
6.<a href="<%=http_start%>chinabank_wap/QQCARDpro.asp?siteid=<%=siteid%><%=jid2%>">Q币支付</a><br/>
7.<a href="<%=http_start%>chinabank_wap/YPCARDpro.asp?siteid=<%=siteid%><%=jid2%>">易宝一卡通卡支付</a><br/>
-------------<br/><%if managerlvl="00" or managerlvl="00" then%>

此支付接口为易宝支付平台，如果要开通，请登录WEB建站系统后台 &gt;&gt; 网站管理 &gt;&gt; 虚拟货币充值。有详细的易宝支付平台接口使用方法！一步一步按说明操作配置。注意，需要电脑才能操作完成！
	<br/>
<%end if%>
<br/><a href="<%=http_start%>chinabank_wap/selbank_wap.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%><%=jid2%>">返回上级</a>
</p>
</card>
</wml>
<%call closeconn()%>