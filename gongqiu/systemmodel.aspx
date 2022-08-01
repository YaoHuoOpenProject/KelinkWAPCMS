<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemmodel.aspx.cs" Inherits="KeLin.WebSite.gongqiu.systemmodel" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>供求资源分类</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                    <td colspan="4">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="1%">
                                    <img src="../Images/main_title_01.gif" width="12" height="24"></td>
                                <td width="98%" background="../Images/main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="../Images/i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                系统资源>>供求资源>>供求分类管理
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
                                    <img src="../Images/main_title_03.gif" width="13" height="24"></td>
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
                                        <td colspan="4">
                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                height="100%" width="100%">
                                                <tr>
                                                    <td class="column"  >
                                                        供求分类名称</td>
                                                    <td class="column" >
                                                        自定序号
                                                    </td>
                                                    <td class="column"  >
                                                        编辑
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" >
                                                        <asp:TextBox runat="server" ID="tb_typename" Width="250px"></asp:TextBox></td>
                                                    <td class="fh" >
                                                        <asp:TextBox ID="tb_rank" runat="server"></asp:TextBox></td>
                                                    <td class="fh" >
                                                        <asp:Button ID="bt_save" Width="60" Text=' 创 建 ' runat="server" OnClick="bt_save_Click">
                                                        </asp:Button>
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        <asp:Button ID="bt_return" runat="server" Text=" 返 回 " OnClick="bt_return_Click" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
                                            <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="typeid"
                                                OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand"
                                                OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand"
                                                OnUpdateCommand="DataList1_UpdateCommand">
                                                <HeaderTemplate>
                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                        width="100%">
                                                        <tr>
                                                            <td class="column" width="40px">
                                                                序号</td>
                                                            <td class="column" width="250px">
                                                                分类名称</td>
                                                            <td class="column" width="100px">
                                                                创建人</td>
                                                            <td class="column" width="150px">
                                                                创建时间</td>
                                                            <td class="column" width="80px">
                                                                自定序号</td>
                                                            <td class="column" width="130px" nowrap>
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
                                                    </tr>
                                                    </table>
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="f">
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </td>
                                                        <td class="f">
                                                            <a href="systemindex.aspx?typeid=<%# DataBinder.Eval(Container.DataItem, "typeid") %>"
                                                                target="_self">
                                                                <%# DataBinder.Eval(Container.DataItem, "typename")%>
                                                            </a>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "rank")%>
                                                        </td>
                                                        <td class="f">
                                                            <asp:Button ID="bt_Edit" CommandName="Edit" runat="server" Width="60" Text='编辑'></asp:Button>
                                                            <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='删除'></asp:Button>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr>
                                                        <td class="fh">
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </td>
                                                        <td class="fh">
                                                            <a href="systemindex.aspx?typeid=<%# DataBinder.Eval(Container.DataItem, "typeid") %>"
                                                                target="_self">
                                                                <%# DataBinder.Eval(Container.DataItem, "typename")%>
                                                            </a>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "rank")%>
                                                        </td>
                                                        <td class="f">
                                                            <asp:Button ID="bt_Edit" CommandName="Edit" runat="server" Width="60" Text='编辑'></asp:Button>
                                                            <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='删除'></asp:Button>
                                                        </td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                                <EditItemTemplate>
                                                    <tr>
                                                        <td class="fh">
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </td>
                                                        <td class="fh">
                                                            <asp:TextBox ID="txttypename" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "typename") %>'>
                                                            </asp:TextBox></td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="fh">
                                                            <asp:TextBox ID="txtrank" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "rank") %>'
                                                                MaxLength="4">
                                                            </asp:TextBox></td>
                                                        <td class="fh">
                                                            <asp:Button ID="UpdateRank" Text='更新' runat="server" CommandName="Update" Width="60">
                                                            </asp:Button>
                                                            <asp:Button ID="CancelRank" Text='取消' runat="server" CommandName="Cancel" Width="60">
                                                            </asp:Button></td>
                                                    </tr>
                                                </EditItemTemplate>
                                            </asp:DataList>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="15" OnPageChanged="AspNetPager1_PageChanged"
                                                PageButtonCount="5">
                                            </webdiyer:AspNetPager>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 16px">
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 18px">
                        页面执行时间：<%=loadpagetime %>
                        &nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
