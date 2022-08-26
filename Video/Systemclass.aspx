<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="systemclass.aspx.cs" Inherits="KeLin.WebSite.video.systemclass" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>视频小分类管理</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody>
					<tr>																					
										<td valign="top" align="left"><span class="forumName"><font face="宋体">下载小类管理</font> </span>
											<br>
											<span class="forumThread">下载小类描述或说明文字 </span>
											<div class="txt4">
											        <table id="Table2" width="100%">
														<tbody>
														<tr >
																<td colspan="4" valign="top" align="left" >
																系统资源>>下载资源>>下载小类管理                                                                                                  
                                                                 </td>
															</tr>																																													
															
														</tbody>
													</table>
													<table id="Table1" width="100%">
														<tbody>																														
															<tr>
																<td colspan="4" >
                                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0" height="100%">
                                                                        <tr>
                                                                            <td class="column" colspan="2" style="width: 283px">下载小类名称</td>
                                                                            <td class="column" colspan="1" style="width: 70px">自定序号
                                                                            </td>
                                                                            <td class="column" colspan="1" style="width: 182px">编辑
                                                                            </td>
															            </tr>
															            <tr>
                                                                            <td class="fh" colspan="2" style="width: 283px">
                                                                                <asp:TextBox runat="server" ID="tb_typename" Width="250px"></asp:TextBox></td>
                                                                            <td class="fh" style="width: 70px">
                                                                                <asp:TextBox ID="tb_rank" runat="server"></asp:TextBox></td>
                                                                     <td class="fh" style="width: 182px">
                                                                     <asp:Button ID="bt_save" width="60" Text=' 创 建 ' Runat="server" OnClick="bt_save_Click" ></asp:Button>
                                                                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                         <asp:Button ID="bt_return" runat="server" Text=" 返 回 " OnClick="bt_return_Click" /></td>
                                                                    </tr> 									                                									                                                                                                      
                                                                    </table>		
																</td>
															</tr>
															<tr >
														<td colspan="4" valign="top" align="left" >
                                                                 
                                                        <asp:datalist id="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="id" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand" OnUpdateCommand="DataList1_UpdateCommand" >
														<HeaderTemplate>
															<table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0">
																<tr>
																    <td class="column" width="40px">序号</td>
																	<td class="column" width="250px">分类名称</td>
																	<td class="column" width="100px">创建人</td>
																	<td class="column" width="150px">创建时间</td>																																
																	<td class="column" width="80px">自定序号</td>																	
																	<td class="column" width="130px" nowrap>编辑</td>
																</tr>
														</HeaderTemplate>
														<FooterTemplate>
															<tr>
																<td class="column">
																</td>
																<td class="column">
																</td>
																<td class="column">
																</td>
																<td class="column">
																</td>																
																<td class="column">
																</td>																															
																<td class="column">
																</td>
															</tr>
							</table>
							</FooterTemplate>
							<ItemTemplate>
				
								<tr>
								    <td class="f"><%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%></td>
									<td class="f"><a href="systemindex.aspx?typeid=<%# DataBinder.Eval(Container.DataItem, "id") %>" target="_self" ><%# DataBinder.Eval(Container.DataItem, "subclassname")%></a></td>
									<td class="f"><%# DataBinder.Eval(Container.DataItem, "maker")%></td>
									<td class="f"><%# DataBinder.Eval(Container.DataItem, "makedate")%></td>									
									<td class="f"><%# DataBinder.Eval(Container.DataItem, "rank")%></td>									
									<td class="f">
										<asp:Button id="bt_Edit" CommandName="Edit" runat="server" width="60" Text='编辑'></asp:Button>
										<asp:Button ID="bt_Del" CommandName="Delete" runat="server" width="60" Text='删除'></asp:Button>
									</td>
								</tr>
							</ItemTemplate>
							<AlternatingItemTemplate>
								<tr>
								    <td class="fh"><%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%></td>
									<td class="fh"><a href="systemindex.aspx?typeid=<%# DataBinder.Eval(Container.DataItem, "id") %>" target="_self" ><%# DataBinder.Eval(Container.DataItem, "subclassname")%></a></td>
									<td class="fh"><%# DataBinder.Eval(Container.DataItem, "maker")%></td>
									<td class="fh"><%# DataBinder.Eval(Container.DataItem, "makedate")%></td>									
									<td class="fh"><%# DataBinder.Eval(Container.DataItem, "rank")%></td>									
									<td class="f">
										<asp:Button id="bt_Edit" CommandName="Edit" runat="server" width="60" Text='编辑'></asp:Button>
										<asp:Button ID="bt_Del" CommandName="Delete" runat="server" width="60" Text='删除'></asp:Button>
									</td>
								</tr>
							</AlternatingItemTemplate>
							<EditItemTemplate>
								<tr>
								    <td class="fh"><%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%></td>
									<td class="fh">
										<asp:TextBox ID="txttypename" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "subclassname") %>' >
										</asp:TextBox></td>
									<td class="fh"><%# DataBinder.Eval(Container.DataItem, "maker")%></td>
									<td class="fh"><%# DataBinder.Eval(Container.DataItem, "makedate")%></td>
									<td class="fh">
										<asp:TextBox ID="txtrnak" Runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "rank") %>' MaxLength="4">
										</asp:TextBox></td>
									<td class="fh">
										<asp:Button id="UpdateRank" Text='更新' runat="server" CommandName="Update" width="60"></asp:Button>
										<asp:Button id="CancelRank" Text='取消' runat="server" CommandName="Cancel" width="60"></asp:Button></td>
								</tr>
							</EditItemTemplate>
							</asp:datalist>   
                             <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="15" OnPageChanged="AspNetPager1_PageChanged" PageButtonCount="5"></webdiyer:AspNetPager>                                                                                                                                      
                                                             
                                                                 </td>
															</tr>
														
														</tbody>
													</table>
												
											</div>																					
										</td>	
					</tr>
					<tr>
														<td align="right" style="height: 16px">
														<a href="http://www.<%=domain %>" target="_blank"> <%=domain %></a>    
														</td>
														</tr>
						<tr>
						<td align="center" style="height: 18px">
						页面执行时间：<%=loadpagetime %> &nbsp;毫秒！
						</td>
						</tr>
				</tbody>
			</table>
    </form>
</body>
</html>
