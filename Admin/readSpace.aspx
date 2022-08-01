<%@ Page Language="C#" AutoEventWireup="true" Codebehind="readSpace.aspx.cs" Inherits="KeLin.WebSite.admin.readSpace" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>空间统计</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}

// ]]>
    </script>

</head>
<body>

<%if(action=="" ){%>
<div id="panel" style="visibility:visible;position:absolute;border:1px;left:150px;top:150px;solid;cursor:wait">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/NetImages/hourglass.gif">正在统计您的磁盘空间，请耐心等待......
	</td>
  </tr>
</table>
</div>
<script>
    window.location = "readSpace.aspx?action=go";
</script>
</body></html>
<%
    Response.End();
  } %>
    <form id="form1" runat="server">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="12">
                                <img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
                            <td width="100%" background="/NetImages/main_title_02.gif">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%">
                                            <div align="center">
                                                <img src="/NetImages/i08.gif" width="16" height="16"></div>
                                        </td>
                                        <td width="98%" height="24" valign="middle">
                                            系统管理 &gt;&gt; 空间统计 
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="13">
                                <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table cellspacing="1" cellpadding="3" width="100%" border="0" class="TABLE6">
                        <tbody>
                            <tr>
                                <td valign="top" align="left">
                                    <div class="txt4">
                                   
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="宋体">我的空间使用情况 </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">总空间： </font>
                                                    </td>
                                                    <td class="fh3"><%if (sitespacesize > 600) sitespacesize = 600; %>
                                                        <img src="/NetImages/buttonbg.gif" width="<%=sitespacesize%>" height="10">&nbsp;
                                                        <%=sitespace%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">已用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%if (myspacesize/1024 > 600){ Response.Write("600");}else{Response.Write(myspacesize/1024);}; %>" height="10">&nbsp;
                                                        <%=myspace%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">剩余空间： </font>
                                                    </td>
                                                    <td class="fh3"><%long a = sitespacesize - myspacesize / 1024;
                                                                        if (a > 600) a = 600; %>
                                                        <img src="/NetImages/buttonbg.gif" width="<%=a%>" height="10">&nbsp;
                                                        <%=sitespacesize - myspacesize/1024%>
                                                        &nbsp;MB</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">提示： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        如果您的空间已满，请与管理员申请更多的空间。 &nbsp;</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
