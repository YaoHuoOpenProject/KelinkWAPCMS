<%@ Page Language="C#" AutoEventWireup="true" Codebehind="fysystem.aspx.cs" Inherits="KeLin.WebSite.visiteCount.fysystem" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�ն�ͳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                            <td >
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
                                                        ϵͳ���� >> ������Ϣ >> �ն�ͳ��
                                                        
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
                                        <td colspan="5" align="center">
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  CssClass="bt">������ϵͳͳ��</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  CssClass="bt">�������ͳ��</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;�ܷ���������<%=total %>
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td colspan="3" valign="top" align="left">
                                            <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%">
                                                <HeaderTemplate>
                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0" width="100%">
                                                        <tr>
                                                            <td class="column" width="160px">
                                                                ����ϵͳ/�����</td>
                                                            <td class="column" width="80px">
                                                                ��������</td>
                                                            <td class="column" >
                                                                ����ͼ--����</td>
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
                                                    </tr>
                                                    </table>
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "fvalue")%>
                                                        </td>
                                                        <td class="f">
                                                            <%# DataBinder.Eval(Container.DataItem, "stotal")%>
                                                        </td>
                                                        <td class="f">
                                                            <img src="image/b3.gif" width="<%# DataBinder.Eval(Container.DataItem, "stotal")%>"
                                                                height="10px" />
                                                            <%# DataBinder.Eval(Container.DataItem, "percents")%>
                                                            %</td>
                                                    </tr>
                                                </ItemTemplate>
                                                <AlternatingItemTemplate>
                                                    <tr>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "fvalue")%>
                                                        </td>
                                                        <td class="fh">
                                                            <%# DataBinder.Eval(Container.DataItem, "stotal")%>
                                                        </td>
                                                        <td class="fh">
                                                            <img src="image/b3.gif" width="<%# DataBinder.Eval(Container.DataItem, "stotal")%>"
                                                                height="10px" />
                                                            <%# DataBinder.Eval(Container.DataItem, "percents")%>
                                                            %</td>
                                                    </tr>
                                                </AlternatingItemTemplate>
                                            </asp:DataList>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30">
                                            </webdiyer:AspNetPager>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                     </td>
                </tr>   
                        <tr>
                            <td align="center">
                                ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                            </td>
                        </tr>
                                                        
            </tbody>
        </table>
    </form>
</body>
</html>