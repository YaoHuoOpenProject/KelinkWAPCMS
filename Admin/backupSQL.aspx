<%@ Page Language="C#" AutoEventWireup="true" Codebehind="backupSQL.aspx.cs" Inherits="KeLin.WebSite.admin.backupSQL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>����ά��</title>
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
                                                ϵͳ���� &gt;&gt; ����ά��
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
                                            <font face="����">����ά�� </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="����">����ά�����ͣ� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:DropDownList ID="dl_sql" runat="server">
                                                <asp:ListItem Value="message">1.ɾ������15���վ����Ϣ(�����ղز���ɾ��)(������)</asp:ListItem>
                                                <asp:ListItem Value="adlink">2.ɾ������15��������¼(������)</asp:ListItem>
                                                <asp:ListItem Value="waplog">3.ɾ������15���Ա������¼(������)</asp:ListItem>
                                                <asp:ListItem Value="delAndCreatMSG">4.һ�����վ����Ϣ(��������ԱȨ��ִ�У������ղ�Ҳ�����������˼)</asp:ListItem>
                                                 <asp:ListItem Value="delAndCreat">5.һ����յ����־/���߼�¼/������־(��������ԱȨ��ִ�У�����ִ��)</asp:ListItem>
                                                 
                                                <asp:ListItem Value="datalog">6.ѹ����ɾ�����ݿ�������־(���һ��Ҫִ��)</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="bt_ExeSQL" runat="server" Text=" ִ�в��� " OnClick="bt_ExeSQL_Click" CssClass="bt" OnClientClick="return confirm('ȷ��Ҫִ�д˲�����')" /></td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="����">���棺 </font>
                                        </td>
                                        <td class="fh3">
                                            <font color="red">������Ȩ�޲����ʱ����ɾ��ʧ�ܱ�����ֱ�ӵ�¼���������������������ݿ�����в�����</font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="����">�������ݿ⣺ </font>
                                        </td>
                                        <td class="fh3">
                                            <br />
                                            <b>����������</b>��������������棬�ڳ�����򿪡���ҵ������չ����Ӧ�����ݿ���б��ݡ�&nbsp;<br />
                                            <br />
                                            <b>����ռ䣺</b>�����㹺�����ݿ�WEB�����̨���ҵ�������/��ԭ�����ܣ����б��ݣ�Ȼ����ftp�������ء�<br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="����">��ԭ���ݿ⣺ </font>
                                        </td>
                                        <td class="fh3">
                                            <br />
                                            <b>����������</b>��������������棬�ڳ�����򿪡���ҵ������չ����Ӧ�����ݿ���л�ԭ��&nbsp;<br />
                                            <br />
                                            <b>����ռ䣺</b>�����㹺�����ݿ�WEB�����̨���ҵ�������/��ԭ�����ܣ����л�ԭ��
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="����">˵���� </font>
                                        </td>
                                        <td class="fh3">
                                            <br />
                                            <b>����������</b>��������������ÿ���Զ����ݡ��Ż����ܺ�ɾ����־�ռ䡣(<a href="http://www.kelink.com">kelink�����������</a>)<br />
                                            <br />
                                            <b>����ռ䣺</b>�����㹺�����ݿ�WEB�����̨�����ڽ��б��ݲ�����ɾ����־�����Ż����ܸ��á�<br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="����">ע�⣺ </font>
                                        </td>
                                        <td class="fh3">
                                            &nbsp;<font color="#FF0000">���Ͽռ��û�ע�⣺����վ����һ��ʱ�����־�ͻᱬ������վ���޷����ʣ���ʱִ�д�ҳ���ɾ����־���ɡ�
                                                <br>
                                                &nbsp;��ס��ҳ���ַ�ǣ�<%=curURL%>
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
                        ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
