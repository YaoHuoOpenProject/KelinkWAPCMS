<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="config.aspx.cs" Inherits="KeLin.WebSite.WeiXin.config" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">

</script>
<title>΢�Ź����ʺ�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
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
                                    <img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
                                <td width="98%" background="/NetImages/main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="/NetImages/i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                ΢�Ź����ʺ�����
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
                                    <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="left">
                        <div class="txt4">
                            <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                                <tbody>
                                    <tr>
                                        <td class="column" colspan="2">
                                           &nbsp;

                                        </td>
                                    </tr>
                                    <tr>
                                        <td  colspan="2"  color="#FFFFFF">
                                     
											<font color="#FF0000"><b>��һ��������΢�Źٷ�(<a target="_blank" href="http://mp.weixin.qq.com">http://mp.weixin.qq.com</a>)���빫���ʺţ�ͨ����˺��������¶�Ӧ��Ϣ</b>
											</font>
											<br /><br />
											˵�������빫�ںŷֶ��ĺźͷ���ţ����ĺ�ÿ�������һ����Ϣ����Ǯ��֤���Զ���˵���ť�������ÿ��ֻ������һ����Ϣ���ײ����Զ���˵���ť��
											<br /><img src="images/1.jpg" alt="��������"/>
											
											
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="����">���ں����ƣ� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="publicName" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="����">���ں�ԭʼID�� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="publicID" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            * <font face="����">΢�źţ� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="weiXinName" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            * <font face="����">�����ʺţ� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:DropDownList ID="publicType" runat="server">                                                                
                                                                <asp:ListItem Value="�����">�����</asp:ListItem>
                                                                <asp:ListItem Value="���ĺ�">���ĺ�</asp:ListItem>                                                                
                                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  colspan="2" color="#FFFFFF">
                                           <br /><br />
											<font color="#FF0000"><b>�ڶ����������Ϊ�����ߣ���������Ϣ���õ�΢�Źٷ���̨
                                         
											</b></font>
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            ��Ľӿ�URL�ǣ�
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="myurl" runat="server" Width="400px" ReadOnly ="true" onfocus="javascript:this.select()"></asp:TextBox> (�븴�Ƶ�΢�ź�̨)
                                        </td>
                                    </tr>
                                   
                                    
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="����">����Token�ǣ� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="token" runat="server" Width="400px" ReadOnly ="true" onfocus="javascript:this.select()"></asp:TextBox> (�븴�Ƶ�΢�ź�̨)
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td  colspan="2" bgcolor="#FFFFFF">
                                           <br /><br />
											<font color="#FF0000"><b>�������������Ϊ�����ߺ�΢�ź�̨��ʾ���²�������¼��(����Ų��У���Ǯ��֤���ĺ�Ҳ�С�)
                                         
											</b></font>
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="����">����AppId�ǣ� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="AppId" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="����">����AppSecret�ǣ� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="AppSecret" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            <asp:Button ID="bt_ok" runat="server" Text="�� ��" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                            </asp:Button> (���ϲ����������ϵ��ϵͳ���˻���򿪷��̣��������ú�)

                                            <br />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px" align="center">
                        <span class="txt4"></span>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                      <!--  ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡-->
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
