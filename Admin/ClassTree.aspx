<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ClassTree.aspx.cs" Inherits="KeLin.WebSite.admin.ClassTree" %>
<% Session["reflashJump"]="class"; %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>栏目管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/classtree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />

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
            window.location = 'modifyClass.aspx?backurl=ClassTree.aspx%3Fclassid=<% =childid%>&classid=' + edtHangBiaoShis;
            //document.getElementById("CommandType").value = "Edit";
            //document.getElementById("form1").submit();  
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

function gourl(strurl,classid,siteid){
    window.location.href = "ClassTree.aspx?ua=ie&classid=" + classid + "&siteid=" + siteid;
	//iframe.src=strurl + "?ua=ie&classid=" + classid + "&siteid=" + siteid;
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
                                                网站管理 &gt;&gt; 栏目管理  
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
                                            <font face="宋体">
                                                <table id="Table1" width="100%" style="font-size: 9pt">
                                                    <tbody>
                                                        <tr>
                                                            <td valign="top" align="left">
                                                                <!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                请选择
                                                                              </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">

                                                                                <script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'栏目信息(点击此显示首页栏目)','ClassTree.aspx?classid=&childid=');
  	                                      
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
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td colspan="5">
                                                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                                width="100%" height="100%">
                                                                                <tr>
                                                                                    <td class="column" align="center" style="width: 418px">
                                                                                        操&nbsp;&nbsp;作</td>
                                                                                    <td class="column" colspan="3" align="center">
                                                                                        查询条件</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="fh"  align="center" style="width: 35%">
                                                                                    <input type="button"" onclick="window.history.back();" value="上级ID:<%=childid %>" class="bt"> 
                                                                                        <input type="button" name="add" value="新 增" onclick="window.location='addClass.aspx?siteid=<%=base.SiteId %>&classid=<%=childid %>&backurl=ClassTree.aspx';"  Class="bt" /> 
                                                                                        <input name="" type="button" value="修 改" onclick="DoEdit()" id="Button1" Class="bt"/>
                                                                                        <input name="" type="button" value="删 除" onclick="DoDelete()" id="Button2" Class="bt"/>
                                                                                        <br /><br />
                                                                                        <input type="button" name="gss" value="如果对树结构不熟悉请进入[页面综合排版]操作!" onclick="window.location='/admin/SitePreview.aspx';"  Class="bt" /> 
                                                                                        </td>
                                                                                    <td class="fh" colspan="3">
                                                                                    
                                                                                        栏目ID：<asp:TextBox ID="tb_itemid" runat="server" Width="53px"></asp:TextBox>
                                                                                        栏目或模板名称：
                                                                                        <asp:TextBox runat="server" ID="txtKeyword" Width="154px"></asp:TextBox>&nbsp;<asp:Button ID="bt_find" Width="60" Text='  查 询  ' runat="server" OnClick="bt_find_Click" CssClass="bt">
                                                                                        </asp:Button>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="classid" AllowSorting="True"
                                                                                AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" Width="100%" ShowFooter="True"
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
                                                                                    <asp:TemplateColumn HeaderText="栏目ID" SortExpression="classid" ItemStyle-Width="50px"
                                                                                        HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <a href="ClassTree.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"classid") %>"
                                                                                                target="_self" title="快速进入此栏目">
                                                                                                <%#DataBinder.Eval(Container.DataItem, "classid")%>
                                                                                            </a>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="栏目名称" SortExpression="classname" ItemStyle-Width="140px"
                                                                                        HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <a href='ClassTree.aspx?classid=<%# DataBinder.Eval(Container.DataItem, "classid") %>'
                                                                                                target="_self"  title="快速进入此栏目">
                                                                                                <%#DataBinder.Eval(Container.DataItem, "classname")%>
                                                                                            </a>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="指向模板" SortExpression="typename" ItemStyle-Width="200px"
                                                                                        HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "typename")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="排序号" SortExpression="rank" ItemStyle-HorizontalAlign="Center"
                                                                                        ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%# DataBinder.Eval(Container.DataItem, "rank")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="访问点击" SortExpression="hits" ItemStyle-Width="60px"
                                                                                        HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "hits")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="添加时间" SortExpression="creatdate" ItemStyle-Width="120px"
                                                                                        HeaderStyle-CssClass="column">
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
                                                                            <asp:Button ID="bt_go" runat="server" Text=" Go " OnClick="bt_go_Click" CssClass="bt"/></td>
                                                                    </tr>
                                                                </table>
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
