<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewIndex.aspx.cs" Inherits="WeiXinWeb.WeiXin.ViewIndex" %>
<html>

<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<title>�������</title>
</head>

<frameset rows="450,*">
	<frame name="top" id="top" scrolling="yes" noresize  src="<%=this.http_start %>wapindex.aspx?siteid=<%=this.SiteId %>">
	<frame name="main" id="main" src="viewDown.aspx?ii=<%=ii %>&name=<%=name %>&typevalue=<%=typevalue %>">
	<noframes>
	<body>

	<p>����ҳʹ���˿�ܣ��������������֧�ֿ�ܡ�</p>

	</body>
	</noframes>
</frameset>

</html>

