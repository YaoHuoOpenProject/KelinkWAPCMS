<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyDomain.aspx.cs" Inherits="KeLin.WebSite.admin.ModifyDomain" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>短信</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript">
        // <!CDATA[

        function bt_return_onclick() {
            history.go(-1)
        }

        // ]]>
    </script>
</head>
<body>
    
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
            <td colspan="4">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="1%">
                            <img src="../Images/main_title_01.gif" width="12" height="24">
                        </td>
                        <td width="98%" background="../Images/main_title_02.gif">
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="2%">
                                        <div align="center">
                                            <img src="../Images/i08.gif" width="16" height="16"></div>
                                    </td>
                                    <td width="98%" height="24" valign="middle">
                                        网站管理>>基本信息管理>>短信注册会员
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="1%">
                            <img src="../Images/main_title_03.gif" width="13" height="24">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top" align="left" style="width: 100%;">
            
                <table cellspacing="1" cellpadding="3" width="100%" border="0" class="TABLE6">
                    <tbody>
                        <tr>
                            <td valign="top" align="left">
                            <form id="form1" runat="server">
                                <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                    <tbody>
                                        <tr>
                                            <td class="column" colspan="2" align="center">
                                                <font face="宋体">短信注册会员设置 </font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="f" style="width: 17%">
                                                <font face="宋体">短信指令： </font>
                                            </td>
                                            <td class="fh3">
                                                <asp:TextBox ID="tb_myorder" runat="server" Width="237px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="f" style="width: 17%">
                                                <font face="宋体">指令ID： </font>
                                            </td>
                                            <td class="fh3">
                                                <asp:TextBox ID="tb_myorderid" runat="server" Width="237px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="f" style="width: 17%">
                                                <font face="宋体">校验码：</font>
                                            </td>
                                            <td class="fh3">
                                                <font face="宋体">
                                                    <asp:TextBox ID="tb_checkcode" runat="server" Width="237px"></asp:TextBox>
                                                    (20位内字符或数字) </font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="f" style="width: 17%">
                                                <font face="宋体">是否开启： </font>
                                            </td>
                                            <td class="fh3">
                                                <asp:DropDownList ID="dl_isclose" runat="server">
                                                    <asp:ListItem Value="1">开启</asp:ListItem>
                                                    <asp:ListItem Value="0">禁用</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="f" style="width: 17%">
                                                <font face="宋体">备注： </font>
                                            </td>
                                            <td class="fh3">
                                                <asp:TextBox  TextMode="MultiLine" Rows="5" Columns="20" ID="tb_remark" 
                                                    runat="server" Width="240px"></asp:TextBox>
                                               例:如有问题，请联系客服：QQ:XXXXXXX(200字内)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="fh3" colspan="2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="fh3" colspan="2" align="center">
                                                <br />
                                                <asp:Button ID="bt_ok" runat="server" Text=" 保  存 " OnClick="bt_ok_Click" Width="100px">
                                                </asp:Button>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="bt_return" runat="server" Text=" 返  回 " Width="100px" OnClick="bt_return_Click">
                                                </asp:Button>
                                                
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                 </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr align="right">
            <td>
            </td>
        </tr>
        <tr>
            <td align="center">
                页面执行时间：<%=loadpagetime %>
                &nbsp;毫秒！
            </td>
        </tr>
    </table>
   
</body>
</html>
