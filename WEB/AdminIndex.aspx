<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="KeLin.WebSite.WEB.AdminIndex" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>电脑网站独立页面综合排版-<%=strIndexTitle%></title>
</head>
<frameset rows="70,*" cols="*" frameborder="NO" border="0" framespacing="0">
	<frame name="header" scrolling="no" noresize target="main" src="Top.aspx">
	<frame name="main" src="PageDown.aspx" frameborder="no" scrolling="yes">
	<noframes>
	<body>

	<p>此网页使用了框架，但您的浏览器不支持框架。</p>

	</body>
	</noframes>
</frameset>

</html>
