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
%><?xml version="1.0" encoding="utf-8"?><!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">
<wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/userconfig.asp"--><%
siteid = trim(siteid)
userid = trim(userid)
classid = request("classid")
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
function propertyFormat(value)
	if isnumeric(value) then
		propertyFormat = int(value)
	else
		propertyFormat = 0
	end if
	if propertyFormat < 1 then
		propertyFormat = 1
	end if
end function
'检测权限
set rs = server.CreateObject("adodb.recordset")
rs.open "SELECT * FROM [user] WHERE userid = " & userid & " AND siteid = " & siteid,conn,1,2
if rs("managerlvl") <> "00" and rs("managerlvl") <> "01" then
	response.Write("<card title=""互动生活-管理设置后台"" id=""main"">")
	response.Write("<p>" & vbnewline)
	response.Write("你没有权限管理!<br />")
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	response.End()
end if
rs.close
select case request("action")
	case "carAdd"
		call carAdd()
	case "caraddgo"
		call carAddGo()
	case "carList"
		call carList()
	case "carInfo"
		call carInfo()
	case "carEdit"
		call carEdit()
	case "carEditGo"
		call carEditGo()
	case "carDel"
		call carDel()
	case "carDelGo"
		call carDelGo()
	case "houseAdd"
		call houseAdd()
	case "houseAddGo"
		call houseAddGo()
	case "houseList"
		call houseList()
	case "houseInfo"
		call houseInfo()
	case "houseEdit"
		call houseEdit()
	case "houseEditGo"
		call houseEditGo()
	case "houseDel"
		call houseDel()
	case "houseDelGo"
		call houseDelGo()
	case "upImageFile"
		call upImageFile()
	case else
		call index()
end select
sub index()
	response.Write("<card title=""互动生活-管理设置后台"" id=""main"">")
	response.Write("<p>" & vbnewline)
	response.Write("请选择管理:<br />")
	response.Write("<a href=""" & http_start & "fun/config.asp?siteid=" & siteid & "&amp;action=carList" & jid2 & """>恋爱结婚配置</a><br />")
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList" & jid2 & """>查看车辆列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carAdd" & jid2 & """>增加新的车辆</a><br />")
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList" & jid2 & """>查看房屋列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseAdd" & jid2 & """>增加新的房屋</a><br />")
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/marry.asp?siteid="&siteid&"&amp;classid="&classid&"&amp;action=index" & jid2 & """>返回上级</a><br/>" & vbnewline)
	
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	response.End()
end sub

sub upImageFile()
	dim rs
	dim uploadType,uploadId,page
	uploadType = request.QueryString("type")
	uploadId = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(uploadId) then
		uploadId = int(uploadId)
	else
		uploadId = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""增加图片"" id=""main"">")
	response.Write("<p>")
	if uploadType <> "house" and uploadType <> "car" then
		response.Write("传输参数错误!请返回再试!<br />")
	else
		if uploadType = "house" then
			rs.open "SELECT * FROM wap_house_list WHERE (siteid = " & siteid & ") AND (id = " & uploadId & ")",conn,1,2
		else
			rs.open "SELECT * FROM wap_car_list WHERE (siteid = " & siteid & ") AND (id = " & uploadId & ")",conn,1,2
		end if
		if rs.eof then
			response.Write("传输参数错误!请返回再试!<br />")
		else'正常的
			response.Clear()
%><?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改图片</title>
</head>
<body>
<p>
<form action="<%=http_start%>fun/uploadImg.asp" method="post" name="form"  enctype="multipart/form-data">
请选择图片:<br/>
<input type="file" name="imgFile" size="15"/><br/>
<input type="hidden" name="siteid" value="<%=siteid%>"/>
<input type="hidden" name="type" value="<%=uploadType%>"/>
<input type="hidden" name="id" value="<%=uploadId%>"/>
<input type="hidden" name="page" value="<%=page%>"/>
<input type="hidden" name="sid" value="<%=sid%>"/>
<br/>
<input type="submit" name="Submit" value="提交"/><br/>
请注意图片大小!<br/>
</form>
<a href="<%=http_start%>fun/admin.asp?siteid=<%=siteid%>&amp;action=houseList&amp;page=<%=(page & jid2)%>">返回列表</a><br />
<a href="<%=http_start%>fun/admin.asp?siteid=<%=(siteid&jid2)%>">返回管理</a><br />
<a href="<%=http_start%>wapindex.aspx?siteid=<%=(siteid&jid2)%>">返回首页</a>
</p>
</body>
</html>
<%
			response.End()
		end if
	end if
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	response.End()
end sub
sub upImageFileGo()

end sub
sub carAdd()
	response.Write("<card title=""增加车辆"" id=""main""><p>")
	response.Write("=增加车辆=<a href=""#help"">帮助</a><br />")
	response.Write("汽车名称:<br />")
	response.Write("<input name=""car_name"" type=""text"" maxlength=""10""  /><br />")
	response.Write("汽车价格：<br />")
	response.Write("<input name=""car_prise"" type=""text"" maxlength=""20"" value=""0"" format=""*N"" /><br />")
	response.Write("汽车类型:<br />")
	response.Write("<select name=""car_type"">")
	response.Write("<option value=""1"">平路型</option>")
	response.Write("<option value=""2"">沙漠型</option>")
	response.Write("<option value=""3"">山地型</option>")
	response.Write("<option value=""4"">野外型</option>")
	response.Write("<option value=""5"">障碍型</option>")
	response.Write("<option value=""6"">综合型</option>")
	response.Write("</select><br />")
	response.Write("动力(属性):<br />")
	response.Write("<input name=""property_power"" type=""text"" maxlength=""20"" value=""0"" format=""*N"" /><br />")
	response.Write("轮胎(属性):<br />")
	response.Write("<input name=""property_tire"" type=""text"" maxlength=""20"" value=""0"" format=""*N"" /><br />")
	response.Write("稳定(属性):<br />")
	response.Write("<input name=""property_steady"" type=""text"" maxlength=""20"" value=""0"" format=""*N"" /><br />")
	response.Write("操控(属性)：<br />")
	response.Write("<input name=""property_control"" type=""text"" maxlength=""20"" value=""0"" format=""*N"" /><br />")
	response.Write("油量(属性)：<br />")
	response.Write("<input name=""property_oilvolume"" type=""text"" maxlength=""20"" value=""0"" format=""*N"" /><br />")
	response.Write("<anchor>确认增加")
	response.Write("<go href=""" & http_start & "fun/admin.asp"" method=""post"" accept-charset=""utf-8"">")
	response.Write("<postfield name=""car_name"" value=""$(car_name)""/>")
	response.Write("<postfield name=""car_prise"" value=""$(car_prise)""/>")
	response.Write("<postfield name=""car_type"" value=""$(car_type)""/>")
	response.Write("<postfield name=""property_power"" value=""$(property_power)""/>")
	response.Write("<postfield name=""property_tire"" value=""$(property_tire)""/>")
	response.Write("<postfield name=""property_steady"" value=""$(property_steady)""/>")
	response.Write("<postfield name=""property_control"" value=""$(property_control)""/>")
	response.Write("<postfield name=""property_oilvolume"" value=""$(property_oilvolume)""/>")
	response.Write("<postfield name=""siteid"" value=""" & siteid & """/>")
	response.Write("<postfield name=""sid"" value=""" & sid & """/>")
	response.Write("<postfield name=""action"" value=""caraddgo""/>")
	response.Write("</go>")
	response.Write("</anchor><br />")
	response.Write("注意:各项属性值建议在1000以下！比赛时汽车类型如果与路面类型相同,则增加500<a href=""#calc"">性能值</a>!<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("<card title=""帮助"" id=""help"">")
	response.Write("<p>")
	response.Write("1.性能值有助于比赛时的车辆性能!如何计算属性值请参考<a href=""#calc"">性能计算公式</a><br />")
	response.Write("2.增加车辆信息后方可修改汽车图片!<br />")
	response.Write("<a href=""#main"">返回增加</a><br />")
	response.Write("</p>")
	response.Write("</card>")
	response.Write("<card title=""计算公式"" id=""calc"">")
	response.Write("<p>")
	response.Write("性能性值=动力*0.2+轮胎*0.2+稳定*0.2+操控*0.2+油量*0.2<br />")
	response.Write("<a href=""#main"">返回增加</a><br />")
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	closeconn
	response.End()
end sub
sub carAddGo()
	set rs = server.CreateObject("adodb.recordset")
	dim car_name,car_prise,car_type,property_power,property_tire,property_steady,property_concrol,property_oilvolume
	dim errMsg
	errMsg = ""
	car_name			= tohtm(left(request("car_name"),10))
	car_prise			= propertyFormat(request("car_prise"))
	car_type			= propertyFormat(request("car_type"))
	property_power		= propertyFormat(request("property_power"))
	property_tire		= propertyFormat(request("property_tire"))
	property_steady		= propertyFormat(request("property_steady"))
	property_control	= propertyFormat(request("property_control"))
	property_oilvolume	= propertyFormat(request("property_oilvolume"))
	response.Write("<card title=""增加车辆"" id=""main""><p>" & vbnewline)
	if car_name = "" then
		errMsg = "车辆名称不能为空!"
	end if
	if car_type > 5 then
		errMsg = "车辆类型错误!"
	end if
	if car_prise=0 or property_power=0 or property_tire=0 or property_steady=0 or property_control=0 or property_oilvolume=0 then
		errMsg = "各项属性值不能为0"
	end if
	if errMsg <> "" then
		response.Write(errMsg & "<br />")
		response.Write("<anchor>返回再试<prev/></anchor><br />")
	else
		rs.open "SELECT TOP 1 * FROM wap_car_list",conn,1,3
		rs.addnew
		rs("siteid") = siteid
		rs("car_name") = car_name
		rs("car_prise") = car_prise
		rs("car_type") = car_type
		rs("property_power") = property_power
		rs("property_tire") = property_tire
		rs("property_steady") = property_steady
		rs("property_control") = property_control
		rs("property_oilvolume") = property_oilvolume
		rs.update
		rs.close
		'柯林添加==========
		dim ids
		set gid=conn.execute("SELECT TOP 1 id FROM wap_car_list  where siteid="&siteid&" order by id desc")
		if not gid.eof then
			 ids=gid("id")
		end if
		gid.close
		set gid=nothing
		'==================
		response.Write("增加成功!<br />")
		response.Write("请选择:<br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carAdd&amp;id=" & ids & jid2 & """>[继续添加车辆]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carInfo&amp;id=" & ids & jid2 & """>[查看车辆信息]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;type=car&amp;id=" & ids & jid2 & """>[更改车辆图片]</a><br />")
		
	end if
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page & jid2 & """>汽车列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub carList()
	set rs = server.CreateObject("adodb.recordset")
	dim order,sqlorder
	dim page,pagesz,totalpages,totalrecord,count
	order = request("order")
	page = request("page")
	pagesz = 5
	count = 1
	if	isnumeric(page) then
		page = int(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	response.Write("<card title=""车辆列表"" id=""main""><p>" & vbnewline)
	rs.open "SELECT car_name, id FROM wap_car_list WHERE (siteid = " & siteid & ") ORDER BY id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("暂没有车辆!请先<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carAdd" & jid2 & """>添加车辆</a><br />")
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carInfo&amp;id=" & rs("id") & "&amp;page=" & page & jid2 & """>" & rs("car_name") & "</a>[")
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carEdit&amp;id=" & rs("id") & "&amp;page=" & page & jid2 & """>编辑</a>.")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;id=" & rs("id") & "&amp;page=" & page & "&amp;type=car" & jid2 & """>改图</a>.")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carDel&amp;id=" & rs("id") & "&amp;page=" & page & jid2 & """>删除</a>]<br />")
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page+1 & jid2 & """>下一页</a>")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page-1 & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList" & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub carInfo()
	dim car_id
	dim order,page
	car_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(car_id) then
		car_id = int(car_id)
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
		response.Write("+属性信息<br />")
		response.Write("动力:" & rs("property_power") & "<br />")
		response.Write("轮胎:" & rs("property_tire") & "<br />")
		response.Write("稳定:" & rs("property_steady") & "<br />")
		response.Write("操控:" & rs("property_control") & "<br />")
		response.Write("油量:" & rs("property_oilvolume") & "<br />")
		response.Write("+车辆管理<br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carEdit&amp;id=" & car_id & "&amp;page=" & page & jid2 & """>[编辑车辆]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;id=" & car_id & "&amp;page=" & page & "&amp;type=car" & jid2 & """>[更改图片]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carDel&amp;id=" & car_id & "&amp;page=" & page & jid2 & """>[删除车辆]</a><br />")
	end if
	rs.close
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub carEdit()
	dim car_id
	dim order,page
	car_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(car_id) then
		car_id = int(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""修改车辆"" id=""main""><p>")
	rs.open "SELECT id, siteid, car_name, car_prise, car_img, car_type, property_tire, property_steady, property_control, property_power, property_oilvolume, buy_count FROM wap_car_list WHERE (siteid = " & siteid & ") AND (id = " & car_id & ")",conn,1,2
	if rs.eof then
		response.Write("没有找到车辆信息!<br />")
	else
		response.Write("=修改车辆=<a href=""#help"">帮助</a><br />")
		response.Write("汽车名称:<br />")
		response.Write("<input name=""car_name"" type=""text"" maxlength=""10"" value=""" & rs("car_name") & """/><br />")
		response.Write("汽车价格：<br />")
		response.Write("<input name=""car_prise"" type=""text"" maxlength=""20"" value=""" & rs("car_prise") & """ format=""*N"" /><br />")
		response.Write("汽车类型:<br />")
		response.Write("<select name=""car_type"">")
		response.Write("<option value=""1"">平路型</option>")
		response.Write("<option value=""2"">沙漠型</option>")
		response.Write("<option value=""3"">山地型</option>")
		response.Write("<option value=""4"">野外型</option>")
		response.Write("<option value=""5"">障碍型</option>")
		response.Write("<option value=""6"">综合型</option>")
		response.Write("</select><br />")
		response.Write("动力(属性):<br />")
		response.Write("<input name=""property_power"" type=""text"" maxlength=""20"" value=""" & rs("property_power") & """ format=""*N"" /><br />")
		response.Write("轮胎(属性):<br />")
		response.Write("<input name=""property_tire"" type=""text"" maxlength=""20"" value=""" & rs("property_tire") & """ format=""*N"" /><br />")
		response.Write("稳定(属性):<br />")
		response.Write("<input name=""property_steady"" type=""text"" maxlength=""20"" value=""" & rs("property_steady") & """ format=""*N"" /><br />")
		response.Write("操控(属性)：<br />")
		response.Write("<input name=""property_control"" type=""text"" maxlength=""20"" value=""" & rs("property_control") & """ format=""*N"" /><br />")
		response.Write("油量(属性)：<br />")
		response.Write("<input name=""property_oilvolume"" type=""text"" maxlength=""20"" value=""" & rs("property_oilvolume") & """ format=""*N"" /><br />")
		response.Write("<anchor>确认增加")
		response.Write("<go href=""" & http_start & "fun/admin.asp"" method=""post"" accept-charset=""utf-8"">")
		response.Write("<postfield name=""car_name"" value=""$(car_name)""/>")
		response.Write("<postfield name=""car_prise"" value=""$(car_prise)""/>")
		response.Write("<postfield name=""car_type"" value=""$(car_type)""/>")
		response.Write("<postfield name=""property_power"" value=""$(property_power)""/>")
		response.Write("<postfield name=""property_tire"" value=""$(property_tire)""/>")
		response.Write("<postfield name=""property_steady"" value=""$(property_steady)""/>")
		response.Write("<postfield name=""property_control"" value=""$(property_control)""/>")
		response.Write("<postfield name=""property_oilvolume"" value=""$(property_oilvolume)""/>")
		response.Write("<postfield name=""siteid"" value=""" & siteid & """/>")
		response.Write("<postfield name=""sid"" value=""" & sid & """/>")
		response.Write("<postfield name=""action"" value=""carEditGo""/>")
		response.Write("<postfield name=""id"" value=""" & car_id & """/>")
		response.Write("<postfield name=""page"" value=""" & page & """/>")
		response.Write("</go>")
		response.Write("</anchor><br />")
		response.Write("注意:各项属性值建议在1000以下！比赛时汽车类型如果与路面类型相同,则增加500<a href=""#calc"">性能值</a>!<br />")
	end if
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	rs.close
	response.Write("<card title=""帮助"" id=""help"">")
	response.Write("<p>")
	response.Write("1.性能值有助于比赛时的车辆性能!如何计算属性值请参考<a href=""#calc"">性能计算公式</a><br />")
	response.Write("2.增加车辆信息后方可修改汽车图片!<br />")
	response.Write("<a href=""#main"">返回增加</a><br />")
	response.Write("</p>")
	response.Write("</card>")
	response.Write("<card title=""计算公式"" id=""calc"">")
	response.Write("<p>")
	response.Write("性能性值=动力*0.2+轮胎*0.2+稳定*0.2+操控*0.2+油量*0.2<br />")
	response.Write("<a href=""#main"">返回增加</a><br />")
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	closeconn
	set rs = nothing
	response.End()
end sub
sub carEditGo()
	dim car_id
	dim order,page
	dim car_name,car_prise,car_type,property_power,property_tire,property_steady,property_concrol,property_oilvolume
	dim errMsg
	errMsg = ""
	car_id = request.Form("id")
	page = request("page")
	if isnumeric(car_id) then
		car_id = int(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""修改车辆"" id=""main""><p>")
	car_name			= tohtm(left(request("car_name"),10))
	car_prise			= propertyFormat(request("car_prise"))
	car_type			= propertyFormat(request("car_type"))
	property_power		= propertyFormat(request("property_power"))
	property_tire		= propertyFormat(request("property_tire"))
	property_steady		= propertyFormat(request("property_steady"))
	property_control	= propertyFormat(request("property_control"))
	property_oilvolume	= propertyFormat(request("property_oilvolume"))
	if car_name = "" then
		errMsg = "车辆名称不能为空!"
	end if
	if car_type > 5 then
		errMsg = "车辆类型错误!"
	end if
	if car_prise=0 or property_power=0 or property_tire=0 or property_steady=0 or property_control=0 or property_oilvolume=0 then
		errMsg = "各项属性值不能为0"
	end if
	if errMsg <> "" then
		response.Write(errMsg & "<br />")
		response.Write("<anchor>返回再试<prev/></anchor><br />")
	else
		rs.open "SELECT id, siteid, car_name, car_prise, car_img, car_type, property_tire, property_steady, property_control, property_power, property_oilvolume, buy_count FROM wap_car_list WHERE (siteid = " & siteid & ") AND (id = " & car_id & ")",conn,1,2
		if rs.eof then
			response.Write("没有找到车辆信息!<br />")
		else
			rs("car_name") = car_name
			rs("car_prise") = car_prise
			rs("car_type") = car_type
			rs("property_power") = property_power
			rs("property_tire") = property_tire
			rs("property_steady") = property_steady
			rs("property_control") = property_control
			rs("property_oilvolume") = property_oilvolume
			rs.update
			response.Write("修改成功!<br />")
			response.Write("请选择:<br />")
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carInfo&amp;id=" & rs("id") & jid2 & """>[查看车辆信息]</a><br />")
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;type=car&amp;id=" & rs("id") & jid2 & """>[更改车辆图片]</a><br />")
		end if
	end if
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub carDel()
	dim car_id
	dim order,page
	car_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(car_id) then
		car_id = int(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""修改车辆"" id=""main""><p>")
	rs.open "SELECT id, siteid, car_name, car_prise, car_img, car_type, property_tire, property_steady, property_control, property_power, property_oilvolume, buy_count FROM wap_car_list WHERE (siteid = " & siteid & ") AND (id = " & car_id & ")",conn,1,2
	if rs.eof then
		response.Write("没有找到车辆信息!<br />")
	else
		response.Write("车辆名称:<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carInfo&amp;id=" & car_id & "&amp;page=" & page & jid2 & """>" & rs("car_name") & "</a><br />")
		response.Write("确认删除此车辆?注意:删除车辆的同时将删除用户使用此车辆进行比赛的信息和用户的购买信息,并且不退回金钱给用户!请谨慎操作!<br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carDelGo&amp;id=" & car_id & "&amp;page=" & page & jid2 & """>确认删除</a><br />")
	end if
	rs.close
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub carDelGo()
	dim car_id
	dim order,page
	car_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(car_id) then
		car_id = int(car_id)
	else
		car_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""修改车辆"" id=""main""><p>")
	rs.open "SELECT id, siteid, car_name, car_prise, car_img, car_type, property_tire, property_steady, property_control, property_power, property_oilvolume, buy_count FROM wap_car_list WHERE (siteid = " & siteid & ") AND (id = " & car_id & ")",conn,1,2
	if rs.eof then
		response.Write("没有找到车辆信息!<br />")
	else
		conn.execute("DELETE FROM wap_car_race WHERE car_id = " & car_id)
		conn.execute("DELETE FROM wap_car_user WHERE car_id = " & car_id)
		rs.delete
		rs.update
		response.Write("删除成功!<br />")
	end if
	rs.close
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=carList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub houseAdd()
	response.Write("<card title=""添加房屋"" id=""main"">")
	response.Write("<p>")
	response.Write("=添加房屋=<br />")
	response.Write("房屋名称:<br />")
	response.Write("<input name=""house_name"" type=""text"" maxlength=""20"" value="""" /><br />" & vbnewline)
	response.Write("房间数:<br />")
	response.Write("<input name=""house_roomnumber"" type=""text"" maxlength=""3"" value=""1"" format=""*N"" /><br />" & vbnewline)
	response.Write("房屋价格:<br />")
	response.Write("<input name=""house_prise"" type=""text"" maxlength=""9"" value="""" format=""*N"" /><br />" & vbnewline)
	response.Write("<anchor>确认增加" & vbnewline)
	response.Write(" <go href=""" & http_start & "fun/admin.asp"" method=""post"" accept-charset=""utf-8"">" & vbnewline)
	response.Write("  <postfield name=""house_name"" value=""$(house_name)""/>" & vbnewline)
	response.Write("  <postfield name=""house_roomnumber"" value=""$(house_roomnumber)""/>" & vbnewline)
	response.Write("  <postfield name=""house_prise"" value=""$(house_prise)""/>" & vbnewline)
	response.Write("  <postfield name=""sid"" value=""" & sid & """/>" & vbnewline)
	response.Write("  <postfield name=""siteid"" value=""" & siteid & """/>" & vbnewline)
	response.Write("  <postfield name=""action"" value=""houseAddGo""/>" & vbnewline)
	response.Write(" </go>" & vbnewline)
	response.Write("</anchor>" & vbnewline)
	response.Write("<br />" & vbnewline)
	response.Write("---------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	response.End()
end sub
sub houseAddGo()
	dim house_name, house_roomnumber, house_prise
	house_name = tohtm(request.Form("house_name"))
	house_roomnumber = request.Form("house_roomnumber")
	house_prise = request.Form("house_prise")
	if isnumeric(house_prise) then
		house_prise = int(house_prise)
	else
		house_prise = 0
	end if
	if isnumeric(house_roomnumber) then
		house_roomnumber = int(house_roomnumber)
	else
		house_roomnumber = 0
	end if
	if house_prise < 1 then
		house_prise = 1
	end if
	if house_roomnumber < 1 then
		house_roomnumber = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""添加房屋"" id=""main"">" & vbnewline)
	response.Write("<p>" & vbnewline)
	if len(house_name) = 0 then
		response.Write("房屋名称不能为空!<br />")
		response.Write("<anchor>返回再试<prev/></anchor><br />")
	else
		rs.open "SELECT TOP 1 * FROM wap_house_list",conn,1,3
		rs.addnew
		rs("siteid") = siteid
		rs("house_name") = house_name
		rs("house_roomnumber") = house_roomnumber
		rs("house_prise") = house_prise
		rs.update
'		rs.movelast
		'柯林添加==========
		dim ids
		set gid=conn.execute("SELECT TOP 1 id FROM wap_house_list  where siteid="&siteid&" order by id desc")
		if not gid.eof then
			 ids=gid("id")
		end if
		gid.close
		set gid=nothing
		'==================
		response.Write("增加成功!<br />")
		response.Write("请选择:<br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseAdd&amp;id=" & ids & jid2 & """>[继续添加房屋]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseInfo&amp;id=" & ids & jid2 & """>[查看房屋信息]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;type=house&amp;id=" & ids & jid2 & """>[更改房屋图片]</a><br />")
		rs.close
	end if
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>房屋列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub houseList()
	set rs = server.CreateObject("adodb.recordset")
	dim order,sqlorder
	dim page,pagesz,totalpages,totalrecord,count
	order = request("order")
	page = request("page")
	pagesz = 5
	count = 1
	if	isnumeric(page) then
		page = int(page)
		if page < 1 then
			page = 1
		end if
	else
		page = 1
	end if
	response.Write("<card title=""房屋列表"" id=""main""><p>" & vbnewline)
	rs.open "SELECT house_name, id FROM wap_house_list WHERE (siteid = " & siteid & ") ORDER BY id DESC",conn,1,2
	totalrecord = rs.recordcount
	totalpages = (totalrecord-1) \ pagesz + 1
	if page > totalpages then
		page = totalpages
	end if
	if totalrecord = 0 then
		response.Write("暂没有房屋!请先<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseAdd" & jid2 & """>添加房屋</a><br />")
	else
		rs.move((page-1)*pagesz)
		do while (not rs.eof) and (count =< pagesz)
			response.Write(count+(page-1)*pagesz & ".<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseInfo&amp;id=" & rs("id") & "&amp;page=" & page & jid2 & """>" & rs("house_name") & "</a>[")
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseEdit&amp;id=" & rs("id") & "&amp;page=" & page & jid2 & """>编辑</a>.")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;id=" & rs("id") & "&amp;page=" & page & "&amp;type=house" & jid2 & """>改图</a>.")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseDel&amp;id=" & rs("id") & "&amp;page=" & page & jid2 & """>删除</a>]<br />")
			rs.movenext
			count = count + 1
		loop
	end if
	response.Write("----------<br />" & vbnewline)
	response.Write("共" & totalrecord & "条,第" & page & "/" & totalpages & "页<br />" & vbnewline)
	if totalrecord <> 0 then
		if page < totalpages then
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page+1 & jid2 & """>下一页</a>")
		end if
		if page <> 1 then
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page-1 & jid2 & """>上一页</a>")
		end if
		response.Write("<br />" & vbnewline)
		if totalpages > 1 then
			response.Write("<input title=""页码"" name=""page"" format=""*N"" size=""3"" maxlength=""8"" value=""1""/><anchor><go href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList" & jid2 & """ method=""post"" accept-charset=""utf-8""><postfield name=""page"" value=""$(page)""/></go>转到该页</anchor><br />" & vbnewline)
		end if
	end if
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub houseInfo()
	dim house_id
	dim page
	house_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(house_id) then
		house_id = int(house_id)
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
		response.Write("+属性信息<br />")
		response.Write("房间数:" & rs("house_roomnumber") & "<br />")
		response.Write("+房屋管理<br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseEdit&amp;id=" & house_id & "&amp;page=" & page & jid2 & """>[编辑房屋]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;id=" & house_id & "&amp;page=" & page & "&amp;type=house" & jid2 & """>[更改图片]</a><br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseDel&amp;id=" & house_id & "&amp;page=" & page & jid2 & """>[删除房子]</a><br />")
	end if
	rs.close
	response.Write("---------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	set rs = nothing
	response.End()
end sub
sub houseEdit()
	dim house_id
	dim order,page
	house_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(house_id) then
		house_id = int(house_id)
	else
		house_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""添加房屋"" id=""main"">")
	response.Write("<p>")
	rs.open "SELECT id, siteid, house_name, house_img, house_prise, house_roomnumber, buy_count FROM wap_house_list WHERE (siteid = " & siteid & ") AND (id = " & house_id & ")",conn,1,2
	if rs.eof then
		response.Write("没有找到房屋信息!<br />")
	else
		response.Write("=添加房屋=<br />")
		response.Write("房屋名称:<br />")
		response.Write("<input name=""house_name"" type=""text""  value=""" & rs("house_name") & """  /><br />" & vbnewline)
		response.Write("房间数:<br />")
		response.Write("<input name=""house_roomnumber"" type=""text""  value=""" & rs("house_roomnumber") & """ format=""*N"" /><br />" & vbnewline)
		response.Write("房屋价格:<br />")
		response.Write("<input name=""house_prise"" type=""text""  value=""" & rs("house_prise") & """ format=""*N"" /><br />" & vbnewline)
		response.Write("<anchor>确认修改" & vbnewline)
		response.Write(" <go href=""" & http_start & "fun/admin.asp"" method=""post"" accept-charset=""utf-8"">" & vbnewline)
		response.Write("  <postfield name=""house_name"" value=""$(house_name)""/>" & vbnewline)
		response.Write("  <postfield name=""house_roomnumber"" value=""$(house_roomnumber)""/>" & vbnewline)
		response.Write("  <postfield name=""house_prise"" value=""$(house_prise)""/>" & vbnewline)
		response.Write("  <postfield name=""id"" value=""" & house_id & """/>" & vbnewline)
		response.Write("  <postfield name=""sid"" value=""" & sid & """/>" & vbnewline)
		response.Write("  <postfield name=""siteid"" value=""" & siteid & """/>" & vbnewline)
		response.Write("  <postfield name=""action"" value=""houseEditGo""/>" & vbnewline)
		response.Write(" </go>" & vbnewline)
		response.Write("</anchor>" & vbnewline)
		response.Write("<br />" & vbnewline)
	end if
	response.Write("---------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	response.End()
end sub
sub houseEditGo()
	dim house_id,page
	dim house_name, house_roomnumber, house_prise
	house_name = tohtm(request.Form("house_name"))
	house_roomnumber = request.Form("house_roomnumber")
	house_prise = request.Form("house_prise")
	house_id = request.Form("id")
	page = request("page")
	if isnumeric(house_id) then
		house_id = int(house_id)
	else
		house_id = 0
	end if
	if isnumeric(house_prise) then
		house_prise = int(house_prise)
	else
		house_prise = 0
	end if
	if isnumeric(house_roomnumber) then
		house_roomnumber = int(house_roomnumber)
	else
		house_roomnumber = 0
	end if
	if house_prise < 1 then
		house_prise = 1
	end if
	if house_roomnumber < 1 then
		house_roomnumber = 1
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""添加房屋"" id=""main"">" & vbnewline)
	response.Write("<p>" & vbnewline)
	if len(house_name) = 0 then
		response.Write("房屋名称不能为空!<br />")
		response.Write("<anchor>返回再试<prev/></anchor><br />")
	else
		rs.open "SELECT id, siteid, house_name, house_img, house_prise, house_roomnumber, buy_count FROM wap_house_list WHERE     (siteid = " & siteid & ") AND (id = " & house_id & ")",conn,1,3
		if rs.eof then
			response.Write("没有找到房屋信息!<br />")
		else
			rs("siteid") = siteid
			rs("house_name") = house_name
			rs("house_roomnumber") = house_roomnumber
			rs("house_prise") = house_prise
			rs.update	
			response.Write("修改成功!<br />")
			response.Write("请选择:<br />")
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseInfo&amp;id=" & house_id & jid2 & """>[查看房屋信息]</a><br />")
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=upImageFile&amp;type=house&amp;id=" & house_id & jid2 & """>[更改房屋图片]</a><br />")
		end if
		rs.close
	end if
	response.Write("----------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end sub
sub houseDel()
	dim house_id
	dim order,page
	house_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(house_id) then
		house_id = int(house_id)
	else
		house_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""添加房屋"" id=""main"">")
	response.Write("<p>")
	rs.open "SELECT id, siteid, house_name, house_img, house_prise, house_roomnumber, buy_count FROM wap_house_list WHERE (siteid = " & siteid & ") AND (id = " & house_id & ")",conn,1,2
	if rs.eof then
		response.Write("没有找到房屋信息!<br />")
	else
		response.Write("房屋名称:<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseInfo&amp;id=" & house_id & "&amp;page=" & page & jid2 & """>" & rs("house_name") & "</a><br />")
		response.Write("确认删除此房屋?注意:删除车辆的同时将删除的信息和用户的购买信息,并且不退回金钱给用户!请谨慎操作!<br />")
		response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseDelGo&amp;id=" & house_id & "&amp;page=" & page & jid2 & """>确认删除</a><br />")
	end if
	response.Write("---------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	response.End()
end sub
sub houseDelGo()
	dim house_id
	dim order,page
	house_id = request.QueryString("id")
	page = request.QueryString("page")
	if isnumeric(house_id) then
		house_id = int(house_id)
	else
		house_id = 0
	end if
	set rs = server.CreateObject("adodb.recordset")
	response.Write("<card title=""添加房屋"" id=""main"">")
	response.Write("<p>")
	rs.open "SELECT id, siteid, house_name, house_img, house_prise, house_roomnumber, buy_count FROM wap_house_list WHERE (siteid = " & siteid & ") AND (id = " & house_id & ")",conn,1,2
	if rs.eof then
		response.Write("没有找到房屋信息!<br />")
	else
		conn.execute("DELETE FROM wap_house_user WHERE siteid = " & siteid & " AND id = " & house_id)
		rs.delete
		rs.update
		response.Write("删除成功!<br />")
	end if
	response.Write("---------<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=houseList&amp;page=" & page & jid2 & """>返回列表</a><br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p>")
	response.Write("</card>")
	response.Write("</wml>")
	response.End()
end sub
%>