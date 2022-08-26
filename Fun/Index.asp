<%
classid=Request.QueryString("classid")
action=Request.QueryString("action")
siteid=Request.QueryString("siteid")
sid=Request.QueryString("sid")
session("sid")=sid
if action="webAdmin" or  action="webAdmin00" or action="wapAdmin" or  action="wapAdmin00" then
	 response.redirect "info.asp?sid="&sid '后台管理地址
else
	 response.redirect "http://"&Request.ServerVariables("HTTP_HOST")&"/fun/marry.asp?siteid="&siteid&"&classid="&classid&"&action=login&sid="&sid
end if
%>
