<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemindex.aspx.cs" Inherits="KeLin.WebSite.download.systemindex" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>下载资源</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="/NetCSS/tree.js" type="text/javascript"></script>
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="/NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />

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
                document.getElementById("form1").submit();
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
            //document.getElementById("CommandType").value = "Edit";
            //document.getElementById("form1").submit();
            goMod(edtHangBiaoShis);

        }
        function goMod(id) {

            window.location = 'admin_wapmodify_sys.aspx?id=' + id;
        }
        function DoTranfer() {
            var tranHangBiaoShis = GetOnChecked();
            if (tranHangBiaoShis == null || tranHangBiaoShis == "") {
                alert("请选择要转移项！")
                return;
            }         
            if (document.getElementById("DropDownList2").value == "")          
            {
                alert("请选择分类！")
                return;
            }                
                document.getElementById("hidHangBiaoShis").value = tranHangBiaoShis;
                document.getElementById("CommandType").value = "tranfer";
                document.getElementById("form1").submit();           
        }
        function DoMyItem() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择要转移项！")
                return;
            }  
            if (document.getElementById("DropDownList1").value == "")          
            {
                alert("请选择要导入的栏目！")
                return;
            }
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "myitem";
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
                                                系统资源 &gt;&gt; 下载资源  
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
                    <td valign="top" align="center" style="width: 100%;">
                        <table cellspacing="0" width="100%" class="TABLE6">
                            <tbody>
                                <tr>
                                    <td valign="top" align="left">
                                        <div class="txt4">
                                                <table id="Table1" width="100%">
                                                    <tr>
                                                        <td style="word-wrap: break-word; width: 180px; height: 520px;" valign="top" align="left">
                                                         <!--div id="Div1" style="z-index: 1; left: 3px; visibility: inherit; overflow: auto;
                                                                width: 180px; position: absolute; top: 31px; height: 520px"-->
                                                                         <!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                请选择 <a href="systemmodel.aspx">分类管理</a>
                                                                                </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">

                                                                                <script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'<a href="systemindex.aspx?classid=">资源分类</a>','');
  	                                      
  <%=strJavascript %>                                     

document.write(d);
                                                                                </script>

                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                            </td>
                                                            <td colspan="4" valign="top" align="left">
                                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                    height="100%" width="100%">
                                                                    <tr>
                                                                        <td class="column" align="left">
                                                                            操&nbsp;&nbsp;作
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="fh" align="left">
                                                                            <asp:Button ID="bt_New" runat="server" Text=" 新 增 " OnClick="bt_New_Click" CssClass="bt"/>&nbsp;
                                                                            <input name="" type="button" value=" 修 改 " onclick="DoEdit()" id="Button1" runat="server" Class="bt"/>&nbsp;
                                                                            <input name="" type="button" value=" 删 除 " onclick="DoDelete()" id="Button2" runat="server" Class="bt"/>&nbsp;&nbsp;
                                                                            <asp:TextBox runat="server" ID="txtKeyword" Width="150px"></asp:TextBox>&nbsp;
                                                                            <asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click" CssClass="bt">
                                                                            </asp:Button>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="fh" align="left">
                                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                            </asp:DropDownList>
                                                                            <input name="" type="button" value="导入我的栏目" onclick="DoMyItem()" id="Button5" runat="server" Class="bt"/>
                                                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                                            </asp:DropDownList>
                                                                            <input name="" type="button" value="转移资源分类" onclick="DoTranfer()" id="Button3" runat="server" Class="bt" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
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
                                                                                    <asp:TemplateColumn HeaderText="序号" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="标题" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <a href="javascript:goMod(<%#DataBinder.Eval(Container.DataItem,"id") %>);"
                                                                                                target="_self" title="查看及回复">
                                                                                                <%#DataBinder.Eval(Container.DataItem, "book_title")%>
                                                                                            </a>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="总大小" SortExpression="book_size" ItemStyle-Width="80px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "book_size")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                     <asp:TemplateColumn HeaderText="格式" SortExpression="book_ext" ItemStyle-Width="80px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "book_ext")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="上传者" SortExpression="username" ItemStyle-Width="80px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "username")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="添加时间" SortExpression="book_date" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "book_date")%>
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
                                                                            <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
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
                <tr>
                    <td>
                        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
                        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
                    </td>
                </tr>
                <tr align="center">
                    <td style="height: 14px">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
