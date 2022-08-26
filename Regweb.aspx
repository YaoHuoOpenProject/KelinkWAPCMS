<%@ Page Language="C#" AutoEventWireup="true" Codebehind="regweb.aspx.cs" Inherits="KeLin.WebSite.regweb" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>注册用户</title>
<link href="NetCSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<p align="center">
&nbsp;</p>
<p align="center">
 <a href="index.aspx">登录接口地址</a><br><br>
此页面利用iframe在下面调用注册页面接口地址admin/reg.aspx
</p>

        <table cellspacing="0" cellpadding="0" width="100%">
            <tbody>
                <tr>
                    <td valign="middle" nowrap align="center">
                        <iframe src="admin/Reg.aspx" id="reguser" width="800px" height="750px" frameborder="0"></iframe>
                    </td>
                </tr>
            </tbody>
        </table>


</body>
</html>
