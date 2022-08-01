<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_modifyUser.aspx.cs" Inherits="KeLin.WebSite.airplane.admin_modifyUser" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>修改留言内容</title>
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
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
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
                                                网站管理>>航班内容>>订单管理
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
                    <td valign="top" align="left">                        
                        <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                            <tbody>
                                <tr>
                                    <td class="column" colspan="4">
                                        <font face="宋体">修改状态 </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">购买者： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="400px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">购买者说明： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_author" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">状态：</font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <font face="宋体">
                                            <asp:DropDownList ID="ddl_type" runat="server">
                                            </asp:DropDownList></font>
                                    </td>
                                  
                                   
                                </tr>
                                
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">我的说明： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="FreeTextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="4" align="center">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                        </asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text=" 返 回 " OnClick="Button1_Click" CssClass="bt"/><br />
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </td>
                    
                </tr>
                
                <tr>
                    <td align="center">
                       
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
