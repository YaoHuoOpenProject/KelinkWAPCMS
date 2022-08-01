<%@ Page Language="C#" AutoEventWireup="true" Codebehind="systemindex.aspx.cs" Inherits="KeLin.WebSite.admin.systemindex" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>功能模块资源</title>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
		<!--       
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
            document.getElementById("CommandType").value = "Edit";
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


function gourl(strurl){
    window.location= strurl ;
	
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
                                                系统资源 &gt;&gt; 插件功能模块 
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="13">
                                    <img src="/NetImages/main_title_03.gif" width="13" height="24" /></td>
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
                                            <td style="word-wrap: break-word; width: 180px" valign="top" align="left">
<!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                请选择  <%if( this.ManagerLvl=="00"){ %><a href="systemmodel.aspx">分类管理</a><%} %>
                                                                              </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">

                                                                                <script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'<a href="systemindex.aspx?typeid=">所有插件功能模块</a>');
  	                                      
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
                                                <table id="Table2" cellspacing="0" cellpadding="0" border="0" height="100%" width="100%">
                                                    <tr>
                                                        <td>
                                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                height="100%" width="100%">
                                                                <tr>
                                                                    <td class="fh" align="left">
                                                                    <%if( this.ManagerLvl=="00"){ %>
                                                                        <input name="" type="button" value=" 新 增 " onclick="window.location='addFunction.aspx?modelid=<% =typeid%>';" class="bt" />&nbsp;
                                                                        <input name="" type="button"   value=" 修 改 " onclick="DoEdit()" id="Button1" class="bt"/>&nbsp;
                                                                        <input name="" type="button"   value=" 删 除 " onclick="DoDelete()" id="Button2" class="bt"/>
                                                                        <%} %>
                                                                        分类ID：
                                                                        <asp:TextBox ID="tb_typeid" runat="server" Width="55px"></asp:TextBox>
                                                                        模块名称：<asp:TextBox runat="server" ID="txtKeyword" Width="184px"></asp:TextBox>
                                                                        <asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click" CssClass="bt">
                                                                        </asp:Button>
                                                                        &nbsp;&nbsp;
                                                                        <%if( this.ManagerLvl=="00"){ %><input type="button" onclick="javascript:window.location.href='admin_UserManage.aspx'" class="bt" value="分配模块到子站(不分配默认所有)" /><%} %>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="typeid" AllowSorting="True"
                                                                AutoGenerateColumns="False" Width="100%" PageSize="25" ShowFooter="True" OnSortCommand="DataGrid1_SortCommand">
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
                                                                            <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "typeid") %>'
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
                                                                      <asp:TemplateColumn HeaderText="我可用" SortExpression="typeid" ItemStyle-Width="40px" 
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                           
                                                                                <%#this.GetShowMySystype(DataBinder.Eval(Container.DataItem, "typeid").ToString())%>
                                                                           
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="模块ID" SortExpression="typeid" ItemStyle-Width="50px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <%#DataBinder.Eval(Container.DataItem, "typeid")%>
                                                                          
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="模块名称" SortExpression="typename" ItemStyle-Width="130px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <a href="AddFunction.aspx?modelid=<%=typeid %>&typeid=<%#DataBinder.Eval(Container.DataItem,"typeid") %>"
                                                                                target="_self" title="快速修改">
                                                                             <%#DataBinder.Eval(Container.DataItem, "typename")%>
                                                                            </a>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="路径" SortExpression="typepath" ItemStyle-Width="190px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <%#DataBinder.Eval(Container.DataItem, "typepath")%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="功能说明" SortExpression="remark" ItemStyle-Width="220px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <%#DataBinder.Eval(Container.DataItem, "remark")%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="排序号" SortExpression="rank" ItemStyle-Width="50px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <%#DataBinder.Eval(Container.DataItem, "rank")%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="创建人" SortExpression="username" ItemStyle-Width="50px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <%#DataBinder.Eval(Container.DataItem, "username")%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="创建时间" SortExpression="createdate" ItemStyle-Width="125px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <%#DataBinder.Eval(Container.DataItem, "createdate")%>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                </Columns>
                                                            </asp:DataGrid>
                                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                                ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                                HorizontalAlign="Left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true"
                                                                PageButtonCount="5">
                                                            </webdiyer:AspNetPager>
                                                            转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                            每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                            <asp:Button ID="bt_go" runat="server" Text= " Go " OnClick="bt_go_Click" CssClass="bt" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                </tr>
            </tbody>
        </table>
        </font> </div> 
                    </td> 
               </tr>
        <tr>
            <td colspan="5">
                <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
                <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
            </td>
        </tr>
        <tr>
            <td align="center">
                页面执行时间：<%=loadpagetime %>&nbsp;毫秒！</td>
        </tr>
        </tbody> </table>
    </form>
</body>
</html>
