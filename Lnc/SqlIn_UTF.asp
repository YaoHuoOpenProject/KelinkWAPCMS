<%Response.Clear%><wml>
<head>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
</head>
<card id="main" title="登录提示">
<p align="left">
	本系统已升级到.NET版本，原ASP版地址已变更，请返回.NET版首页，再进入！或联系站长，请更改此UBB链接地址！
	
<br/><br/><a href="http://<%=Request.ServerVariables("HTTP_HOST")%>">进入首页(<%=Request.ServerVariables("HTTP_HOST")%>)</a>


</p>
</card>
</wml>
<%Response.end%>
