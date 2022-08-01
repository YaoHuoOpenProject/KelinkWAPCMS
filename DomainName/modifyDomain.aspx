<%@ Page Language="C#" AutoEventWireup="true" Codebehind="modifyDomain.aspx.cs" Inherits="KeLin.WebSite.DomainName.modifyDomain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>主域名设置</title>
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
                                            系统管理 >> 域名设置 >> 主域名设置
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
                        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0" class="TABLE6">
                            <tbody>
                                <tr>
                                    <td valign="top" style="width: 100%;">
                                        <table cellspacing="7" width="100%">
                                            <tbody>
                                                <tr>
                                                    
                                <td valign="top" align="left">
                                    <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                        <tbody>
                                            <tr>
                                                <td class="column" colspan="2">
                                                    <font face="宋体">域名信息 </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">开放注册域名： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:TextBox ID="tb_domain" runat="server" Width="237px"></asp:TextBox> (修改域名需要重新授权！)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">是否开放注册站长： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:DropDownList ID="isClose" runat="server">
                                                        <asp:ListItem Value="0">0_开启</asp:ListItem>
                                                        <asp:ListItem Value="1">1_关闭</asp:ListItem>                                                       
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">注册页面底部说明： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:TextBox ID="remark" runat="server" Width="460px" Height="50px"></asp:TextBox>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">注册字符大于： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:DropDownList ID="ddl_count" runat="server">
                                                        <asp:ListItem Value="0">0</asp:ListItem>
                                                        <asp:ListItem Value="1">1</asp:ListItem>
                                                        <asp:ListItem Value="2">2</asp:ListItem>
                                                        <asp:ListItem Value="3">3</asp:ListItem>
                                                        <asp:ListItem Value="4">4</asp:ListItem>
                                                        <asp:ListItem Value="5">5</asp:ListItem>
                                                        <asp:ListItem Value="6">6</asp:ListItem>
                                                        <asp:ListItem Value="7">7</asp:ListItem>
                                                        <asp:ListItem Value="8">8</asp:ListItem>
                                                        <asp:ListItem Value="9">9</asp:ListItem>
                                                        <asp:ListItem Value="10">10</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">注册过滤字符：</font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <font face="宋体">
                                                        <asp:TextBox ID="tb_char" runat="server" Width="460px"></asp:TextBox><br />
                                                        (如果多个请用"|"号分开，如：wap|blog|sex|fuck) </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">域名绑定： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:DropDownList ID="dl_isusedns" runat="server">
                                                        <asp:ListItem Value="1">开启</asp:ListItem>
                                                        <asp:ListItem Value="0">禁用</asp:ListItem>
                                                    </asp:DropDownList>
                                                    &nbsp;&nbsp;(体现在【网站管理】→【基本信息管理】中的“域名绑定”)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">默认分配空间： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:TextBox ID="tb_size" runat="server" Width="69px"></asp:TextBox>
                                                    &nbsp;M</td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">默认使用天数： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:TextBox ID="tb_days" runat="server" Width="70px"></asp:TextBox>
                                                    &nbsp;天 ( 0 为无限期 )
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">默认站长审核： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:DropDownList ID="dl_ischeck" runat="server">
                                                        <asp:ListItem Value="1">1_需要</asp:ListItem>
                                                        <asp:ListItem Value="0">0_不要</asp:ListItem>
                                                    </asp:DropDownList>
                                                    &nbsp;&nbsp;(站长注册时默认发布内容时是否需要审核)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">当网站锁定时显示：<br />(WEB和WAP后台不能登录) </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:TextBox ID="infolock" runat="server" Width="460px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                                                   <br />(支持UBB内容)
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">当网站过期显示：<br />(多用户建站系统用)  </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:TextBox ID="infoclose" runat="server" Width="460px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                                                   <br />(支持UBB内容)
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="f" style="width: 29%">
                                                    <font face="宋体">当网站域名没有绑定显示： </font>
                                                </td>
                                                <td class="fh3" width="70%">
                                                    <asp:TextBox ID="infodomainname" runat="server" Width="460px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                                                    <br />(支持UBB内容)
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="fh3" colspan="2" align="center">
                                                    <br />
                                                    　<asp:Button ID="bt_ok" runat="server" Text=" 保  存 " OnClick="bt_ok_Click" CssClass="bt">
                                                    </asp:Button><br />
                                                    <br />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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
                    &nbsp;毫秒！</td>
            </tr>
        </table>
    </form>
</body>
</html>
