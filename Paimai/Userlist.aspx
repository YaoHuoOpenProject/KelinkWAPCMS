<%@ Page Language="C#" AutoEventWireup="true" Codebehind="userlist.aspx.cs" Inherits="KeLin.WebSite.paimai.userlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>拍卖内容</title>
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
            //window.location.href="addUser.aspx?bookid="+edtHangBiaoShis;
            window.open('/paimai/admin_WAPmodify.aspx?action=go&id=' + edtHangBiaoShis + '&siteid=<%=base.SiteId %>&classid=' + toclassid + '&page=1&sid=<%=base.SID %>');        
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
            window.location.href="../admin/modifyAD.aspx?systype=paimai";
        }
        function DoTop() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择要顶置项！")
                return;
            }
            if (window.confirm("请确认真的需要顶置，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Top";
                document.getElementById("form1").submit();
            }
        }
        function DoCancelTop() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择取消顶置项！")
                return;
            }
            if (window.confirm("请确认取消顶置，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "CancelTop";
                document.getElementById("form1").submit();
            }
        }
        function DoGood() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择要加精项！")
                return;
            }
            if (window.confirm("请确认加精，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Good";
                document.getElementById("form1").submit();
            }
        }
        function DoCancelGood() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择取消精华项！")
                return;
            }
            if (window.confirm("请确认取消精华，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "CancelGood";
                document.getElementById("form1").submit();
            }
        }
        function DoContent() {
            window.location.href="userlist.aspx?classid="+document.getElementById("TextBox4").value;
        }
        function DoOrder() {
            window.location.href = "orderlist.aspx?classid=" + document.getElementById("TextBox4").value;
        }
        function DoReBack() {
            window.location.href="guestlist.aspx?classid="+document.getElementById("TextBox4").value;        
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=paimai&classid="+document.getElementById("TextBox4").value;  
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
window.open ("upload_bath.aspx?systype=article&classid=<%=classid%>", "addsystemwindow", "height=450, width=550, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
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
                                                网站管理 &gt;&gt; 内容管理 &gt;&gt;拍卖内容
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
                    <td valign="top" align="left" style="width: 100%;">
                        <div class="txt4">
                            <font face="宋体">
                                <table id="Table1" width="100%" class="TABLE6">
                                    <tbody>
                                        <tr>
                                            <td colspan="4">
                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                    height="100%" width="100%">
                                                    <tr>
                                                        <td class="column" colspan="4">
                                                            <a style="cursor: hand" onclick="DoContent()">内容管理</a>&nbsp;&nbsp;&nbsp; <a style="cursor: hand"
                                                                onclick="DoReBack()">回复管理</a>&nbsp;&nbsp; <a style="cursor: hand" onclick="DoOrder()">投标记录管理</a>&nbsp;&nbsp;&nbsp;
                                                                <!--
                                                                <a style="cursor: hand" onclick="DoSmall()">
                                                                    小类管理</a> -->
                                                                    &nbsp;&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            审核状态：
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value=" ">未选</asp:ListItem>
                                                                <asp:ListItem Value="0">审核</asp:ListItem>
                                                                <asp:ListItem Value="1">未审核</asp:ListItem>
                                                            </asp:DropDownList>栏目ID：<asp:TextBox ID="TextBox4" runat="server" Columns="20" MaxLength="8"
                                                                Width="64px"></asp:TextBox>
                                                            标题/内容关键字：<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="100px"></asp:TextBox>
                                                            <asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                            </asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                        <input id="Button8" name="" type="button" value=" 审 核 " onclick="DoCheck()" class="bt"/>                                                       
                                                            <input id="Button12" name="" type="button" value="取消审核" onclick="DoUnCheck()" class="bt"/> 
                                                            <input id="Button5" name="" type="button" value="插放广告" onclick="DoAd()" Class="bt"/>
                                                       
                                                            <input id="Button11" name="" type="button" value="新 增" onclick="window.open('/paimai/admin_WAPadd.aspx?action=class&siteid=<%=base.SiteId %>&classid=<%=this.classid %>&page=&sid=<%=base.SID %>');" Class="bt" />
                                                            <input id="Button6" name="" type="button" value="修 改" onclick="DoEdit()" Class="bt"/>
                                                            <input id="Button4" name="" type="button" value="删 除" onclick="DoDel()" Class="bt"/>
                                                            <input id="Button2" name="" type="button" value="顶置" onclick="DoTop()" Class="bt"/>
                                                            <input id="Button1" name="" type="button" value="取消顶置" onclick="DoCancelTop()" Class="bt"/>
                                                            <input id="Button3" name="" type="button" value="加精" onclick="DoGood()" Class="bt"/>
                                                            <input id="Button10" name="" type="button" value="取消精华" onclick="DoCancelGood()" Class="bt"/>
                                                            
                                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                            </asp:DropDownList>
                                                            <input name="" type="button" value="转移我的栏目" onclick="DoMyItem()" id="Button9" Class="bt"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" valign="top" align="left">
                                                <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="id" AllowSorting="True"
                                                    AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" ShowFooter="True"
                                                    OnSortCommand="DataGrid1_SortCommand" Width="100%">
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
                                                        <asp:TemplateColumn HeaderText="状态" SortExpression="ischeck" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="column"
                                                            ItemStyle-Width="40px">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif" alt="审核状态" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="栏目ID" SortExpression="book_classid" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <input type ="hidden" id="classidtemp" name ="classidtemp" value ="<%#DataBinder.Eval(Container.DataItem,"book_classid") %>" /><a href="userlist.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>"
                                                                    target="_self" title="快速进入此栏目">
                                                                    <%#DataBinder.Eval(Container.DataItem, "book_classid")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                         <asp:TemplateColumn HeaderText="WAP" HeaderStyle-CssClass="column" ItemStyle-Width="40px">
                                                            <ItemTemplate>
                                                                <a href="book_view.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"userid") %>&classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>&id=<%#DataBinder.Eval(Container.DataItem,"id") %>&sid=-2-0-0-0-480"
                                                                    target="_blank" title="查看文章及回复">
                                                                    查看
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="标题"  HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <a href="viewUser.aspx?bookid=<%#DataBinder.Eval(Container.DataItem,"id") %>"
                                                                    target="_self" title="查看">
                                                                    <%#DataBinder.Eval(Container.DataItem, "book_title")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="回复" SortExpression="book_re" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_re")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="点击" SortExpression="book_click" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_click")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="精华" SortExpression="book_good" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="column"
                                                            ItemStyle-Width="30px">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/f<%#DataBinder.Eval(Container.DataItem, "book_good")%>.gif"
                                                                    alt="精华状态" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="顶置" SortExpression="book_top" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="column"
                                                            ItemStyle-Width="30px">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/f<%#DataBinder.Eval(Container.DataItem, "book_top")%>.gif"
                                                                    alt="顶置状态" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                                                                             
                                                        
                                                        <asp:TemplateColumn HeaderText="添加时间" SortExpression="book_date" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
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
                                                <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" cssClass="bt"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </font>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
                        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
