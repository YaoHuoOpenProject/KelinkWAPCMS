<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guestlist.aspx.cs" Inherits="KeLin.WebSite.gongqiu.guestlist" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>行业供求内容</title>
<link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
		<!--    
		function DoEdit() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要修改的用户！")
                return;
            }
            if (SelectNo > 1) {
                alert("修改数据时不能多选！")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            //document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            window.location.href="admin_modifyUser.aspx?bookid="+edtHangBiaoShis;
            //document.getElementById("CommandType").value = "Eidt";
            //document.getElementById("Form1").submit();
        }   
        function DoDelete() {
            var deleteHangBiaoShis = GetOnChecked();
            if (deleteHangBiaoShis == null || deleteHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = deleteHangBiaoShis;
                document.getElementById("CommandType").value = "del";
                document.getElementById("Form1").submit();
            }
        }
        function DoDel() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Del";
                document.getElementById("Form1").submit();
            }
        }
        function DoReBack() {
            window.location.href="guestlist.aspx?classid="+document.getElementById("TextBox4").value;              
        }
        function DoCheck() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要审核的记录！")
                return;
            }                        
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "Check";
            document.getElementById("Form1").submit();            
        }
        function DoUnCheck() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要弃审的记录！")
                return;
            }                        
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "UnCheck";
            document.getElementById("Form1").submit();            
        }
        function DoContent() {
            window.location.href="userlist.aspx?classid="+document.getElementById("TextBox1").value;
        }
        function DoReback() {
            window.location.href="guestlist.aspx?classid="+document.getElementById("TextBox1").value;
        }
        function GetOnChecked() {
            var sRet = '';
            var sChar = '';
            var varHangBiaoShi = "";
            var a = document.getElementsByName('chkSelect');
            var n = a.length;
            //alert(n);			
            for (var i = 0; i < n; i++) {
                if (a[i].checked) {
                    varHangBiaoShi = varHangBiaoShi + sChar + a[i].value;
                    sChar = ',';
                }

            }
            return varHangBiaoShi;
        }
        

        function shSearch() {
            //alert("aa");
            //var a = document.all.item("searchtable").style.display;
            if (document.all.item("formSearch").style.display == "none")
                document.all.item("formSearch").style.display = "block";
            else
                document.all.item("formSearch").style.display = "none";
        }
		//-->
function checkAll(chkAllID,thisObj) 
{ 
    var chkAll = document.getElementById(chkAllID); 
    var chks = document.getElementsByTagName("input"); 
    var chkNo = 0; 
    var selectNo = 0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "checkbox") 
       { 
          //全选触发事件    
          if(chkAll == thisObj) 
          { 
             chks[i].checked = thisObj.checked;               
          }            
          //非全选触发 
          else 
          { 
            if(chks[i].checked && chks[i].id != chkAllID) 
             selectNo++; 
          } 
          if(chks[i].id != chkAllID) 
          { 
            chkNo++; 
          } 
       } 
    }   
    if(chkAll != thisObj) 
    { 
        chkAll.checked = chkNo==selectNo; 
    } 
} 
function checkSelectNo(chkAllID) 
{ 
    var chks = document.getElementsByTagName("input"); 
    var selectNo =0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "checkbox") 
       { 
            if(chks[i].id != chkAllID && chks[i].checked) 
            { 
                selectNo++; 
            } 
       } 
    }    
    return selectNo; 
} 

function Button1_onclick() {

}

    </script>            
</head>
<body>
    <form id="form1" runat="server">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody>
					<tr>																					
										<td valign="top" align="left">
										<span class="forumName"><font face="宋体">文章回复管理</font> </span>
											<br>
											<span class="forumThread"> </span>
											<div class="txt4">
													<table id="Table1" width="100%">
														<tbody>																														
															<tr>
																<td colspan="4">
                                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0" height="100%">
                                                                        <tr>
																            <td class="column" colspan="4">查询条件</td>
															            </tr>
															            <tr>
																        <td class="fh" colspan="3" style="width: 688px">
                                                                            栏目ID：<asp:TextBox ID="TextBox1" runat="server" Columns="20" MaxLength="8" Width="64px"></asp:TextBox>
                                                                            文章ID：<asp:TextBox ID="TextBox4" runat="server" Width="64px"></asp:TextBox>标题/内容关键字：<asp:TextBox ID="TextBox2" runat="server" Columns="20" MaxLength="8" Width="191px"></asp:TextBox>
                                                                            </td>
										                            <td class="fh" style="width: 99px">
										                            <asp:Button ID="bt_DoSearch" width="60" Text='查 询' Runat="server" onclick="bt_DoSearch_Click"></asp:Button>
                                                                        </td>
									                                </tr>     									                                                                                                    
                                                                    </table>	
                                                                    <table id="Table2" class="tableBorder" cellspacing="1" cellpadding="3" border="0" height="100%">
                                                                        <tr>
																            <td class="column" colspan="4">操作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																            <a style="cursor:hand" onclick="DoContent()">内容管理</a>&nbsp;&nbsp;&nbsp;
																            <a style="cursor:hand" onclick="DoReBack()">回复管理</a>&nbsp;&nbsp;
																            <!--
																             <a style="cursor:hand" onclick="DoSmall()">小类管理</a>&nbsp;&nbsp;
																             -->
																            
																            </td>
															            </tr>
															            <tr>
																        <td class="fh" colspan="4">
                                                                            
                                                                            <input id="Button5" name="" type="button" value=" 修 改 " onclick="DoEdit()" />
                                                                            &nbsp;&nbsp;                                                                            
                                                                            <input id="Button4" name="" type="button" value=" 删 除 " onclick="DoDel()" />
                                                                            
                                                                        </td>
									                                </tr>     									                                                                                                     
                                                                    </table>		
																</td>
															</tr>
															<tr >
																<td colspan="4" valign="top" align="left">
                                                        
    <asp:DataGrid ID="DataGrid1" Runat="server" DataKeyField="id" AllowSorting="True" AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" ShowFooter="True" Width="910px" OnSortCommand="DataGrid1_SortCommand" >
	<HeaderStyle Font-Bold="True" Font-Size="9pt" BackColor="#78ABDE" ></HeaderStyle>
	<ItemStyle BackColor="#DDEEFF"></ItemStyle>
	<AlternatingItemStyle CssClass="fh" BackColor="White"></AlternatingItemStyle>
	<Columns>
		<asp:TemplateColumn>
			<HeaderStyle Width="20px"></HeaderStyle>
			<ItemStyle Width="20px"></ItemStyle>
			<HeaderTemplate>
			<input type="checkbox" id="chkAll" name="chkAll" value="checkbox" onclick="checkAll('chkAll',this);" />	
			</HeaderTemplate>
			<ItemTemplate>
				<input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>' onclick="checkAll('chkAll',this);"/>				
			</ItemTemplate>
			<FooterTemplate>
			    
			</FooterTemplate>
		</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="序号" ItemStyle-Width="30px">				
				<ItemTemplate>
					<%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="状态" SortExpression="ischeck" ItemStyle-Width="30px">
				<ItemTemplate>								
				<img src="../images/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif" alt="审核状态"  />				
				</ItemTemplate>				
			</asp:TemplateColumn>											
			<asp:TemplateColumn HeaderText="栏目ID" SortExpression="classid" ItemStyle-Width="50px">
				<ItemTemplate>
				<a href ="guestlist.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"classid") %>" target="_self" title="快速进入此栏目"> <%#DataBinder.Eval(Container.DataItem,"classid")%></a>
				</ItemTemplate>				
			</asp:TemplateColumn>	
			<asp:TemplateColumn HeaderText="文章ID" SortExpression="bookid" ItemStyle-Width="50px">
				<ItemTemplate>	
				<a href ="admin_articleview.aspx?bookid=<%#DataBinder.Eval(Container.DataItem,"bookid") %>" target="_self" title="查看或修改"><%#DataBinder.Eval(Container.DataItem, "bookid")%></a>								
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="回复内容">
				<ItemTemplate>								
								<%#DataBinder.Eval(Container.DataItem, "content")%>
				</ItemTemplate>				
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="回复人" SortExpression="nickname" ItemStyle-Width="100px">
				<ItemTemplate>
								<%#DataBinder.Eval(Container.DataItem, "nickname")%>
				</ItemTemplate>
			</asp:TemplateColumn>									
			<asp:TemplateColumn HeaderText="回复时间" SortExpression="redate" ItemStyle-Width="130px">
				<ItemTemplate>
								<%#DataBinder.Eval(Container.DataItem, "redate")%>
				</ItemTemplate>
			</asp:TemplateColumn>													
	</Columns>
</asp:DataGrid>
                             <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true" ShowPageIndexBox="Always"
									                PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: " HorizontalAlign="Left" 
													OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
							</webdiyer:AspNetPager>                 转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                                    每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                                    <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" />
							                                                                                                                                    
                                                                
                                                                 </td>
															</tr>						    
														</tbody>
													</table>
												
											</div>
																																
										</td>												
						<td class="border_right" style="width: 10px; height: 387px;"><img height="1" src="<%=KeLin.ClassManager.PubConstant.ApplicationPath%>/images/spacer.gif" width="10px" />
						</td>
					</tr>
					<tr>
							<td colspan="4" align="center">
							<a href="http://www.'<%=domain %>'>'" target="_blank"> <%=domain %></a> 
							&nbsp;&nbsp;
							<a href="../help/u4.htm" target="_blank"><img border="0" title="服务器信息FLASH教程" src="../images/help.gif"></a>
							</td>
					</tr>  
					<tr>
							<td colspan="4" align="center">
							页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
							</td>
					</tr> 
				</tbody>
			</table>
			 <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
             <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
    </form>
</body>
</html>
