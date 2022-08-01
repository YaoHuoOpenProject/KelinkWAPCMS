<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><% Response.ContentType="text/vnd.wap.wml; charset=utf-8" %><%
'=========================================================
'
'产品名称：Kelink WAP自助建站系统
'版权所有：Kelink Soft
'程序制作：Weefic
'技术联系：QQ:85403498 
'Copyright 2005-2007 Kelink.Com - All Rights Reserved.
'
'========================================================
Response.Expires = -1
response.buffer = True
response.cachecontrol = "Private"
IP = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
if IP="" then IP = Request.ServerVariables("REMOTE_ADDR")'获取来访ip 
%><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/userconfig.asp"--><%
siteid = trim(siteid)
userid = trim(userid)
classid = trim(request("classid"))
if classid="" then classid="0" end if
if isnumeric(siteid) then
	siteid = int(siteid)
else
	siteid = 0
end if
if isnumeric(userid) then
	userid = int(userid)
else
	userid = 0
end if
select case request("action")
	case "index"
		call index()'婚姻首页
	case "propose"
		call propose()
	case "proposego"
		call proposego()
	case "proposelist"
		call proposelist()
	case "seek"
		call seek()
	case "seekgo"
		call seekgo()
	case "seeklist"
		call seeklist()
	case "seekdetail"
		call seekdetail()
	case "myhouse"
		call myhouse()
	case "mycar"
		call mycar()
	case "receivepropose"
		call receivepropose()
	case "flagpropose"
		call flagpropose()
	case "sendpropose"
		call sendpropose()
	case "marrylist"
		call marrylist()
	case "divorce"
		call divorce()
	case "divorcego"
		call divorcego()
	case else
		call index()
end select
sub index()'首页页面
dim rs
sql="select count(id)  from wap_message where isnew=1 and siteid="&siteid&" and  touserid="&userid
set rs=conn.execute(sql)
if not rs.eof then
	mm=rs(0)
end if	
rs.Close
set rs=nothing
dim headurl
if Trim(Request.QueryString)<>"" then
headurl=replace(Request.ServerVariables("URL")&"?" & Trim(Request.QueryString),"&","&amp;") 
session("headurl")=headurl
end if
	response.Write("<card title=""恋爱婚姻"" id=""main""><p>" & vbnewline)
	response.Write("<img src=""mylove.gif"" alt=""恋爱婚姻"" /><br />" & vbnewline)
	response.Write(time() & "<br />")
	response.Write("欢迎你 <a href=""" & http_start & "myfile.aspx?siteid=" & siteid & "&amp;userid=" & userid & "&amp;classid=" & classid & jid2 & """>" & nickname & "</a><br />" & vbnewline)
	response.Write("您有<a href="""&http_start&"bbs/messagelist.aspx?siteid="&siteid&jid2&""">"&mm&"</a>条新信息！<br/>")
  
	'-----------------------
	response.Write("+最新征婚信息<br/>" & vbnewline)
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT top 5 * FROM wap_marry_seek WHERE (DATEDIFF(day, time, GETDATE()) < 8) AND (siteid = " & siteid & ") AND (state = 0) ORDER BY id DESC",conn,1,2
	totalrecord = rs.recordcount
	if totalrecord = 0 then
		response.Write("暂没有征婚发布!<br />" & vbnewline)
	else
		count=1
		do while (not rs.eof) 
			response.Write(count & ".<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=seekdetail&amp;id=" & rs("id") & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>" & rs("title") & "</a><br />")
			rs.movenext
			count=count+1
		loop
	end if
	rs.close
	set rs=nothing
	
	'=======================
	response.Write("+恋爱殿堂<br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=propose" & jid2 & """>我要求婚</a>.<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=seek" & jid2 & """>我要征婚</a><br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=proposelist" & jid2 & """>求婚列表</a>.<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=seeklist" & jid2 & """>征婚列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=marrylist" & jid2 & """>恋爱殿堂</a>.<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=divorce" & jid2 & """>我要离婚</a><br />")
	response.Write("+个人资产<br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=myhouse" & jid2 & """>我的房子</a>.<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>我的汽车</a><br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=receivepropose" & jid2 & """>我收到的请求</a><br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=sendpropose" & jid2 & """>我发出的请求</a><br />")
	
	if managerlvl="00" or managerlvl="01" then
	response.Write("<br /><a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>站长管理设置</a><br />" & vbnewline)
  end if
	response.Write("<br /><a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & getpid(classid) & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	closeconn
	response.End()
end sub
'我要求婚
sub propose()
	dim rs
	dim marry_proposemoney
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT * FROM wap_fun_setting WHERE siteid = " & siteid,conn,1,2
	if rs.eof then
		marry_proposemoney = 1314
		rs.addnew
		rs("siteid") = siteid
		rs.update
	else
		marry_proposemoney = rs("marry_proposemoney")
	end if
	rs.close
	randomize
  ranNum=int(900*rnd)+100
	response.Write("<card title=""我要求婚"" id=""main""><p>" & vbnewline)
	response.Write("欢迎来到婚姻登记所,每次求婚需要" & marry_proposemoney & "手续费,有效期为7天!<br />")
	response.Write("请输入对方ID:<br />")
	response.Write("<input name=""doid"&ranNum&""" type=""text"" format=""*N"" value=""" & request("doid") & """ /><br />")
	response.Write("爱情表白:<br />")
	response.Write("<input name=""lovesay"" type=""text"" maxlength=""50"" value=""请你嫁给我,好吗?""/><br />")
	response.Write("<anchor>确认申请")
	response.Write("<go href=""" & http_start & "fun/marry.asp"" method=""post"" accept-charset=""utf-8"">")
	response.Write("<postfield name=""doid"" value=""$(doid"&ranNum&")""/>")
	response.Write("<postfield name=""lovesay"" value=""$(lovesay)""/>")
	response.Write("<postfield name=""sid"" value=""" & sid & """/>")
	response.Write("<postfield name=""siteid"" value=""" & siteid & """/>")
	response.Write("<postfield name=""classid"" value=""" & classid & """/>")
	response.Write("<postfield name=""action"" value=""proposego""/>")
	response.Write("</go></anchor><br />")
	response.Write("注意:申请后7天内不能重复发布求婚或征婚信息,实行一夫一妻制!<br />")
	response.Write("<br /><a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub proposego()
	dim rs
	dim doid,lovesay,errormsg
	dim marry_proposemoney
	doid = trim(request("doid"))
	lovesay = trim(tohtm(request("lovesay")))
	if isnumeric(doid) then
		doid = int(doid)
	else
		doid = 0
	end if
	if len(lovesay) = 0 then
		lovesay = "无"
	end if
	conn.execute("UPDATE wap_marry_propose SET state = 1 WHERE (DATEDIFF(day,requesttime,GETDATE()) > 7)")
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""我要求婚"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_fun_setting WHERE siteid = " & siteid,conn,1,2
	if rs.eof then
		marry_proposemoney = 1314
		rs.addnew
		rs("siteid") = siteid
		rs.update
	else
		marry_proposemoney = rs("marry_proposemoney")
	end if
	rs.close
	if (userid = doid) then
		response.Write("不可以向自己求婚!<br />")
	elseif int(marry_proposemoney) > int(cstr(money)) then
		response.Write("对不起,你的余额不足!<br />")
	else
		rs.open "SELECT * FROM [user] WHERE siteid = " & siteid & " AND userid = " & doid,conn,1,2
		if rs.eof then
			response.Write("未找到对方!<br />")
			response.Write("1.<anchor>返回重新输入<prev/></anchor><br />")
			'response.Write("2.从我的好友选择<br/>")
			rs.close
		else
			rs.close
			rs.open "SELECT * FROM wap_marry_relationship WHERE (userid = " & doid & " OR userid = " & userid & " OR marryid = " & doid & " OR marryid = " & userid & " ) AND siteid = " & siteid,conn,1,2
			if not rs.eof then
				if (rs("userid") = userid) or (rs("marryid") = userid) then
					response.Write("你已经结婚了,不能重复提交请求!请先离婚。<br />")
				else
					response.Write("对方已经结婚了,加油吧!<br />")
				end if
				rs.close
			else
				rs.close
				rs.open "SELECT * FROM wap_marry_propose WHERE userid = " & userid & " AND siteid = " & siteid & " AND  (DATEDIFF(day,requesttime,GETDATE()) < 8) AND state = 0 ORDER BY requesttime DESC",conn,1,2
				if not rs.eof then
					response.Write("对不起,7天内不可以重复发出请求!<br />")
				else
					rs.addnew
					rs("siteid") = siteid
					rs("userid") = userid
					rs("requestedid") = doid
					rs("lovesay") = lovesay
					rs.update
					'这里是添加系统消息、扣取费用
					conn.execute("insert into wap_message(siteid,userid,nickname,title,content,touserid,issystem)values("&siteid&","&siteid&",'系统消息','会员:"&nickname&" 向你爱情表白','表白内容:"&lovesay&"，[url="&http_start&"fun/marry.asp?siteid="&siteid&"&amp;classid="&classid&"&amp;action=receivepropose&amp;sid=[sid]]点击查看[/url]',"&doid&",0)")

					'你收到结婚请求,<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=receivepropose"">点击这里查看</a>")
					conn.execute("UPDATE [user] SET money = money - " & marry_proposemoney & " WHERE siteid = " & siteid & " AND userid = " & userid)
					
					Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','结婚求爱','-" & marry_proposemoney & "',money,'" & userid & "','" & nickname & "','','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
					
					response.Write("发送请求成功!<br />")
				end if
				rs.close
			end if
		end if
	end if
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub proposelist()
  saveurl()
	dim rs
	dim page,pagesz,totalrecord,totalpages,count
	page = request("page")
	pagesz = 10
	count = 1
	if	isnumeric(page) then
		page = int(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""爱情表白"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_marry_propose.id, wap_marry_propose.siteid, wap_marry_propose.userid, wap_marry_propose.requestedid, wap_marry_propose.requesttime, wap_marry_propose.lovesay, wap_marry_propose.state, user1.nickname AS nick1, user2.nickname AS nick2 FROM wap_marry_propose INNER JOIN [user] AS user1 ON wap_marry_propose.userid = user1.userid INNER JOIN [user] AS user2 ON wap_marry_propose.requestedid = user2.userid WHERE (wap_marry_propose.siteid = " & siteid & ") AND (wap_marry_propose.state = 0) AND (DATEDIFF(day, wap_marry_propose.requesttime, GETDATE()) < 8) ORDER BY wap_marry_propose.id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("暂没有爱情表白!<br />" & vbnewline)
	else
		if not rs.eof or not rs.bof then
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("userid") & jid2 & """>" & rs("nick1") & "</a>对<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("requestedid") & jid2 & """>" & rs("nick2") & "</a>说:" & rs("lovesay") & "<br />" & vbnewline)
			rs.movenext
			count = count + 1
		loop
	 end if
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=proposelist&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=proposelist&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=proposelist&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub receivepropose()
	dim rs
	dim page,pagesz,totalrecord,totalpages,count
	page = request("page")
	pagesz = 10
	count = 1
	if	isnumeric(page) then
		page = int(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""爱情表白"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_marry_propose.id, wap_marry_propose.siteid, wap_marry_propose.userid, wap_marry_propose.requestedid, wap_marry_propose.requesttime, wap_marry_propose.lovesay, wap_marry_propose.state, user1.nickname AS nick1, user2.nickname AS nick2 FROM wap_marry_propose INNER JOIN [user] AS user1 ON wap_marry_propose.userid = user1.userid INNER JOIN [user] AS user2 ON wap_marry_propose.requestedid = user2.userid WHERE (wap_marry_propose.siteid = " & siteid & ") AND (wap_marry_propose.state = 0) AND 	(wap_marry_propose.requestedid = " & userid & ") AND (DATEDIFF(day, wap_marry_propose.requesttime, GETDATE()) < 8) ORDER BY wap_marry_propose.id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	response.Write("我收到的爱情表白:<br />")
	if totalrecord = 0 then
		response.Write("你暂没有收到爱情表白!<br />" & vbnewline)
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("userid") & jid2 & """>" & rs("nick1") & "</a>对你说:" & rs("lovesay") & "(" & rs("requesttime") & ")<br />" & vbnewline)
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=flagpropose&amp;id=" & rs("id") & "&amp;flag=1" & jid2 & """>[接受]</a><a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=flagpropose&amp;id=" & rs("id") & "&amp;flag=0" & jid2 & """>[拒绝]</a><br />")
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=receivepropose&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=receivepropose&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=receivepropose&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub flagpropose()
	dim rs,rs1
	dim id
	id = request.QueryString("id")
	flag = request.QueryString("flag")
	if isnumeric(id) then
		id = int(id)
	else
		id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	set rs1 = server.CreateObject("adodb.recordset")
	response.Write("<card title=""爱情表白"" id=""main"">")
	response.Write("<p>" & vbnewline)
	rs.open "SELECT  id, state, userid, lovesay FROM wap_marry_propose WHERE (siteid = " & siteid & ") AND (requestedid = " & userid & ") AND (state = 0) AND (DATEDIFF(day, requesttime, GETDATE()) < 8)",conn,1,2
	if rs.eof then
		response.Write("你暂没有收到爱情表白!<br />" & vbnewline)
	else
		rs1.open "SELECT id, siteid, userid, marryid, lovesay, marrytime FROM wap_marry_relationship WHERE (siteid = " & siteid & ") AND (userid = " & userid & ") OR (siteid = " & siteid & ") AND (marryid = " & userid & ") OR (siteid = " & siteid & ") AND (userid = " & rs("userid") & ") OR (siteid = " & siteid & ") AND (marryid = " & rs("userid") & ")",conn,1,2
		if not rs1.eof then'理论上不会发生
			response.Write("内部错误,该请求已被取消!<br />")
		else
			if flag = "1" then '接受
				rs("state") = 1
				rs.update
				rs1.addnew
				rs1("siteid") = siteid
				rs1("userid") = rs("userid")
				rs1("marryid") = userid
				rs1("lovesay") = rs("lovesay")
				rs1.update
				conn.execute("UPDATE wap_marry_propose SET state = 1 WHERE siteid = " & siteid & " AND (userid = " & userid & " OR requestedid = " & userid & ")")
				conn.execute("insert into wap_message(siteid,userid,nickname,title,content,touserid,issystem)values("&siteid&","&siteid&",'系统消息','会员:"&nickname&" 同意跟你结婚了','同意时间:"&now&"，[url="&http_start&"fun/marry.asp?siteid="&siteid&"&amp;classid="&classid&"&amp;action=marrylist&amp;sid=[sid]]点击查看[/url]',"&rs("userid")&",0)")

				response.Write("接受成功!<br />")
			else
				rs("state") = 1
				rs.update
				response.Write("拒绝成功!<br />")
				conn.execute("insert into wap_message(siteid,userid,nickname,title,content,touserid,issystem)values("&siteid&","&siteid&",'系统消息','会员:"&nickname&" 拒绝同你结婚','时间:"&now&"',"&rs("userid")&",0)")

			end if
		end if
		rs1.close
	end if
	response.Write("<anchor>点击这里返回<prev/></anchor><br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	set rs1 = nothing
	closeconn
	response.End()
end sub
sub sendpropose()
	dim rs
	dim page,pagesz,totalrecord,totalpages,count
	page = request("page")
	pagesz = 10
	count = 1
	if	isnumeric(page) then
		page = int(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""我的求婚"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_marry_propose.id, wap_marry_propose.siteid, wap_marry_propose.userid, wap_marry_propose.requestedid, wap_marry_propose.requesttime, wap_marry_propose.lovesay, wap_marry_propose.state, user1.nickname AS nick1, user2.nickname AS nick2 FROM wap_marry_propose INNER JOIN [user] AS user1 ON wap_marry_propose.userid = user1.userid INNER JOIN [user] AS user2 ON wap_marry_propose.requestedid = user2.userid WHERE (wap_marry_propose.siteid = " & siteid & ") AND 	(wap_marry_propose.userid = " & userid & ") AND (DATEDIFF(day, wap_marry_propose.requesttime, GETDATE()) < 8) ORDER BY wap_marry_propose.id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	response.Write("我发送的爱情表白:<br />")
	if totalrecord = 0 then
		response.Write("你暂没有发送爱情表白!<br />" & vbnewline)
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".你对<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("requestedid") & jid2 & """>" & rs("nick2") & "</a>说:" & rs("lovesay") & "<br />")
			response.Write("状态:")
			if int(rs("state")) = 0 then
				response.Write("未阅<br />")
			else
				response.Write("已阅<br />")
			end if
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=sendpropose&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=sendpropose&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=sendpropose&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
'我要征婚
sub seek()
	dim rs
	dim marry_seekmoney,marry_seektitle,marry_seekcontent
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT * FROM wap_fun_setting WHERE siteid = " & siteid,conn,1,2
	if rs.eof then
		marry_seekmoney = 1314
		marry_seektitle = "我要征婚"
		marry_seekcontent = "征婚内容"
		rs.addnew
		rs("siteid") = siteid
		rs.update
	else
		marry_seekmoney = rs("marry_proposemoney")
		marry_seektitle = rs("marry_seektitle")
		marry_seekcontent = rs("marry_seekcontent")
	end if
	rs.close
	response.Write("<card title=""我要征婚"" id=""main""><p>" & vbnewline)
	response.Write("欢迎来到征婚姻登记所,每次征婚需要" & marry_seekmoney & "手续费,有效期为7天!不限制征婚次数!<br />")
	response.Write("征婚标题:<br />")
	response.Write("<input name=""title"" type=""text"" maxlength=""25"" value=""" & marry_seektitle & """/><br />")
	response.Write("征婚内容:<br />")
	response.Write("<input name=""content"" type=""text"" maxlength=""500"" value=""" & marry_seekcontent & """/><br />")
	response.Write("金钱要求:<br />")
	response.Write("<input name=""property_money"" type=""text"" maxlength=""20"" value=""100"" format=""*N"" /><br />")
	response.Write("经验要求:<br />")
	response.Write("<input name=""property_experience"" type=""text"" maxlength=""20"" value=""100"" format=""*N"" /><br />")
	response.Write("<anchor>确认发布")
	response.Write("<go href=""" & http_start & "fun/marry.asp"" method=""post"" accept-charset=""utf-8"">")
	response.Write("<postfield name=""title"" value=""$(title)""/>")
	response.Write("<postfield name=""content"" value=""$(content)""/>")
	response.Write("<postfield name=""property_money"" value=""$(property_money)""/>")
	response.Write("<postfield name=""property_experience"" value=""$(property_experience)""/>")
	response.Write("<postfield name=""sid"" value=""" & sid & """/>")
	response.Write("<postfield name=""siteid"" value=""" & siteid & """/>")
	response.Write("<postfield name=""classid"" value=""" & classid & """/>")
	response.Write("<postfield name=""action"" value=""seekgo""/>")
	response.Write("</go></anchor><br />")
	response.Write("注意:申请后7天内不能重复发布求婚或征婚信息,实行一夫一妻制!<br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub seekgo()
	dim rs
	dim title,content,property_money,property_experience
	dim marry_seekmoney
	title = trim(tohtm(request.Form("title")))
	content = trim(tohtm(request.Form("content")))
	property_money = request.Form("property_money")
	property_experience = request.Form("property_experience")
	if isnumeric(property_money) then
		property_money = int(property_money)
	else
		property_money = 100
	end if
	if isnumeric(property_experience) then
		property_experience = int(property_experience)
	else
		property_experience = 100
	end if
	conn.execute("UPDATE wap_marry_seek SET state = 1 WHERE (DATEDIFF(day,time,GETDATE()) > 7)")
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""我要征婚"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_fun_setting WHERE siteid = " & siteid,conn,1,2
	if rs.eof then
		marry_seekmoney = 1314
		rs.addnew
		rs("siteid") = siteid
		rs.update
	else
		marry_seekmoney = rs("marry_seekmoney")
	end if
	rs.close
	if len(title) = 0 then
		response.Write("征婚标题不能为空,请返回重新输入!<br />")
	elseif len(content) = 0 then
		response.Write("征婚内容不能为空,请返回重新输入!<br />")
	elseif int(marry_seekmoney) > int(cstr(money)) then
		response.Write("对不起,你的余额不足!<br />")
	else
		rs.open "SELECT top 1 * FROM wap_marry_seek",conn,1,2
		rs.addnew
		rs("siteid") = siteid
		rs("userid") = userid
		rs("title") = title
		rs("content") = content
		rs("property_money") = property_money
		rs("property_experience") = property_experience
		rs.update
		rs.close
		conn.execute("UPDATE [user] SET money = money - " & marry_seekmoney & " WHERE siteid = " & siteid & " AND userid = " & userid)
		Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','发布征婚','-" & marry_seekmoney & "',money,'" & userid & "','" & nickname & "','','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
		response.Write("发布成功!<br />")
	end if	
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub

'征婚列表
sub seeklist()
	dim rs
	dim page,pagesz,totalrecord,totalpages,count
	page = request("page")
	pagesz = 10
	count = 1
	if	isnumeric(page) then
		page = int(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""征婚列表"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_marry_seek WHERE (DATEDIFF(day, time, GETDATE()) < 8) AND (siteid = " & siteid & ") AND (state = 0) ORDER BY id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("暂没有征婚发布!<br />" & vbnewline)
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=seekdetail&amp;id=" & rs("id") & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>" & rs("title") & "</a>("&rs("time")&")<br />")
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=seeklist&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=seeklist&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=seeklist&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	'response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub seekdetail()
  saveurl()
	dim rs
	dim page,seekid
	page = request("page")
	seekid = request("id")
	if isnumeric(seekid) then
		seekid = int(seekid)
	else
		seekid = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT wap_marry_seek.id, wap_marry_seek.siteid, wap_marry_seek.userid, wap_marry_seek.title, wap_marry_seek.[content], wap_marry_seek.time, wap_marry_seek.property_money, wap_marry_seek.property_experience, wap_marry_seek.state, user1.nickname FROM wap_marry_seek INNER JOIN [user] AS user1 ON wap_marry_seek.userid = user1.userid WHERE (DATEDIFF(day, wap_marry_seek.time, GETDATE()) < 8) AND (wap_marry_seek.siteid = " & siteid & ") AND (wap_marry_seek.state = 0) AND (wap_marry_seek.id = " & seekid & ")",conn,1,2
	response.Write("<card title=""查看信息"" id=""main""><p>" & vbnewline)
	if rs.eof then
		response.Write("对不起,该信息不存在已或被删除或过期!<br />")
	else
		response.Write("征婚者:<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("userid") & jid2 & """>" & rs("nickname") & "</a><br />")
		response.Write("标题:" & rs("title") & "<br />")
		
		response.Write("内容:" & rs("content") & "<br/>")
		response.Write("发布时间:" & rs("time") & "<br/>")
		response.Write("金钱要求:" & rs("property_money") & "币<br />")
		response.Write("经验值要求:" & rs("property_experience") & "<br />")
		response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=propose&amp;doid=" & rs("userid") & jid2 & """>向Ta求婚</a><br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid="&siteid&"&amp;action=seeklist&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()	
end sub
sub myhouse()
	response.Redirect(replace(http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2,"&amp;","&"))
end sub
sub mycar()
	response.Redirect(replace(http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2,"&amp;","&"))
end sub
sub marrylist()
  saveurl()
	dim rs
	dim page,pagesz,totalrecord,totalpages,count
	page = request("page")
	pagesz = 10
	count = 1
	if	isnumeric(page) then
		page = int(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""恋爱殿堂"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_marry_relationship.id, wap_marry_relationship.userid, wap_marry_relationship.marryid, wap_marry_relationship.lovesay, wap_marry_relationship.marrytime, user_1.nickname, [user].nickname AS nickname1 FROM         wap_marry_relationship INNER JOIN [user] ON wap_marry_relationship.siteid = [user].siteid AND wap_marry_relationship.marryid = [user].userid INNER JOIN [user] AS user_1 ON wap_marry_relationship.siteid = user_1.siteid AND wap_marry_relationship.userid = user_1.userid WHERE (wap_marry_relationship.siteid = " & siteid & ") ORDER BY wap_marry_relationship.id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("目前没有已在婚恋中的用户!<br />" & vbnewline)
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("userid") & jid2 & """>" & rs("nickname") & "</a>与<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("marryid") & jid2 & """>" & rs("nickname1") & "</a>相恋中(" & formatdatetime(rs("marrytime"),2) & ")<br />")
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=marrylist&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=marrylist&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;action=marrylist&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub divorce()
  saveurl()
	dim rs
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""我要离婚"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_marry_relationship.id, wap_marry_relationship.userid, wap_marry_relationship.marryid, wap_marry_relationship.lovesay, wap_marry_relationship.marrytime, [user].nickname, user_1.nickname AS nickname1 FROM wap_marry_relationship INNER JOIN [user] ON wap_marry_relationship.userid = [user].userid AND wap_marry_relationship.siteid = [user].siteid INNER JOIN [user] AS user_1 ON wap_marry_relationship.userid = user_1.userid AND wap_marry_relationship.siteid = user_1.siteid WHERE (wap_marry_relationship.siteid = " & siteid & ") AND (wap_marry_relationship.userid = " & userid & ") OR (wap_marry_relationship.siteid = " & siteid & ") AND (wap_marry_relationship.marryid = " & userid & ")",conn,1,2
	if rs.eof then
		response.Write("你暂没结婚,无法离婚!<br />")
	else
		if rs("userid") = userid then
			response.Write("你决定<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("marryid") & jid2 & """>" & rs("nickname1") & "</a>离婚吗?<br />")
		else
			response.Write("你决定<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("userid") & jid2 & """>" & rs("nickname") & "</a>离婚吗?<br />")
		end if
		response.Write("离婚后,你和Ta的关系将会解除!<br />")
	end if
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=divorcego" & jid2 & """>确认离婚</a><br />")
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub divorcego()
	dim rs
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""我要离婚"" id=""main""><p>" & vbnewline)
	rs.open "SELECT id, userid, marryid, lovesay, marrytime FROM wap_marry_relationship WHERE (siteid = " & siteid & ") AND (userid = " & userid & ") OR (siteid = " & siteid & ") AND (marryid = " & userid & ")",conn,1,2
	if rs.eof then
		response.Write("你暂没结婚,无法离婚!<br />")
	else
		touserid=rs("userid")
		marryid=rs("marryid")
		if Cstr(touserid)<>Cstr(userid) then
			 marryid=touserid
		end if
		rs.delete
		rs.update
		response.Write("离婚成功!<br />")
		conn.execute("insert into wap_message(siteid,userid,nickname,title,content,touserid,issystem)values("&siteid&","&siteid&",'系统消息','会员:"&nickname&" 跟你离婚了','时间:"&now&"',"&marryid&",0)")

	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=index" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub

'标准连接
'<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>XX</a>
'标准输入框
response.Write("<input name="""" type=""text""  value="""" format="""" /><br />" & vbnewline)
'POST
response.Write("<anchor>发送" & vbnewline)
response.Write(" <go href=""" & http_start & "fun/marry.asp"" method=""post"" accept-charset=""utf-8"">" & vbnewline)
response.Write("  <postfield name="""" value=""""/>" & vbnewline)
response.Write("  <postfield name=""sid"" value=""" & sid & """/>" & vbnewline)
response.Write("  <postfield name=""siteid"" value=""" & siteid & """/>" & vbnewline)
response.Write("  <postfield name=""classid"" value=""" & classid & """/>" & vbnewline)
response.Write("  <postfield name=""action"" value=""""/>" & vbnewline)
response.Write(" </go>" & vbnewline)
response.Write("</anchor>" & vbnewline)
response.Write("<br />" & vbnewline)
'card
response.Write("<card title="""" id=""main"">" & vbnewline)
response.Write("<p>" & vbnewline)
'一般初始化
dim rs
set rs = server.CreateObject("adodb.recordset")
'无图片链接
response.Write("<img src=""" & http_start & "UploadFiles/no.gif"" alt=""没有图片"" /><br />" & vbnewline)
'用户连接
response.Write("<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & 1000 & jid2 & """>XX</a><br />" & vbnewline)
%>
