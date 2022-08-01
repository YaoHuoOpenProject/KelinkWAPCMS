<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><%

dim siteid,classid,action,sid
classid=Request.QueryString("classid")
action=Request.QueryString("action")
siteid=Request.QueryString("siteid")
sid=Request.QueryString("sid")

Response.Redirect("http://"&Request.ServerVariables("HTTP_HOST")&"/XinZhang/index.aspx?action="&action&"&siteid="&siteid&"&classid="&classid&"&sid="&sid)


%>