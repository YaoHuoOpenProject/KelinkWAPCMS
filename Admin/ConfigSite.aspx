<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfigSite.aspx.cs" Inherits="KeLin.WebSite.admin.ConfigSite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

    <title>������վ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript">
function CheckSave() {                         
            if (document.getElementById("tb_sitespace").value == "")  {
                alert("�ռ��С����Ϊ�գ�");
                document.getElementById("tb_sitespace").focus();
                return false;
            }                  
            if (checkTelNum(document.getElementById("tb_sitespace").value)==false) 
            {
                alert("�ռ��С����Ϊ�ջ��ַ�,��������ֵ��");
                document.getElementById("tb_sitespace").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_myspace").value)==false) 
            {
                alert("���ÿռ��С����Ϊ�ջ��ַ�,��������ֵ��");
                document.getElementById("tb_myspace").focus();
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
										<td valign="top" align="left">
											<table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
												<tbody>
													<tr>
														<td class="column" colspan="4"><font face="����">������վ  </font>														</td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="����">��վID�� </font>														</td>
														<td colspan="3" class="fh3">
														<asp:textbox id="tb_siteid" runat="server" Width="75px" ReadOnly="True"></asp:textbox>														</td>
													</tr> 
													<tr>
														<td class="f" style="width: 22%"><font face="����">��վ���ƣ� </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_sitename" runat="server" Width="146px" ReadOnly="True"></asp:TextBox></td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="����">�ռ��С�� </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_sitespace" runat="server" Width="91px"></asp:TextBox>M</td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="����">���ÿռ䣺 </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_myspace" runat="server" Width="90px"></asp:TextBox>KB</td>
													</tr>
													
													<tr>
														<td class="f" style="width: 22%"><font face="����">����״̬�� </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="ddl_lock" runat="server"> 
                                                                <asp:ListItem Value="1">����</asp:ListItem>
                                                                <asp:ListItem Value="0">����</asp:ListItem>
                                                            </asp:DropDownList></td>
													</tr>												
													<tr>
														<td class="f" style="width: 22%"><font face="����">������ˣ� </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="ddl_check" runat="server"> 
                                                                <asp:ListItem Value="1">��Ҫ</asp:ListItem>
                                                                <asp:ListItem Value="0">��Ҫ</asp:ListItem>
                                                            </asp:DropDownList></td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="����">VIP��վ�� </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="sitevip" runat="server">                                                                 
                                                                <asp:ListItem Value="0">��ͨ</asp:ListItem>
                                                                <asp:ListItem Value="1">VIP</asp:ListItem>
                                                            </asp:DropDownList></td>
													</tr>
                                                    <tr>
														<td class="f" style="width: 22%"><font face="����">�������ڣ� </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_daoqiriqi" runat="server" Width="90px"></asp:TextBox>
                                                            <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'tb_daoqiriqi'})"
                                                            title="ѡ������" /> &nbsp;&nbsp;(���գ���ʾ�����ޣ�)
                                                            </td>
													</tr>	
													<tr>
														<td class="fh3" colspan="4" align="center">
														<br />
														<asp:button id="bt_ok" runat="server" Text=" �� �� " onclick="bt_ok_Click" Width="70px" OnClientClick="CheckSave()" CssClass="bt"></asp:button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                            <input id="Button2" type="button" value=" �� �� " onclick="javaScript:window.close(); window.opener.location.reload();" Class="bt" style="Width:70px"/><br />
														<br />														</td>
													</tr>
												</tbody>
											</table>
																						
											<table width="100%">
												<tr>
													<td style="height: 15px" align="center"><span class="txt4">
															
															 </span>
													</td>
												</tr>
												
												<tr><td align="center">
												ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
												</td></tr>
											</table>
																				
										</td>												
						<td class="border_right" style="width: 5px; height: 30px;"></td>
					</tr>
				</tbody>
			</table>
    </form>
</body>
</html>
