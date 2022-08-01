<%@ Page Language="C#" AutoEventWireup="true" Codebehind="fydetal.aspx.cs" Inherits="KeLin.WebSite.visiteCount.fydetal" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>详细统计</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<%if (KL_DelOnlineTime == "1") { } %>
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td>
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
                                                            系统管理 >> 访问量统计 >> 当前在线活动
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
                                    <table id="Table1" width="100%" class="TABLE6">
                                        <tbody>
                                            <tr>
                                                <td valign="top" align="left">
                                                    <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="fid">
                                                        <HeaderTemplate>
                                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0" width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="column" colspan="5" align="center">详细记录(只显示当前本站<%=KL_DelOnlineTime%>分钟内在线记录，在web.config中配置)</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="column" width="165px">
                                                                            时间</td>
                                                                        <td class="column">
                                                                            网站ID</td>
                                                                        <td class="column">
                                                                            访问客</td>
                                                                        <td class="column" width="130px">
                                                                            来访IP</td>
                                                                        <td class="column">
                                                                            动作</td>
                                                                    </tr>
                                                        </HeaderTemplate>
                                                        <FooterTemplate>
                                                            <tr>
                                                                <td class="column">
                                                                </td>
                                                                <td class="column">
                                                                </td>
                                                                <td class="column">
                                                                </td>
                                                                <td class="column">
                                                                </td>
                                                                <td class="column">
                                                                </td>
                                                            </tr>
                                                            </tbody></table>
                                                        </FooterTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "ftime")%>
                                                                </td>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "fuserid")%>
                                                                </td>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "nickname")%>(<%# DataBinder.Eval(Container.DataItem, "userid")%>)
                                                                </td>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "fip")%>
                                                                </td>
                                                                <td class="f">
                                                                   
                                                                        <%# DataBinder.Eval(Container.DataItem, "classname")%>
                                                                    
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <AlternatingItemTemplate>
                                                            <tr>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "ftime")%>
                                                                </td>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "fuserid")%>
                                                                </td>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "nickname")%>(<%# DataBinder.Eval(Container.DataItem, "userid")%>)
                                                                </td>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "fip")%>
                                                                </td>
                                                                <td class="fh">
                                                                   
                                                                        <%# DataBinder.Eval(Container.DataItem, "classname")%>
                                                                    
                                                            </tr>
                                                        </AlternatingItemTemplate>
                                                    </asp:DataList>
                                                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30" OnPageChanged="AspNetPager1_PageChanged">
                                                    </webdiyer:AspNetPager>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>                                    
                                 </div>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒
                                </td>
                            </tr>
                            <tr>
                                <td class="border_right" style="width: 10px; height: 30px;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
