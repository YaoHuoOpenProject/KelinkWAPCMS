<%@ Page Language="C#" AutoEventWireup="true" Codebehind="searchList.aspx.cs" Inherits="KeLin.WebSite.link.searchList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>返链查询</title>
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
            //alert(toclassid);
            //window.location.href="addUser.aspx?bookid="+edtHangBiaoShis;
            window.open('/link/admin_WAPmodify.aspx?action=go&id=' + edtHangBiaoShis + '&siteid=<%=base.SiteId %>&classid=' + toclassid + '&page=1&sid=<%=base.SID %>');        
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
            window.location.href="../admin/modifyAD.aspx?systype=link";
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
        function DoReBack() {
            window.location.href="guestlist.aspx?classid="+document.getElementById("TextBox4").value;        
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=link&classid="+document.getElementById("TextBox4").value;  
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
                                                返链统计查询
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
                                                           操作
                                                                <!--
                                                                <a style="cursor: hand" onclick="DoSmall()">
                                                                    小类管理</a> -->
                                                                    &nbsp;&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            
                                                                ID：<asp:TextBox ID="TextBox1" runat="server"  
                                                                Width="350px"></asp:TextBox>
                                                           
                                                            <asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                            </asp:Button>
                                                            
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            
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
                                                       
                                                      
                                                         <asp:TemplateColumn HeaderText="ID" HeaderStyle-CssClass="column" ItemStyle-Width="40px">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem,"id") %>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                       
                                                        <asp:TemplateColumn HeaderText="提交者" SortExpression="book_author"  ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_author")%>
                                                                <br /><br />
                                                                  <%#DataBinder.Eval(Container.DataItem, "book_date")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="网站地址" SortExpression="book_pub"  ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        
                                                        <ItemTemplate>
                                                         网站标题：<br />
                                                        <input type="text" value="<%#DataBinder.Eval(Container.DataItem, "book_title")%>" style="width:200px"/>
                                                       
                                                           对方网站地址：<br />
                                                            <input type="text" value="<%#DataBinder.Eval(Container.DataItem, "book_pub")%>" style="width:200px"/>
                                                       
                                                        给对方地址：<br />
                                                            <input type="text" value="http://<%=base.GetMyDomain() %>/link/gourl.aspx?id=<%=this.SiteId %>_<%#DataBinder.Eval(Container.DataItem, "id")%>" style="width:200px"/>
                                                      
                                                    
                                                     </ItemTemplate>
                                                    </asp:TemplateColumn> 
                                                       
                                                       
                                                        <asp:TemplateColumn HeaderText="返回点击" SortExpression="book_re"  HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                            总量PV：<%#DataBinder.Eval(Container.DataItem, "book_re")%><br />
                                                            今日PV:<%#DataBinder.Eval(Container.DataItem, "PV")%><br />
                                                            今日UV:<%#DataBinder.Eval(Container.DataItem, "UV")%><br />
                                                            今日VV:<%#DataBinder.Eval(Container.DataItem, "VV")%><br />
                                                            今日IP:<%#DataBinder.Eval(Container.DataItem, "IP")%><br />
                                                            <!--     【<a href="#" onclick ="javascript:window.open('/visiteCount/everydatelist.aspx?fromdate=<%=string.Format("{0:yyyy-MM-dd}",DateTime.Now)%>&types=<%#DataBinder.Eval(Container.DataItem, "id")%>');">查看返回统计明细<a />】<br />-->
                                                        
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                     
                                                        
                                                         <asp:TemplateColumn HeaderText="查看明细" HeaderStyle-CssClass="column" ItemStyle-Width="120px">
                                                            <ItemTemplate>
                                                               【<a href="#" onclick ="javascript:window.open('/visiteCount/everydatelistOpen.aspx?tositeid=<%#DataBinder.Eval(Container.DataItem, "userid")%>&types=<%#DataBinder.Eval(Container.DataItem, "id")%>');">查看返回统计明细<a />】
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
