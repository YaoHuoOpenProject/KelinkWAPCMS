<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="systemview.aspx.cs" Inherits="KeLin.WebSite.sysmessage.systemview" %><%@ Import namespace="KeLin.ClassManager.Tool" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查看公告</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /><link href="/NetCSS/style.css" rel="stylesheet" type="text/css" />

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
										<td valign="top" align="left">
											
											<asp:repeater id="Repeater1" Runat="server">
											<ItemTemplate>
											<table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
												<tbody>
													<tr>
														<td class="column" colspan="2"><font face="宋体">查看公告  </font>
														</td>
													</tr>
													<tr align="left">
														<td class="fh3" colspan="2">
														<br /><p align="center"><font size="3"><strong> <%# DataBinder.Eval(Container.DataItem, "msg_title") %></strong></font>														
														
														<br />
														<br />
														发布人：<%# DataBinder.Eval(Container.DataItem, "username") %> &nbsp;&nbsp;有效日期：<%# DataBinder.Eval(Container.DataItem, "msg_date") %> 至 <%# DataBinder.Eval(Container.DataItem, "valid_date") %>
														</p>
														
														
														<div align="center">

<table border="0" width="90%" id="table1" cellspacing="0" cellpadding="0">
	<tr>
		<td align=left><%# WapTool.ToWML(DataBinder.Eval(Container.DataItem, "msg_content").ToString(),wmlVo) %></td>
	</tr>
</table>

</div>
														
														
														
														<br />
                                                        </td>
													</tr> 
																								
													<tr>
														<td class="fh3" colspan="2" align="center">
														<br />
														&nbsp;<input id="bt_return" type="button" value=" 返 回 " onclick="return bt_return_onclick()" size="70" class="bt" /><br />
														<br />
														</td>
                                                            
													</tr>
												</tbody>
											</table>
											</ItemTemplate>
                                            </asp:repeater>											
											<table width="100%">
												<tr>
													<td style="height: 15px" align="center"><span class="txt4">
															
															 </span>
													</td>
												</tr>
												<tr>
												<td align="right">
												<a href="http://www.<%=domain %>" target="_blank"> <%=domain %></a>
												</td>
												</tr>
												<tr><td align="center">
												页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
												</td></tr>
											</table>
																				
										</td>												
						<td class="border_right" style="width: 5px; height: 30px;">
						</td>
					</tr>
				</tbody>
			</table>
    </form>
</body>
</html>
