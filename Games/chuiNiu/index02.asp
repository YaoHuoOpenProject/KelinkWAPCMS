<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"--><%
Response.Expires = -1
response.buffer=True
response.cachecontrol="Private"%>
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="Mon, 1 Jan 1990 00:00:00 GMT"/>
</head>
<card id="main" title="【吹牛内容管理条例】">
<p align="left">
<img src='logo.gif' alt='【游戏帮助】'/><br/>
【吹牛内容管理条例】<br/>
一．不得利用本游戏危害国家安全、泄露国家秘密,不得侵犯国家社会集体的和公民的合法权益,不得利用本游戏的制作、复制和传播下列信息:<br/>
(一)煽动抗拒、破坏宪法和法律、行政法规实施的.<br/>
(二)煽动颠覆国家政权,推翻社会主义制度的.<br/>
(三)煽动分裂国家、破坏国家统一的.<br/>
(四)煽动民族仇恨、民族歧视,破坏民族团结的.<br/>
(五)捏造或者歪曲事实,散布谣言,扰乱社会秩序的.<br/>
(六)宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的.<br/>
(七)公然侮辱他人或者捏造事实诽谤他人的,或者进行其他恶意攻击的.<br/>
(八)损害国家机关信誉的.<br/>
(九)其他违反宪法和法律行政法规的.<br/>
(十)进行商业广告行为的.<br/>
二.互相尊重,对自己的言论和行为负责.<br/>
三.开局内容禁止带有侮辱、毁谤、造谣类的或是有其含义的各种语言,否则我们会将其删除,并扣除所有黄金!严重者给与封号处理!<br/>
四.如发现恶意刷排行的用户从排行榜撤下并回收黄金,严重者给与封号处理!<br/>
五.本游戏纯属娱乐,不得带有任何的赌博性质行为.<br/>
-----------<br/>
<a href="<%=http_start%>games/chuiniu/index.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">返回吹牛</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=getpid(request("classid"))%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
<%conn.close
set conn=nothing
%>
</p>
</card>
</wml>