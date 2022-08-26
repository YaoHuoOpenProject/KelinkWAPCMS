<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_postview.aspx.cs" Inherits="KeLin.WebSite.bbs.admin_postview" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查看帖子及回复</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
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
										<td valign="top" align="left"><span class="forumName"><font face="宋体">查看帖子及回复</font> </span>
											<br>
											<span class="forumThread"></span>
											<div class="txt4">
													<table id="Table1" width="100%">
														<tbody>																														
															
															<tr>
																<td colspan="4" style="width: 910px" >
                                                                 
    <asp:repeater id="TopRepeater" Runat="server">
	<ItemTemplate>
		<table class="tableBorder" id="Table1" cellspacing="1" cellpadding="3" width="100%">
			<tr>
				<td class="column" colspan="2">
					<table id="Table2" cellspacing="0" cellpadding="2" width="100%">
						<tr>
							<td class="dateText" vAlign="middle" align="left"><img src="/NetImages/icon_post_show.gif" align="absMiddle" border="0">&nbsp;
								<b><span id="_ctPostSubject"><%# DataBinder.Eval(Container.DataItem,"book_title")%></span> </b>
							</td>
							<td class="dateText"  align="right">
							<a href="" title="发表新话题"><font face="Webdings" color="#ff0000">
									4</font><b><font color=#ffffff>发表新话题</font></b></a>
							
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td class="f" colspan="2"><span class="forumThread" id="_ct">
				作者: <b><%# DataBinder.Eval(Container.DataItem,"book_author")%></B>&nbsp;&nbsp;&nbsp;
				出处: <b><%# DataBinder.Eval(Container.DataItem,"book_pub")%></B>&nbsp;&nbsp;&nbsp;
				发表时间:<b><%# DataBinder.Eval(Container.DataItem,"book_date")%></B>&nbsp;&nbsp;&nbsp;
				回复数: <b><%# DataBinder.Eval(Container.DataItem,"book_re")%></B></span>
				</td>
			</tr>
			<tr>
				<td class="fh3a" width="90px"><span class="forumThread" id="_ThreadStats">内容:</span></td>
				<td class="fh3a">
				&nbsp;&nbsp;&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem,"book_content")%>
				
				</td>
			</tr>
		</table>
	</ItemTemplate>
</asp:repeater>
<!-- Repeater Begin -->    
<asp:repeater id="SiteRepeater" Runat="server">
	<ItemTemplate>
		<table cellspacing="0" cellpadding="0" width="100%" border="0">
			<tr>
				<td valign="top" align="center" width="100%">
					<div style="PADDING-BOTTOM: 3px">
						<table class="tableBorder" cellspacing="0" cellpadding="0" width="100%">
							<tr>
								<td colsan="2">
									<table cellspacing="0" cellpadding="0" width="100%" align="left"> 
										<tr>
											<td class="threadSeparator" valign="middle" align="left" colspan="2">												
												<span class="dateText" align="left"><img src="/NetImages/icon_post_show.gif" border="0" />
												<%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>楼
												<!--标头--></span>											</td>
										</tr>
										
										<tr> 
											<td class="fh" valign="top" nowrap align="center" width="210" rowspan="2">
												<div style="PADDING-TOP: 4px"><img alt="" src="/NetImages/user_IsOffline.gif" border="0" /> <b>
														<%# DataBinder.Eval(Container.DataItem, "nickname")%>
													</b><span class="txt2">
														<br>														
														<table align="center">
															<tr>
																<td class="txt2" align="left" width="90%"><br>																																		
																	<b>
																		<br/>
																	</b>
																	<br />																																																						
																		回复时间：<%# DataBinder.Eval(Container.DataItem, "redate")%><br/>
																	    审核状态：<img src="../images/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif" alt="审核状态" />																</td>
															</tr>
														</table>
													</span>												</div>											</td>
											
											<td class="f" valign="top" width="100%">
												<table cellspacing="0" cellpadding="2" width="100%">
												 <tr align="right"><td>
												 <a href="">
																<img alt="回复" src="/NetImages/newpost.gif" border="0"></a> 
												 <a href="">
																<img alt="编辑" src="/NetImages/post_button_edit.gif" border="0"></a>
												 </td></tr>								
												</table>											</td>
										</tr>
										
										<tr>
											<td class="fh3a" valign="top">
												<table cellspacing="2" cellpadding="0" width="100%" align="left" border="0">
													<tr>
														<td width="1" rowspan="2"><img height="50px" src="/NetImages/spacer.gif" width="1" />														</td>
														<td class="txt4" style="PADDING-TOP: 4px" valign="top">
															<table cellspacing="0" cellpadding="4" width="90%" align="left">
																<tr>
																	<td class="txt4" valign="top" align="left"><%# DataBinder.Eval(Container.DataItem, "content")%>																	</td>
																</tr>
															</table>														</td>
													</tr>
												</table>											</td>
										</tr> 
									</table>								</td>
							</tr>
						</table>
					</div>				</td>
				</tr>
		</table>
	</ItemTemplate>
</asp:repeater>                                                       
<webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30" OnPageChanged="AspNetPager1_PageChanged"></webdiyer:AspNetPager> <br />                                                                              		
<!-- Repeater End-->  
<!--快捷编辑 by Saufu-->
<table id="Table10" cellspacing="0" cellpadding="0" width="934" border="0" style="WIDTH: 910px; HEIGHT: 225px">
	<TBODY>
		<TR>		
			<TD vAlign="top" align="center" width="100%">
				<DIV id="k" align="center">
					<TABLE class="tableBorder" id="Table11" cellSpacing="1" cellPadding="3" width="100%" border="0">
						<TBODY>
							<TR>
								<TD class="column" colSpan="2" align="left"><SPAN class="dateText">&nbsp;<IMG src="/NetImages/icon_post_show.gif" border="0">&nbsp; 
										快速编辑 </SPAN>
								</TD>
							</TR>
							<TR>
								<TD class="fh" style="WIDTH: 90px" vAlign="top" rowSpan="2">UBB语法支持<BR>
									<BR>
									示例:<BR>
									<B>粗体文字</B><BR>
									[b]粗体文字[/b]
									<P>&nbsp;</P>
									<BR>
									<BR>
									<BR>
								</TD>
								<TD class="f" vAlign="top" align="left"><SPAN class="txt5Bold">标题:&nbsp; </SPAN>
									<asp:textbox id="tb_title" runat="server" Width="521px"></asp:textbox><SPAN class="txt5Bold">&nbsp;
									</SPAN>
									</TD>
							</TR>
							<TR>
								<TD class="fh3b" vAlign="top" align="left">
								<asp:textbox id="tb_rec" runat="server" Width="606px" Height="193px" TextMode="MultiLine">
								</asp:textbox>
									<br>
									<asp:button id="bt_revert" runat="server" Text=" 保 存 "></asp:button>&nbsp;&nbsp;
									<SPAN class="QuickPostText">(Ctrl+Enter直接提交)</SPAN>
									<input id="bt_return" type="button" value=" 返 回 " onclick="return bt_return_onclick()"  />
									</TD>
							</TR>
						</TBODY>
					</TABLE>
				</DIV>
			</TD>
			
		</TR>
	</TBODY>
</TABLE> 
<!--快捷回复 结束--> 
</td>
</tr>
															
															
<tr >
<td colspan="4" valign="top" align="left" >															
<!--Repeater-->                                    
</td>
</tr>
</tbody>
</table>


</div>
																					
</td>												

</tr>
					<tr align="right">
							<td>
							<a href="http://www.<%=domain %>" target="_blank"> <%=domain %></a>
							</td>
							</tr>
				    <tr align="center"><td>页面执行时间：<%=loadpagetime %>&nbsp;毫秒！</td></tr>
				</tbody>
			</table>
			
			<input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
             <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
    </form>
</body>
</html>
