<%
'�����ַ�
KL_In = "select|unicode|exec|insert|delete|truncate|declare|drop|eval|xp_|sp_|update|backup|char"
KL_Inf = split(KL_In,"|")
if instr(Request.ServerVariables("HTTP_CONTENT_TYPE"),"multipart/form-data")=0 then
'--------POST����------------------
If Request.Form<>"" Then
   For Each KL_Post In Request.Form   
       For KL_Xh=0 To Ubound(KL_Inf)
           If Instr(LCase(Request.Form(KL_Post)),KL_Inf(KL_Xh))<>0 Then
           	  ShowTipInfo("�ַ�:"&KL_Inf(KL_Xh)&" ��ϵͳ���ˣ���ӿո���ύ��")
           End If
       Next   
   Next
End If
'--------Cookies����------------------
If Request.Cookies<>"" Then
   For Each KL_Cks In Request.Cookies   
       For KL_Xh=0 To Ubound(KL_Inf)
           If Instr(LCase(Request.Cookies(KL_Cks)),KL_Inf(KL_Xh))<>0 Then
              ShowTipInfo("�ַ�:"&KL_Inf(KL_Xh)&" ��ϵͳ���ˣ������Cookies�ͻ����ٷ��ʣ�")
           End If
       Next   
   Next
End If

End if
'--------GET����-------------------
If Request.QueryString<>"" Then
   For Each KL_Get In Request.QueryString   
       For KL_Xh=0 To Ubound(KL_Inf)
           If Instr(LCase(Request.QueryString(KL_Get)),KL_Inf(KL_Xh))<>0 Then
              ShowTipInfo("�ַ�:"&KL_Inf(KL_Xh)&" ��ϵͳ���ˣ���ӿո���ύ��")
           End If
       Next
   Next
End If

'��ʾ��ʾ��Ϣ
Sub ShowTipInfo(info)
Response.Write "<script>alert('"&info& "')</script>"

Response.End
end sub
'***********************************************
'��������showpage
'��  �ã���ʾ����һҳ ��һҳ������Ϣ
'��  ����sfilename  ----���ӵ�ַ
'       totalnumber ----������
'       maxperpage  ----ÿҳ����
'       ShowTotal   ----�Ƿ���ʾ������
'       ShowAllPages ---�Ƿ��������б���ʾ����ҳ���Թ���ת����ĳЩҳ�治��ʹ�ã���������JS����
'       strUnit     ----������λ
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
		strTemp=strTemp & "�� <b>" & totalnumber & "</b> " & strUnit & "&nbsp;&nbsp;"
	end if
	strUrl=JoinChar(sfilename)
  	if CurrentPage<2 then
    		strTemp=strTemp & "��ҳ ��һҳ&nbsp;"
  	else
    		strTemp=strTemp & "<a href='" & strUrl & "page=1'>��ҳ</a>&nbsp;"
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & (CurrentPage-1) & "'>��һҳ</a>&nbsp;"
  	end if

  	if n-currentpage<1 then
    		strTemp=strTemp & "��һҳ βҳ"
  	else
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & (CurrentPage+1) & "'>��һҳ</a>&nbsp;"
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & n & "'>βҳ</a>"
  	end if
   	strTemp=strTemp & "&nbsp;ҳ�Σ�<strong><font color=red>" & CurrentPage & "</font>/" & n & "</strong>ҳ "
    strTemp=strTemp & "&nbsp;<b>" & maxperpage & "</b>" & strUnit & "/ҳ"
	if ShowAllPages=True then
		strTemp=strTemp & "&nbsp;ת����<input type=text name='page' value='"&CurrentPage&"' size=3> ÿҳ:<input type=text name='myPage' value='"&maxperpage&"' size=3> <input type=button onclick=""javascript:submit();"" class=""bt"" value="" GO "">"
		'strTemp=strTemp & "&nbsp;ת����<select name='page' size='1' onchange='javascript:submit()'>"   
    '	for i = 1 to n   
    '		strTemp=strTemp & "<option value='" & i & "'"
		'	if cint(CurrentPage)=cint(i) then strTemp=strTemp & " selected "
		'	strTemp=strTemp & ">��" & i & "ҳ</option>"   
	  '  next
		'strTemp=strTemp & "</select>"
	end if
	strTemp=strTemp & "</td></tr></form></table>"
	response.write strTemp
end sub
'***********************************************
'��������JoinChar
'��  �ã����ַ�м��� ? �� &
'��  ����strUrl  ----��ַ
'����ֵ������ ? �� & ����ַ
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

''''''''''''''''''''''''�����ݿ������ļ�'''''''''''''''''''''''
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
'�����ݿ�
sub CloseConn()
	 conn.close
	 set conn=nothing
end sub
''''''''''''''''''''''''�����ݿ����ý���'''''''''''''''''''''''

function tohtm(str)
  if str="" or isnull(str) then
	   tohtm=str
	   exit function
   end if
tohtm = replace(str,"&","&amp;")
tohtm = replace(tohtm,chr(34),"��")
tohtm = replace(tohtm,chr(39),"��")
tohtm = replace(tohtm,"<","&lt;")
tohtm = replace(tohtm,">","&gt;")
tohtm = replace(tohtm,"$","$$")
tohtm = replace(tohtm,vbnewline,"[br]")

'����ascii����չ�ַ�
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