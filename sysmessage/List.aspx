<%@ Page Language="C#" AutoEventWireup="true" Codebehind="List.aspx.cs" Inherits="KeLin.WebSite.sysmessage.List" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>无标题页</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />

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
<body background="../images/dw.gif">
    <form id="form1" runat="server">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td colspan="4">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="1%">
                                            <img src="../images/main_title_01.gif" width="12" height="24"></td>
                                        <td width="98%" background="../images/main_title_02.gif">
                                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="2%">
                                                        <div align="center">
                                                            <img src="../images/i08.gif" width="16" height="16"></div>
                                                    </td>
                                                    <td width="98%" height="24" valign="middle">
                                                        系统管理 &gt;&gt; 公告信息 &gt;&gt;
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="1%">
                                            <img src="../images/main_title_03.gif" width="13" height="24"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="100%" colspan="4">
                                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="TABLE6">
                                    <tr>
                                        <td height="24">
                                            <table width="100%" border="0" background="../images/dw.gif">
                                                <tr>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    <table width="100%">
                                                                    <tr>
                                                            <td colspan="5" style="height: 71px">
                                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                    height="100%" width="100%">
                                                                   
                                                                    <tr>
                                                                        <td class="fh" align="left">
                                                                            <asp:Button ID="bt_New" runat="server" Text=" 新 增 " OnClick="bt_New_Click" />&nbsp;
                                                                            <input name="" type="button" value=" 修 改 " onclick="DoEdit()" id="Button1" />&nbsp;
                                                                            <input name="" type="button" value=" 删 除 " onclick="DoDelete()" id="Button2" />
                                                                        关键字：
                                                                            <asp:TextBox runat="server" ID="txtKeyword" Width="180px"></asp:TextBox>&nbsp;
                                                                       
                                                                            <asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click">
                                                                            </asp:Button>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="id">
                                                                    <HeaderTemplate>
                                                                       
                                                                        <table id="tblManageRanks" cellspacing="1" cellpadding="3" border="0" width="100%" class="tableBorder">
                                                                            <tr>
                                                                                <td class="column">
                                                                                    <input type="checkbox" id="chkAll" name="chkAll" value="checkbox" onclick="checkAll('chkAll',this);" /></td>
                                                                                <td class="column" width="220px">
                                                                                    标题</td>
                                                                                <td class="column" width="60px">
                                                                                    状态</td>
                                                                                <td class="column" width="80px" nowrap>
                                                                                    发布人</td>
                                                                                <td class="column" width="120px">
                                                                                    发布日期</td>
                                                                                <td class="column" width="120px">
                                                                                    有效日期</td>
                                                                            </tr>
                                                                            
                                                                    </HeaderTemplate>
                                                                    <FooterTemplate>
                                                                        <tr>
                                                                            <td class="column">
                                                                            </td>
                                                                            <td class="column">
                                                                            </td>
                                                                            <td class="column">
                                                                            </td>
                                                                            <td class="column">
                                                                            </td>
                                                                            <td class="column">
                                                                            </td>
                                                                            <td class="column">
                                                                            </td>
                                                                        </tr>
                                                                        </table>
                                                                    </FooterTemplate>
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <td class="f">
                                                                                <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                                    onclick="checkAll('chkAll',this);" />
                                                                            </td>
                                                                            <td class="f">
                                                                                <a href='systemview.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>' target="_self">
                                                                                    <%# DataBinder.Eval(Container.DataItem, "msg_title")%>
                                                                                </a>
                                                                            </td>
                                                                            <td class="f">
                                                                                <%# DataBinder.Eval(Container.DataItem, "pop_flag") %>
                                                                            </td>
                                                                            <td class="f">
                                                                                <%# DataBinder.Eval(Container.DataItem, "username") %>
                                                                            </td>
                                                                            <td class="f">
                                                                                <%# DataBinder.Eval(Container.DataItem, "msg_date") %>
                                                                            </td>
                                                                            <td class="f">
                                                                                <%# DataBinder.Eval(Container.DataItem, "valid_date")%>
                                                                            </td>
                                                                        </tr>
                                                                    </ItemTemplate>
                                                                    <AlternatingItemTemplate>
                                                                        <tr>
                                                                            <td class="fh">
                                                                                <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                                    onclick="checkAll('chkAll',this);" />
                                                                            </td>
                                                                            <td class="fh">
                                                                                <a href='systemview.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id") %>' target="_self">
                                                                                    <%# DataBinder.Eval(Container.DataItem, "msg_title") %>
                                                                                </a>
                                                                            </td>
                                                                            <td class="fh">
                                                                                <%# DataBinder.Eval(Container.DataItem, "pop_flag")%>
                                                                            </td>
                                                                            <td class="fh">
                                                                                <%# DataBinder.Eval(Container.DataItem, "username") %>
                                                                            </td>
                                                                            <td class="fh">
                                                                                <%# DataBinder.Eval(Container.DataItem, "msg_date")%>
                                                                            </td>
                                                                            <td class="fh">
                                                                                <%# DataBinder.Eval(Container.DataItem, "valid_date")%>
                                                                            </td>
                                                                        </tr>
                                                                    </AlternatingItemTemplate>
                                                                </asp:DataList>
                                                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30" UrlPaging="true"
                                                                    ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                                    HorizontalAlign="right" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                                                </webdiyer:AspNetPager>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="bg">
                            </td>
                        </tr>
                    </table>
    </form>
</body>
</html>
