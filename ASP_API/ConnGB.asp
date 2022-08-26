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
Response.Write "<script>alert('"&info& "')</script>"

Response.End
end sub
'***********************************************
'过程名：showpage
'作  用：显示“上一页 下一页”等信息
'参  数：sfilename  ----链接地址
'       totalnumber ----总数量
'       maxperpage  ----每页数量
'       ShowTotal   ----是否显示总数量
'       ShowAllPages ---是否用下拉列表显示所有页面以供跳转。有某些页面不能使用，否则会出现JS错误。
'       strUnit     ----计数单位
'***********************************************
sub showpage(sfilename,totalnumber,maxperpage,ShowTotal,ShowAllPages,strUnit)
	dim n, i,strTemp,strUrl
	if totalnumber mod maxperpage=0 then
    	n= totalnumber \ maxperpage
  	else
    	n= totalnumber \ maxperpage+1
  	end if
  	strTemp= "<table align='center'><form name='showpages' method='Post' action='" & sfilename & "'><tr><td>"
	if ShowTotal=true then 
		strTemp=strTemp & "共 <b>" & totalnumber & "</b> " & strUnit & "&nbsp;&nbsp;"
	end if
	strUrl=JoinChar(sfilename)
  	if CurrentPage<2 then
    		strTemp=strTemp & "首页 上一页&nbsp;"
  	else
    		strTemp=strTemp & "<a href='" & strUrl & "page=1'>首页</a>&nbsp;"
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & (CurrentPage-1) & "'>上一页</a>&nbsp;"
  	end if

  	if n-currentpage<1 then
    		strTemp=strTemp & "下一页 尾页"
  	else
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & (CurrentPage+1) & "'>下一页</a>&nbsp;"
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & n & "'>尾页</a>"
  	end if
   	strTemp=strTemp & "&nbsp;页次：<strong><font color=red>" & CurrentPage & "</font>/" & n & "</strong>页 "
    strTemp=strTemp & "&nbsp;<b>" & maxperpage & "</b>" & strUnit & "/页"
	if ShowAllPages=True then
		strTemp=strTemp & "&nbsp;转到：<input type=text name='page' value='"&CurrentPage&"' size=3> 每页:<input type=text name='myPage' value='"&maxperpage&"' size=3> <input type=button onclick=""javascript:submit();"" class=""bt"" value="" GO "">"
		'strTemp=strTemp & "&nbsp;转到：<select name='page' size='1' onchange='javascript:submit()'>"   
    '	for i = 1 to n   
    '		strTemp=strTemp & "<option value='" & i & "'"
		'	if cint(CurrentPage)=cint(i) then strTemp=strTemp & " selected "
		'	strTemp=strTemp & ">第" & i & "页</option>"   
	  '  next
		'strTemp=strTemp & "</select>"
	end if
	strTemp=strTemp & "</td></tr></form></table>"
	response.write strTemp
end sub
'***********************************************
'函数名：JoinChar
'作  用：向地址中加入 ? 或 &
'参  数：strUrl  ----网址
'返回值：加了 ? 或 & 的网址
'***********************************************
function JoinChar(strUrl)
	if strUrl="" then
		JoinChar=""
		exit function
	end if
	if InStr(strUrl,"?")<len(strUrl) then 
		if InStr(strUrl,"?")>1 then
			if InStr(strUrl,"&")<len(strUrl) then 
				JoinChar=strUrl & "&"
			else
				JoinChar=strUrl
			end if
		else
			JoinChar=strUrl & "?"
		end if
	else
		JoinChar=strUrl
	end if
end function

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

set conn=server.createobject("ADODB.CONNECTION")
if err then
   err.clear
else
   conn.open "driver={SQL Server};database="&KL_Main_DatabaseName&";Server="&KL_SQL_SERVERIP&";uid="&KL_SQL_UserName&";pwd="&KL_SQL_PassWord 
   'conn.open "PROVIDER=SQLOLEDB;DATA SOURCE=127.0.0.1;UID=a1012160623;PWD=daquan;DATABASE=a1012160623"
	
end if
'关数据库
sub CloseConn()
	 conn.close
	 set conn=nothing
end sub
''''''''''''''''''''''''读数据库配置结束'''''''''''''''''''''''

function tohtm(str)
  if str="" or isnull(str) then
	   tohtm=str
	   exit function
   end if
tohtm = replace(str,"&","&amp;")
tohtm = replace(tohtm,chr(34),"“")
tohtm = replace(tohtm,chr(39),"’")
tohtm = replace(tohtm,"<","&lt;")
tohtm = replace(tohtm,">","&gt;")
tohtm = replace(tohtm,"$","$$")
tohtm = replace(tohtm,vbnewline,"[br]")

'过滤ascii码扩展字符
	 'dim lens,strs,lng,mykeys
	 'lens=len(tohtm)
	 'for i=1 to lens
	 '    lng=mid(tohtm,i,1)	    
   '    if (ascw(lng)>0 and ascw(lng) < 32) or  (ascw(lng)>126 and ascw(lng) < 256) then
    '   	strs=strs & "*"
    '    else
    '  	strs=strs & lng
     '  end if
   'next
  
'tohtm	= strs	


end function
%>