<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alipay_SiteID_return_url.aspx.cs" Inherits="KeLin.WebSite.chinabank.alipay_SiteID_return_url" %>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta name="viewport" content="width=device-width; initial-scale=1.0; minimum-scale=1.0; maximum-scale=1.0">

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

<div class="line">支付失败！请返回重试。</div>


<%} %>
<div class="btBox"><div class="bt1"><a href="javascript:window.close()">关闭此页，返回刷新页面</a></div></div>

</body>
</html>