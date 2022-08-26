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
function cartype(thistype)
	select case thistype
		case "1"
			cartype = "平路型"
		case "2"
			cartype = "沙漠型"
		case "3"
			cartype = "山地型"
		case "4"
			cartype = "野外型"
		case "5"
			cartype = "障碍型"
		case "6"
			cartype = "综合型"
		case else
			cartype = "未知"
	end select
end function
select case request("action")
	case "buycar"
		call buycar()
	case "carinfo"
		call carinfo()
	case "buycargo"
		call buycargo()
	case "mycar"
		call mycar()
	case "mycarinfo"
		call mycarinfo()
	case "mycarsetdefault"
		call mycarsetdefault()
	case "addrace"
		call addrace()
	case "addracego"
		call addracego()
	case "racelist"
		call racelist()
	case "racedetail"
		call racedetail()
	case "joinrace"
		call joinrace()
	case "carrepair"
		call carrepair()
	case "sellcar"
		call sellcar()
	case "sellcargo"
		call sellcargo()
	case else
		call index()
end select
sub index()'首页
	response.Write("<card title=""我的汽车首页"" id=""main""><p>" & vbnewline)
	response.Write("<img src=""mycar.gif"" alt=""汽车首页"" /><br />" & vbnewline)
	response.Write("欢迎你 <a href=""" & http_start & "myfile.aspx?siteid=" & siteid & "&amp;userid=" & userid & "&amp;classid=" & classid & jid2 & """>" & nickname & "</a><br />" & vbnewline)
	response.Write("+比赛信息:<br />" & vbnewline)
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT top 5 * FROM wap_car_race WHERE siteid=" & siteid & " AND timeout=0 ORDER BY id DESC",conn,1,2
	if rs.eof then
		response.Write("暂无新的比赛!<br />" & vbnewline)
	else
		do while not rs.eof
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=racedetail&amp;id=" & rs("id") & "&amp;classid=" & classid & jid2 & """>" & rs("nickname") & "挑战" & rs("stake") & "币</a><br />" & vbnewline)
			rs.movenext
		loop
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=racelist" & "&amp;classid=" & classid & jid2 & """>查看更多比赛&gt;&gt;</a><br />" & vbnewline)
	end if
	rs.close
	response.Write("+我的汽车<br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=mycar&amp;classid=" & classid & jid2 & """>我的车辆</a>.")
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=mycar&amp;classid=" & classid & jid2 & """>车辆维护</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=addrace&amp;classid=" & classid & jid2 & """>发起比赛</a>.")
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=racelist" & "&amp;classid=" & classid & jid2 & """>比赛列表</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;classid=" & classid & jid2 & """>购买新车</a>.")
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=mycar&amp;classid=" & classid & jid2 & """>出售车辆</a><br />" & vbnewline)
	response.Write("<br /><a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>婚姻首页</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub buycar()'购买车辆
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
	response.Write("<card title=""购买车辆"" id=""main""><p>" & vbnewline)
	response.Write("排列:")
	if order = "1" then
		sqlorder = "buy_count"
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=0&amp;classid=" & classid & jid2 & """>时间</a>.")
		response.Write("热门.")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=2&amp;classid=" & classid & jid2 & """>价格</a>")
	elseif order = "2" then
		sqlorder = "car_prise"
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=0&amp;classid=" & classid & jid2 & """>时间</a>.")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=1&amp;classid=" & classid & jid2 & """>热门</a>.")
		response.Write("价格")
	else
		sqlorder = "id"
		response.Write("时间.")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=1&amp;classid=" & classid & jid2 & """>热门</a>.")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=2&amp;classid=" & classid & jid2 & """>价格</a>")
	end if
	response.Write("<br />" & vbnewline)
	response.Write("----------<br />" & vbnewline)
	rs.open "SELECT * FROM wap_car_list WHERE siteid = " & siteid & " ORDER BY " & sqlorder & " DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("暂没有新车售卖!<br />" & vbnewline)
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & "." & rs("car_name") & "<br />" & vbnewline)
			if rs("car_img") = "http://" then	
				response.Write("<img src=""" & http_start & "UploadFiles/no.gif"" alt=""没有图片"" /><br />" & vbnewline)
			else
				response.Write("<img src=""" & rs("car_img") & """ alt=""" & rs("car_name") & """ /><br />" & vbnewline)
			end if
			response.Write("价格:" & rs("car_prise") & "|<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=carinfo&amp;id=" & rs("id") & "&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>参数</a><br />" & vbnewline)
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=" & order & "&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=" & order & "&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=" & order & "&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub carinfo()
	dim car_id
	dim order,page
	car_id = request.QueryString("id")
	order = request.QueryString("order")
	page = request.QueryString("page")
	if isnumeric(car_id) then
		car_id = Clng(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT * FROM wap_car_list WHERE id = " & car_id & " AND siteid = " & siteid,conn,1,2
	if rs.eof then
		response.Write("<card title=""查看信息"" id=""main""><p>" & vbnewline)
		response.Write("没有找到车辆信息!<br />")
	else
		response.Write("<card title=""" & rs("car_name") & """ id=""main""><p>" & vbnewline)
		if rs("car_img") = "http://" then	
			response.Write("<img src=""" & http_start & "UploadFiles/no.gif"" alt=""没有图片"" /><br />" & vbnewline)
		else
			response.Write("<img src=""" & rs("car_img") & """ alt=""" & rs("car_name") & """ /><br />" & vbnewline)
		end if
		response.Write("+基本信息<br />")
		response.Write("名称:" & rs("car_name") & "<br />")
		response.Write("价格:" & rs("car_prise") & "币<br />")
		response.Write("购买:" & rs("buy_count") & "次<br />")
		response.Write("类型:" & cartype(rs("car_type")) & "<br />")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycargo&amp;id=" & car_id & "&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>确认购买&gt;&gt;</a><br />")
		response.Write("+属性信息<br />")
		response.Write("动力:" & rs("property_power") & "<br />")
		response.Write("轮胎:" & rs("property_tire") & "<br />")
		response.Write("稳定:" & rs("property_steady") & "<br />")
		response.Write("操控:" & rs("property_control") & "<br />")
		response.Write("油量:" & rs("property_oilvolume") & "<br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>[汽车列表]</a><br />")
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub buycargo()
	dim car_id
	dim order,page
	dim car_prise
	car_id = request.QueryString("id")
	order = request.QueryString("order")
	page = request.QueryString("page")
	if isnumeric(car_id) then
		car_id = Clng(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT * FROM wap_car_list WHERE id = " & car_id & " AND siteid = " & siteid,conn,1,2
	response.Write("<card title=""购买车辆"" id=""main""><p>" & vbnewline)
	if rs.eof then
		response.Write("没有找到车辆!<br />")
	else
		car_prise = rs("car_prise")
		if Clng(car_prise) > Clng(cstr(money)) then
			response.Write("对不起,你的余额不足!<br />")
		else
			conn.execute("INSERT INTO wap_car_user (siteid,userid,nickname,car_id,car_name,car_img,car_type,property_tire,property_steady,property_control,property_power,property_oilvolume) VALUES (" & siteid & "," & userid & ",'" & nickname & "'," & car_id & ",'" & rs("car_name") & "','" & rs("car_img") & "'," & rs("car_type") & "," & rs("property_tire") & "," & rs("property_steady") & "," & rs("property_control") & "," & rs("property_power") & "," & rs("property_oilvolume") & ")")
			conn.execute("UPDATE [user] SET money = money - " & car_prise & " WHERE userid = " & userid)
			Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','购买汽车','-" & car_prise & "',money,'" & userid & "','" & nickname & "','','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
           
			'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'购买汽车，扣掉"&car_prise&"个','"&car_prise&"')")    
				
			response.Write("购买成功!<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>查看我的车辆</a><br />")
		end if
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=buycar&amp;order=" & order & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>[汽车列表]</a><br />")
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub mycar()
	dim rs
	dim count
	count = 1
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""我的车辆"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_car_user WHERE siteid = " & siteid & " AND userid = " & userid,conn,1,2
	if rs.eof then
		response.Write("对不起,你暂时还没有车辆!<br />")
	else
		do while not rs.eof
			response.Write(count & ".<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=mycarinfo&amp;id=" & rs("id") & "&amp;classid=" & classid & jid2 & """>[" & rs("car_name") & "]</a><br />")
			if rs("car_default") = 0 then
				response.Write("[<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=mycarsetdefault&amp;id=" & rs("id") & "&amp;classid=" & classid & jid2 & """>设为默认</a>.")
			else
				response.Write("[设为默认.")
			end if
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=mycarinfo&amp;id=" & rs("id") & "&amp;classid=" & classid & jid2 & "#repair"">维修</a>.")
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=sellcar&amp;id=" & rs("id") & "&amp;classid=" & classid & jid2 & """>出售</a>")
			response.Write("]<br />")
			count = count + 1
			rs.movenext
		loop
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub mycarinfo()
	dim rs
	dim car_id
	dim order,page
	car_id = request.QueryString("id")
	if isnumeric(car_id) then
		car_id = Clng(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT wap_car_user.id, wap_car_user.siteid, wap_car_user.userid, wap_car_user.nickname, wap_car_user.car_id, wap_car_user.car_name, wap_car_user.car_img, wap_car_user.car_type, wap_car_user.buy_time, wap_car_user.race_times, wap_car_user.race_win, wap_car_user.race_lost, wap_car_user.property_tire, wap_car_user.property_steady, wap_car_user.property_control, wap_car_user.property_power, wap_car_user.property_oilvolume, wap_car_user.car_default, wap_car_list.property_tire AS property_tire1, wap_car_list.property_steady AS property_steady1, wap_car_list.property_control AS property_control1, wap_car_list.property_power AS property_power1, wap_car_list.property_oilvolume AS property_oilvolume1, wap_car_list.car_prise FROM wap_car_user INNER JOIN wap_car_list ON wap_car_user.car_id = wap_car_list.id AND wap_car_list.siteid = wap_car_user.siteid AND wap_car_user.userid = " & userid & " AND wap_car_list.siteid = " & siteid & " AND wap_car_user.id = " & car_id,conn,1,2
	if rs.eof then
		response.Write("<card title=""查看信息"" id=""main""><p>" & vbnewline)
		response.Write("没有找到车辆信息!<br />")
	else
		response.Write("<card title=""" & rs("car_name") & """ id=""main""><p>" & vbnewline)
		if rs("car_img") = "http://" then	
			response.Write("<img src=""" & http_start & "UploadFiles/no.gif"" alt=""没有图片"" /><br />" & vbnewline)
		else
			response.Write("<img src=""" & rs("car_img") & """ alt=""" & rs("car_name") & """ /><br />" & vbnewline)
		end if
		response.Write("+基本信息<br />")
		response.Write("名称:" & rs("car_name") & "<br />")
		response.Write("类型:" & cartype(rs("car_type")) & "<br />")
		response.Write("+属性信息<br />")
		response.Write("动力:" & rs("property_power") & "/" & rs("property_power1") & "<br />")
		response.Write("轮胎:" & rs("property_tire") & "/" & rs("property_tire1") & "<br />")
		response.Write("稳定:" & rs("property_steady") & "/" & rs("property_steady1") & "<br />")
		response.Write("操控:" & rs("property_control") & "/" & rs("property_control1") & "<br />")
		response.Write("油量:" & rs("property_oilvolume") & "/" & rs("property_oilvolume1") & "<br />")
		response.Write("<a href=""#repair"">维修车辆</a><br />")
		response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
		response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
		response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
		response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
		response.Write("</p></card>")
		dim repair_money,car_prise
		car_prise = rs("car_prise")
		repair_money = 0+car_prise*0.1*(rs("property_power1")-rs("property_power"))/rs("property_power1")
		repair_money = repair_money+car_prise*0.1*(rs("property_tire1")-rs("property_tire"))/rs("property_tire1")
		repair_money = repair_money+car_prise*0.1*(rs("property_steady1")-rs("property_steady"))/rs("property_steady1")
		repair_money = repair_money+car_prise*0.1*(rs("property_control1")-rs("property_control"))/rs("property_control1")
		repair_money = repair_money+car_prise*0.1*(rs("property_oilvolume1")-rs("property_oilvolume"))/rs("property_oilvolume1")
		repair_money = Clng(repair_money)+10
		response.Write("<card title=""车辆维修"" id=""repair""><p>" & vbnewline)
		response.Write("名称:" & rs("car_name") & "<br />")
		response.Write("维修金额:" & repair_money & "<br />")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=carrepair&amp;id=" & rs("id") & "&amp;classid=" & classid & jid2 & """>确认维修</a><br />")
		response.Write("<a href=""#main"">查看车辆信息</a><br />")
		response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
		response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
		response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
		response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
		response.Write("</p></card></wml>")
	end if
	rs.close
	set rs = nothing
	closeconn
	response.End()
end sub
sub mycarsetdefault()
	dim car_id
	dim order,page
	car_id = request.QueryString("id")
	if isnumeric(car_id) then
		car_id = Clng(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT * FROM wap_car_user WHERE userid = " & userid & " AND id = " & car_id & " AND siteid = " & siteid,conn,1,2
	response.Write("<card title=""设为默认"" id=""main""><p>" & vbnewline)
	if rs.eof then
		response.Write("没有找到车辆信息!<br />")
	else
		conn.execute("UPDATE wap_car_user SET car_default = 0 WHERE userid = " & userid & " AND siteid = " & siteid)
		rs("car_default") = 1
		rs.update
		response.Write("设置成功!<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>查看我的车辆</a><br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub addrace()
	dim rs
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""发起比赛"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_car_user WHERE userid = " & userid & " AND car_default = 1 AND siteid = " & siteid,conn,1,2
	if rs.eof then
		response.Write("对不起,你还没有车辆,或者你没有<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>设置默认车辆</a>!<br />")
	else
		response.Write("默认车辆:" & rs("car_name") & "[<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>更改</a>]<br />")
		response.Write("比赛金额:")
		response.Write("<input name=""stake"" type=""text"" maxlength=""20"" value=""0"" format=""*N"" /><br />")
		response.Write("<anchor>确认发布")
		response.Write("<go href=""" & http_start & "fun/car.asp"" method=""post"" accept-charset=""utf-8"">")
		response.Write("<postfield name=""stake"" value=""$(stake)""/>")
		response.Write("<postfield name=""siteid"" value=""" & siteid & """/>")
		response.Write("<postfield name=""classid"" value=""" & classid & """/>")
		response.Write("<postfield name=""sid"" value=""" & sid & """/>")
		response.Write("<postfield name=""action"" value=""addracego""/>")
		response.Write("</go></anchor><br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub addracego()
	dim rs
	dim stake,car_racemoney
	stake = request.Form("stake")
	if isnumeric(stake) then
		stake = Clng(stake)
	else
		stake = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""发起比赛"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_fun_setting WHERE siteid = " & siteid,conn,1,2
	if rs.eof then
		car_racemoney = 100
		rs.addnew
		rs("siteid") = siteid
		rs.update
	else
		car_racemoney = rs("car_racemoney")
	end if
	rs.close
	if Clng(stake) < Clng(car_racemoney) then
		response.Write("比赛金额不能低于" & car_racemoney & "<br />")
	elseif (stake > Clng(cstr(money))) then
		response.Write("对不起,你的余额不足!<br />")
	else
		rs.open "SELECT * FROM wap_car_user WHERE userid = " & userid & " AND car_default = 1 AND siteid = " & siteid,conn,1,2
		if rs.eof then
			response.Write("请先设置默认车辆!<br />")
		elseif rs("property_tire") < 1 or rs("property_steady") < 1 or rs("property_control") < 1 or rs("property_power") < 1 or rs("property_oilvolume") < 1 then
			response.Write("你的车辆严重受损,请请先维修车辆!<br />")
		else
			conn.execute("INSERT INTO wap_car_race (siteid,userid,nickname,stake,car_id) VALUES (" & siteid & "," & userid & ",'" & nickname & "'," & stake & "," & rs("id") & ")")
			conn.execute("UPDATE [user] SET money = money - " & stake & " WHERE userid = " & userid)
      Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','汽车比赛','-" & stake & "',money,'" & userid & "','" & nickname & "','','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
      'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'发起汽车比赛扣掉"&stake&"个','"&stake&"')")    
				
			response.Write("发布成功!<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=racelist" & jid2 & """>点击这里查看</a><br />")
		end if
		rs.close
	end if
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub racelist()
	dim rs
	dim page,pagesz,totalrecord,totalpages,count
	page = request("page")
	pagesz = 10
	count = 1
	if	isnumeric(page) then
		page = Clng(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""比赛列表"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_car_race WHERE (DATEDIFF(day, time, GETDATE()) < 8) AND (siteid = " & siteid & ") OR (siteid = " & siteid & ") AND (timeout = 0) ORDER BY id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("暂没有比赛!<br />" & vbnewline)
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=racedetail&amp;id=" & rs("id") & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>" & rs("nickname") & "挑战" & rs("stake") & "币</a>")
			if rs("timeout") = 0 then
				response.Write("[待比赛]")
			else
				response.Write("[已结束]")
			end if
			response.Write("<br />")
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=racelist&amp;page=" & page+1 & "&amp;classid=" & classid & jid2 & """>下一页</a>.")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=racelist&amp;page=" & page-1 & "&amp;classid=" & classid & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=racelist&amp;classid=" & classid & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub racedetail()
	dim race_id
	dim page
	race_id = request.QueryString("id")
	if isnumeric(race_id) then
		race_id = Clng(race_id)
	else
		race_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	rs.open "SELECT * FROM wap_car_race WHERE id = " & race_id & " AND siteid = " & siteid,conn,1,2
	response.Write("<card title=""查看信息"" id=""main""><p>" & vbnewline)
	if rs.eof then
		response.Write("没有找到比赛信息!<br />")
	else
		response.Write("擂主:<a href=""" & http_start & "bbs/userinfo.asp?siteid=" & siteid & "&amp;userid=" & rs("userid") & jid2 & """>" & rs("nickname") & "</a><br />")
		response.Write("比赛金额:" & rs("stake") & "<br />")
		if rs("timeout") = 0 then
			response.Write("比赛状态:待挑战<br />")
			response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;action=joinrace&amp;id=" & rs("id") & "&amp;page=" & page & "&amp;classid=" & classid & jid2 & """>我要挑战</a><br />")
		else
			response.Write("比赛状态:已结束<br />")
			response.Write("比赛结果:<br />")
			if Clng(rs("score1")) >= Clng(rs("score2")) then
				response.Write("擂台主胜利!<br />")
			else
				response.Write("挑战者胜利!<br />")
			end if
			response.Write("擂台主:" & rs("score1") & "<br />")
			response.Write("挑战者:" & rs("score2") & "<br />")
		end if
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=racelist&amp;page=" & page & jid2 & """>[比赛列表]</a><br />")
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub joinrace()
	dim rs
	dim race_id,road
	dim page
	dim property_tire1,property_steady1,property_control1,property_power1,property_oilvolume1,car_type1,mark1
	dim property_tire2,property_steady2,property_control2,property_power2,property_oilvolume2,car_type2,mark2
	race_id = request.QueryString("id")
	if isnumeric(race_id) then
		race_id = Clng(race_id)
	else
		race_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""挑战比赛"" id=""main""><p>" & vbnewline)
	rs.open "SELECT * FROM wap_car_user WHERE userid = " & userid & " AND car_default = 1 AND siteid = " & siteid,conn,1,2
	if rs.eof then
		response.Write("请先<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>设置默认车辆</a>!<br />")
		rs.close
	elseif rs("property_tire") < 1 or rs("property_steady") < 1 or rs("property_control") < 1 or rs("property_power") < 1 or rs("property_oilvolume") < 1 then
		response.Write("你的车辆严重受损,请请先维修车辆!<br />")
		rs.close
	else
		property_tire1 = Clng(rs("property_tire"))
		property_steady1 = Clng(rs("property_steady"))
		property_control1 = Clng(rs("property_control"))
		property_power1 = Clng(rs("property_power"))
		property_oilvolume1 = Clng(rs("property_oilvolume"))
		car_type1 = rs("car_type")
		rs.close
		rs.open "SELECT wap_car_race.id, wap_car_race.stake, wap_car_user.siteid, wap_car_user.userid, wap_car_user.nickname, wap_car_user.car_id, wap_car_user.car_name, wap_car_user.car_img, wap_car_user.car_type, wap_car_user.buy_time, wap_car_user.race_times, wap_car_user.race_win, wap_car_user.race_lost, wap_car_user.property_tire, wap_car_user.property_steady, wap_car_user.property_control, wap_car_user.property_power, wap_car_user.property_oilvolume, wap_car_user.car_default FROM wap_car_race INNER JOIN wap_car_user ON wap_car_race.car_id = wap_car_user.id AND wap_car_race.siteid = wap_car_user.siteid AND wap_car_race.userid = wap_car_user.userid WHERE (wap_car_race.siteid = " & siteid & ") AND (wap_car_race.id = " & race_id & ") AND (wap_car_race.timeout = 0)",conn,1,2
		if rs.eof then
			response.Write("比赛无效!<br />")
		elseif rs("userid") = userid then
			response.Write("不可以和自己比赛!<br />")
		elseif Clng(rs("stake") > Clng(cstr(money))) then
			response.Write("你的余额不足!<br />")
		else
			property_tire2 = Clng(rs("property_tire"))
			property_steady2 = Clng(rs("property_steady"))
			property_control2 = Clng(rs("property_control"))
			property_power2 = Clng(rs("property_power"))
			property_oilvolume2 = Clng(rs("property_oilvolume"))
			car_type2 = rs("car_type")
			randomize
			road = Clng((6+1)*rnd)
			'mark1是参赛者积分
			'mark2是擂台者积分
			mark1 = property_tire1*0.2+property_steady1*0.2+property_control1*0.2+property_power1*0.2+property_oilvolume1*0.2
			mark2 = property_tire2*0.2+property_steady2*0.2+property_control2*0.2+property_power2*0.2+property_oilvolume2*0.2
			if Clng(road) = Clng(car_type1) then
				mark1 = mark1 + 500
			end if
			if Clng(road) = Clng(car_type2) then
				mark2 = mark2 + 500
			end if
			if Clng(mark1) > Clng(mark2) then
				response.Write("恭喜你,你赢了!<br />")
				response.Write("对方得分:" & mark2 & "<br />")
				response.Write("自己得分:" & mark1 & "<br />")
				response.Write("系统为你增加" & Clng(rs("stake")*0.98) & "币<br />")
				conn.execute("UPDATE [user] SET money = money +" & Clng(rs("stake")*0.98) & " WHERE siteid = " & siteid & " AND userid = " & userid)
				'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'汽车比赛赢了增加"&rs("stake")*0.98&"个','"&rs("stake")*0.98&"')")    
				Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','汽车比赛','" & Clng(rs("stake")*0.98) & "',money,'" & userid & "','" & nickname & "','赢了','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
			else
				response.Write("对不起,你输了!<br />")
				response.Write("对方得分:" & mark2 & "<br />")
				response.Write("自己得分:" & mark1 & "<br />")
				response.Write("系统扣除" & rs("stake") & "币<br />")
				conn.execute("UPDATE [user] SET money = money +" & Clng(rs("stake")*1.98) & " WHERE siteid = " & siteid & " AND userid = " & rs("userid"))
				conn.execute("UPDATE [user] SET money = money -" & Clng(rs("stake")*1) & " WHERE siteid = " & siteid & " AND userid = " & userid)
				
				'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&rs("userid")&",'汽车比赛赢了增加"&Clng(rs("stake")*1.98)&"个','0')")    
				Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & rs("userid") & "','汽车比赛','" & Clng(rs("stake")*1.98) & "',money,'" & rs("userid") & "','系统','赢了','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
				
				'conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'汽车比赛输了扣掉"&rs("stake")&"个','0')")    
				Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','汽车比赛','-" & rs("stake") & "',money,'" & userid & "','" & nickname & "','输了','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
      
			end if
			'双方车辆扣属性值
			conn.execute("UPDATE wap_car_user SET property_oilvolume=property_oilvolume-5, property_control=property_control-5, property_power=property_power-5, property_steady=property_steady-5, property_tire=property_tire-5 WHERE siteid = " & siteid & " AND (userid = " & userid & " OR userid = " & rs("userid") & ")")
			conn.execute("UPDATE wap_car_race SET score1 = '" & mark2 & "',score2 = '" & mark1 & "',timeout = 1 WHERE id = " & race_id)
		end if
		rs.close
	end if
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=racelist&amp;page=" & page & jid2 & """>[比赛列表]</a><br />")
	response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub carrepair()
	dim rs
	dim car_id
	car_id = request.QueryString("id")
	if isnumeric(car_id) then
		car_id = Clng(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""车辆维修"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_car_user.id, wap_car_user.siteid, wap_car_user.userid, wap_car_user.nickname, wap_car_user.car_id, wap_car_user.car_name, wap_car_user.car_img, wap_car_user.car_type, wap_car_user.buy_time, wap_car_user.race_times, wap_car_user.race_win, wap_car_user.race_lost, wap_car_user.property_tire, wap_car_user.property_steady, wap_car_user.property_control, wap_car_user.property_power, wap_car_user.property_oilvolume, wap_car_user.car_default, wap_car_list.property_tire AS property_tire1, wap_car_list.property_steady AS property_steady1, wap_car_list.property_control AS property_control1, wap_car_list.property_power AS property_power1, wap_car_list.property_oilvolume AS property_oilvolume1, wap_car_list.car_prise FROM wap_car_user INNER JOIN wap_car_list ON wap_car_user.car_id = wap_car_list.id AND wap_car_list.siteid = wap_car_user.siteid AND wap_car_user.userid = " & userid & " AND wap_car_list.siteid = " & siteid & " AND wap_car_user.id = " & car_id,conn,1,2
	if rs.eof then
		response.Write("没有找到车辆!<br />")
	else
		dim repair_money,car_prise
		car_prise = rs("car_prise")
		repair_money = 0+car_prise*0.1*(rs("property_power1")-rs("property_power"))/rs("property_power1")
		repair_money = repair_money+car_prise*0.1*(rs("property_tire1")-rs("property_tire"))/rs("property_tire1")
		repair_money = repair_money+car_prise*0.1*(rs("property_steady1")-rs("property_steady"))/rs("property_steady1")
		repair_money = repair_money+car_prise*0.1*(rs("property_control1")-rs("property_control"))/rs("property_control1")
		repair_money = repair_money+car_prise*0.1*(rs("property_oilvolume1")-rs("property_oilvolume"))/rs("property_oilvolume1")
		repair_money = Clng(repair_money)+10
		property_power = rs("property_power1")
		property_tire = rs("property_tire1")
		property_steady = rs("property_steady1")
		property_control = rs("property_control1")
		property_oilvolume = rs("property_oilvolume1")
		'rs.update
	
	  if Clng(repair_money) > CLng(money) then
     response.Write("维修失败，你没有总够的币来支付了!<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>查看我的车辆</a><br />")
	  
	  else
	  conn.execute("update wap_car_user set property_power="&property_power&",property_tire="&property_tire&",property_steady="&property_steady&",property_control="&property_control&",property_oilvolume="&property_oilvolume&" where siteid = " & siteid & " AND id = " & car_id)
	  conn.execute("UPDATE [user] SET money = money - " & repair_money & " WHERE siteid = " & siteid & " AND userid = " & userid)
    conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'维修汽车，扣掉"&repair_money&"个','"&repair_money&"')")    
				
		response.Write("维修成功!<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>查看我的车辆</a><br />")
	  end if
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub sellcar()
	dim rs
	dim car_id
	car_id = request.QueryString("id")
	if isnumeric(car_id) then
		car_id = Clng(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""车辆出售"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_car_user.id, wap_car_user.siteid, wap_car_user.userid, wap_car_user.nickname, wap_car_user.car_id, wap_car_user.car_name, wap_car_user.car_img, wap_car_user.car_type, wap_car_user.buy_time, wap_car_user.race_times, wap_car_user.race_win, wap_car_user.race_lost, wap_car_user.property_tire, wap_car_user.property_steady, wap_car_user.property_control, wap_car_user.property_power, wap_car_user.property_oilvolume, wap_car_user.car_default, wap_car_list.property_tire AS property_tire1, wap_car_list.property_steady AS property_steady1, wap_car_list.property_control AS property_control1, wap_car_list.property_power AS property_power1, wap_car_list.property_oilvolume AS property_oilvolume1, wap_car_list.car_prise FROM wap_car_user INNER JOIN wap_car_list ON wap_car_user.car_id = wap_car_list.id AND wap_car_list.siteid = wap_car_user.siteid AND wap_car_user.userid = " & userid & " AND wap_car_list.siteid = " & siteid & " AND wap_car_user.id = " & car_id,conn,1,2
	if rs.eof then
		response.Write("没有找到车辆!<br />")
	else
		dim repair_money,car_prise
		car_prise = rs("car_prise")
		repair_money = 0+car_prise*0.1*(rs("property_power1")-rs("property_power"))/rs("property_power1")
		repair_money = repair_money+car_prise*0.1*(rs("property_tire1")-rs("property_tire"))/rs("property_tire1")
		repair_money = repair_money+car_prise*0.1*(rs("property_steady1")-rs("property_steady"))/rs("property_steady1")
		repair_money = repair_money+car_prise*0.1*(rs("property_control1")-rs("property_control"))/rs("property_control1")
		repair_money = repair_money+car_prise*0.1*(rs("property_oilvolume1")-rs("property_oilvolume"))/rs("property_oilvolume1")
		repair_money = Clng(repair_money)+10
		response.Write("确定出售该车辆吗?<br />")
		response.Write("出售该车辆后系统将为你增加" & rs("car_prise") - repair_money & "币!<br />")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=sellcargo&amp;id=" & car_id & jid2 & """>确认出售</a><br />")
		response.Write("<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>我的车辆</a><br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub sellcargo()
	dim rs
	dim car_id
	car_id = request.QueryString("id")
	if isnumeric(car_id) then
		car_id = Clng(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""车辆出售"" id=""main""><p>" & vbnewline)
	rs.open "SELECT wap_car_user.id, wap_car_user.siteid, wap_car_user.userid, wap_car_user.nickname, wap_car_user.car_id, wap_car_user.car_name, wap_car_user.car_img, wap_car_user.car_type, wap_car_user.buy_time, wap_car_user.race_times, wap_car_user.race_win, wap_car_user.race_lost, wap_car_user.property_tire, wap_car_user.property_steady, wap_car_user.property_control, wap_car_user.property_power, wap_car_user.property_oilvolume, wap_car_user.car_default, wap_car_list.property_tire AS property_tire1, wap_car_list.property_steady AS property_steady1, wap_car_list.property_control AS property_control1, wap_car_list.property_power AS property_power1, wap_car_list.property_oilvolume AS property_oilvolume1, wap_car_list.car_prise FROM wap_car_user INNER JOIN wap_car_list ON wap_car_user.car_id = wap_car_list.id AND wap_car_list.siteid = wap_car_user.siteid AND wap_car_user.userid = " & userid & " AND wap_car_list.siteid = " & siteid & " AND wap_car_user.id = " & car_id,conn,1,2
	if rs.eof then
		response.Write("没有找到车辆!<br />")
	else
		dim repair_money,car_prise
		car_prise = rs("car_prise")
		repair_money = 0+car_prise*0.1*(rs("property_power1")-rs("property_power"))/rs("property_power1")
		repair_money = repair_money+car_prise*0.1*(rs("property_tire1")-rs("property_tire"))/rs("property_tire1")
		repair_money = repair_money+car_prise*0.1*(rs("property_steady1")-rs("property_steady"))/rs("property_steady1")
		repair_money = repair_money+car_prise*0.1*(rs("property_control1")-rs("property_control"))/rs("property_control1")
		repair_money = repair_money+car_prise*0.1*(rs("property_oilvolume1")-rs("property_oilvolume"))/rs("property_oilvolume1")
		repair_money = Clng(repair_money)+10
		conn.execute("DELETE FROM wap_car_user WHERE siteid = " & siteid & " AND id = " & car_id)
		conn.execute("UPDATE wap_car_race SET timeout = 1 WHERE siteid = " & siteid & " AND car_id = " & car_id)
		conn.execute("UPDATE [user] SET money = money + " & rs("car_prise")-repair_money & " WHERE siteid = " & siteid & " AND userid = " & userid)
	  conn.execute("insert into wap_banklog(siteid,userid,remark,money)values("&siteid&","&userid&",'出售汽车，增加"&rs("car_prise")-repair_money&"个','"&rs("car_prise")-repair_money&"')")    
				
		response.Write("出售成功!<a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=mycar" & jid2 & """>查看我的车辆</a><br />")
	end if
	rs.close
	response.Write("<br /><a href=""" & http_start & "fun/car.asp?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>[汽车首页]</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid=" & siteid & "&amp;classid=" & classid & "&amp;action=" & jid2 & """>[婚姻首页]</a><br />")
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & "&amp;classid=" & classid & jid2 & """>返回上级</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
%>