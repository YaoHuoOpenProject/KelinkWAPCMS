<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallBack.aspx.cs" Inherits="OauthWeb.OAuth.QQ.CallBack" %>
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
<%if (this.state == "0")
  {
      Response.Write(this.stateINFO);
      Response.Write("<br/>");
      Response.Write("<a href=\"/waplogin.aspx?siteid="+this.siteid+"\">【返回】</a><br/>");
  
  }
  else if(this.state == "2")
  {
 %>您好，<b></b><%=nickname %></b><br />      
 第三方QQ帐号已验证通过，您可以操作：<br /><br />
 1.<a href="callback.aspx?action=reg">直接进入</a>（请记住您的默认密码:<%=defaultPW %>，即用户名的后四位，我的地盘中可查用户名，进去后修改它）<br /><br />
 <%if (this.showQQBin == "1")
   { %>
 2.绑定我现有的会员ID。<br />
 <form name="from1" action ="callBack.aspx" method ="post">
 我的会员ID：<br /><input type ="text" name="touid" value="" /><br />
 我的密码：<br /><input type ="password" name="topw" value="" /><br />
  <input type="hidden"  name="action" value="bind" />
 <input type="submit" value="确定绑定" />
 </form>
 <%} %>
</div><div class="tip"> <%=this.stateINFO %><br />
      
 <% } %>
</div>
</body>
</html>
