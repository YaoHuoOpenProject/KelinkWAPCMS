<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ZoneOperation.aspx.cs" Inherits="KeLin.WebSite.bbs.ZoneOperation" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>信息资源</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

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
            window.location.href="admin_modifyUser.aspx?bookid="+edtHangBiaoShis;           
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
                document.getElementById("form1").submit();
            }
        }
        function DoDelAll() {
            
            if (window.confirm("请确认删除查询结果，否则选择取消?")) {                
                document.getElementById("CommandType").value = "DelAll";
                document.getElementById("form1").submit();
            }
        }
        function DoDelAllNULL() {

            if (window.confirm("请确认删除查询结果，否则选择取消?")) {
                document.getElementById("CommandType").value = "DelAllNULL";
                document.getElementById("form1").submit();
            }
        }
        function DoContent() {
            window.location.href="admin_userlist.aspx";
            }
        function DoReBack() {
            window.location.href="admin_guestlist.aspx";        
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
            document.getElementById("form1").submit();            
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
function shbbs() {
            //alert("aa");
            //var a = document.all.item("bbstable").style.display;
            if (document.all.item("formbbs").style.display == "none")
                document.all.item("formbbs").style.display = "block";
            else
                document.all.item("formbbs").style.display = "none";
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
                                                内容审核 &gt;&gt; 个人操作日志
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
                                                    <td class="fh" colspan="2" >
                                                   
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value=" ">操作类别(所有)</asp:ListItem>
                                                                <asp:ListItem Value="0">论坛操作</asp:ListItem>
                                                                <asp:ListItem Value="1">会员动态</asp:ListItem>    
                                                                <asp:ListItem Value="2">登录WEB管理</asp:ListItem>                                                             
                                                            </asp:DropDownList>
                                                        网站ID：<asp:TextBox ID="toSiteid" runat="server" Width="64px"></asp:TextBox>
                                                        操作人ID：<asp:TextBox ID="toOper_userid" runat="server" Columns="20" MaxLength="10" Width="64px"></asp:TextBox>
                                                        操作人IP：<asp:TextBox ID="toOper_IP" runat="server" Columns="20" Width="64px"></asp:TextBox>
                                                        关键字：<asp:TextBox ID="toLog_info" runat="server" Columns="20" MaxLength="10" Width="100px"></asp:TextBox>
                                                    
                                                        <asp:Button ID="bt_Dobbs" Width="60" Text='查 询' runat="server" OnClick="bt_Dobbs_Click" CssClass="bt">
                                                        </asp:Button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="4">
                                                       
                                                        <input id="Button4" name="" type="button" value=" 删 除 " onclick="DoDel()" class="bt" />
                                                        &nbsp;
                                                        <input id="Button2" name="" type="button" value="删除查询结果" onclick="DoDelAll()" class="bt" />
                                                        &nbsp;
                                                        <font color=red>配制文件Web.config中参数：KL_CLOSE_LOG_INFO 表示是否关闭会员活动日志信息(wap_log表)，会生成大量记录，1为关闭，空或0为写入</font>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="id" AllowSorting="True"
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
                                                            <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                onclick="checkAll('chkAll',this);" />
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="序号" ItemStyle-Width="30px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="类别" SortExpression="oper_type" ItemStyle-Width="80px"
                                                        HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#this.GetTypeName(DataBinder.Eval(Container.DataItem, "oper_type").ToString())%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="网站ID" SortExpression="siteid" ItemStyle-Width="50px"
                                                        HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "siteid")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="操作人ID" SortExpression="oper_userid" ItemStyle-Width="60px"
                                                        HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#(DataBinder.Eval(Container.DataItem, "oper_userid").ToString())%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                   
                                                    <asp:TemplateColumn HeaderText="昵称" SortExpression="oper_nickname" ItemStyle-Width="60px"
                                                        HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "oper_nickname")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                   
                                                    <asp:TemplateColumn HeaderText="内容" SortExpression="" ItemStyle-Width="200px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "log_info")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                     <asp:TemplateColumn HeaderText="操作IP" SortExpression="oper_ip" ItemStyle-Width="50px"
                                                        HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "oper_ip")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="时间" SortExpression="oper_time" ItemStyle-Width="120px"
                                                        HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "oper_time")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                HorizontalAlign="Left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                            </webdiyer:AspNetPager>
                                            转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                            每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                            <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt" />
                                            <br />
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
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
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
    </form>
</body>
</html>
