<%
dim conn,db
dim connstr
db="idcard.mdb" '数据库文件位置
'on error resume next
connstr="DBQ="+server.mappath(""&db&"")+";DefaultDir=;DRIVER={Microsoft Access Driver (*.mdb)};"
set conn=server.createobject("ADODB.CONNECTION")
if err then
err.clear
else
conn.open connstr
end if
sub CloseConn()
	conn.close
	set conn=nothing
end sub

'dim siteid
'if request("siteid")<>"" then
'	siteid=request("siteid")	
'	response.Cookies("siteid")=siteid
'	Response.Cookies("siteid").Expires=#January 01, 2010#
'else
'	siteid=Request.Cookies("siteid")
'end if
%>