<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifyUser.aspx.cs" Inherits="KeLin.WebSite.chat.modifyUser" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>修改内容</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody>
					<tr>																					
										<td valign="top" align="left"><span class="forumName"><font face="宋体">聊天内容</font> </span>
											<br>																						
											<table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
												<tbody>
													<tr>
														<td class="column" colspan="2"><font face="宋体">编辑文章内容  </font>
														</td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">发言者： </font>
														</td>
														<td class="fh3">
														<asp:textbox id="tb_title" runat="server" Width="145px"></asp:textbox>
														</td>
													</tr> 
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">对谁说： </font>
														</td>
														<td class="fh3">
                                                            <asp:TextBox ID="tb_author" runat="server" Width="146px"></asp:TextBox>
                                                            </td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">时间： </font>
														</td>
														<td class="fh3">
                                                            <asp:TextBox ID="tb_source" runat="server" Width="176px"></asp:TextBox>
                                                            </td>
													</tr>													
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">内容： </font>
														</td>
														<td class="fh3">
                                                         <ftb:freetextbox id="FreeTextBox1" runat="server" ButtonPath="../images/ftb/office2003/"></ftb:freetextbox></td>
													</tr>												
													<tr>
														<td class="fh3" colspan="2" align="center">
														<br />
														<asp:button id="bt_ok" runat="server" Text="保 存" onclick="bt_ok_Click" Width="70px"></asp:button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                            <asp:Button ID="Button1" runat="server" Text=" 返 回 " OnClick="Button1_Click" /><br />
														<br />
														</td>
                                                            
													</tr>
												</tbody>
											</table>
																						
											<table width="100%">
												<tr>
													<td style="height: 15px" align="center"><span class="txt4">
															
															 </span>
													</td>
												</tr>
												<tr>
												<td align="right">
												<a href="http://www.<%=domain %>" target="_blank"> <%=domain%></a>
												</td>
												</tr>
												<tr><td align="center">
												页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
												</td></tr>
											</table>
																				
										</td>												
						<td class="border_right" style="width: 5px; height: 30px;"><img height="1" src="<%=KeLin.ClassManager.PubConstant.ApplicationPath%>/images/spacer.gif" width="10px" />
						</td>
					</tr>
				</tbody>
			</table>
    </form>
</body>
</html>
