<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Sysadmin_view.aspx.cs"
    Inherits="KeLin.WebSite.admin.Sysadmin_view" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>��������Ϣ</title>
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
                                            ϵͳ���� &gt;&gt; ��������Ϣ 
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
                                                        <font face="����">������Ϣ </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="16%" class="f" style="width: 16%">
                                                        <font face="����">�û����� </font>
                                                    </td>
                                                    <td width="31%" class="fh3">
                                                        <% =nickname %>
                                                        &nbsp;</td>
                                                    <td width="18%" class="f">
                                                        &nbsp;��ǰIP��ַ:</td>
                                                    <td width="35%" class="fh3">
                                                        <% =CurrentIP %>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">��ݹ��ڣ� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>&nbsp;����</td>
                                                    <td class="f">
                                                        &nbsp;����ʱ�䣺</td>
                                                    <td class="fh3">
                                                        <% =CurrentTime %>
                                                    </td>
                                                </tr>
                                                <!--tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">���ߴ�����</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <%=LoginTimes %>
                                                    </td>
                                                    <td class="f">
                                                        ����ʱ�䣺</td>
                                                    <td class="fh3">
                                                        <% =LastLoginTime %>
                                                    </td>
                                                </tr-->
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">���������ƣ� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        &nbsp;������IP��ַ��</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">.NET Framework �汾�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        &nbsp;����������ϵͳ��</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">������IIS�汾�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        &nbsp;HTTP���ʶ˿ڣ�</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ����������
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                                                    <td class="f">
                                                        �û���Ϣ��</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        FSO�ı��ļ���д��
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                                                    <td class="f">
                                                        ���ݿ�֧�֣�</td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                                                </tr>
                                                <!--tr>
                                                    <td class="f" style="width: 16%">
                                                        Jmail���֧�֣�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                                                    <td class="f">
                                                        AspJpeg���֧�֣�</td>
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
                                                        <font face="����">��Ȩ��Ϣ</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">��Ʒ������ </font>
                                                    </td>
                                                    <td class="fh3">
                                                        &nbsp;<b>���������ټ�����Ƽ����޹�˾ (�������)</b></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">����汾�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        &nbsp;<%=SystemVersion %></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">��ϵ������ </font>
                                                    </td>
                                                    <td class="fh3">
                                                        &nbsp;
                                                        <br>
                                                        �ٷ�������վ:<a href="http://www.kelink.com" target="_blank">http://www.kelink.com</a> �ֻ�����:<a href="http://kelink.com" target="_blank">http://kelink.com</a>
                                                        <br>
                                                        <br>
                                                        Email:chinastrong@163.com
                                                        <br>
                                                        <br>
                                                        <font color="#FF0000">QQ:800007757/85403498/407589963<br>
                                                            <br>
                                                            TEL:13048036868/4000-588-605
                                                          <br><br>
                                                          �˳���Ϊ��ҵ���򣬿���ר���ܷ��ɱ����� �뱣������Ϣ��ֻ�г�������Ա�ܿ�����<br />
                                                          ��Ѱ�ֻ���ڸ���ѧϰ֮�ã�����������ҵӦ�á�
                                                            
                                                            </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fh3" colspan="2" align="center">
                                                        <br />
                                                        &nbsp;<input id="bt_return" type="button" value=" �� �� " onclick="return bt_return_onclick()"
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
                    ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
