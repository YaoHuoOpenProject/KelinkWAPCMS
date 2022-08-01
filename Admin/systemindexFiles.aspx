<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="systemindexFiles.aspx.cs" Inherits="KeLin.WebSite.admin.systemindexFiles" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>上传文件管理</title>
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css" />
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

function DaoRu() {
    var SelectNo = checkSelectNo('chkAll');
    if (SelectNo == 0) {
        alert("请选择图片或图片！")
        return;
    }
    if (SelectNo > 1) {
        alert("一次只能导一个！")
        return;
    }

    var edtHangBiaoShis = GetOnChecked();

    var sa = document.getElementById("file" + edtHangBiaoShis).value;
    //alert(sa);

    //处理将地址加入到父窗口中
    try {
        window.parent.opener.addImgOrFile('' + sa, 'img');
    } catch (e) {
        window.parent.addImgOrFile('' + sa, 'img');
    }
    alert("成功导入！");


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
                                                系统管理 &gt;&gt; 上传文件管理(素材库)
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
                                <table id="Table1" width="100%" class="TABLE6" >
                              
                                        
                                        <tr>
                                            <td style="word-wrap: break-word; width: 180px" valign="top" align="left">
 <!--div id="Div1" style="z-index: 1; left: 3px; visibility: inherit; overflow: auto;
                                                                width: 180px; position: absolute; top: 31px; height: 520px"-->
                                                                         <!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                请选择</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="f">
<script type="text/javascript">

    d = new dTree('d');
    d.add(0, -1, '上传类别');

    d.add(0, -1, '<a href="systemindexFiles.aspx?classid=&seq=<%=seq %>">所有分类</a>');
    d.add('100', '0', '所有操作文件', 'systemindexFiles.aspx?classid=&seq=<%=seq %>', '');
    d.add('1', '0', '后台上传文件', 'systemindexFiles.aspx?typeid=1&typename=后台上传文件&classid=&seq=<%=seq %>', '');
    //d.add('2', '0', '临时编辑图片', 'systemindexFiles.aspx?typeid=2&typename=临时编辑图片&classid=', '');

document.write(d);
</script>
<br />
<font color=red><b>一、请定期删除temp目录下文件</b></font>
<br />
(1)临时编辑图片在：/temp/picture<br />
(2)临时生成文件在:/temp/功能模块/<br /><br />

 <font color=red><b>二、此处审核为底层审核文件</b></font>
 <br />需要满足以下三个条件设置：
 <br />(1)web.config开启底层审核文件
 <br />(2)web.config配置哪些文件类型
 <br />(3)主机IIS属性→主目录→配置
 <br />→映射→添加文件类型。
 <br />如:扩展名为.gif 所对应在执行文件为: 
 <br />C:\WINDOWS\Microsoft.NET\Framework
 <br />\v2.0.50727\aspnet_isapi.dll(要当前ASP.NET版本)                                                   
                                                                            </td>
                                                                        </tr>
                                                                    
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                           <!--</div>-->
                                            </td>
                                            <td colspan="4" valign="top" align="left" >
                                                <table id="Table2" cellspacing="0"  border="0" height="100%" width="100%">
                                                    <tr>
                                                        <td height="50">
                                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                height="100%" width="100%">
                                                                <tr>
                                                                    <td class="fh" align="left">                                                                        
                                                                        审核状态：
                                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                                            <asp:ListItem Value="">未选</asp:ListItem>
                                                            <asp:ListItem Value="0">审核</asp:ListItem>
                                                            <asp:ListItem Value="1">未审核</asp:ListItem>
                                                        </asp:DropDownList>
                                                                        
                                                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                                                            <asp:ListItem Selected="True" Value="ext">扩展名</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        关键字：<asp:TextBox runat="server" ID="txtKeyword" Width="100px"></asp:TextBox>
                                                                        <asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click" CssClass="bt">
                                                                        </asp:Button>
                                                                        <br />
                                                                        &nbsp;
                                                        <input id="Button5" name="" type="button" value=" 审 核 " onclick="DoCheck()" class="bt"/>
                                                        &nbsp;
                                                        <input id="Button3" name="" type="button" value="取消审核" onclick="DoUnCheck()" class="bt"/>
                                                        &nbsp;
                                                                        <input name="" type="button" value=" 删 除 " onclick="DoDelete()" id="Button2" class="bt" style="width:60px"/>
                                                                         &nbsp;
                                                                        <input name="" type="button" value="一键清空TEMP目录" onclick="window.open('deletetemp00.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>');" id="Button1" class="bt"/>
                                                                        &nbsp;
                                                                        <%if (seq=="1"){ %>
                                                            
                                                            <input name="" type="button" value=" 导入图片或文件 " onclick="DaoRu()"   Class="bt"/>
                                                            
                                                            <%} %>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                           
                                                        </td>
                                                    </tr>
                                                
                                                    <tr>
                                                        <td > 
                                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="id" AllowSorting="True" CssClass="tableBorder"
                                                                AutoGenerateColumns="False" Width="100%" PageSize="25" ShowFooter="True" OnItemCreated="DataGrid1_ItemCreated" OnItemDataBound="DataGrid1_ItemDataBound">
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
                                                                            <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                                onclick="checkAll('chkAll',this);" />
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="状态" SortExpression="ischeck" ItemStyle-Width="30px" HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>
                                                                            <%//#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                                            <img src="/NetImages/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif" alt="审核状态" />
                                                        
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    
                                                                    <asp:TemplateColumn HeaderText="说明" SortExpression="book_title" ItemStyle-Width="130px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>                                                                            
                                                                                <%#DataBinder.Eval(Container.DataItem, "book_title")%>
                                                                            </a>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    <asp:TemplateColumn HeaderText="路径" SortExpression="book_file" 
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate> 
                                                                                                                                             
                                                                           
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                    
                                                                      <asp:TemplateColumn HeaderText="应用" ItemStyle-Width="250px"
                                                                        HeaderStyle-CssClass="column">
                                                                        <ItemTemplate>  
                                                                         <input type="hidden" id="file<%# DataBinder.Eval(Container.DataItem, "id")%>" value='<%# DataBinder.Eval(Container.DataItem, "book_file")%>' />                                                                          
                                                                               <textarea name ="tx" style ="width:100%;" rows="4" onmouseover ="this.select();" ><%#getshow(DataBinder.Eval(Container.DataItem, "book_file").ToString(), DataBinder.Eval(Container.DataItem, "book_ext").ToString())%></textarea>
                                                                            </a>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateColumn>
                                                                  
                                                                 
                                                                    <asp:TemplateColumn HeaderText="大小" SortExpression="book_size" ItemStyle-Width="150px"
                                                                        HeaderStyle-CssClass="column"  ItemStyle-HorizontalAlign ="center">
                                                                        <ItemTemplate>
                                                                         <%#DataBinder.Eval(Container.DataItem, "book_size")%>K / <%#DataBinder.Eval(Container.DataItem, "book_ext")%><br /><br />
                                                                            会员ID：<%#DataBinder.Eval(Container.DataItem, "username")%><br /><br />
                                                                             <%#DataBinder.Eval(Container.DataItem, "book_date")%>
                                                                             
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
                                                            <asp:Button ID="bt_go" runat="server" Text=" Go " OnClick="bt_go_Click"  CssClass="bt" />
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
                <input type="hidden" id="seq" name="seq" value="<%=seq %>" />
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
