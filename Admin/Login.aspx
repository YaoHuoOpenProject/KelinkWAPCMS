<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KeLin.WebSite.Login" %><%
Response.Buffer = true; 
Response.Expires = -1;
Response.ExpiresAbsolute = DateTime.Now.AddDays(-1); 
Response.Expires = 0 ;
Response.CacheControl = "no-cache";  
%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>登录</title>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">
    document.onkeydown = function() {
        var k = window.event.keyCode;
        if (k == "13") {
           // Login.submit();
        }
    }
 </script>   
</head>
<body topmargin="0" bgcolor="#FFFFFF">    
 
                <form name="Login" action="Login.aspx" method="post">  
                <input type="hidden"name="ActionStatus" value="login" />

                    <table  cellspacing="1" cellpadding="3" width="220" align="center" border="0" bgcolor="#99ccff">
                       
                            <tr>
                                <td colspan="2" height="22">
                                    <img height="11" src="../NetImages/shdot.gif" width="11" border="0">
                                                                <b>登录</b>
                                </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="69" bgcolor="#f6f6f6">
                               
                                        <b>&nbsp; 用户名：</b>
                                </td>
                                <td width="137" bgcolor="#f6f6f6">
                                    &nbsp;<input onfocus="this.select()" name="UserName" style="width:120" value="" />
                                        　</td>
                            </tr>
                            <tr>
                                <td  width="69" bgcolor="#ffffff" height="24">
                                    <b>&nbsp; 密码：</b>
                                </td>
                                <td width="137" bgcolor="#ffffff" height="24">
                                    &nbsp;<input onfocus="this.select()" type="password" name="Password" style="width:120" value="" /></td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="69" bgcolor="#f6f6f6">
                                   
                                        <b>&nbsp; 验证码：</b>
                                </td>
                                <td width="137" bgcolor="#f6f6f6">
                                 &nbsp;<input onfocus="this.select()" size="4" name="CheckCode" value=""/> <img src="CreatImage.aspx" />                                   
                                </td>
                            </tr>
                            <tr align="center" bgcolor="#FFFFFF">
                                <td bgcolor="#FFFFFF" colspan="2" height="26">
                                                                    
                                  <input type="submit" name="bt" value="确认登录" class="bt" />
                                                                        
                                                                 
                                	
                                </td>
                            </tr>
                                                  
                    </table>
                    </form>
               
    			<p align="center">
               
    <br/>
    <br/>
    
    <%if (base.pd == false)
      {

          Response.Write("<a href=\"/index.aspx\">返回总站首页</a> ");

      } %>
    
    
</p>

</body>
</html>