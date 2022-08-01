<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="KeLin.WebSite.Utility.weather.show" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta name="author" content="全国天气预报 kelink.com" />
<meta name="keywords" content="全国天气预报Simple hair salon">
<meta name="description" content="Simple hair salon ">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<!--viewport and number in page-->
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta name="apple-touch-fullscreen" content="yes">
<!--apple-mobile-web-app-capable-->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="">
		
<link rel="stylesheet" type="text/css" media="all" href="/Template/128/global.css">
<link rel="stylesheet" type="text/css" media="all" href="/Template/128/fw01.css">
<link rel="stylesheet" href="/Template/default/default.css?v=20140925" type="text/css" />

<title>全国天气预报</title>
</head>
<body>

<header id="header">
    


<nav class="catePageTitle" style="background:url(/Template/128/11.png) left top repeat-x;">
	<h1> 全国天气预报</h1>
	<a class="pageBackBtn" href="javascript:history.back();">返回</a>
	<div class="titleTapMenu">
		<a href="/wapindex.aspx?siteid=<%=this.siteid %>">首页</a>
	</div>
</nav>
</header>
<div style="margin-top: 50px;"><iframe width="100%" height="600" frameborder="0" scrolling="yes" marginheight="0" marginwidth="0" src="http://waptianqi.2345.com"></iframe><br />


<div class="tbl-type detail-tbn2"   id="cart1" style="position: fixed; left: 0px; bottom: 0px; z-index: 10; display: table; height:55px;">
    		                <div style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);" class="tbl-cell normal">                    <a href="javascript:history.back();" class="btn-buy"><span></span>返回上级</a>
                </div>
                <div style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);" class="tbl-cell normal">                    <a href="/wapindex.aspx?siteid=<%=this.siteid %>" class="btn-cart"><span></span>返回首页</a>
                </div>
				
        </div>
</body>