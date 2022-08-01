<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemlist.aspx.cs" Inherits="KeLin.WebSite.DomainName.systemlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>域名地址转发</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
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
                                            系统管理&gt;&gt;域名设置&gt;&gt;域名转发设置
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
                                    <div class="txt4">
                                        <table id="Table1" width="100%">
                                            <tbody>
                                                
                                                <tr>
                                                    <td colspan="4">
                                                        <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                            height="100%" width="100%">
                                                            <tr>
                                                                <td class="column" colspan="2">
                                                                    域名转发信息</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" align="left">
                                                                    主域名：</td>
                                                                <td class="fh" style="width: 462px">
                                                                    <asp:TextBox runat="server" ID="tb_domain" Width="250px"></asp:TextBox><br />
                                                                    (不能带有&quot;http://&quot;,只需填写域名即可,如:wap.abc.com)
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="f" align="left">
                                                                    指向地址：</td>
                                                                <td class="fh" style="width: 462px">
                                                                    <asp:TextBox runat="server" ID="tb_transfer" Width="300px"></asp:TextBox><br />(http://上面域名/wapindex.aspx?siteid=网站ID)</td>
                                                            </tr>
                                                            <!--  去掉 转向方式 
									                                <tr>
																        <td class="f" align="left">转向方式：</td>
																        <td class="fh" style="width: 462px">
																	        <asp:dropdownlist id="dl_trantype" runat="server">
														                    <asp:ListItem Value="1">显示跳转</asp:ListItem>
																            <asp:ListItem Value="0">直接跳转</asp:ListItem>																
															                </asp:dropdownlist></td>
									                                </tr>  
									                                -->
                                                            <tr>
                                                                <td class="f" align="left">
                                                                    备注：</td>
                                                                <td class="fh" colspan="1" style="width: 462px">
                                                                    <asp:TextBox runat="server" ID="tb_remark" Width="445px" Height="51px" TextMode="MultiLine"></asp:TextBox>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr align="center">
                                                                <td class="fh" colspan="2">
                                                                    <asp:Button ID="bt_new" Text=" 新 增 " runat="server" Width="58px" OnClick="bt_new_Click" CssClass="bt">
                                                                    </asp:Button>&nbsp;&nbsp;&nbsp;
                                                                    <asp:Button ID="bt_save" Width="60" Text=' 保 存 ' runat="server" OnClick="bt_save_Click" CssClass="bt">
                                                                    </asp:Button>
                                                                    &nbsp;&nbsp;&nbsp;
                                                                    <asp:Button ID="bt_cancel" Width="60" Text=' 取 消 ' runat="server" OnClick="bt_cancel_Click" CssClass="bt">
                                                                    </asp:Button>
                                                                    &nbsp;&nbsp; &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                        <td height="50">
                                                            <table id="Table2" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                height="100%" width="100%">
                                                                <tr>
                                                                    <td class="fh" align="left">                                                                                                                                                
                                                                        域名关键字：<asp:TextBox runat="server" ID="txtKeyword" Width="100px"></asp:TextBox>
                                                                        &nbsp;<asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click"  CssClass="bt">
                                                                        </asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                           
                                                        </td>
                                                    </tr>
                                                <tr>
                                                    <td colspan="5" valign="top" align="left">
                                                        <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="ID"
                                                            OnEditCommand="DataList1_EditCommand1" OnDeleteCommand="DataList1_DeleteCommand1"
                                                            OnItemDataBound="DataList1_ItemDataBound1">
                                                            <HeaderTemplate>
                                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                    width="100%">
                                                                    <tr>
                                                                    <td class="column" width="50px">
                                                                            网站ID</td>
                                                                        <td class="column" width="110px">
                                                                            主域名</td>
                                                                        <td class="column" width="70px">
                                                                            服务器IP</td>
                                                                        <td class="column">
                                                                            指向地址</td>
                                                                        <td class="column" width="100px">
                                                                            备注</td>
                                                                        <td class="column" width="60px">
                                                                            操作人</td>
                                                                        <td class="column" width="100px">
                                                                            加入时间</td>
                                                                        <td class="column" width="100px" nowrap>
                                                                            编辑</td>
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
                                                                    <td class="column">
                                                                    </td>
                                                                    <td class="column">
                                                                    </td>
                                                                    
                                                                </tr>
                                                                </table>
                                                            </FooterTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                 <td class="f">
                                                                        <%# DataBinder.Eval(Container.DataItem, "siteid")%>
                                                                    </td>
                                                                    <td class="f">
                                                                        <a href='http://<%# DataBinder.Eval(Container.DataItem, "domain") %>' target="_blank">
                                                                            <%# DataBinder.Eval(Container.DataItem, "domain")%>
                                                                        </a>
                                                                    </td>
                                                                    <td class="f">
                                                                        <%= serverIP %>
                                                                    </td>
                                                                    <td class="f">
                                                                        <%# DataBinder.Eval(Container.DataItem, "realpath")%>
                                                                    </td>
                                                                    <td class="f" >
                                                                        <%# DataBinder.Eval(Container.DataItem, "filter")%>
                                                                    </td>
                                                                    <td class="f">
                                                                        <%# DataBinder.Eval(Container.DataItem, "title")%>
                                                                    </td>
                                                                    
                                                                    <td class="f">
                                                                        <%# DataBinder.Eval(Container.DataItem, "siteimg")%>
                                                                    </td>
                                                                    <td class="f">
                                                                        <asp:Button ID="bt_Edit" CommandName="Edit" runat="server"  Text=' 编辑 '  CssClass="bt"></asp:Button>
                                                                        <asp:Button ID="bt_Del" CommandName="Delete" runat="server"  Text=' 删除 '  CssClass="bt"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                            <AlternatingItemTemplate>
                                                                <tr>
                                                                <td class="f">
                                                                        <%# DataBinder.Eval(Container.DataItem, "siteid")%>
                                                                    </td>
                                                                    <td class="fh">
                                                                        <a href='http://<%# DataBinder.Eval(Container.DataItem, "domain") %>' target="_blank">
                                                                            <%# DataBinder.Eval(Container.DataItem, "domain")%>
                                                                        </a>
                                                                    </td>
                                                                    <td class="fh">
                                                                        <% =serverIP %>
                                                                    </td>
                                                                    <td class="fh">
                                                                        <%# DataBinder.Eval(Container.DataItem, "realpath")%>
                                                                    </td>
                                                                    <td class="fh">
                                                                        <%# DataBinder.Eval(Container.DataItem, "filter")%>
                                                                    </td>
                                                                    <td class="fh">
                                                                        <%# DataBinder.Eval(Container.DataItem, "title")%>
                                                                    </td>
                                                                    <td class="fh">
                                                                        <%# DataBinder.Eval(Container.DataItem, "siteimg")%>
                                                                    </td>
                                                                    <td class="f">
                                                                        <asp:Button ID="bt_Edit" CommandName="Edit" runat="server"  Text=' 编辑 '  CssClass="bt"></asp:Button>
                                                                        <asp:Button ID="bt_Del" CommandName="Delete" runat="server"  Text=' 删除 '  CssClass="bt"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </AlternatingItemTemplate>
                                                        </asp:DataList>
                                                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                    ShowPageIndexBox="Always" PageIndexBoxType="TextBox" TextBeforePageIndexBox="Go To Page: "
                                                    HorizontalAlign="left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true"
                                                    PageButtonCount="5" ShowBoxThreshold="5" ShowInputBox="Never">
                                                </webdiyer:AspNetPager>
                                                        转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                        每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>                                                
                                                <asp:Button ID="Button1" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                                
                                                <br /><br /><font color=red>此处网站ID=0表示此记录是在此页面操作的。</font>
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
                    页面执行时间：<%=loadpagetime %>
                    &nbsp;毫秒！
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
