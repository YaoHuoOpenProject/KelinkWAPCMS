<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<%
Response.Expires = -1
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "Cache-Control", "no-cache, must-revalidate"
%>
<!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"-->
<%
    dim headurl
    if Trim(Request.QueryString)<>"" then
    headurl=replace(Request.ServerVariables("URL")&"?" & Trim(Request.QueryString),"&","&amp;") 
    session("headurl")=headurl
    end if
    
epage=request("page")
types=request("type")
if types="" then types=0
if epage="" then epage=1
if cint(epage)<1 then epage=1
tt1="<a href="""&http_start&"games/chuiniu/book_list.asp?type=1&amp;siteid="&siteid&"&amp;classid="&classid&"&amp;page="&epage&jid2&""">【英雄】</a>"
tt2="<a href="""&http_start&"games/chuiniu/book_list.asp?type=2&amp;siteid="&siteid&"&amp;classid="&classid&"&amp;page="&epage&jid2&""">【狗熊】</a>"
tt3="<a href="""&http_start&"games/chuiniu/book_list.asp?type=3&amp;siteid="&siteid&"&amp;classid="&classid&"&amp;page="&epage&jid2&""">【吹牛大王】</a>"
sql1="select tzz,sum(zb) as zz,count(id) as dd from [wap_game_chuiniu] where tzcg>0 and tzcg=zs and siteid="&siteid&" group by tzz"
sql2="select tzz,sum(zb) as zz,count(id) as dd from [wap_game_chuiniu] where tzcg>0 and tzcg<>zs and siteid="&siteid&" group by tzz"
sql3="select tzz,sum(zb) as zz,count(id) as dd from [wap_game_chuiniu] where tzcg>0 and siteid="&siteid&" group by tzz"
if types=1 then
sql=sql1
ti="-【英雄】"
tt="【英雄】"
elseif types=2 then
sql=sql2
ti="-【狗熊】"
tt="【狗熊】"
elseif types=3 then
sql=sql3
ti="-【吹牛大王】"
tt="【吹牛大王】"
end if

if types=1 or types=2 or types=3 then
	set rsq=Server.CreateObject("ADODB.Recordset")
	rsq.open sql,conn,3
	if rsq.eof and rsq.bof then
		linklist="当前没有记录！<br/>"
	else
	rsq.pagesize=8
	
	if Cint(epage)>rsq.pagecount then epage=rsq.pagecount
		
	rsq.absolutepage=epage
	
	for i=0 to rsq.pagesize-1
		if rsq.bof or rsq.eof then exit for
		set rsy=conn.execute("select tzz,sum(zb) as zz,count(id) as dd from [wap_game_chuiniu] where tzcg>0 and tzcg=zs and tzz="&rsq("tzz")&" and siteid="&siteid&" group by tzz")
		set rss=conn.execute("select tzz,sum(zb) as zz,count(id) as dd from [wap_game_chuiniu] where tzcg>0 and tzcg<>zs and tzz="&rsq("tzz")&" and siteid="&siteid&" group by tzz")
		if rsy.eof then
		sy=0
		else
		sy=rsy("dd")
		end if
		if rss.eof then
		ss=0
		else
		ss=rss("dd")
		end if
		if types=1 then sy="[赢"&sy&"]"
		if types=2 then sy="[输"&ss&"]"
		if types=3 then sy="[赢"&sy&"/输"&ss&"]"
		set rsa=Server.CreateObject("ADODB.Recordset")
		ssql="select nickname from [user] where userid="&rsq("tzz")&" and siteid="&CLng(siteid)
		rsa.open ssql,conn
		if not rsa.eof then
		linklist=linklist&"<a href="""&http_start&"bbs/userinfo.aspx?siteid="&siteid&"&amp;touserid="&rsq("tzz")&jid2&""">"&rsa("nickname")&"</a>"&sy&"<br/>"
	  end if
		rsy.close
		rss.close
		rsa.close
		set rsa=nothing
		rsq.movenext
	next
		pageinfo="共 "&rsq.recordcount&" 条,第 "&epage&"/"&rsq.pagecount&" 页<br/>"
		if epage*rsq.pagesize<rsq.recordcount then pageinfo=pageinfo&"<a href="""&http_start&"games/chuiniu/book_list.asp?type="&types&"&amp;siteid="&siteid&"&amp;classid="&request("classid")&"&amp;page="&epage+1&jid2&""">下一页</a> "
		'response.write "--2->"&epage
		if epage>1 then pageinfo=pageinfo&"<a href="""&http_start&"games/chuiniu/book_list.asp?type="&types&"&amp;siteid="&siteid&"&amp;classid="&request("classid")&"&amp;page="&epage-1&jid2&""">上一页</a>"
			pageinfo=pageinfo&"<br/>"
		if TotalPages > 1 then pageinfo=pageinfo&"<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8""/><anchor><go href="""&http_start&"games/chuiniu/book_list.asp?type="&types&"&amp;siteid="&siteid&"&amp;classid="&request("classid")&jid2&""" method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br/>"
	end if
	rsq.close
	set rsq=nothing
	tt=tt&"<br/>------------<br/>"
	linklist=linklist&"------------<br/>"
	pageinfo=pageinfo&"<a href="""&http_start&"games/chuiniu/book_list.asp?siteid="&siteid&"&amp;classid="&classid&jid2&""">吹牛排行</a><br/>"
else
linklist=tt1&"<br/>"&tt2&"<br/>"&tt3&"<br/>------------<br/>"
end if
%>
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-control" content="no-cache" />
</head>
<card id="main" title="吹牛排行榜<%=ti%>">
<p>
<%response.write tt%>
<%response.write linklist%>
<%response.write pageinfo%>
<a href="<%=http_start%>games/chuiniu/show.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%><%=jid2%>">返回首页</a>
</p>
</card>
</wml>
<%call CloseConn()%>