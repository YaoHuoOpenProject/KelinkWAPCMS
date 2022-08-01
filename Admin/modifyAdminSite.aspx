<%@ Page Language="C#" AutoEventWireup="true" Codebehind="modifyAdminSite.aspx.cs" Inherits="KeLin.WebSite.admin.modifyAdminSite" %><%
Response.Buffer = true; 
Response.Expires = -1;
Response.ExpiresAbsolute = DateTime.Now.AddDays(-1); 
Response.Expires = 0 ;
Response.CacheControl = "no-cache";  
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>系统设置</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
function PreviewImage(File)
{
var imageID="imgPhoto";//img控件的id
var picName=File.value;
var array=new Array();
array=picName.split(".");
var extendName=array[1];
extendName=extendName.toLowerCase();
if(extendName=="jpg" || extendName=="jpeg" || extendName=="gif" || extendName=="png" || extendName=="bmp" || extendName=="ico")
{
document.getElementById(imageID).src=picName;
}
else
{
var errMessage="对不起！你选择的图片类型有误！请重新选择！";
window.alert(errMessage);
return;
}
}
function PreviewImage2(File)
{
var imageID="imgPhoto2";//img控件的id
var picName=File.value;
var array=new Array();
array=picName.split(".");
var extendName=array[1];
extendName=extendName.toLowerCase();
if(extendName=="jpg" || extendName=="jpeg" || extendName=="gif" || extendName=="png" || extendName=="bmp" || extendName=="ico")
{
document.getElementById(imageID).src=picName;
}
else
{
var errMessage="对不起！你选择的图片类型有误！请重新选择！";
window.alert(errMessage);
return;
}
}
    </script>

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
                                            系统管理 &gt;&gt; 系统设置
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
                    <table cellspacing="0" cellpadding="0" width="100%" border="0" class="TABLE6">
                        <tbody>
                            <tr>
                                <td valign="top" align="left">
                                    <div class="txt4">
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="宋体">修改信息 </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">建站系统网站标题： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_title" runat="server" Width="100%"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">网站LOGO(<font color="red">175X85</font>)： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img id="imgPhoto" src="" runat="server" />
                                                        <asp:TextBox ID="tb_sitelogo" runat="server" Visible="False"></asp:TextBox><br />
                                                        <input id="file1" style="width: 320px; height: 20px" onpropertychange="PreviewImage(this)"
                                                            type="file" size="34" runat="server">
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">网站横标图(<font color="red">500X80</font>)：</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img id="imgPhoto2" src="" runat="server" />
                                                        <asp:TextBox ID="tb_sitebar" runat="server" Visible="False"></asp:TextBox><br />
                                                        <input id="file2" style="width: 320px; height: 20px" onpropertychange="PreviewImage2(this)"
                                                            type="file" size="34" runat="server">
                                                        
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">系统邮件： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_email" runat="server" Width="173px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">联系电话： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_tel" runat="server" Width="173px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                               
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">网站底部信息： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_copyrigth" runat="server" Height="141px" TextMode="MultiLine"
                                                            Width="100%"></asp:TextBox></td>
                                                </tr>
                                                 <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">WEB首页手机模拟浏览器显示网站ID： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_siteid" runat="server" Width="173px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体"></font>
                                                    </td>
                                                    <td class="fh3">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <table width="100%">
                                        <tr>
                                            <td style="height: 35px" align="center">
                                                <span class="txt4">
                                                    <br />
                                                    <asp:Button ID="bt_ok" runat="server" Text=" 保  存 " OnClick="bt_ok_Click" Width="100px" CssClass="bt">
                                                    </asp:Button>
                                                    <br />
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
            </tr>
            <tr>
                <td align="center">
                    页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
