<%@ Page Language="C#" AutoEventWireup="true" Codebehind="addUser.aspx.cs" Inherits="KeLin.WebSite.adlink.addUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�༭����ַ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
function CheckData() {
            if (document.getElementById("tb_title").value == "") {
                alert("���������");
                document.getElementById("tb_title").focus();
                return false;
            }  
            if (document.getElementById("tb_adlink").value == "") {
                alert("���������ַ��");
                document.getElementById("tb_adlink").focus();
                return false;
            }            
           
            return true;
    
}
   //�ж��Ƿ���ֵ   
   function checkTelNum(content) {
    if(content == "") {       
       return false ;
    }
    content = "1" + content ;   //������"1"-"9"�κ�һ��
    if(parseInt(content) == content) {       
       return true ;
    }    
    return false ;
    }   
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
                                                        ��վ���� &gt;&gt; ���ݹ��� &gt;&gt;�������
                                                        
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
                        
                        <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                            <tbody>
                                <tr>
                                    <td class="column" colspan="4">
                                        <font face="����">�༭������� </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 30%">
                                        <font face="����">�����(����ͼƬ��ַ)�� </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="369px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 30%">
                                        <font face="����">����ַ�� </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_adlink" runat="server" Width="368px"></asp:TextBox><br />
                                        &����д��&amp;amp;�����ӱ�վ��ַ�������&sid=[sid]�ɷ����ߣ�
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 30%">
                                        <font face="����">����ͷ�/�ң� </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_money" runat="server" Width="369px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 30%">
                                        <font face="����">�������ࣺ</font>
                                    </td>
                                    <td width="27%" class="fh3">
                                        <font face="����">
                                            <asp:DropDownList ID="ddl_type" runat="server">
                                            </asp:DropDownList></font></td>
                                    <td width="20%" class="fh3">
                                        </td>
                                    <td width="37%" class="fh3">
                                        <font face="����">
                                            </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 30%">
                                        <font face="����">�Ƿ���ʾ��ת�� </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:DropDownList ID="ddl_systype" runat="server">
                                            <asp:ListItem Value="0">��</asp:ListItem>
                                            <asp:ListItem Value="1">��</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="4" align="center">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text="�� ��" OnClientClick="CheckData()" OnClick="bt_ok_Click"
                                            Width="70px" CssClass="bt"></asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text=" �� �� " OnClick="Button1_Click"  CssClass="bt"/><br />
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
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
                                    ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                                </td>
                            </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
