<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<%
Response.Expires = -1
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "Cache-Control", "no-cache, must-revalidate"
%>
<!--#include file="../../ASP_API/conn.asp"--><!--#include file="../../ASP_API/userconfig.asp"--><%

dim childid,classname,position,siteimg,introduce
sub getclassname(id)
	set rs=conn.execute("select * from [class] where classid="&id)
	if not rs.eof then
		childid=rs("childid")
		classname=rs("classname")
		position=rs("position")
		siteimg=rs("siteimg")
		introduce=rs("introduce")
	end if
	rs.close
	set rs=nothing
end sub

showsearch()
sub showsearch()

  book_classid=request("classid")

  sql=" and gametype=4 and siteid="&siteid 

	pagesz=10


		if request("page")<>"" then
			absPageNum = abs(Clng(request("page")))
		Else
			absPageNum = 1 
		End If
dim totalsql,totalrs,totalall,condition
condition=sql '(将上面的查询条件付给condition)	
sql="select top "&pagesz&" userid,nickname,counts,times from [wap_games_count]  where id not in (select top "&(absPageNum-1)*pagesz&" id from [wap_games_count] where 1=1 "&condition&"  order by counts DESC) "&condition&" order by counts DESC"
totalrs="select count(id) as n from [wap_games_count] where 1=1 "&condition

set totalrs=conn.execute(totalrs)
if not totalrs.eof then
	totalall=Clng(totalrs("n"))
end if
totalrs.close
set totalrs=nothing
set rs=conn.execute(sql)
	
	

	if rs.eof and rs.bof then
		linklist="当前没有记录！<br/>"
	else
		'rs.PageSize = pagesz
		totalrecord = totalall '共多少条记录
		'TotalPages = rs.PageCount '共多少页记录
			if totalrecord mod pagesz=0 then
    	TotalPages= totalrecord \ pagesz
  	else
    	TotalPages= totalrecord \ pagesz+1
  	end if
     

		
		If absPageNum > TotalPages Then
			absPageNum = TotalPages
		elseif absPageNum < 1 Then
			absPageNum = 1
		End If
		pageinfo="共 "&totalrecord&" 条,第 "&absPageNum&"/"&TotalPages&" 页<br/>"
		If absPageNum <> TotalPages Then pageinfo=pageinfo&"<a href="""&http_start&"games/zajindan/book_list.asp?action=search&amp;siteid="&siteid&"&amp;classid="&request("classid")&"&amp;page="&absPageNum+1&jid2&""">下一页</a> "
		If absPageNum > 1 Then pageinfo=pageinfo&"<a href="""&http_start&"games/zajindan/book_list.asp?action=search&amp;siteid="&siteid&"&amp;classid="&request("classid")&"&amp;page="&absPageNum-1&jid2&""">上一页</a>"
			pageinfo=pageinfo&"<br/>"
		if TotalPages > 1 then pageinfo=pageinfo&"<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8""/><anchor><go href="""&http_start&"games/zajindan/book_list.asp?action=search&amp;siteid="&siteid&"&amp;classid="&request("classid")&jid2&""" method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br/>"
		for i=1 to pagesz
		
		  
			linklist=linklist&"<a href="""&http_start&"bbs/userinfo.aspx?siteid="&siteid&"&amp;touserid="&rs("userid")&jid2&""">"&rs("nickname")&"</a>["&rs("counts")&"分/"&rs("times")&"次]<br/>"
			rs.movenext
			if rs.eof then exit for
		next
	end if
	rs.close
	set rs=nothing
%>
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-control" content="no-cache" />
</head>
<card id="main" title="本游戏排行榜">
<p>
<%response.write linklist%>--------<br/>
<%response.write pageinfo%>
<a href="<%=http_start%>games/zajindan/show.asp?siteid=<%=siteid%>&amp;classid=<%=request("classid")%><%=jid2%>">返回上级</a><br/>
<a href="<%=http_start%>wapindex.asp?siteid=<%=siteid%><%=jid2%>">返回首页</a>
</p>
</card>
<%response.write cardlist
%></wml><%
end sub

call CloseConn()%>