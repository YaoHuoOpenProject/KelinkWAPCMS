<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Sysadmin_view.aspx.cs"
    Inherits="KeLin.WebSite.admin.Sysadmin_view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>服务器信息</title>
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
                                            系统管理 &gt;&gt; 服务器信息 
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
                                                    <td class="column" colspan="4">
                                                        <font face="宋体">基本信息 </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="16%" class="f" style="width: 16%">
                                                        <font face="宋体">用户名： </font>
                                                    </td>
                                                    <td width="31%" class="fh3">
                                                        <% =nickname %>
                                                        &nbsp;</td>
                                                    <td width="18%" class="f">
                                                        &nbsp;当前IP地址:</td>
                                                    <td width="35%" class="fh3">
                                                        <% =CurrentIP %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">身份过期： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>&nbsp;分钟</td>
                                                    <td class="f">
                                                        &nbsp;现在时间：</td>
                                                    <td class="fh3">
                                                        <% =CurrentTime %>
                                                    </td>
                                                </tr>
                                                <!--tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">上线次数：</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <%=LoginTimes %>
                                                    </td>
                                                    <td class="f">
                                                        上线时间：</td>
                                                    <td class="fh3">
                                                        <% =LastLoginTime %>
                                                    </td>
                                                </tr-->
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">服务器名称： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        &nbsp;服务器IP地址：</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">.NET Framework 版本： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        &nbsp;服务器操作系统：</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">服务器IIS版本： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        &nbsp;HTTP访问端口：</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        域名主机：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        用户信息：</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        FSO文本文件读写：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                                                    <td class="f">
                                                        数据库支持：</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                                                </tr>
                                                <!--tr>
                                                    <td class="f" style="width: 16%">
                                                        Jmail组件支持：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                                                    <td class="f">
                                                        AspJpeg组件支持：</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Red" Text="Label"></asp:Label></td>
                                                </tr-->
                                        </table>
                                        <br />
                                        <%if (base.ManagerLvl == "00")
                                          { %>
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2" align="left">
                                                        <font face="宋体">版权信息</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">产品开发： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        &nbsp;<b>广州市联速计算机科技有限公司 (柯林软件)</b></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">软件版本： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        &nbsp;<%=SystemVersion %></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">联系方法： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        &nbsp;
                                                        <br>
                                                        官方电脑网站:<a href="http://www.kelink.com" target="_blank">http://www.kelink.com</a> 手机访问:<a href="http://kelink.com" target="_blank">http://kelink.com</a>
                                                        <br>
                                                        <br>
                                                        Email:chinastrong@163.com
                                                        <br>
                                                        <br>
                                                        <font color="#FF0000">QQ:800007757/85403498/407589963<br>
                                                            <br>
                                                            TEL:13048036868/4000-588-605
                                                          <br><br>
                                                          此程序为商业程序，柯林专利受法律保护！ 请保留此信息，只有超级管理员能看到。<br />
                                                          免费版只用于个人学习之用，请勿用于商业应用。
                                                            
                                                            </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fh3" colspan="2" align="center">
                                                        <br />
                                                        &nbsp;<input id="bt_return" type="button" value=" 返 回 " onclick="return bt_return_onclick()"
                                                            class="bt" />
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <%} %>
                                    </div>
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
                    页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
