<%@ Page Language="C#" AutoEventWireup="true" Codebehind="userlist.aspx.cs" Inherits="KeLin.WebSite.WML.userlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WML代码资源</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
		<!--       
        function DoEdit() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要修改的记录！")
                return;
            }
            if (SelectNo > 1) {
                alert("修改数据时不能多选！")
                return;
            }

            var edtHangBiaoShis = GetOnChecked();
            var toclassid = document.getElementsByName('toclassid').value;
            //document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            //window.location.href = "addUser.aspx?bookid=" + edtHangBiaoShis;
            window.open('/WML/admin_WAPmodify.aspx?action=go&id=' + edtHangBiaoShis + '&siteid=<%=base.SiteId %>&classid=' + toclassid + '&page=1&sid=<%=base.SID %>');
            //document.getElementById("CommandType").value = "Eidt";
            //document.getElementById("form1").submit();
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
        function DoNew() {
            window.location.href="addUser.aspx?classid="+document.getElementById("TextBox4").value;
        }
        function DoAd() {
        /*
        var edtHangBiaoShis=document.getElementById("TextBox4").value;
        if (edtHangBiaoShis == "")
        {
        var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要插放广告的栏目！")
                return;
            }
            if (SelectNo > 1) {
                alert("插放广告的栏目不能多选！")
                return;
            }
            edtHangBiaoShis = GetOnChecked();
         }
         **/
            window.location.href = "/admin/modifyAD.aspx?systype=WML";
        }
        function DoContent() {
            window.location.href="userlist.aspx?classid="+document.getElementById("TextBox4").value;
            }
        function DoReBack() {
            window.location.href="guestlist.aspx?classid="+document.getElementById("TextBox4").value;        
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=WML&classid="+document.getElementById("TextBox4").value;  
        }
        function DoMyItem() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择要转移项！")
                return;
            }  
            if (document.getElementById("DropDownList2").value == "")          
            {
                alert("请选择要转移到的栏目！")
                return;
            }
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "myitem";
                document.getElementById("form1").submit();           
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
            var classidtemp = document.getElementsByName('classidtemp');
            var toclassid = document.getElementsByName('toclassid');
            var n = a.length;
            //alert(n);			
            for (var i = 0; i < n; i++) {
                if (a[i].checked) {
                    varHangBiaoShi = varHangBiaoShi + sChar + a[i].value;
                    toclassid.value = classidtemp[i].value;
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

function bathdaoru() { 
var ItemID = document.getElementById("TextBox4").value;
window.location.href="upload_bath.aspx?systype=WML&classid="+ItemID;
//window.open ("upload_bath.aspx?systype=WML&classid=<%=classid%>", "addsystemwindow", "height=450, width=550, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
}
function daoru() { 
window.open ("systemindex.aspx?site=<%=base.SiteId%>&classid=<%=classid%>", "daoruwindow", "height=520, width=720, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="toclassid" name="toclassid" value="" />
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
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
                                                网站管理 &gt;&gt; WML代码内容
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
                    <td valign="top" align="left" style="width: 100%;" class="TABLE6">
                        <div class="txt4">
                            
                                <table id="Table1" width="100%">
                                    <tbody>
                                        <tr>
                                            <td colspan="4">
                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                    height="100%" width="100%">
                                                    <tr>
                                                        <td class="column" colspan="4" align="left">
                                                           操作
                                                            <!--
                                                            <a style="cursor: hand"
                                                                onclick="DoSmall()">小类管理</a>&nbsp;&nbsp;
                                                                -->
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            审核状态：
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value="">未选</asp:ListItem>
                                                                <asp:ListItem Value="0">审核</asp:ListItem>
                                                                <asp:ListItem Value="1">未审核</asp:ListItem>
                                                            </asp:DropDownList>栏目ID：<asp:TextBox ID="TextBox4" runat="server" Columns="20" MaxLength="8"
                                                                Width="64px"></asp:TextBox>
                                                            标题/内容关键字：<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="156px"></asp:TextBox>
                                                            <asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                            </asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                        <input id="Button8" name="" type="button" value=" 审 核 " onclick="DoCheck()" class="bt"/>                                                       
                                                            <input id="Button12" name="" type="button" value="取消审核" onclick="DoUnCheck()" class="bt"/> 
                                                            <input id="Button5" name="" type="button" value="插放广告" onclick="DoAd()"class="bt" />
                                                            &nbsp;<!--
                                                            <input id="Button2" name="" type="button" value="一对一批量上传" onclick="window.open('/WML/admin_WAPadd2.aspx?num=2&action=go&classid=<%=this.classid %>&siteid=<%=base.SiteId %>&page=1&sid=<%=base.SID %>');" class="bt"/>
                                                            &nbsp;-->
                                                            <input id="Button11" name="" type="button" value="新增" onclick="window.open('/WML/admin_WAPadd.aspx?num=1&action=go&classid=<%=this.classid %>&siteid=<%=base.SiteId %>&page=1&sid=<%=base.SID %>');" Class="bt" />
                                                            &nbsp;
                                                           <!-- <input id="Button7" name="" type="button" value="新 增" onclick="DoNew()" class="bt"/>
                                                            &nbsp;-->
                                                            <input id="Button6" name="" type="button" value="修 改" onclick="DoEdit()"class="bt" />
                                                            &nbsp;
                                                            <input id="Button4" name="" type="button" value="删 除" onclick="DoDel()" class="bt"/>
                                                            &nbsp;
                                                            
                                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                            </asp:DropDownList>
                                                            <input name="" type="button" value="转移我的栏目" onclick="DoMyItem()" id="Button9" class="bt"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" align="left">
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
                                                        <asp:TemplateColumn HeaderText="序号" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="状态" SortExpression="ischeck" ItemStyle-HorizontalAlign="Center"
                                                            ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif" alt="审核状态" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="栏目ID" SortExpression="book_classid" ItemStyle-Width="50px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <input type ="hidden" id="classidtemp" name ="classidtemp" value ="<%#DataBinder.Eval(Container.DataItem,"book_classid") %>" /><a href="userlist.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>"
                                                                    target="_self" title="快速进入此栏目">
                                                                    <%#DataBinder.Eval(Container.DataItem, "book_classid")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="栏目名称" SortExpression="classname" ItemStyle-Width="80px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "classname")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="WAP" HeaderStyle-CssClass="column" ItemStyle-Width="40px">
                                                            <ItemTemplate>
                                                                <a href="book_view.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"userid") %>&classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>&id=<%#DataBinder.Eval(Container.DataItem,"id") %>&sid=-0-0-0-0-400"
                                                                    target="_blank" title="查看WML代码及回复">
                                                                    查看
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="UBB调用" SortExpression="id" HeaderStyle-CssClass="column" ItemStyle-Width="60px">
                                                            <ItemTemplate>
                                                                [getwml=<%#DataBinder.Eval(Container.DataItem, "id")%>]
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                         <asp:TemplateColumn HeaderText="标题" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <a href="viewUser.aspx?bookid=<%#DataBinder.Eval(Container.DataItem,"id") %>"
                                                                    target="_self" title="查看WML代码及回复">
                                                                    <%#DataBinder.Eval(Container.DataItem, "book_title")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="回复" SortExpression="book_re" ItemStyle-Width="40px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_re")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="点击" SortExpression="book_click" ItemStyle-Width="40px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_click")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="添加时间" SortExpression="book_date" ItemStyle-Width="120px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_date")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                    </Columns>
                                                </asp:DataGrid>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                    ShowPageIndexBox="Always" PageIndexBoxType="TextBox" TextBeforePageIndexBox="Go To Page: "
                                                    HorizontalAlign="left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true"
                                                    PageButtonCount="5" ShowBoxThreshold="5" ShowInputBox="Never">
                                                </webdiyer:AspNetPager>
                                                转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
                        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                    <font color="red"><strong>如某ID内容在页面综合排版中影响到排版，请将此ID先取消审核。</strong></font>
                    <br /><br />
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
