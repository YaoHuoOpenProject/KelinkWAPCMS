<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><%
'=========================================================
'
'产品名称：Kelink WAP自助建站系统
'版权所有：Kelink Soft
'程序制作：Chinastrong
'技术联系：QQ:85403498 
'Copyright 2005-2007 Kelink.Com - All Rights Reserved.
'
'========================================================
Response.ContentType="text/vnd.wap.wml; charset=utf-8"
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
if isnumeric(siteid) then
	siteid = Clng(siteid)
else
	siteid = 0
end if
if isnumeric(userid) then
	userid = Clng(userid)
else
	userid = 0
end if
function sendSystemMessage(messageUserid,messageTitle,messageContent)
	'do not thing...
end function
select case request("action")
	case "index"
		call index()
	case "buyhouse"
		call buyhouse()
	case "houseinfo"
		call houseInfo()
	case "buyhousego"
		call buyhousego()
	case "myhouselist"
		call myhouselist()
	case "userhouseinfo"
		call userhouseinfo()
	case "userhouseinfo"
		call userhouseinfo()
	case "sellhouse"
		call sellhouse()
	case "sellhousego"
		call sellhousego()
	case "transfer"
		call transfer()
	case "transfergo"
		call transfergo()
	case else
		call index()
end select
sub index()
	dim rs
	response.Write("<card title=""我的房子"" id=""main""><p>" & vbnewline)
	response.Write("<img src=""myhouse.gif"" alt=""我的家庭"" /><br />" & vbnewline)
	response.Write(time() & "<br />")
	response.Write("欢迎你 <a href=""" & http_start & "myfile.aspx?siteid=" & siteid & "&amp;userid=" & userid & "&amp;classid=" & classid & jid2 & """>" & nickname & "</a><br />" & vbnewline)
	response.Write("请选择:<br />")
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;classid=" & classid & jid2 & """>购买新屋</a><br />")
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=myhouselist&amp;classid=" & classid & jid2 & """>我的房屋</a><br />")
	response.Write("<br /><a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub buyhouse()
	set rs = server.CreateObject("adodb.recordset")
	dim order,sqlorder
	dim page,pagesz,totalpages,totalrecord,count
	order = request("order")
	page = request("page")
	pagesz = 5
	count = 1
	if	isnumeric(page) then
		page = Clng(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	response.Write("<card title=""购买房屋"" id=""main""><p>" & vbnewline)
	response.Write("排列:")
	if order = "1" then
		sqlorder = "buy_count"
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=0&amp;classid=" & classid & jid2 & """>时间</a>.")
		response.Write("热门.")
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=2&amp;classid=" & classid & jid2 & """>价格</a>")
	elseif order = "2" then
		sqlorder = "house_prise"
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=0&amp;classid=" & classid & jid2 & """>时间</a>.")
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=1&amp;classid=" & classid & jid2 & """>热门</a>.")
		response.Write("价格")
	else
		sqlorder = "id"
		response.Write("时间.")
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=1&amp;classid=" & classid & jid2 & """>热门</a>.")
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=2&amp;classid=" & classid & jid2 & """>价格</a>")
	end if
	response.Write("<br />" & vbnewline)
	response.Write("----------<br />" & vbnewline)
	rs.open "SELECT * FROM wap_house_list WHERE siteid = " & siteid & " ORDER BY " & sqlorder & " DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("暂没有新房屋售卖!<br />" & vbnewline)
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & "." & rs("house_name") & "<br />" & vbnewline)
			if rs("house_img") = "http://" then	
				response.Write("<img src=""" & http_start & "UploadFiles/no.gif"" alt=""没有图片"" /><br />" & vbnewline)
			else
				response.Write("<img src=""" & rs("house_img") & """ alt=""" & rs("house_name") & """ /><br />" & vbnewline)
			end if
			response.Write("价格:" & rs("house_prise") & "|<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=houseinfo&amp;id=" & rs("id") & "&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>详细信息</a><br />" & vbnewline)
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=" & order & "&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=" & order & "&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=" & order & "&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub houseinfo()
	dim house_id
	dim order,page,count
	count = 1
	house_id = request.QueryString("id")
	order = request.QueryString("order")
	page = request.QueryString("page")
	if isnumeric(house_id) then
		house_id = Clng(house_id)
	else
		house_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT * FROM wap_house_list WHERE id = " & house_id & " AND siteid = " & siteid,conn,1,2
	if rs.eof then
		response.Write("<card title=""查看信息"" id=""main""><p>" & vbnewline)
		response.Write("没有找到房间信息!<br />")
	else
		response.Write("<card title=""" & rs("house_name") & """ id=""main""><p>" & vbnewline)
		if rs("house_img") = "http://" then	
			response.Write("<img src=""" & http_start & "UploadFiles/no.gif"" alt=""没有图片"" /><br />" & vbnewline)
		else
			response.Write("<img src=""" & rs("house_img") & """ alt=""" & rs("house_name") & """ /><br />" & vbnewline)
		end if
		response.Write("+基本信息<br />")
		response.Write("名称:" & rs("house_name") & "<br />")
		response.Write("价格:" & rs("house_prise") & "币<br />")
		response.Write("购买:" & rs("buy_count") & "次<br />")
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhousego&amp;id=" & house_id & "&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>确认购买&gt;&gt;</a><br />")
		response.Write("+属性信息<br />")
		response.Write("房间数:" & rs("house_roomnumber") & "<br />")
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>[房屋列表]</a><br />")
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub buyhousego()
	dim rs,rs1
	dim house_id
	dim order,page,count
	house_id = request.QueryString("id")
	order = request.QueryString("order")
	page = request.QueryString("page")
	if isnumeric(house_id) then
		house_id = Clng(house_id)
	else
		house_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""购买房屋"" id=""main""><p>" & vbnewline)
	rs.open "SELECT buy_count, house_prise, id FROM wap_house_list WHERE (siteid = " & siteid & ") AND (id = " & house_id & ")",conn,1,2
	if rs.eof then
		response.Write("没有找到房间信息!请返回重新再试!<br />")
	else
		if rs("house_prise") > Clng(cstr(money)) then
			response.Write("对不起,你的余额不足购买此房间!<br />")
		else
			set rs1 = conn.execute("SELECT COUNT(id) AS n FROM wap_house_user WHERE (siteid = " & siteid & ") AND (userid = " & userid & ")")
			if rs1("n") > 10 then
				response.Write("对不起,你至多可以购买10间房间!<br />")
			else
				conn.execute("INSERT INTO wap_house_user (siteid, userid, house_id) VALUES (" & siteid & "," & userid & "," & house_id & ")")
				conn.execute("UPDATE [user] SET money = money - " & rs("house_prise") & " WHERE siteid = " & siteid & " AND userid = " & userid)
				rs("buy_count") = rs("buy_count") + 1
				rs.update
				'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'购买房子，扣除"&rs("house_prise")&"个','"&rs("house_prise")&"')")    
				Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','购买房子','-" & rs("house_prise") & "',money,'" & userid & "','" & nickname & "','','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
				response.Write("购买成功!<br />")
				response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=myhouselist" & jid2 & """>查看我的房屋</a><br />")
			end if
			rs1.close
		end if
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>[房屋列表]</a><br />")
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub myhouselist()'这里也充当管理页面，也是查看用户拥有哪些房屋的页面
	dim rs
	dim id
	dim count
	count = 1
	id = request("id")'其实是用户ID
	if isnumeric(id) and len(id) <> 0 then
		id = Clng(id)
	else
		id = Clng(userid)
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""查看信息"" id=""main"">")
	response.Write("<p>")
	if id = Clng(userid) then
		response.Write("我的房屋列表<br />")
	else
		response.Write("查看Ta的房屋<br />")
	end if
	response.Write("----------<br />")
	rs.open "SELECT wap_house_user.id, wap_house_user.userid, wap_house_list.house_name FROM wap_house_user INNER JOIN wap_house_list ON wap_house_user.siteid = wap_house_list.siteid AND wap_house_user.house_id = wap_house_list.id WHERE (wap_house_user.siteid = " & siteid & ") AND (wap_house_user.userid = " & id & ") ORDER BY wap_house_user.id DESC",conn,1,2
	if rs.eof then
		response.Write("暂未有房屋!<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;action=buyhouse&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>点击这里</a>购买吧!<br />")
	else
		do while not rs.eof
			response.Write(count & ".<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=userhouseinfo&amp;id=" & rs("id") & jid2 & """>" & rs("house_name") & "</a>")
			if rs("userid") = userid then
				response.Write("[<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=sellhouse&amp;id=" & rs("id") & jid2 & """>销售</a>.<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=transfer&amp;id=" & rs("id") & jid2 & """>转让</a>]")
			end if
			response.Write("<br />")
			count = count + 1
			rs.movenext
		loop
	end if
	rs.close
	response.Write("----------<br />")
	response.Write("<input name=""id"" type=""text""  value="""" /><br />" & vbnewline)
	response.Write("<anchor>查看Ta的房屋" & vbnewline)
	response.Write(" <go href=""" & http_start & "fun/house.asp"" method=""post"" accept-charset=""utf-8"">" & vbnewline)
	response.Write("  <postfield name=""id"" value=""$(id)""/>" & vbnewline)
	response.Write("  <postfield name=""sid"" value=""" & sid & """/>" & vbnewline)
	response.Write("  <postfield name=""siteid"" value=""" & siteid & """/>" & vbnewline)
	response.Write("  <postfield name=""classid"" value=""" & classid & """/>" & vbnewline)
	response.Write("  <postfield name=""action"" value=""myhouselist""/>" & vbnewline)
	response.Write(" </go>" & vbnewline)
	response.Write("</anchor>" & vbnewline)
	response.Write("<br />" & vbnewline)
	response.Write("<br /><a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub userhouseinfo()
	dim rs
	dim id
	set rs = server.CreateObject("adodb.recordset")
	id = request.QueryString("id")
	if isnumeric(id) then
		id = Clng(id)
	else
		id = 0
	end if
	response.Write("<card title=""查看房屋信息"" id=""main"">" & vbnewline)
	response.Write("<p>" & vbnewline)
	rs.open "SELECT wap_house_user.id, wap_house_list.house_name, wap_house_user.userid, wap_house_user.house_id, wap_house_user.buy_time, wap_house_list.house_img, wap_house_list.house_prise, wap_house_list.house_roomnumber, [user].nickname FROM wap_house_user INNER JOIN wap_house_list ON wap_house_user.siteid = wap_house_list.siteid AND wap_house_user.house_id = wap_house_list.id INNER JOIN [user] ON wap_house_user.userid = [user].userid AND wap_house_user.siteid = [user].siteid WHERE     (wap_house_user.siteid = " & siteid & ") AND (wap_house_user.id = " & id & ")",conn,1,2
	if rs.eof then
		response.Write("对不起,没有找到房屋信息,请返回再试!<br />")
	else
		if rs("house_img") = "http://" then	
			response.Write("<img src=""" & http_start & "UploadFiles/no.gif"" alt=""没有图片"" /><br />" & vbnewline)
		else
			response.Write("<img src=""" & rs("house_img") & """ alt=""" & rs("house_name") & """ /><br />" & vbnewline)
		end if
		response.Write("房名:" & rs("house_name") & "<br />")
		response.Write("房主:<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("userid") & jid2 & """>" & rs("nickname") & "</a><br />" & vbnewline)
		response.Write("房间数:" & rs("house_roomnumber") & "<br />")
		response.Write("购买时间:" & formatdatetime(rs("buy_time"),2) & "<br />")
		if rs("userid") <> userid then
			response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=houseinfo&amp;id=" & rs("house_id") & jid2 & """>我也要购买</a>")
		end if
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=myhouselist&amp;id=" & rs("userid") & jid2 & """>[返回列表]</a><br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub sellhouse()
	dim rs
	dim id
	set rs = server.CreateObject("adodb.recordset")
	id = request.QueryString("id")
	if isnumeric(id) then
		id = Clng(id)
	else
		id = 0
	end if
	response.Write("<card title=""销售房屋"" id=""main"">" & vbnewline)
	response.Write("<p>" & vbnewline)
	rs.open "SELECT wap_house_user.id, wap_house_list.house_name, wap_house_user.userid, wap_house_user.house_id, wap_house_user.buy_time, wap_house_list.house_img, wap_house_list.house_prise, wap_house_list.house_roomnumber FROM         wap_house_user INNER JOIN wap_house_list ON wap_house_user.siteid = wap_house_list.siteid AND wap_house_user.house_id = wap_house_list.id WHERE     (wap_house_user.siteid = " & siteid & ") AND (wap_house_user.id = " & id & ")",conn,1,2
	if rs.eof then
		response.Write("对不起,没有找到房屋信息,请返回再试!<br />")
	elseif rs("userid") <> userid then
		response.Write("对不起,你不是该房屋主人!<br />")
	else
		response.Write("房名:" & rs("house_name") & "<br />")
		response.Write("买入价格:" & rs("house_prise") & "<br />")
		response.Write("销售价格:" & rs("house_prise")/2 & "<br />")
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=userhouseinfo&amp;id=" & rs("id") & jid2 & """>返回房屋</a><br />")
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=sellhousego&amp;id=" & rs("id") & jid2 & """>确认销售</a><br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=myhouselist&amp;id=" & jid2 & """>[我的房屋]</a><br />")
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub sellhousego()
	dim rs
	dim id
	set rs = server.CreateObject("adodb.recordset")
	id = request.QueryString("id")
	if isnumeric(id) then
		id = Clng(id)
	else
		id = 0
	end if
	response.Write("<card title=""销售房屋"" id=""main"">" & vbnewline)
	response.Write("<p>" & vbnewline)
	rs.open "SELECT wap_house_user.id, wap_house_list.house_name, wap_house_user.userid, wap_house_user.house_id, wap_house_user.buy_time, wap_house_list.house_img, wap_house_list.house_prise, wap_house_list.house_roomnumber FROM         wap_house_user INNER JOIN wap_house_list ON wap_house_user.siteid = wap_house_list.siteid AND wap_house_user.house_id = wap_house_list.id WHERE     (wap_house_user.siteid = " & siteid & ") AND (wap_house_user.id = " & id & ")",conn,1,2
	if rs.eof then
		response.Write("对不起,没有找到房屋信息,请返回再试!<br />")
	elseif rs("userid") <> userid then
		response.Write("对不起,你不是该房屋主人!<br />")
	else
		conn.execute("DELETE FROM wap_house_user WHERE siteid = " & siteid & " AND id = " & id)
		conn.execute("UPDATE [user] SET money = money + " & Clng(rs("house_prise")/2) & " WHERE siteid = " & siteid & " AND userid = " & userid)
    'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'销售房子得"&Clng(rs("house_prise")/2)&"个','"&rs("house_prise")&"')")    
		Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','销售房子','" & Clng(rs("house_prise")/2) & "',money,'" & userid & "','" & nickname & "','','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
		response.Write("销售成功,已为你增加" & rs("house_prise")/2 & "币!<br />")
		response.Write("<br /><a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=myhouselist&amp;id=" & jid2 & """>返回我的房屋</a><br />")
	end if
	rs.close
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub transfer()
	dim rs
	dim id
	set rs = server.CreateObject("adodb.recordset")
	id = request.QueryString("id")
	if isnumeric(id) then
		id = Clng(id)
	else
		id = 0
	end if
	response.Write("<card title=""转让房屋"" id=""main"">" & vbnewline)
	response.Write("<p>" & vbnewline)
	rs.open "SELECT wap_house_user.id, wap_house_list.house_name, wap_house_user.userid, wap_house_user.house_id, wap_house_user.buy_time, wap_house_list.house_img, wap_house_list.house_prise, wap_house_list.house_roomnumber FROM         wap_house_user INNER JOIN wap_house_list ON wap_house_user.siteid = wap_house_list.siteid AND wap_house_user.house_id = wap_house_list.id WHERE     (wap_house_user.siteid = " & siteid & ") AND (wap_house_user.id = " & id & ")",conn,1,2
	if rs.eof then
		response.Write("对不起,没有找到房屋信息,请返回再试!<br />")
	elseif rs("userid") <> userid then
		response.Write("对不起,你不是该房屋主人!<br />")
	else
		response.Write("房名:" & rs("house_name") & "<br />")
		response.Write("买入价格:" & rs("house_prise") & "<br />")
		response.Write("用户ID:<br />")
		response.Write("<input name=""doid"" type=""text""  value="""" /><br />" & vbnewline)
		response.Write("<anchor>确认转让" & vbnewline)
		response.Write(" <go href=""" & http_start & "fun/house.asp"" method=""post"" accept-charset=""utf-8"">" & vbnewline)
		response.Write("  <postfield name=""doid"" value=""$(doid)""/>" & vbnewline)
		response.Write("  <postfield name=""id"" value=""" & id & """/>" & vbnewline)
		response.Write("  <postfield name=""sid"" value=""" & sid & """/>" & vbnewline)
		response.Write("  <postfield name=""siteid"" value=""" & siteid & """/>" & vbnewline)
		response.Write("  <postfield name=""classid"" value=""" & classid & """/>" & vbnewline)
		response.Write("  <postfield name=""action"" value=""transfergo""/>" & vbnewline)
		response.Write(" </go>" & vbnewline)
		response.Write("</anchor>" & vbnewline)
		response.Write("<br />" & vbnewline)
		response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=userhouseinfo&amp;id=" & rs("id") & jid2 & """>返回房屋</a><br />")
		response.Write("注意:转让房屋不会增加你的币数!<br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=myhouselist&amp;id=" & jid2 & """>[我的房屋]</a><br />")
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub transfergo()
	dim rs,rs1
	dim id,doid
	set rs = server.CreateObject("adodb.recordset")
	set rs1 = server.CreateObject("adodb.recordset")
	id = request.Form("id")
	doid = request.Form("doid")
	if isnumeric(id) then
		id = Clng(id)
	else
		id = 0
	end if
	if isnumeric(doid) then
		doid = Clng(doid)
	else
		doid = 0
	end if
	response.Write("<card title=""转让房屋"" id=""main"">" & vbnewline)
	response.Write("<p>" & vbnewline)
	rs.open "SELECT wap_house_user.id, wap_house_list.house_name, wap_house_user.userid, wap_house_user.house_id, wap_house_user.buy_time, wap_house_list.house_img, wap_house_list.house_prise, wap_house_list.house_roomnumber FROM         wap_house_user INNER JOIN wap_house_list ON wap_house_user.siteid = wap_house_list.siteid AND wap_house_user.house_id = wap_house_list.id WHERE     (wap_house_user.siteid = " & siteid & ") AND (wap_house_user.id = " & id & ")",conn,1,2
	if rs.eof then
		response.Write("对不起,没有找到房屋信息,请返回再试!<br />")
	elseif rs("userid") <> userid then
		response.Write("对不起,你不是该房屋主人!<br />")
	elseif doid = userid then
		response.Write("不可以转让给自己!<br />")
	else
		rs1.open "select * FROM [user] WHERE (siteid = " & siteid & ") AND (userid = " & doid & ")",conn,1,2
		if rs1.eof then
			response.Write("对不起,未找到对方用户信息!<br />")
		else
			conn.execute("UPDATE wap_house_user SET userid = " & doid & " WHERE (siteid = " & siteid & ") AND (id = " & id & ")")
'			sendSystemMessage()
			response.Write("转让房屋成功!<br />")
		end if
		rs1.close
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=myhouselist&amp;id=" & jid2 & """>[我的房屋]</a><br />")
	response.Write("<a href=""" & http_start & "fun/house.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[家庭首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs1 = nothing
	set rs = nothing
	closeconn
	response.End()
end sub

%>
