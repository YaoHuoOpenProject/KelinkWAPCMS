<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="systemlist00.aspx.cs" Inherits="KeLin.WebSite.SMS.systemlist00" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>短信发送设置</title>
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
        function checkAll(chkAllID, thisObj) {
            var chkAll = document.getElementById(chkAllID);
            var chks = document.getElementsByTagName("input");
            var chkNo = 0;
            var selectNo = 0;
            for (var i = 0; i < chks.length; i++) {
                if (chks[i].type == "checkbox") {
                    //全选触发事件    
                    if (chkAll == thisObj) {
                        chks[i].checked = thisObj.checked;
                    }
                    //非全选触发 
                    else {
                        if (chks[i].checked && chks[i].id != chkAllID)
                            selectNo++;
                    }
                    if (chks[i].id != chkAllID) {
                        chkNo++;
                    }
                }
            }
            if (chkAll != thisObj) {
                chkAll.checked = chkNo == selectNo;
            }
        }
        function checkSelectNo(chkAllID) {
            var chks = document.getElementsByTagName("input");
            var selectNo = 0;
            for (var i = 0; i < chks.length; i++) {
                if (chks[i].type == "checkbox") {
                    if (chks[i].id != chkAllID && chks[i].checked) {
                        selectNo++;
                    }
                }
            }
            return selectNo;
        }

        //每个节点的单击事件
        //键值 和 类型  1 表示 业务分类 2：表示模板分类 3：表示模板  0 表示根节点
        function selNote(TYPE) {
            document.getElementById("iframe").src = "List.aspx?typeid=" + TYPE;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
       <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="12">
                                <img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
                            <td width="100%" background="../NetImages/main_title_02.gif">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%">
                                            <div align="center">
                                                <img src="../NetImages/i08.gif" width="16" height="16"></div>
                                        </td>
                                        <td width="98%" height="24" valign="middle">
                                            网站管理 &gt;&gt; 短信发送
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="13">
                                <img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="100%" colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="TABLE6">
                        <tr>
                            <td>
                                
                                            <div class="txt4">
                                                <table id="Table1" width="100%">
                                                    <tr>
                          
            <td colspan="4" valign="top" align="left">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" class="TABLE6">
                    <tr>
                        <td height="24">
                            <table width="100%" border="0" background="/NetImages/dw.gif">
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%">
                                         
                                            <tr>
                                                <td colspan="5" style="height: 71px">
                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="0" border="0"
                                                        height="100%" width="100%">
                                                        <tr>
                                                            <td class="fh" align="left">&nbsp;
                                                              <input name="" type="button" value=" 删 除 " onclick="DoDelete()" id="Button2" Class="bt"/>
                                                                &nbsp;
                                                                网站ID：
                                                                <asp:TextBox runat="server" ID="toSiteid" Width="100px"></asp:TextBox>&nbsp;
                                                                
                                                                <asp:DropDownList ID="StateSMS" runat="server">
                                                                        <asp:ListItem Value="" Selected="True">所有状态</asp:ListItem>
                                                                        <asp:ListItem Value="0">0_未发送</asp:ListItem>
                                                                        <asp:ListItem Value="1">1_已发送</asp:ListItem>                                                                        
                                                                    </asp:DropDownList>
                                                                手机号码：
                                                                <asp:TextBox runat="server" ID="typeid" Width="100px"></asp:TextBox>&nbsp;
                                                                短信内容：
                                                                <asp:TextBox runat="server" ID="txtKeyword" Width="100px"></asp:TextBox>&nbsp;
                                                                <asp:Button ID="bt_find" Width="60" Text=' 查 询 ' runat="server" OnClick="bt_find_Click" CssClass="bt">
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
                                                            <table id="tblManageRanks" cellspacing="1" cellpadding="3" border="0" width="100%"
                                                                class="tableBorder">
                                                                <tr>
                                                                    <td class="column" width="10px">
                                                                        <input type="checkbox" id="chkAll" name="chkAll" value="checkbox" onclick="checkAll('chkAll',this);" />
                                                                    </td>
                                                                    <td class="column" width="100px">
                                                                        接收号码
                                                                    </td>
                                                                    <td class="column" width="300px">
                                                                        短信内容
                                                                    </td>
                                                                    <td class="column" width="120px" nowrap>
                                                                        发送时间
                                                                    </td>
                                                                    
                                                                    <td class="column" width="100px">
                                                                        状态
                                                                    </td>
                                                                    
                                                                    
                                                                    <td class="column" width="120px">
                                                                    操作ID
                                                                    
                                                                    </td>
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
                                                                <td class="f" width="10px">
                                                                    <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                        onclick="checkAll('chkAll',this);" />
                                                                </td>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "sms_mobile")%>
                                                                   
                                                                </td>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "sms_content") %>
                                                                </td>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "sendtime") %>
                                                                </td>
                                                                <td class="f">
                                                                    <%# DataBinder.Eval(Container.DataItem, "state") %>
                                                                </td>
                                                                <td class="f">
                                                                   操作ID:<%# DataBinder.Eval(Container.DataItem, "userid")%>
                                                                <br />
                                                                   操作时间:<%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <AlternatingItemTemplate>
                                                            <tr>
                                                                <td class="fh" width="10px">
                                                                    <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                        onclick="checkAll('chkAll',this);" />
                                                                </td>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "sms_mobile")%>
                                                                   
                                                                </td>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "sms_content") %>
                                                                </td>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "sendtime") %>
                                                                </td>
                                                                <td class="fh">
                                                                    <%# DataBinder.Eval(Container.DataItem, "state") %>
                                                                </td>
                                                                <td class="fh">
                                                                   操作ID:<%# DataBinder.Eval(Container.DataItem, "userid")%>
                                                                <br />
                                                                   操作时间:<%# DataBinder.Eval(Container.DataItem, "addtime")%>
                                                                </td>
                                                            </tr>
                                                        </AlternatingItemTemplate>
                                                    </asp:DataList>
                                                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30" UrlPaging="true"
                                                        ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                        HorizontalAlign="left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                                    </webdiyer:AspNetPager>
                                                    转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                            每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                            <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
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
    </table>
    </div> </td> </tr> </table> </td> </tr>
    <tr align="center">
        <td style="height: 14px">
            <span class="txt4">
            </span>
        </td>
    </tr>
    <tr>
        <td class="bg">
        </td>
    </tr>
    <tr>
        <td>
            <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
            <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
        </td>
    </tr>
    </table>
    </form>
</body>
</html>
