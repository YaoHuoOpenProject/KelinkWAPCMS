<%
'过滤字符
KL_In = "select|unicode|exec|insert|delete|truncate|declare|drop|eval|xp_|sp_|update|backup|char"
KL_Inf = split(KL_In,"|")
if instr(Request.ServerVariables("HTTP_CONTENT_TYPE"),"multipart/form-data")=0 then
'--------POST部份------------------
If Request.Form<>"" Then
   For Each KL_Post In Request.Form   
       For KL_Xh=0 To Ubound(KL_Inf)
           If Instr(LCase(Request.Form(KL_Post)),KL_Inf(KL_Xh))<>0 Then
           	  ShowTipInfo("字符:"&KL_Inf(KL_Xh)&" 被系统过滤，请加空格后提交！")
           End If
       Next   
   Next
End If
'--------Cookies部份------------------
If Request.Cookies<>"" Then
   For Each KL_Cks In Request.Cookies   
       For KL_Xh=0 To Ubound(KL_Inf)
           If Instr(LCase(Request.Cookies(KL_Cks)),KL_Inf(KL_Xh))<>0 Then
              ShowTipInfo("字符:"&KL_Inf(KL_Xh)&" 被系统过滤，请清空Cookies和缓存再访问！")
           End If
       Next   
   Next
End If

End if
'--------GET部份-------------------
If Request.QueryString<>"" Then
   For Each KL_Get In Request.QueryString   
       For KL_Xh=0 To Ubound(KL_Inf)
           If Instr(LCase(Request.QueryString(KL_Get)),KL_Inf(KL_Xh))<>0 Then
              ShowTipInfo("字符:"&KL_Inf(KL_Xh)&" 被系统过滤，请加空格后提交！")
           End If
       Next
   Next
End If

'显示提示信息
Sub ShowTipInfo(info)
Response.clear
Response.ContentType="text/vnd.wap.wml; charset=utf-8"
Response.Write "<?xml version=""1.0"" encoding=""utf-8""?><!DOCTYPE wml PUBLIC ""-//WAPFORUM//DTD WML 1.1//EN"" ""http://www.wapforum.org/DTD/wml_1.1.xml"">" & vbnewline
Response.Write "<wml><head><meta http-equiv=""Cache-Control"" content=""no-cache""/></head>" & vbnewline
Response.Write "<card id=""info"" title=""温馨提示""><p align=""left""><anchor title=""back""><prev/>返回一页</anchor><br/>" & vbnewline
Response.Write "<b>"&info& "</b>"
Response.Write "</p></card></wml>"
Response.End
end sub


''''''''''''''''''''''''读数据库配置文件'''''''''''''''''''''''
dim SourceFile
SourceFile = Server.MapPath("/")  
SourceFile=SourceFile&"\web.config"


Const ForReading = 1, ForWriting = 2 
Dim objFSO
Set objFSO=Server.CreateObject("Scripting.FileSystemObject")
Dim f, content 
Set f = objFSO.OpenTextFile(SourceFile, ForReading) 
content = f.ReadAll()
f.Close 

dim s1,o1,KL_Main_DatabaseName,KL_SQL_SERVERIP,KL_SQL_UserName,KL_SQL_PassWord
s1=InStr(content, "KL_DatabaseName"" value=""")
o1 = InStr(s1, content, """/>")
KL_Main_DatabaseName = Mid(content, s1 + 24, o1 - s1 - 24)

s1=InStr(content, "KL_SQL_UserName"" value=""")
o1 = InStr(s1, content, """/>")
KL_SQL_UserName = Mid(content, s1 + 24, o1 - s1 - 24)

s1=InStr(content, "KL_SQL_PassWord"" value=""")
o1 = InStr(s1, content, """/>")
KL_SQL_PassWord = Mid(content, s1 + 24, o1 - s1 - 24)

s1=InStr(content, "KL_SQL_SERVERIP"" value=""")
o1 = InStr(s1, content, """/>")
KL_SQL_SERVERIP = Mid(content, s1 + 24, o1 - s1 - 24)


''''''''''''''''''''''''读数据库配置结束'''''''''''''''''''''''



%>