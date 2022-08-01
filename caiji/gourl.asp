<%@language=vbscript codepage=936 %>
<html>
<head>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<title>正在处理中</title>
</head>
<body>	
	<div id="panel" style="position:absolute;border:1px;left:150px;top:150px;solid;">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/Netimages/hourglass.gif">正在处理请求，请耐心等待......
	</td>
  </tr>
</table>
</div>
<%
dim typename,classid
sid=request("sid")
typeid=request("typeid")
typename=request("typename")
%>
<script>
	window.location="systemlist.asp?sid=<%=sid%>&typename=<%=typename%>&typeid=<%=typeid%>";
	
</script>
</body>