<%@ Page Language="C#" AutoEventWireup="true" Codebehind="UserModify.aspx.cs" Inherits="KeLin.WebSite.admin.UserModify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�޸��û���Ϣ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>

    <script language="javascript" type="text/javascript">
// <!CDATA[
function CheckSave() {
             if (document.getElementById("tb_nickname").value == "") {
                alert("�������ǳƣ�");
                document.getElementById("tb_nickname").focus();
                return false;
            }
            if (document.getElementById("tb_password").value !="")
            {
                if (document.getElementById("tb_password").value != document.getElementById("tb_repw").value) 
                    {
                        alert("�������벻һ�£�");
                        document.getElementById("tb_repw").focus();
                        return false;
                     }
            }
            if (document.getElementById("tb_mybankmoney").value != "") {
                if (checkNum(document.getElementById("tb_mybankmoney").value) == false) 
                {                
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_mybankmoney").focus();
                return false;
                }                   
            }            
            if (checkNum(document.getElementById("tb_money").value) == false) {                
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_money").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_age").value) == false) {                
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_age").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_logintimes").value) == false) {                
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_logintimes").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_shenggao").value) == false) {                
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_shenggao").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_tizhong").value) == false) {                
                alert("���ڴ�������ֵ��");
                document.getElementById("tb_tizhong").focus();
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
    function checkNum(content) {
    if(content != "") {       
      content = "1" + content ;   //������"1"-"9"�κ�һ��
      if(parseInt(content) == content) 
        {       
            return true ;
        }    
      return false ;
    }    
   } 
function DoSmall() {
    //window.location.href = "../admin/systemclass.aspx?systype=card";
    window.open("/bbs/smalltypelist.aspx?siteid=<%=base.SiteId %>&systype=card&sid=<%=base.SID %>");
        }   
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
                                            �û����� &gt;&gt; �޸��û���Ϣ
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
                    <table cellspacing="1" cellpadding="3" width="100%" border="0" class="TABLE6">
                        <tbody>
                            <tr>
                                <td valign="top" align="left">
                                    <div class="txt4">
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="����">������Ϣ </font>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�û�ID�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_userid" runat="server" Width="145px" ReadOnly="True"></asp:TextBox>
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�û����� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_username" runat="server" Width="145px" ReadOnly="True"></asp:TextBox>
                                                        <input type="button" onclick="javascript:window.open('/admin/modifyusername00.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>');" class="bt" value="�޸��ҵ��û���" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�ǳƣ� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_nickname" runat="server" Width="145px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�������룺</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <font face="����">
                                                            <asp:TextBox ID="tb_password" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
                                                        </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">����ȷ�ϣ� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_repw" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
                                                        &nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">Ȩ�޼��� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_right" runat="server">
                                                            <asp:ListItem Value="00">00_��������Ա</asp:ListItem>
                                                            <asp:ListItem Value="01">01_վ��</asp:ListItem>                                                            
                                                            <asp:ListItem Value="03">03_�ܱ༭</asp:ListItem>
                                                            <asp:ListItem Value="04">04_�ܰ���</asp:ListItem>
                                                            <asp:ListItem Value="02">02_��ͨ</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br /><b>[00]��������Ա</b>������������վ���������ݡ�������������Ա(��վID���ڻ�ԱID)�͸���������Ա(��վID�����ڻ�ԱID)��Ȩ��һ����
                                                        <br /><b>[01]վ��</b>�������Լ���վ�ڵ��������ݣ�����վ��(��վID���ڻ�ԱID)�͸�վ��(��վID�����ڻ�ԱID)��Ȩ��һ����
                                                        <br /><b>[03]�ܱ༭</b>�������Լ���վ�ڵ�������Ŀ���ݡ������Ű棬��վ���õȣ�ֻ������Ŀ���ݡ�
                                                        <br /><b>[04]�ܰ���</b>�������Լ���վ�ڵ���̳��Ŀ���ݡ�
                                                        <br /><b>[02]��ͨ</b>��ĳ��վ�µĻ�Ա������Ϊ�Զ�����ʽ�ɫ��VIP�ȡ�
                                                        <br /><b>[**]��Ŀ����Ա(����)</b>��ֻ�����趨����Ŀ���ݡ���Ȩ����Ҫ���޸���Ŀ���Դ���ӡ�
                                                        <br /><b>��ʾ:ֻ�����Ĳ��ܷ���Ȩ�ޣ������ܷ�����Ŀ����Ա��</a>
                                                        </td>
                                                </tr>
                                                <tr >
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">��Ա��ݣ� </font>
                                                    </td>
                                                    <td bgcolor="#C0C0C0">
                                                        <asp:DropDownList ID="ddl_subtype" runat="server">
                                                        </asp:DropDownList>
                                                        ��<a style="cursor: hand" onclick="DoSmall()">��Ա��ݹ���</a>��
                                                        
                                                        <br />
                                          
                                                        <asp:TextBox ID="tb_showIDEndTime" runat="server" Width="200px" ReadOnly="True"></asp:TextBox> 
                                                        �������ڣ�<asp:TextBox ID="tb_changDate" runat="server" Columns="20"  
                                                            Width="105px"></asp:TextBox>
                                                        <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'tb_changDate'})"
                                                            title="ѡ������" /> (�������գ���վ������������)
                                                        </td>
                                                </tr>
                                                  <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">RMB���� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_rmb" runat="server" Width="70px" ReadOnly="True"></asp:TextBox> (������ҳ�С�����|��־����ť)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">����ң� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_money" runat="server" Width="70px" ReadOnly="True"></asp:TextBox> (������ҳ�С�����|��־����ť)
                                                    </td>
                                                </tr>
                                                <tr>
                                                     <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">����ֵ�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_expr" runat="server" Width="70px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">���д� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_mybankmoney" runat="server" Width="70px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ѫ�£�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_moneyname" runat="server" Width="118px"></asp:TextBox>(1.gif|2.gif|....WAP�ϡ��ҵĵ��̡�-&gt;������ѫ�¡��в鿴)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        �Ա�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_sex" runat="server">
                                                            <asp:ListItem Value="1">��</asp:ListItem>
                                                            <asp:ListItem Value="0">Ů</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ���䣺
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_age" runat="server" Width="67px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ��ߣ�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_shenggao" runat="server" Width="67px"></asp:TextBox>cm</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ���أ�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_tizhong" runat="server" Width="67px"></asp:TextBox>Kg</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ������
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_xingzuo" runat="server" Width="68px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ���ã�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_aihao" runat="server" Width="69px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ���
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_fenfuo" runat="server">
                                                            <asp:ListItem>�ѻ�</asp:ListItem>
                                                            <asp:ListItem>δ��</asp:ListItem>
                                                            <asp:ListItem> </asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ���У�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_city" runat="server" Width="133px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        QQ��
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_qq" runat="server" Width="133px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ����ǩ����
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_remark" runat="server" Width="364px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        �ֻ��ͺţ�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_MailServerUserName" runat="server" Width="134px"></asp:TextBox> (������дWAP����ѡ���Զ�����)</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="����">�ƶ���Ƭ </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">��˾ȫ���� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_ltd" runat="server" Width="237px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�û������� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_realname" runat="server" Width="133px"></asp:TextBox>
                                                        (������ʵ�����󷽿�����Ƭ����������)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">ְ��/��ν��</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <font face="����">
                                                            <asp:TextBox ID="tb_zhiye" runat="server" Width="134px"></asp:TextBox>&nbsp; </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�绰���룺 </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_tel" runat="server" Width="134px"></asp:TextBox>
                                                        &nbsp;&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�ֻ����룺 </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_mobile" runat="server" Width="133px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�������䣺 </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_email" runat="server" Width="190px"></asp:TextBox>&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">��ַ�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_website" runat="server" Width="237px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ��˾��ַ��
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_address" runat="server" Width="309px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        �������룺
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_postcode" runat="server" Width="73px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ��Ӫ��Χ��
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_sale" runat="server" Width="500px" Height="83px" TextMode="MultiLine"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        ���֤���룺
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_id" runat="server" Width="190px"></asp:TextBox>�����ܣ�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        �������У�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_bank" runat="server" Width="237px"></asp:TextBox>�����ܣ�
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        �����ʺ�/���ţ�
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_account" runat="server" Width="191px"></asp:TextBox>�����ܣ�
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="����">������Ϣ </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">ע��ʱ�䣺 </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="lb_regtime" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">����¼ʱ�䣺 </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="lb_lastlogintime" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">����¼IP�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="lb_loginIP" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">��ʱ���룩�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_logintimes" runat="server" Width="83px"></asp:TextBox>
                                                        (��)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="����">�û�״̬�� </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_LockUser" runat="server">
                                                            <asp:ListItem Value="0">����</asp:ListItem>
                                                            <asp:ListItem Value="1">����</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="fh3" colspan="2" align="center">
                                                        <br />
                                                        &nbsp;<asp:Button ID="bt_ok" runat="server" Text="  ��  ��  " OnClick="bt_ok_Click"  CssClass="bt"></asp:Button>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="bt_return" runat="server" Text="  ��  ��  " OnClick="bt_return_Click" CssClass="bt"></asp:Button>
                                                        
                                                        <br />
                                                        <br />
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
