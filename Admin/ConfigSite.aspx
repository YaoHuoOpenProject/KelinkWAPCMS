<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfigSite.aspx.cs" Inherits="KeLin.WebSite.admin.ConfigSite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

    <title>配置网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript">
function CheckSave() {                         
            if (document.getElementById("tb_sitespace").value == "")  {
                alert("空间大小不能为空！");
                document.getElementById("tb_sitespace").focus();
                return false;
            }                  
            if (checkTelNum(document.getElementById("tb_sitespace").value)==false) 
            {
                alert("空间大小不能为空或字符,请输入数值！");
                document.getElementById("tb_sitespace").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_myspace").value)==false) 
            {
                alert("已用空间大小不能为空或字符,请输入数值！");
                document.getElementById("tb_myspace").focus();
                return false;
            }
            return true;
           
        }
//判断是否数值   
function checkTelNum(content) {
    if(content == "") {       
       return false ;
    }
    content = "1" + content ;   //可以用"1"-"9"任何一个
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
														<td class="column" colspan="4"><font face="宋体">配置网站  </font>														</td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">网站ID： </font>														</td>
														<td colspan="3" class="fh3">
														<asp:textbox id="tb_siteid" runat="server" Width="75px" ReadOnly="True"></asp:textbox>														</td>
													</tr> 
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">网站名称： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_sitename" runat="server" Width="146px" ReadOnly="True"></asp:TextBox></td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">空间大小： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_sitespace" runat="server" Width="91px"></asp:TextBox>M</td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">已用空间： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_myspace" runat="server" Width="90px"></asp:TextBox>KB</td>
													</tr>
													
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">运行状态： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="ddl_lock" runat="server"> 
                                                                <asp:ListItem Value="1">锁定</asp:ListItem>
                                                                <asp:ListItem Value="0">正常</asp:ListItem>
                                                            </asp:DropDownList></td>
													</tr>												
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">内容审核： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="ddl_check" runat="server"> 
                                                                <asp:ListItem Value="1">需要</asp:ListItem>
                                                                <asp:ListItem Value="0">不要</asp:ListItem>
                                                            </asp:DropDownList></td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">VIP网站： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="sitevip" runat="server">                                                                 
                                                                <asp:ListItem Value="0">普通</asp:ListItem>
                                                                <asp:ListItem Value="1">VIP</asp:ListItem>
                                                            </asp:DropDownList></td>
													</tr>
                                                    <tr>
														<td class="f" style="width: 22%"><font face="宋体">到期日期： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_daoqiriqi" runat="server" Width="90px"></asp:TextBox>
                                                            <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'tb_daoqiriqi'})"
                                                            title="选择日期" /> &nbsp;&nbsp;(留空，表示无期限！)
                                                            </td>
													</tr>	
													<tr>
														<td class="fh3" colspan="4" align="center">
														<br />
														<asp:button id="bt_ok" runat="server" Text=" 保 存 " onclick="bt_ok_Click" Width="70px" OnClientClick="CheckSave()" CssClass="bt"></asp:button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                            <input id="Button2" type="button" value=" 关 闭 " onclick="javaScript:window.close(); window.opener.location.reload();" Class="bt" style="Width:70px"/><br />
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
												页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
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
