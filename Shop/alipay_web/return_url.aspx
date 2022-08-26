<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="return_url.aspx.cs" Inherits="KeLin.WebSite.shop.alipay_web.return_url" %>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=1.0">
<%if (this.INFO == "OK")
  { %>
<meta http-equiv="refresh" content="2;url=/shop/orderlistmy.aspx?orderid=<%=orderid %>" />
<%} %>
<link rel="stylesheet" href="/Template/default/default.css?v=20140618" type="text/css" />

<title>支付宝电脑版支付结果</title>
</head>
<body>
<%if (this.INFO == "OK")
  {%>

<div class="line">支付成功！</div>
<%}
  else
  { %>

<div class="line">支付失败！</div>


<%} %>
<div class="btBox"><div class="bt1"><a href="/shop/orderlistmy.aspx?orderid=<%=orderid %>">无法自动跳转点击此返回</a></div></div>

</body>
</html>