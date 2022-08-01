<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" Codebehind="admin_UserManage.aspx.cs"
    Inherits="KeLin.WebSite.admin.admin_UserManage" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>网站配置</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
        function OpenAddUser() {
            window.open("admin_wapregsite.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "newwindow", "height=350, width=450, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

        }
        function DoDel() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidDelHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "delsite";
                document.getElementById("form1").submit();
            }
        }
        function DoConfig() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要修改的模块！")
                return;
            }
            if (SelectNo > 1) {
                alert("修改数据时不能多选！")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            //document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            OpenWindows(edtHangBiaoShis);
            
            
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
function OpenWindowType(a) { 
window.open("systype_siteid.aspx?tositeid="+a, "systype", "height=500, width=700, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");
}
function OpenWindows(a) {
    window.open("configsite.aspx?siteid=" + a, "addsystemwindow", "height=400, width=500, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
}
function goopen(str){
window.open (str, "bank", "height=500, width=800, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
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
                                                        系统管理 >> 网站配置 
                                                        
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
                    <td valign="top" align="left">                        
                        <div class="txt4">
                            <table id="Table1" width="100%" class="TABLE6">
                                <tbody>
                                    <tr>
                                        <td colspan="4">
                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                height="100%" width="100%">
                                                <tr>
                                                    <td class="column" colspan="4">
                                                        查询条件</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="3">
                                                        状态：<asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem Value="0">正常</asp:ListItem>
                                                            <asp:ListItem Value="1">锁定</asp:ListItem>
                                                            <asp:ListItem Value="2">已过期网站</asp:ListItem>
                                                            <asp:ListItem Value="3">不过期网站</asp:ListItem>
                                                            <asp:ListItem Value="" Selected="True">全部</asp:ListItem>
                                                        </asp:DropDownList>
                                                        VIP网站：<asp:DropDownList ID="sitevip" runat="server">
                                                            <asp:ListItem Value="0">普通</asp:ListItem>
                                                            <asp:ListItem Value="1">VIP</asp:ListItem>
                                                            <asp:ListItem Value="" Selected="True">全部</asp:ListItem>
                                                        </asp:DropDownList>
                                                        网站/站长ID：<asp:TextBox ID="TextBox1" runat="server" Columns="20"
                                                            MaxLength="20" Width="40px"></asp:TextBox>用户名：<asp:TextBox ID="TextBox2" runat="server"
                                                                Columns="20" MaxLength="20" Width="50px"></asp:TextBox>
                                                        已过期天数：<asp:TextBox ID="TextBox3" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>离到期天数：<asp:TextBox
                                                            ID="TextBox6" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                            &nbsp;
                                                            <!--
                                                            分配插件：<asp:DropDownList ID="DropDownList2" runat="server">
                                                            <asp:ListItem Value="0">未分配(即所有)</asp:ListItem>
                                                            <asp:ListItem Value="1">已分配</asp:ListItem>
                                                            <asp:ListItem Value="" Selected="True">全部</asp:ListItem>
                                                        </asp:DropDownList>
                                                            插件ID：<asp:TextBox
                                                            ID="TextBox7" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                            -->
                                                            </td>
                                                    <td class="fh" style="width: 117px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="3">
                                                        &nbsp;注册时间从：<asp:TextBox ID="TextBox4" runat="server" Columns="20" MaxLength="8"
                                                            Width="105px"></asp:TextBox>
                                                        <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox4'})"
                                                            title="选择日期" />
                                                        到：<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="105px"></asp:TextBox>
                                                       
                                                        <img id="img1" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox5'})"
                                                            title="选择日期" /> &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp;<asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                         &nbsp;&nbsp;
                                                          <input id="Button9" name="" type="button" value="添加站长" onclick="OpenAddUser()" class="bt" />
                                                               
                                                        &nbsp;&nbsp;
                                                        <input id="Button2" name="" type="button" value=" 配 置 " onclick="DoConfig()" class="bt" style="Width:60px"/>
                                                        &nbsp;&nbsp; 
                                                        <input id="Button4" name="" type="button" value=" 删 除 " onclick="DoDel()" class="bt" style="Width:60px"/>
                                                    </td>
                                                    <td class="fh" style="width: 117px">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="userid" AllowSorting="True"
                                                AutoGenerateColumns="False"  PageSize="25" ShowFooter="True" 
                                                Width="100%" OnSortCommand="DataGrid1_SortCommand">
                                                <HeaderStyle Font-Bold="True" Font-Size="9pt"></HeaderStyle>
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
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="VIP" SortExpression="sitevip" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           
                                                                <%#getShowVIP(DataBinder.Eval(Container.DataItem,"sitevip").ToString())%>
                                                            
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="网站ID" SortExpression="siteid" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="javascript:OpenWindows('<%#DataBinder.Eval(Container.DataItem,"siteid")%>');"
                                                                title="配置网站">
                                                                <%#DataBinder.Eval(Container.DataItem,"siteid")%>
                                                            </a>
                                                            <br />(<%#DataBinder.Eval(Container.DataItem,"username")%>)
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="网站标题" SortExpression="sitename" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="http://<%#DataBinder.Eval(Container.DataItem,"username")%>.<%=domain%>"
                                                                target="_blank">
                                                                <%#DataBinder.Eval(Container.DataItem,"sitename")%>
                                                                
                                                            </a>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                   
                                                    <asp:TemplateColumn HeaderText="空间大小M" SortExpression="sitespace" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "sitespace")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="已用空间KB" SortExpression="myspace" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "myspace")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="运行状态" SortExpression="LockUser" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem,"State")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="内容审核" SortExpression="ischecks" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "ischecks")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="注册时间" SortExpression="regtime" HeaderStyle-CssClass="column" ItemStyle-Width="100px">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "regtime")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:BoundColumn DataField="endtime" SortExpression="endtime"  HeaderStyle-CssClass="column" HeaderText="到期时间" DataFormatString="{0:yyyy-MM-dd}">
									</asp:BoundColumn>
                                                   
                                                    <asp:TemplateColumn HeaderText="剩余天数" SortExpression="pass_date" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "pass_date")%><br />
                                                            <br /><a href="javascript:goopen('/chinabank/bank_my_list.aspx?tositeid=<%#DataBinder.Eval(Container.DataItem,"siteid")%>');">
                                                                查看充值记录</a>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="已分配插件" HeaderStyle-CssClass="column" ItemStyle-Width="100px">
                                                        <ItemTemplate>
                                                        <textarea name="book_content" rows="5" style="width:100px"><%#getShowTypes(DataBinder.Eval(Container.DataItem, "systype").ToString())%></textarea>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="操作" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            【<a href="gochange.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"userid")%>">切换网站</a>】<br /><br />
                                                            【<a href="javascript:OpenWindows('<%#DataBinder.Eval(Container.DataItem,"siteid")%>')">配置参数</a>】<br /><br />
                                                            【<a href="javascript:OpenWindowType('<%#DataBinder.Eval(Container.DataItem,"siteid")%>')">分配插件</a>】
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" HorizontalAlign="Left"
                                                OnPageChanged="AspNetPager1_PageChanged" PageButtonCount="5">
                                            </webdiyer:AspNetPager>
                                            转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                            每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                            <asp:Button ID="bt_go" runat="server" Text=" Go " OnClick="bt_go_Click" CssClass="bt"/>
                                            
                                            <br /><br />VIP网站：当用户在线充值网站时间时会设为VIP网站，或超级管理员直接配置。VIP用处：可以让VIP网站不显示全局广告，只让非VIP网站显示全局广告。全局广告配置在Web.Config文件中。
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100%">
                        
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 100%">
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidDelHangBiaoShis" name="hidDelHangBiaoShis" />
    </form>
</body>
</html>
