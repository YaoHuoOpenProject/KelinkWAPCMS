<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewIndex.aspx.cs" Inherits="WeiXinWeb.WeiXin.ViewIndex" %>
<html>

<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<title>浏览内容</title>
</head>

<frameset rows="450,*">
	<frame name="top" id="top" scrolling="yes" noresize  src="<%=this.http_start %>wapindex.aspx?siteid=<%=this.SiteId %>">
	<frame name="main" id="main" src="viewDown.aspx?ii=<%=ii %>&name=<%=name %>&typevalue=<%=typevalue %>">
	<noframes>
	<body>

	<p>此网页使用了框架，但您的浏览器不支持框架。</p>

	</body>
	</noframes>
</frameset>

</html>

