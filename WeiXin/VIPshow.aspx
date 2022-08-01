<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VIPshow.aspx.cs" Inherits="KeLin.WebSite.WeiXin.VIPshow" %><?xml version="1.0" encoding="UTF-8"?><!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta name="viewport" content="width=device-width, initial-scale=0.5, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="author" content="kelink,chinastrong" />
<meta name="keywords" content="微信CMS,微信接入,微信营销CMS,微网站,wap,cms,wap建站,wap建站系统,wap自助建站,短信猫,3g,3g应用,3G手机,wap网站,wap下载"/>
<meta name="description" content="专注于WAP建站,3G建站,手机建站,WAP网站,CMS,微信CMS,微信接入,微信营销CMS,微网站,公司为广大用户提供完整全面的无线应用解决方案。"/>
<style type="text/css">

</style>
<title>我的会员卡</title>
</head>
<BODY background="images/test_01.jpg" LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
<div align="center">
<TABLE WIDTH=320 BORDER=0 CELLPADDING=0 CELLSPACING=0 >
	<TR>
		<TD background="images/test_01.jpg">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD background ="<%=this.cardImg %>" WIDTH=320 HEIGHT=189 valign="top">
		
    <table border="0" width="100%" id="table1" height="165">
		<tr>
			<td>　</td>
			<td width="139">　</td>
		</tr>
		<tr>
			<td height="51">　</td>
			<td width="139" height="51"><%=this.getuserid %></td>
		</tr>
	</table>
		
    </TD>
	</TR>
	<TR>
		<TD background="images/test_03.jpg">
			&nbsp;</TD>
	</TR>
	<TR>
		<TD background ="images/test_04.jpg" WIDTH=320 HEIGHT=150 valign="top">
			
			<table border="0" width="100%" id="table2" height="100%">
				<tr>
					<td width="9">　</td>
					<td valign="top"><%=this.cardInfo %></td>
					<td width="15">　</td>
				</tr>
			</table>
			
			</TD>
	</TR>
	<TR>
		<TD>
			<IMG SRC="images/test_05.jpg" WIDTH=320 HEIGHT=22 ALT=""></TD>
	</TR>
</TABLE>
</div>
</body>
</html>