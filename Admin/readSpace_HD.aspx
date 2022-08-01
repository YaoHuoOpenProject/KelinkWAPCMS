<%@ Page Language="C#" AutoEventWireup="true" Codebehind="readSpace_HD.aspx.cs" Inherits="KeLin.WebSite.admin.readSpace_HD" %>

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
    window.location = "readSpace_HD.aspx?action=go";
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
                                                        <font face="宋体">系统空间占用情况 </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 200px">
                                                        <font face="宋体">系统所有文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=systotalsize%>" height="10">&nbsp;
                                                        <%=systotal%>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">Dll文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=dllsize %>" height="10">&nbsp;
                                                        <%=dll%>
                                                    </td>
                                                </tr>
                                                
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">文章文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=articlesize %>" height="10">&nbsp;
                                                        <%=article%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">论坛文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=bbssize%>" height="10">&nbsp;
                                                        <%=bbs%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">图片文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=picsize%>" height="10">&nbsp;
                                                        <%=pic%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">铃声文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=ringsize%>" height="10">&nbsp;
                                                        <%=ring%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        视频文件占用空间：
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=videosize%>" height="10">&nbsp;
                                                        <%=video%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">下载文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=downloadsize%>" height="10">&nbsp;
                                                        <%=download%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">拍卖文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=paimaisize%>" height="10">&nbsp;
                                                        <%=paimai%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">商店文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=shopsize%>" height="10">&nbsp;
                                                        <%=shop%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">博客文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=blogsize%>" height="10">&nbsp;
                                                        <%=blog%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">临时文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=tempsize%>" height="10">&nbsp;
                                                        <%=temp%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">上传文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=uploadsize%>" height="10">&nbsp;
                                                        <%=upload%>
                                                    </td>
                                                </tr>
                                                
                                                <tr>
                                                    <td class="f" style="width: 26%">
                                                        <font face="宋体">相册文件占用空间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img src="/NetImages/buttonbg.gif" width="<%=albumsize%>" height="10">&nbsp;
                                                        <%=album%>
                                                    </td>
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
