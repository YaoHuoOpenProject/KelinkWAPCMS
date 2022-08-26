<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QQLogin.aspx.cs" Inherits="OauthWeb.OAuth.QQ.QQLogin" %>
<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="max-age=0"/>
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0">
<meta name="author" content="QQ登录" />
<meta name="keywords" content="QQ登录" />
<meta name="description" content="QQ登录" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=2.0">
<%=myCss.ToString() %>
<title>QQ登录提示信息</title>
</head>
<body>
<div class="subtitle">温馨提示：</div>
<div class="content">
站长可能还没有配置此功能，详细配置<a href="OAuth_help.htm">请点击了解</a>。
<br /><br />
报错信息：<%=INFO %>
</div>
</body>
</html>
