<%@ Page Language="C#" AutoEventWireup="true" Codebehind="UserManage.aspx.cs" Inherits="KeLin.WebSite.admin.UserManage" %><%@ Import namespace="KeLin.ClassManager.Tool" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>注册会员网站管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
    <script language="javascript" type="text/javascript">
		<!--       
        function UserDelAllPeople() {
            var deleteHangBiaoShis = GetOnChecked();
            if (deleteHangBiaoShis == null || deleteHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = deleteHangBiaoShis;
                document.getElementById("CommandType").value = "UserDelAllPeople";
                document.getElementById("form1").submit();
            }
        }
        function UserDelAll() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "UserDelAll";
                document.getElementById("form1").submit();
            }
        }
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
            document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            document.getElementById("CommandType").value = "Edit";
            document.getElementById("form1").submit();            
        }
        function DoRole() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要分配权限的用户！")
                return;
            }
            if (SelectNo > 1) {
                alert("修改分配权限时不能多选！")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            document.getElementById("CommandType").value = "role";
            document.getElementById("form1").submit();            
        }
        function DoLock() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要锁定的用户！")
                return;
            }    
            if (SelectNo > 1) {
                alert("修改锁定开启时不能多选！")
                return;
            }                    
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "Lock";
            document.getElementById("form1").submit();
            
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
function Open() {
    window.open("RestUserID.aspx", "newwindow", "height=300, width=350, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

}
function Open2() {
    window.open("/bbs/ResetVip.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "vipwindow", "height=350, width=450, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

}
function OpenAddUser() {
    window.open("admin_wapreg.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "newwindow", "height=350, width=450, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

}
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
                                            用户管理 &gt;&gt; 用户资料管理 
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
                                       
                                                        <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                            height="100%" width="100%">
                                                            <tr>
                                                                <td class="column" colspan="4">
                                                                    查询条件<%//=strWhere %></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="fh" colspan="4">
                                                                    
                                                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                                                        <asp:ListItem Value="" Selected="True">所有管理权限</asp:ListItem>
                                                                       
                                                                        <asp:ListItem Value="00">超级管理员</asp:ListItem>
                                                                        <asp:ListItem Value="00_01">所有站长</asp:ListItem>
                                                                       
                                                                        <asp:ListItem Value="01">本站站长</asp:ListItem>
                                                                        <asp:ListItem Value="03">本站总编辑</asp:ListItem>
                                                                        <asp:ListItem Value="04">本站总版主</asp:ListItem>
                                                                        <asp:ListItem Value="classadmin">本站栏目管理员/版主</asp:ListItem>
                                                                        <asp:ListItem Value="02">本站用户</asp:ListItem>
                                                                        
                                                                    </asp:DropDownList><asp:DropDownList ID="DropDownList1" runat="server">
                                                                        <asp:ListItem Value="" Selected="True">所有状态</asp:ListItem>
                                                                        <asp:ListItem Value="0">正常</asp:ListItem>
                                                                        <asp:ListItem Value="1">锁定</asp:ListItem>                                                                        
                                                                    </asp:DropDownList>
                                                                    </asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server">
                                                                        <asp:ListItem Value="" Selected="True">所有身份级别</asp:ListItem>
                                                                                                                                              
                                                                    </asp:DropDownList>
                                                                    用户ID：<asp:TextBox ID="TextBox1" runat="server" Columns="20" MaxLength="20" Width="50px"></asp:TextBox>
                                                                    用户名：<asp:TextBox ID="TextBox2" runat="server" Columns="20" MaxLength="20" Width="50"></asp:TextBox>
                                                                    昵称：<asp:TextBox ID="TextBox3" runat="server" Columns="20" MaxLength="20" Width="50px"></asp:TextBox>
                                                                    <br />
                                                                    已过期天数：<asp:TextBox ID="TextBox4" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                                    离到期天数：<asp:TextBox ID="TextBox6" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                                    &nbsp;&nbsp;
                                                                    <asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                                    </asp:Button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="fh" colspan="4">
                                                                <input id="Button9" name="" type="button" value="添加普通会员" onclick="OpenAddUser()" class="bt" />
                                                                <%if (base.ManagerLvl == "00"){%>
                                                                     
                                                                    <input id="Button6" name="" type="button" value="重置会员ID序号" onclick="Open()" class="bt" />
                                                                    
                                                                    <%} %>
                                                                <input id="Button11" name="" type="button" value="过期VIP会员变普通会员" onclick="Open2()" class="bt" />
                                                                    
                                                                    <input id="Button1" name="" type="button" value=" 修改用户 " onclick="DoEdit()" class="bt"/>
                                                                    
                                                                    <input id="Button3" name="" type="button" value=" 锁定/开启 " onclick="DoLock()" class="bt"/>
                                                                 
                                                                    <input id="Button5" name="" type="button" value=" 分配角色 " onclick="DoRole()" class="bt" />
                                                                  
                                                                    <input id="Button2" name="" type="button" value=" 删除普通会员 " onclick="UserDelAllPeople()" class="bt"/>
                                                                  
                                                                    <%if (base.ManagerLvl == "00" && search_managerlvl == "00_01")
                                                                      { %>
                                                                    <input id="Button4" name="" type="button" value="删除网站" onclick="UserDelAll()" class="bt" />
                                                                    <%} %>
                                                                    
                                                                    
                                                                    
                                                                    <input id="Button7" name="" type="button" value="导出用户名" onclick="window.location='usermanage.aspx?action=toexcel';" class="bt"/>
                                                                    <input id="Button8" name="" type="button" value="导出手机" onclick="window.location='usermanage.aspx?action=toexcel&types=mobile';" class="bt"/>
                                                                    <input id="Button10" name="" type="button" value="导出Email " onclick="window.location='usermanage.aspx?action=toexcel&types=email';" class="bt"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="fh" colspan="3" style="width: 624px">
                                                                </td>
                                                                <td class="fh" style="width: 117px">
                                                                </td>
                                                            </tr>
                                                        </table>                                                        
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" valign="top" align="left">
                                                        <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="userid" AllowSorting="True"
                                                            AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" ShowFooter="True"
                                                            Width="100%" OnSortCommand="DataGrid1_SortCommand">
                                                            <HeaderStyle Font-Bold="True" Font-Size="9pt" BackColor="#78ABDE"></HeaderStyle>
                                                            <ItemStyle BackColor="#DDEEFF"></ItemStyle>
                                                            <AlternatingItemStyle CssClass="fh" BackColor="White"></AlternatingItemStyle>
                                                            <Columns>
                                                                <asp:TemplateColumn HeaderStyle-CssClass="column">
                                                                    <HeaderStyle Width="20px"></HeaderStyle>
                                                                    <ItemStyle Width="20px"></ItemStyle>
                                                                    <HeaderTemplate>
                                                                        <input type="checkbox" id="chkAll" name="chkAll" value="checkbox" onclick="checkAll('chkAll',this);" />
                                                                    </HeaderTemplate>
                                                                    <ItemTemplate>
                                                                        <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "userid") %>'
                                                                            onclick="checkAll('chkAll',this);" />
                                                                    </ItemTemplate>
                                                                    <FooterTemplate>
                                                                    </FooterTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="序号" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="会员ID" SortExpression="userid" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <a href="UserModify.aspx?UserID=<%#DataBinder.Eval(Container.DataItem,"userid") %>"
                                                                            target="_self">
                                                                            <%#DataBinder.Eval(Container.DataItem,"userid")%>
                                                                        </a>
                                                                    </ItemTemplate>
                                                                    <FooterTemplate>
                                                                        <!--验证码：-->
                                                                    </FooterTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="网站ID" SortExpression="siteid" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <a href="<%=base.http_start %>wapindex.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"siteid")%>" target ="_blank"><%#DataBinder.Eval(Container.DataItem,"siteid")%></a>
                                                                    </ItemTemplate>
                                                                    <FooterTemplate>
                                                                    <!--
                                                                        <input class="intput1" onfocus="this.select()" maxlength="4" size="4" name="CheckCode"
                                                                            id="CheckCode">
                                                                            -->
                                                                    </FooterTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="用户名" SortExpression="username" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        用户名:<%#DataBinder.Eval(Container.DataItem,"username")%></b><br />
                                                                        昵 称:<b><%#DataBinder.Eval(Container.DataItem,"nickname")%></b><br />
                                                                        性别：<b><%#DataBinder.Eval(Container.DataItem,"Gender")%></b>[<a href="#" onclick ="window.open('/bbs/userinfo.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"siteid")%>&touserid=<%#DataBinder.Eval(Container.DataItem,"userid")%>&sid=-2');">详细</a>]
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                
                                                                <asp:TemplateColumn HeaderText="管理权限" SortExpression="managerlvl" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#this.getIDName(DataBinder.Eval(Container.DataItem,"managerlvl").ToString())%>
                                                                        
                                                                    </ItemTemplate>
 
<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="访问级别" SortExpression="managerlvl" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#(DataBinder.Eval(Container.DataItem,"sessiontimeout").ToString())%><br />
                                                                        <%#this.showIDEndTime((DataBinder.Eval(Container.DataItem, "siteid").ToString()), (DataBinder.Eval(Container.DataItem, "userid").ToString()), (DataBinder.Eval(Container.DataItem, "endtime").ToString()))%>
                                                                    </ItemTemplate>                                                                   

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="状态" SortExpression="LockUser" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#DataBinder.Eval(Container.DataItem,"State")%>
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="RMB￥" SortExpression="rmb" 
                                                                    HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%# decimal.Parse( DataBinder.Eval(Container.DataItem, "rmb").ToString()).ToString("f2")%>
                                                                        <br /><br />
                                                                        <a href="#" onclick="window.open('/chinabank_wap/RMBAdd.aspx?action=search&siteid=<%=base.SiteId %>&touserid=<%#DataBinder.Eval(Container.DataItem, "userid")%>&amp;sid=<%=base.SID %>');">增减</a>｜<a href="#" onclick="window.open('/chinabank_wap/banklist.aspx?siteid=<%=base.SiteId %>&tositeid=<%=base.SiteId %>&touserid=<%#DataBinder.Eval(Container.DataItem, "userid")%>&sid=<%=base.SID %>');">日志</a>
                                                                  
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="虚拟币" SortExpression="money" 
                                                                    HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#DataBinder.Eval(Container.DataItem, "money")%>
                                                                        <br /><br />
                                                                        <a href="#" onclick="window.open('/bbs/tomoney.aspx?siteid=<%=base.SiteId %>&touserid=<%#DataBinder.Eval(Container.DataItem, "userid")%>&amp;sid=<%=base.SID %>');">增减</a>｜<a href="#" onclick="window.open('/bbs/banklist.aspx?siteid=<%=base.SiteId %>&key=<%#DataBinder.Eval(Container.DataItem, "userid")%>&sid=<%=base.SID %>');">日志</a>
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                  <asp:TemplateColumn HeaderText="银行存款" SortExpression="mybankmoney" 
                                                                    HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#DataBinder.Eval(Container.DataItem, "mybankmoney")%>
                                                                  
                                                                   </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="经验" SortExpression="expr" HeaderStyle-CssClass="column">
                                                                <ItemTemplate>
                                                                        <%#DataBinder.Eval(Container.DataItem,"expr")%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                
                                                               
                                                                <asp:TemplateColumn HeaderText="手机" SortExpression="mobile" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#DataBinder.Eval(Container.DataItem,"mobile")%>
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                
                                                                <asp:TemplateColumn HeaderText="登录时间" SortExpression="LastLoginTime" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#DataBinder.Eval(Container.DataItem,"LastLoginTime")%>
                                                                        <br />-<br /><%#DataBinder.Eval(Container.DataItem,"RegTime")%>
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="在线(秒)" SortExpression="LoginTimes" HeaderStyle-CssClass="column">
                                                                    <ItemTemplate>
                                                                        <%#DataBinder.Eval(Container.DataItem,"LoginTimes")%>
                                                                    </ItemTemplate>

<HeaderStyle CssClass="column"></HeaderStyle>
                                                                </asp:TemplateColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                            ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                            HorizontalAlign="Left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                                        </webdiyer:AspNetPager>
                                                        转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                        每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                        <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                                    
                                                     &nbsp;&nbsp;<font color=red>说明：为了安全默认禁用站长删除功能，如有需要向超级管理员申请删除！建议用锁定功能！</font>
                                                    </td>
                                                </tr>
                                           
                                    </div>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
                    <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
                </td>
            </tr>
            <tr>
                                                    <td colspan="4" align="center">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4" align="center">
                                                        页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                                                    </td>
                                                </tr>
        </table>
    </form>
</body>
</html>
