<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%><%
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
<!--#include file="upfile_class.asp"--><!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/cookies.asp"--><%
dim msg
dim upload,rs
set upload = new upfile_class
set rs = server.CreateObject("adodb.recordset")
function parseInt(stringNumber)
	if isnumeric(stringNumber) then
		parseInt = int(stringNumber)
	else
		parseInt = 0
	end if
end function
Function FixName(UpFileExt)  
If IsEmpty(UpFileExt) Then Exit Function  	 
   FixName = Lcase(UpFileExt)  
   FixName = left(FixName,5) 
   FixName = Replace(FixName,Chr(0),"")  
   FixName = Replace(FixName,".","")  
   FixName = Replace(FixName,"'","")
   FixName = Replace(FixName,"asp","")
   FixName = Replace(FixName,"asa","")
   FixName = Replace(FixName,"aspx","")
   FixName = Replace(FixName,"cer","")
   FixName = Replace(FixName,"cdx","")
   FixName = Replace(FixName,"htr","")
   FixName = Replace(FixName,"sHtml","")
   FixName = Replace(FixName,"php","")
   FixName = trim(FixName)
End Function
function showError(msg)
	response.Write(msg & "<br />")
	response.Write("请返回再试!<br />")
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")
	set rs = nothing
	closeconn
	response.End()
end function
response.Write("<card title=""上传图片"" id=""main"">")
response.Write("<p>" & vbnewline)
upload.GetData(104857600)
if upload.err > 0 then
	select case upload.err
		case 1
			msg = "请先选择你要上传的文件！"
		case 2
			msg = "你上传的文件总大小超出了最大限制（100M）"
	end select
	showError(msg)	
end if
siteid = parseInt(upload.form("siteid"))
sid = upload.form("sid")
uploadType = upload.form("type")
id = Clng(upload.form("id"))
page = upload.form("page")
if uploadType <> "house" and uploadType <> "car" then
	showError("参数传输错误!<br />")
end if
if sid <> "" then
	arry=split(decode_KL(sid),"_")
	 if siteid=""  then	 	  
	 	  siteid=arry(0)
	 end if		 
	 fid=arry(1)
	 userid=arry(2)	 
	 username=arry(3)
	 sessionid=arry(4)	
	 jid1="?sid="&sid
	 jid2="&amp;sid="&sid	
else
	response.redirect http_start&"error.asp?typevalue=4&siteid=" & siteid
end if
rs.open "SELECT password,managerlvl,SidTimeOut FROM [user] WHERE (userid = " & userid & ") AND (siteid = " & siteid & ")",conn,1,2
if rs.eof then
	response.redirect http_start&"error.asp?typevalue=4&siteid=" & siteid
else
	if isNull(rs("SidTimeOut")) or rs("SidTimeOut")<>sessionid  then
		response.redirect http_start&"error.asp?typevalue=4&siteid=" & siteid
	end if
	if rs("managerlvl") <> "00" and rs("managerlvl") <> "01" then
		response.redirect http_start&"error.asp?typevalue=5&siteid=" & siteid
	end if
end if
rs.close


	for each formName in upload.file
		set ofile = upload.file(formName)
		oFileSize = ofile.filesize
		upfilename = Cstr(ofile.FileName)
		if oFileSize < 5 then
			showError("请先选择你要上传的文件!")
		else
			fileExt = lcase(ofile.FileExt)			
      fileExt=trim(fileExt)
      
			if fileEXT<>"gif" and  fileEXT<>"jpeg" and fileEXT<>"jpg" and fileEXT<>"bmp" and fileEXT<>"png"  then			 
				showError("只能上传gif,jpeg,jpg,bmp,png格式!")
			end if
			randomize
			ranNum = int(900*rnd)+100
			strMonth = month(now)
			if len(strMonth) = 1 then
				strMonth = "0" & strMonth
			end if
			strDay=day(now)
			if len(strDay) = 1 then
				strDay = "0" & strDay
			end if
			filename = "/fun/upload/" & year(now) & strMonth & strDay & hour(now) & minute(now) & second(now) & ranNum & "." & FixName(fileExt)
			ofile.SaveToFile Server.mappath(filename)
			pathimg = http_start  & replace(filename,"/fun","fun")

      if uploadType = "house" then
      	conn.execute("update wap_house_list set  house_img ='"&pathimg&"' WHERE siteid = " & siteid & " AND id = " & id & "")
      else
      	conn.execute("update wap_car_list set  car_img ='"&pathimg&"' WHERE siteid = " & siteid & " AND id = " & id & "")
      end if


			response.Write("修改图片成功!<br />")
			response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & "&amp;action=" & uploadType & "Info&amp;id=" & id & "&amp;page=" & page & jid2 & """>点击这里查看</a><br />")
		end if
		exit for
	next
	response.Write("<a href=""" & http_start & "fun/admin.asp?siteid=" & siteid & jid2 & """>返回管理</a><br />" & vbnewline)
	response.Write("<a href=""" & http_start & "wapindex.aspx?siteid=" & siteid & jid2 & """>返回首页</a>" & vbnewline)
	response.Write("</p></card></wml>")

	closeconn
	response.End()
	
	
	
	

%>