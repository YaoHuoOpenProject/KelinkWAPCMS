<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="KeLin.WebSite.admin.List" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>栏目管理</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">		        
        function DoDelete() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "del";
                document.getElementById("Form1").submit();
            }
        }
        function DoEdit() {
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
            document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            document.getElementById("CommandType").value = "Edit";
            document.getElementById("Form1").submit();
            
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

    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
            <tr>
                            <td colspan="4">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="1%">
                                            <img src="../Images/main_title_01.gif" width="12" height="24"></td>
                                        <td width="98%" background="../Images/main_title_02.gif">
                                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="2%">
                                                        <div align="center">
                                                            <img src="../Images/i08.gif" width="16" height="16"></div>
                                                    </td>
                                                    <td width="98%" height="24" valign="middle">
                                                        网站管理 &gt;&gt; 栏目列表 &gt;&gt;
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="1%">
                                            <img src="../Images/main_title_03.gif" width="13" height="24"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                <tr>
                    <td valign="top" align="center" style="width: 100%;">
                        <table cellspacing="7" width="100%" class="TABLE6">
                            <tbody>
                                <tr>
                                    <td valign="top" align="left">
                                        
                                        <div class="txt4">
                                            <font face="宋体">
                                                <table id="Table1" width="100%" style="font-size: 9pt">
                                                    <tbody>
                                                        <tr>
                                                            <td colspan="5">
                                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                    height="100%">
                                                                    <tr>
                                                                        <td class="column" style="width: 270px" align="center">
                                                                            操&nbsp;&nbsp;作</td>
                                                                        <td class="column" colspan="2" align="center">
                                                                            查询条件</td>
                                                                        <td class="column" nowrap style="width: 82px" align="right" valign="center">
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="fh" style="width: 270px" align="center">
                                                                            <asp:Button ID="bt_New" runat="server" Text=" 新 增 " OnClick="bt_New_Click" />
                                                                            &nbsp;&nbsp;
                                                                            <input name="" type="button" value=" 修 改 " onclick="DoEdit()" id="Button1" />&nbsp;&nbsp;&nbsp;
                                                                            <input name="" type="button" value=" 删 除 " onclick="DoDelete()" id="Button2" /></td>
                                                                        <td class="fh" colspan="2">
                                                                            栏目ID：<asp:TextBox ID="tb_itemid" runat="server" Width="53px"></asp:TextBox>
                                                                            栏目名称或模板名称：
                                                                            <asp:TextBox runat="server" ID="txtKeyword" Width="154px"></asp:TextBox>&nbsp;</td>
                                                                        <td class="fh" style="width: 117px">
                                                                            <asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click">
                                                                            </asp:Button>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top" align="left">
                                                                <!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="adminSeparator">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                <a href="classtree.aspx?classid=&childid=" target="_self">所有栏目信息</a></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                            </td>
                                                            <td colspan="4" valign="top" align="left">
                                                                <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="classid" AllowSorting="True"
                                                                    AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" Width="700px" ShowFooter="True"
                                                                    OnSortCommand="DataGrid1_SortCommand">
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
                                                                                <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "classid") %>'
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
                                                                        <asp:TemplateColumn HeaderText="栏目ID" SortExpression="classid" ItemStyle-Width="50px" HeaderStyle-CssClass="column"> 
                                                                            <ItemTemplate>
                                                                                <a href="ClassTree.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"classid") %>"
                                                                                    target="_self" title="快速进入此栏目">
                                                                                    <%#DataBinder.Eval(Container.DataItem, "classid")%>
                                                                                </a>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="栏目名称" SortExpression="classname" ItemStyle-Width="140px" HeaderStyle-CssClass="column">
                                                                            <ItemTemplate>
                                                                                <a href='classmodify.aspx?classid=<%# DataBinder.Eval(Container.DataItem, "classid") %>'
                                                                                    target="_self">
                                                                                    <%#DataBinder.Eval(Container.DataItem, "classname")%>
                                                                                </a>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="指向模板" SortExpression="typename" ItemStyle-Width="250px" HeaderStyle-CssClass="column">
                                                                            <ItemTemplate>
                                                                                <%#DataBinder.Eval(Container.DataItem, "typename")%>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="模板" SortExpression="ismodel" ItemStyle-HorizontalAlign="Center"
                                                                            ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                                            <ItemTemplate>
                                                                                <img src="images/<%# DataBinder.Eval(Container.DataItem, "ismodel")%>.gif" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="点击" SortExpression="hits" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                                            <ItemTemplate>
                                                                                <%#DataBinder.Eval(Container.DataItem, "hits")%>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                        <asp:TemplateColumn HeaderText="添加时间" SortExpression="creatdate" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                                            <ItemTemplate>
                                                                                <%#DataBinder.Eval(Container.DataItem, "creatdate")%>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateColumn>
                                                                    </Columns>
                                                                </asp:DataGrid>
                                                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30" UrlPaging="true"
                                                                    ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                                    HorizontalAlign="Left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                                                </webdiyer:AspNetPager>
                                                                转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                                每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                                <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="5">
                                                                <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
                                                                <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
                                                            </td>
                                                        </tr>
                                                        <tr align="center">
                                                            <td colspan="5" style="height: 14px">
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </font>
                                        </div>
                                        
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr style="font-size: 9pt">
                    <td align="center">
                        
                    </td>
                </tr>
                <tr style="font-size: 9pt">
                    <td align="center">
                        页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
