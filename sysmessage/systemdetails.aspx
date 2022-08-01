<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="systemdetails.aspx.cs"
    Inherits="KeLin.WebSite.sysmessage.systemdetails" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%
Response.Buffer = true; 
Response.Expires = -1;
Response.ExpiresAbsolute = DateTime.Now.AddDays(-1); 
Response.Expires = 0 ;
Response.CacheControl = "no-cache";  %>
    <title>编辑公告</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>

    <script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}
function calCtrlPopup(inputField) {
    showCalendar(inputField.name, 'y-mm-dd');
}
// ]]>
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                    <td valign="top" align="left">
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
                                                        系统管理>>公告设置>>编辑公告信息
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="13">
                                            <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                                    </tr>
                         </table>
                       </td>
                       <tr><td>
                       
                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                            <tbody>
                                <tr>
                                    <td class="column" colspan="2">
                                        <font face="宋体"><%=title%> </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">标题： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="390px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">公告分类： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:DropDownList ID="ddl_class" runat="server">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">有效日期：</font>
                                    </td>
                                    <td class="fh3">
                                        <font face="宋体">
                                            <asp:TextBox ID="tb_date" runat="server"></asp:TextBox>
                                            <img style="cursor:hand;" onclick="WdatePicker({el:'tb_date'})" TITLE="选择" src="/NetImages/choose.gif"> 
                                          
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">内容： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="FreeTextBox1" runat="server" Height="274px" TextMode="MultiLine" Width="614px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="2" align="center">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text="  保 存 " OnClick="bt_ok_Click" CssClass="bt">
                                        </asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="bt_return" runat="server" Text="  返 回  "  CssClass="bt" OnClick="bt_return_Click">
                                        </asp:Button>
                                        <br />
                                        <br />
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
                  
                    
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
