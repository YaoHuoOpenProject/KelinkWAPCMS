<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemmodel.aspx.cs" Inherits="KeLin.WebSite.sysmessage.systemmodel" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>������Դ�������</title>
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
                                                ϵͳ����>>��������>>����������
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
                                        <td colspan="4">
                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                height="100%" width="100%">
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        ���������Ϣ</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" align="left" style="width: 162px">
                                                        �������ƣ�</td>
                                                    <td class="fh" style="width: 462px">
                                                        <asp:TextBox runat="server" ID="tb_name" Width="250px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" align="left" style="width: 162px">
                                                        �Զ���ţ�</td>
                                                    <td class="fh" colspan="1" style="width: 462px">
                                                        <asp:TextBox ID="tb_order" runat="server" Width="57px"></asp:TextBox></td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="fh" colspan="2">
                                                        <asp:Button ID="bt_new" Text="�� ��" runat="server" Width="58px" OnClick="bt_new_Click" CssClass="bt">
                                                        </asp:Button>&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="bt_save" Width="60" Text='�� ��' runat="server" OnClick="bt_save_Click"  CssClass="bt">
                                                        </asp:Button>
                                                        &nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="bt_cancel" Width="60" Text='ȡ ��' runat="server" OnClick="bt_cancel_Click"  CssClass="bt">
                                                        </asp:Button>
                                                        &nbsp;&nbsp; &nbsp;
                                                        <asp:Button ID="bt_return" Width="60" Text='�� ��' runat="server" OnClick="bt_return_Click"  CssClass="bt"></asp:Button>
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
                                            <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="typeid"
                                                OnEditCommand="DataList1_EditCommand1" OnDeleteCommand="DataList1_DeleteCommand1"
                                                OnItemDataBound="DataList1_ItemDataBound1">
                                                <HeaderTemplate>
                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                        width="100%">
                                                        <tr>
                                                            <td class="column">
                                                                ��������</td>
                                                            <td class="column" width="70px">
                                                                �Զ����</td>
                                                            <td class="column" width="120px">
                                                                ������</td>
                                                            <td class="column" width="120px">
                                                                ��������</td>
                                                            <td class="column" width="130px" nowrap>
                                                                �༭</td>
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
                                                    </table>
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "typename")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "rank")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="f">
                                                            <asp:Button ID="bt_Edit" CommandName="Edit" runat="server" Width="60" Text='�༭'  CssClass="bt"></asp:Button>
                                                            <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='ɾ��'  CssClass="bt"></asp:Button>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "typename")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "rank")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "creater")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                        </td>
                                                        <td class="f">
                                                            <asp:Button ID="bt_Edit" CommandName="Edit" runat="server" Width="60" Text='�༭' CssClass="bt"></asp:Button>
                                                            <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='ɾ��' CssClass="bt"></asp:Button>
                                                        </td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                            </asp:DataList>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="20" PageButtonCount="5">
                                            </webdiyer:AspNetPager>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <!---Table1 End->
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        ҳ��ִ��ʱ�䣺<%=loadpagetime %>
                        &nbsp;���룡
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
