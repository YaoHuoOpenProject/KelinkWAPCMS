<%Response.Clear%><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 1</title>
</head>

<body>

<p><font size="2" face="宋体" color="#FF0000">
	本系统已升级到.NET版本，原ASP版地址已变更，请返回.NET版首页，再进入！
	
<br/><br/><a href="http://<%=Request.ServerVariables("HTTP_HOST")%>">进入首页(<%=Request.ServerVariables("HTTP_HOST")%>)</a>
</p>

</body>

</html>
<%Response.end%>
