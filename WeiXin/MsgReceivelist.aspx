<%@ Page Language="C#" AutoEventWireup="true" Codebehind="MsgReceivelist.aspx.cs" Inherits="KeLin.WebSite.WeiXin.MsgReceivelist" %><%@ Import namespace="KeLin.ClassManager.Tool" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>收到消息管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
		<!--
        function DaoRu(ii) {

            window.open("replay.aspx?id=" + ii, "drwindow", "height=400, width=480, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");

        }
        function openViewCach() {
            window.open("/admin/applicationadmin.aspx?action=remove&siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "viewSite2", "height=400, width=520, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=yes, status=yes")
        }   
        function DoEdit(types) {
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
            
            if (types == 1) {
                window.location.href = "addUser.aspx?bookid=" + edtHangBiaoShis;

            } else {
            
            window.open('/article/admin_WAPmodify.aspx?action=go&id=' + edtHangBiaoShis + '&classid=' + toclassid + '&siteid=<%=base.SiteId %>&page=1&sid=<%=base.SID %>');
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
                document.getElementById("form1").submit();
            }
        }
        function DoNew(a) {
            if (a == 0) {

                window.location.href = "addModTXT.aspx";

            } else if (a == 1) {
            
               window.location.href = "addModPIC.aspx";
       
            }
        }
        function Edit(id, a) {

            if (a == 0) {

                window.location.href = "addModTXT.aspx?id="+ id;

            } else if (a == 1) {

                window.location.href = "addModPIC.aspx?id=" + id;

            }

        }
        function DoAd() {
        
            window.location.href = "/admin/modifyAD.aspx?systype=article";
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
                alert("请选择需要设为默认消息的记录！")
                return;
            }
            if (SelectNo > 1) {
                alert("默认消息只能选择一条！")
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
            //var classidtemp = document.getElementsByName('classidtemp');
            //var toclassid = document.getElementsByName('toclassid');
            var n = a.length;
            //alert(n);			
            for (var i = 0; i < n; i++) {
                if (a[i].checked) {
                    varHangBiaoShi = varHangBiaoShi + sChar + a[i].value;
                    //toclassid.value = classidtemp[i].value;
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
                                <td width="1%">
                                    <img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
                                <td width="98%" background="/NetImages/main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="/NetImages/i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                收到消息管理
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
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
                                                            &nbsp;&nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            消息类别：
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value="">所有</asp:ListItem>
                                                                <asp:ListItem Value="0">文本消息</asp:ListItem>
                                                                <asp:ListItem Value="1">图文消息</asp:ListItem>                                                                
                                                            </asp:DropDownList>
                                                         
                                                            
                                                         微信ID：<asp:TextBox ID="toweixinID" runat="server" Columns="20"   Width="120px"></asp:TextBox>
                                                            关键字：<asp:TextBox ID="keyword" runat="server" Columns="20"  Width="120px"></asp:TextBox>
                                                            <asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                            </asp:Button>
                                                            
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <input id="Button4" name="" type="button" value="批量删除" onclick="DoDel()" class="bt"/>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <font color="red">提示：服务号+付费认证 才能取用户信息，否则只能取到微信ID。</font>
                                                           
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
                                                        <asp:TemplateColumn HeaderText="ID" SortExpression="id" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                               <!-- <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>-->
                                                               <%#DataBinder.Eval(Container.DataItem, "id")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="消息类型" SortExpression="msgtype" ItemStyle-HorizontalAlign="Center"
                                                            ItemStyle-Width="90px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                
                                                                <img src="images/txt<%#DataBinder.Eval(Container.DataItem, "msgType")%>.gif" alt="消息类别" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="发信人"  ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                            <img src ="<%#GetHeadImg(DataBinder.Eval(Container.DataItem, "headimg").ToString())%>" width ="100" height="100" alt="头像" />
                                                               <br /><%#DataBinder.Eval(Container.DataItem, "weixinID")%> 
                                                               <br /><%#DataBinder.Eval(Container.DataItem, "nickname")%>&nbsp;
                                                               <br /><%#DataBinder.Eval(Container.DataItem, "city")%>&nbsp;
                                                                                                                                   
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="消息内容"   ItemStyle-Width="320px" ItemStyle-HorizontalAlign="Center"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "content")%>
                                                                                                                           
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                       
                                                       
                                                         <asp:TemplateColumn HeaderText="收到时间"  SortExpression="addtime" HeaderStyle-CssClass="column" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="left">
                                                            <ItemTemplate>                                                                
                                                                    <%#DataBinder.Eval(Container.DataItem, "addtime")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="我回复内容"  SortExpression="addtime" HeaderStyle-CssClass="column" ItemStyle-Width="250px" ItemStyle-HorizontalAlign="left">
                                                            <ItemTemplate>                                                                
                                                                    <%#DataBinder.Eval(Container.DataItem, "replay")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="操作"  ItemStyle-Width="180px"  ItemStyle-HorizontalAlign="left"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                
                                                               【<a href="javascript:DaoRu(<%#DataBinder.Eval(Container.DataItem, "id")%>)">快捷回复</a>】
                                                                
                                                                
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
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
