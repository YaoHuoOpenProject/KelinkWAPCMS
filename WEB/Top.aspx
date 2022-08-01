<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Top.aspx.cs" Inherits="KeLin.WebSite.WEB.Top" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>电脑页面综合排版</title>
<meta http-equiv="content-type" content="text/html;charset=gbk">
<link rel="stylesheet" type="text/css" media="screen" href="css/superfish.css" />
</head>
<body bgcolor="#5B91D9" topmargin="0" leftmargin="0">

   <table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0" height="74">
	<tr>
		<td width="150" align="center"><img src="<%=base.SiteImage %>" width="120" height="50"></td>
		<td valign ="bottom">
		
		<ul id="sample-menu-2" class="sf-menu">
		<li>
						
					</li>
			<li>
						<a href="/WEB/EditPage/Waiting.aspx" target="main"">我的页面排版</a>  
					</li>	
					<li>
						<a href="/WEB/ModelFunction/systemindex01.aspx" target="main">我的单独模块</a>  
					</li>
						
					<li>
						<a href="/WEB/Style/Style_List.aspx" target="main">我的CSS样式</a>  
					</li>	
					
					<li>
						<a href="PageDown.aspx" target="main"><font color="red"><b>↙帮助↘</b></font></a>  
					</li>
					
					<li>
						<a href="/WEB/Style/Style_List00.aspx" target="main">系统CSS样式</a>
					</li>
					
					<li>
						<a href="/WEB/ModelFunction/systemindex.aspx" target="main">系统单独模块</a>
					</li>
					<li>
						<a href="/WEB/ModelPage/systemindex.aspx" target="main">系统网页模板</a>
					</li>

				</ul>
	
	</td>
	</tr>
</table>

	</body>
</html> 