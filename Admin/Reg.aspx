<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="KeLin.WebSite.Reg" %><%
Response.Buffer = true; 
Response.Expires = -1;
Response.ExpiresAbsolute = DateTime.Now.AddDays(-1); 
Response.Expires = 0 ;
Response.CacheControl = "no-cache";  
%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>注册</title>
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
                                    <b>注册站长</b>
                                </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; 赠送域名：</b>
                                    </p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                                                           http://<asp:TextBox ID="tb_domain" runat="server" Width="93px" onKeyDown="siteurltousername();"
                                            onKeyUp="siteurltousername();" OnTextChanged="tb_domain_TextChanged"></asp:TextBox><strong>.<%=Domain %></strong>&nbsp;
                                	                                <asp:Button runat="server" ID="bt_check" OnClick="LinkButton1_Click" Text=" 域名验证 " CssClass="bt" />
                                        
                                        <br /><br />
                                        通过上面域名访问您的wap站点，后台还可以帮定自己的域名。
                                	                                </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" >
                                    <p>
                                        <b>&nbsp; 网站名称：</b>
                                    </p>
                                </td>
                                <td width="455" >
                                      <asp:TextBox ID="tb_sitename" runat="server" Width="160px"></asp:TextBox>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; 网站类别：</b>
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
                                        <b>&nbsp; 用户名：</b>
                                    </p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                     <asp:TextBox ID="tb_username" runat="server" Width="160px" ReadOnly="True"></asp:TextBox>&nbsp;
                                      </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; 个性昵称：</b></p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                                                           <asp:TextBox ID="tb_nickname" runat="server" Width="160px"></asp:TextBox>&nbsp;
                                        </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; 登录密码：</b></p>
                                </td>
                                <td width="455">
                                           <asp:TextBox ID="tb_passwd" runat="server" Width="160px" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;英文+数字<font color="red">
									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									  									      
                                            <asp:TextBox ID="tb_hidepasswd" runat="server" Visible="False"></asp:TextBox>
									  </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; 密码验证：</b></p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                    <asp:TextBox ID="tb_repw" runat="server" Width="160px" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;请重新输入密码
                                    
                                    <asp:TextBox ID="tb_hiderepw" runat="server" Visible="False"></asp:TextBox><br />
                                    
                                </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; 手机号码：</b>
                                        </p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                <asp:TextBox ID="tb_tel" runat="server" Width="160px"></asp:TextBox>                      
                                           </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        <b>&nbsp; 性别：</b>
                                        </p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                                                            <asp:DropDownList ID="ddl_sex" runat="server">
                                            <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
                                            <asp:ListItem Value="0">女</asp:ListItem>
                                        </asp:DropDownList>&nbsp; 
                                                                        </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; 年龄：</b>
                                        </p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                    
                                        <asp:TextBox ID="tb_age" runat="server" Width="48px"></asp:TextBox>                                                                        </td>
                            </tr>
                            <tr>
                                <td  width="124" bgcolor="#ffffff">
                                    <p>
                                        
                                                                                <b>&nbsp; 电子邮箱：</b>
                                                                            </p>
                                </td>
                                <td width="455" bgcolor="#ffffff">
                                    <asp:TextBox ID="tb_email" runat="server" Width="160px" EnableViewState="False"></asp:TextBox>&nbsp;&nbsp;电子邮箱非常重要，用于取回密码
                                                                    </td>
                            </tr>
                            <tr bgcolor="#f6f6f6">
                                <td  width="124" bgcolor="#f6f6f6">
                                    <p>
                                        <b>&nbsp; 验证码：</b></p>
                                </td>
                                <td width="455" bgcolor="#f6f6f6">
                                                                           <input class="intput1" onfocus="this.select()" maxlength="4" size="4" name="tb_checkcode"
                                            id="tb_checkcode" runat="server">
                                        &nbsp;&nbsp;<img src="<%=strCreatImage %>">
                                   
                                </td>
                            </tr>
                            <tr align="center" bgcolor="#FFFFFF">
                                <td bgcolor="#FFFFFF" colspan="2">
                                    　<asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="">
                                            </asp:CheckBox><a href="Contract.htm" target="_blank">我已仔细阅读并同意本站免费WAP建站服务使用协议。</a></p>
                                	
                                </td>
                            </tr>
                            <tr align="center" bgcolor="#f6f6f6">
                                <td valign="top" align="center" colspan="2" height="30">
                                    <asp:Button ID="bt_ok" runat="server" Width="136px" Text=" 确 定 注 册 " OnClick="bt_ok_Click" OnClientClick="document.all['bt_ok'].style.display= 'none';"  CssClass="bt">
                                        </asp:Button>                                    <br />
                                        <br /><%=this.reginfo %>
                                </td>
                            </tr>
                      
                    </table>
                    </form>
               
    
</body>
</html>