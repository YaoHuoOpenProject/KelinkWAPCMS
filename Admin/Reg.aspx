<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="KeLin.WebSite.Reg" %><%
Response.Buffer = true; 
Response.Expires = -1;
Response.ExpiresAbsolute = DateTime.Now.AddDays(-1); 
Response.Expires = 0 ;
Response.CacheControl = "no-cache";  
%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ע��</title>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">

function siteurltousername(){
	document.form1.tb_username.value=document.form1.tb_domain.value	
}           
</script>    
</head>
<body topmargin="0" bgcolor="#FFFFFF">

                <form id="form1" runat="server">
                    <table  cellspacing="1" cellpadding="3" width="100%" align="center" border="0" bgcolor="#99ccff">
                       
                            <tr>
                                <td colspan="2" height="22">
                                
                                    <img height="11" src="../NetImages/shdot.gif" width="11" border="0">
                                    <b>ע��վ��</b>
                                </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; ����������</b>
                                    </p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                                                           http://<asp:TextBox ID="tb_domain" runat="server" Width="93px" onKeyDown="siteurltousername();"
                                            onKeyUp="siteurltousername();" OnTextChanged="tb_domain_TextChanged"></asp:TextBox><strong>.<%=Domain %></strong>&nbsp;
                                	                                <asp:Button runat="server" ID="bt_check" OnClick="LinkButton1_Click" Text=" ������֤ " CssClass="bt" />
                                        
                                        <br /><br />
                                        ͨ������������������wapվ�㣬��̨�����԰ﶨ�Լ���������
                                	                                </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" >
                                    <p>
                                        <b>&nbsp; ��վ���ƣ�</b>
                                    </p>
                                </td>
                                <td width="455" >
                                      <asp:TextBox ID="tb_sitename" runat="server" Width="160px"></asp:TextBox>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; ��վ���</b>
                                    </p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                        </asp:DropDownList>
                                                                       </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; �û�����</b>
                                    </p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                     <asp:TextBox ID="tb_username" runat="server" Width="160px" ReadOnly="True"></asp:TextBox>&nbsp;
                                      </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; �����ǳƣ�</b></p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                                                           <asp:TextBox ID="tb_nickname" runat="server" Width="160px"></asp:TextBox>&nbsp;
                                        </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; ��¼���룺</b></p>
                                </td>
                                <td width="455">
                                           <asp:TextBox ID="tb_passwd" runat="server" Width="160px" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;Ӣ��+����<font color="red">
									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									      
                                            <asp:TextBox ID="tb_hidepasswd" runat="server" Visible="False"></asp:TextBox>
									  </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; ������֤��</b></p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                    <asp:TextBox ID="tb_repw" runat="server" Width="160px" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;��������������
                                    
                                    <asp:TextBox ID="tb_hiderepw" runat="server" Visible="False"></asp:TextBox><br />
                                    
                                </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; �ֻ����룺</b>
                                        </p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                <asp:TextBox ID="tb_tel" runat="server" Width="160px"></asp:TextBox>                      
                                           </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; �Ա�</b>
                                        </p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                                                            <asp:DropDownList ID="ddl_sex" runat="server">
                                            <asp:ListItem Selected="True" Value="1">��</asp:ListItem>
                                            <asp:ListItem Value="0">Ů</asp:ListItem>
                                        </asp:DropDownList>&nbsp; 
                                                                        </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; ���䣺</b>
                                        </p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                    
                                        <asp:TextBox ID="tb_age" runat="server" Width="48px"></asp:TextBox>                                                                        </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        
                                                                                <b>&nbsp; �������䣺</b>
                                                                            </p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                    <asp:TextBox ID="tb_email" runat="server" Width="160px" EnableViewState="False"></asp:TextBox>&nbsp;&nbsp;��������ǳ���Ҫ������ȡ������
                                                                    </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; ��֤�룺</b></p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                                                           <input class="intput1" onfocus="this.select()" maxlength="4" size="4" name="tb_checkcode"
                                            id="tb_checkcode" runat="server">
                                        &nbsp;&nbsp;<img src="<%=strCreatImage %>">
                                   
                                </td>
                            </tr>
                            <tr align="center" bgcolor="#FFFFFF">
                                <td bgcolor="#FFFFFF" colspan="2">
                                    ��<asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="">
                                            </asp:CheckBox><a href="Contract.htm" target="_blank">������ϸ�Ķ���ͬ�Ȿվ���WAP��վ����ʹ��Э�顣</a></p>
                                	
                                </td>
                            </tr>
                            <tr align="center" bgcolor="#f6f6f6">
                                <td valign="top" align="center" colspan="2" height="30">
                                    <asp:Button ID="bt_ok" runat="server" Width="136px" Text=" ȷ �� ע �� " OnClick="bt_ok_Click" OnClientClick="document.all['bt_ok'].style.display= 'none';"  CssClass="bt">
                                        </asp:Button>                                    <br />
                                        <br /><%=this.reginfo %>
                                </td>
                            </tr>
                      
                    </table>
                    </form>
               
    
</body>
</html>