<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="VIPconfig.aspx.cs" Inherits="KeLin.WebSite.WeiXin.VIPconfig" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function UpLoad() {
        

        window.open("/admin/Upload_Photo.aspx?PhotoUrlID=img&info=΢�ű༭ҳ��&delpath=", "addpicwindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
    }
    
    function addImgOrFile(a, b) {
       

        if (b == 'img') {
      
            
            form1.cardImg.value = "<%=this.http_start  %>" + a;

        } else if (b == 1) {

        }
    }
</script>
<title>��Ա������</title>
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
                                                ��Ա������
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
                                     
											<font color="#FF0000"><b>�û���ע��΢�Ź����ʽ�Ĭ��ע���Ա����Ա���ż�Ϊ��Ա�û�ID</b>
											</font>
											<br /><br />
											
											
											
											</td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="����">��Ա��ͼƬ�� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="cardImg" runat="server" Width="200px"></asp:TextBox>  <input type="button" name="back" value=" �ϴ�ͼƬ "  class="bt" style="width:60px;" onclick="UpLoad();" /> <a href="images/test_02.jpg" target="_blank">����VIP��ͼƬģ��</a> ����ΪĬ��
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="����">��ʾ����λ���� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="cardNum" runat="server" Width="200px"></asp:TextBox>������3��Ĭ��Ϊ��ԱID,����ǰ�油0)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="����">��Ա��˵���� </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="cardInfo" runat="server" Width="400px" Height ="100px" TextMode="MultiLine"></asp:TextBox>
                                                   
                                           
                                            
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                           <font face="����"> </font>
                                        </td>
                                        <td class="fh3">
                                             <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="����">��������ã� </font>
                                        </td>
                                        <td class="fh3">
                                           �븴���������Ӵ��� <asp:TextBox ID="TextBox1" runat="server" Width="300px"   ></asp:TextBox> ����������Ϣ�����еġ�����ı���Ϣ��/�����ͼ����Ϣ������Ϊ���ӵ�ַ���Զ���˵����á�������Ϣ��������Ϣ������ȡ����΢���û�[wxid]����������Ҫ�����û���һ����Ϣ���û������Ϣ�󼴿�ȡ��[wxid]��
                                                   
                                           
                                            
                                        </td>
                                    </tr>
                                            
                                        </td>
                                    </tr>
                                    
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            <asp:Button ID="bt_ok" runat="server" Text="�� ��" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                            </asp:Button> 

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
