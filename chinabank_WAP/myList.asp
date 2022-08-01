<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/userconfig.asp"--><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<card id="wapindex" title="易宝支付支付记录">
<p align="left">
<%
touserid=request("touserid")
if touserid="" then touserid=userid end if
if managerlvl="00" or managerlvl="01" then
	  if touserid="0" then
	  	 sql=" and siteid="&siteid 
	  elseif touserid<>"" then	  	 
	  	 sql=" and siteid="&siteid &" and userid="&touserid
	  end if
	  
	
else

sql=" and siteid="&siteid &" and userid="&userid

end if


	sql=" and banktype=0 " 


	dim pagesz,strsql,rs,abspagenum,totalpages,totalrecord

  if getPages<>"" and getPages<>"0" then
  	pagesz=abs(Clng(getPages))
  	if pagesz>30 then pagesz=30 end if
  else
	  pagesz=10
  end if

	if request("page")<>"" then
		 absPageNum = abs(Clng(request("page")))
	Else
		 absPageNum = 1 
	End If
	if absPageNum = 1  then
    'conn.execute("DELETE FROM chinabank_wap_order WHERE siteid="&siteid&" and  (DATEDIFF(hh, addtime, GETDATE()) > 720)")
	end if
	
	
dim totalsql,totalrs,totalall,condition
condition=sql '(将上面的查询条件付给condition)	
sql="select top "&pagesz&" * from chinabank_wap_order  where id not in (select top "&(absPageNum-1)*pagesz&" id from chinabank_wap_order where 1=1 "&condition&"  order by id DESC) "&condition&" order by id DESC"

  if getTotal<>"" and getTotal<>"0" then
  	 totalall=Clng(getTotal)
   else
     totalrs="select count(id) as n from chinabank_wap_order where 1=1 "&condition     
     set totalrs=conn.execute(totalrs)
     if not totalrs.eof then
     	totalall=Clng(totalrs("n"))
     end if
     totalrs.close
     set totalrs=nothing
  end if
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
		If absPageNum <> TotalPages Then pageinfo=pageinfo&"<a href="""&http_start&"chinabank_wap/mylist.asp?action=banklog&amp;getTotal="&totalall&"&amp;getPages="&pagesz&"&amp;siteid="&siteid&"&amp;classid="&classid&"&amp;touserid="&touserid&"&amp;page="&absPageNum+1&jid2&""">下一页</a> "
		If absPageNum > 1 Then pageinfo=pageinfo&"<a href="""&http_start&"chinabank_wap/mylist.asp?action=banklog&amp;getTotal="&totalall&"&amp;getPages="&pagesz&"&amp;siteid="&siteid&"&amp;classid="&classid&"&amp;touserid="&touserid&"&amp;page="&absPageNum-1&jid2&""">上一页</a>"
			 pageinfo=pageinfo&"<br/>"
		if TotalPages > 1 then pageinfo=pageinfo&"<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href="""&http_start&"chinabank_wap/mylist.asp?action=banklog&amp;touserid="&touserid&"&amp;getTotal="&totalall&"&amp;getPages="&pagesz&"&amp;siteid="&siteid&"&amp;classid="&classid&jid2&""" method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br/>"
		kk=1
		index=pagesz*(absPageNum-1)
		for i=1 to pagesz
		  index=index+1
			linklist=linklist&(index+kk-1)&"."
			
			
			linklist=linklist&"订单:"&rs("orderid")&" 金额:"&rs("amount")&" 卡号:"&rs("cardNo")&" 类型:"&rs("FrpID")&" <br/>"
			linklist=linklist&"结果:<b>"&getCode(rs("code"))&"("&rs("codeInfo")&")</b> 时间:"&rs("addtime")&" <br/>--------------<br/>"

			rs.movenext
			if rs.eof then exit for
		next
	end if
rs.close
set rs=nothing

%>
<%if managerlvl="00" or managerlvl="01" then%>
<b>会员ID:</b><input type="text" format="*N"  name="touserid<%=ranNum%>" value="<%=touserid%>" size="8"/>
 <anchor>查询
 <go href="<%=http_start%>chinabank_wap/mylist.asp" method="get">
  <postfield name="action" value="banklog"/>
  <postfield name="siteid" value="<%=siteid%>"/>  
  <postfield name="touserid" value="$(touserid<%=ranNum%>)"/> 
  <postfield name="classid" value="0"/> 
  <postfield name="sid" value="<%=sid%>"/> 
 </go>
</anchor><br/>(ID=0时表示所有用户)<br/><%end if%>

<%
response.write linklist
response.write pageinfo
%>




<a href="<%=http_start%>chinabank_wap/myinfo.asp?siteid=<%=siteid%><%=jid2%>">返回上级</a>

</p>
</card>
</wml>
<%call closeconn()

function getCode(strs)
if strs="1" then
	 getCode="支付成功"
	else
		getCode="支付失败"
end if
end function


%>