<%@ Page Language="C#" AutoEventWireup="true" Codebehind="backupSQL.aspx.cs" Inherits="KeLin.WebSite.admin.backupSQL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>数据维护</title>
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
                                                系统管理 &gt;&gt; 数据维护
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
                        <div class="txt4">
                            <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                <tbody>
                                    <tr>
                                        <td class="column" colspan="2">
                                            <font face="宋体">数据维护 </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">数据维护类型： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:DropDownList ID="dl_sql" runat="server">
                                                <asp:ListItem Value="message">1.删除大于15天的站内信息(短信收藏不会删除)(可跳过)</asp:ListItem>
                                                <asp:ListItem Value="adlink">2.删除大于15天广告点击记录(可跳过)</asp:ListItem>
                                                <asp:ListItem Value="waplog">3.删除大于15天会员操作记录(可跳过)</asp:ListItem>
                                                <asp:ListItem Value="delAndCreatMSG">4.一键清空站内信息(超级管理员权限执行，短信收藏也会清掉，请三思)</asp:ListItem>
                                                 <asp:ListItem Value="delAndCreat">5.一键清空点击日志/在线记录/操作日志(超级管理员权限执行，经常执行)</asp:ListItem>
                                                 
                                                <asp:ListItem Value="datalog">6.压缩和删除数据库自生日志(最后一定要执行)</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="bt_ExeSQL" runat="server" Text=" 执行操作 " OnClick="bt_ExeSQL_Click" CssClass="bt" OnClientClick="return confirm('确认要执行此操作吗？')" /></td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">警告： </font>
                                        </td>
                                        <td class="fh3">
                                            <font color="red">可能因权限不足或超时导致删除失败报错！请直接登录独立主机或虚拟主机数据库管理中操作！</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">备份数据库： </font>
                                        </td>
                                        <td class="fh3">
                                            <br />
                                            <b>独立主机：</b>进入独立主机桌面，在程序里打开“企业管理”，展开相应的数据库进行备份。&nbsp;<br />
                                            <br />
                                            <b>虚拟空间：</b>进入你购买数据库WEB管理后台，找到“备份/还原”功能，进行备份，然后用ftp进行下载。<br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">还原数据库： </font>
                                        </td>
                                        <td class="fh3">
                                            <br />
                                            <b>独立主机：</b>进入独立主机桌面，在程序里打开“企业管理”，展开相应的数据库进行还原。&nbsp;<br />
                                            <br />
                                            <b>虚拟空间：</b>进入你购买数据库WEB管理后台，找到“备份/还原”功能，进行还原。
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">说明： </font>
                                        </td>
                                        <td class="fh3">
                                            <br />
                                            <b>独立主机：</b>请在主机上设置每天自动备份、优化功能和删除日志空间。(<a href="http://www.kelink.com">kelink技术免费设置</a>)<br />
                                            <br />
                                            <b>虚拟空间：</b>请在你购买数据库WEB管理后台，定期进行备份操作、删除日志，有优化功能更好。<br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">注意： </font>
                                        </td>
                                        <td class="fh3">
                                            &nbsp;<font color="#FF0000">以上空间用户注意：当网站运行一段时间后，日志就会爆满，网站将无法访问，此时执行此页面的删除日志即可。
                                                <br>
                                                &nbsp;记住此页面地址是：<%=curURL%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right">
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
            </tbody>
        </table>
    </form>
</body>
</html>
