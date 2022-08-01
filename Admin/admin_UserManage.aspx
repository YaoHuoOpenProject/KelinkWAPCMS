<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" Codebehind="admin_UserManage.aspx.cs"
    Inherits="KeLin.WebSite.admin.admin_UserManage" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>��վ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
        function OpenAddUser() {
            window.open("admin_wapregsite.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "newwindow", "height=350, width=450, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

        }
        function DoDel() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("��ѡ��ɾ���")
                return;
            }
            if (window.confirm("��ȷ��ɾ��������ѡ��ȡ��?")) {
                document.getElementById("hidDelHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "delsite";
                document.getElementById("form1").submit();
            }
        }
        function DoConfig() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("��ѡ����Ҫ�޸ĵ�ģ�飡")
                return;
            }
            if (SelectNo > 1) {
                alert("�޸�����ʱ���ܶ�ѡ��")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            //document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            OpenWindows(edtHangBiaoShis);
            
            
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
          //ȫѡ�����¼�    
          if(chkAll == thisObj) 
          { 
             chks[i].checked = thisObj.checked;               
          }            
          //��ȫѡ���� 
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
function OpenWindowType(a) { 
window.open("systype_siteid.aspx?tositeid="+a, "systype", "height=500, width=700, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");
}
function OpenWindows(a) {
    window.open("configsite.aspx?siteid=" + a, "addsystemwindow", "height=400, width=500, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
}
function goopen(str){
window.open (str, "bank", "height=500, width=800, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
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
                                                        ϵͳ���� >> ��վ���� 
                                                        
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
                    <td valign="top" align="left">                        
                        <div class="txt4">
                            <table id="Table1" width="100%" class="TABLE6">
                                <tbody>
                                    <tr>
                                        <td colspan="4">
                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                height="100%" width="100%">
                                                <tr>
                                                    <td class="column" colspan="4">
                                                        ��ѯ����</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="3">
                                                        ״̬��<asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem Value="0">����</asp:ListItem>
                                                            <asp:ListItem Value="1">����</asp:ListItem>
                                                            <asp:ListItem Value="2">�ѹ�����վ</asp:ListItem>
                                                            <asp:ListItem Value="3">��������վ</asp:ListItem>
                                                            <asp:ListItem Value="" Selected="True">ȫ��</asp:ListItem>
                                                        </asp:DropDownList>
                                                        VIP��վ��<asp:DropDownList ID="sitevip" runat="server">
                                                            <asp:ListItem Value="0">��ͨ</asp:ListItem>
                                                            <asp:ListItem Value="1">VIP</asp:ListItem>
                                                            <asp:ListItem Value="" Selected="True">ȫ��</asp:ListItem>
                                                        </asp:DropDownList>
                                                        ��վ/վ��ID��<asp:TextBox ID="TextBox1" runat="server" Columns="20"
                                                            MaxLength="20" Width="40px"></asp:TextBox>�û�����<asp:TextBox ID="TextBox2" runat="server"
                                                                Columns="20" MaxLength="20" Width="50px"></asp:TextBox>
                                                        �ѹ���������<asp:TextBox ID="TextBox3" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>�뵽��������<asp:TextBox
                                                            ID="TextBox6" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                            &nbsp;
                                                            <!--
                                                            ��������<asp:DropDownList ID="DropDownList2" runat="server">
                                                            <asp:ListItem Value="0">δ����(������)</asp:ListItem>
                                                            <asp:ListItem Value="1">�ѷ���</asp:ListItem>
                                                            <asp:ListItem Value="" Selected="True">ȫ��</asp:ListItem>
                                                        </asp:DropDownList>
                                                            ���ID��<asp:TextBox
                                                            ID="TextBox7" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                            -->
                                                            </td>
                                                    <td class="fh" style="width: 117px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="3">
                                                        &nbsp;ע��ʱ��ӣ�<asp:TextBox ID="TextBox4" runat="server" Columns="20" MaxLength="8"
                                                            Width="105px"></asp:TextBox>
                                                        <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox4'})"
                                                            title="ѡ������" />
                                                        ����<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="105px"></asp:TextBox>
                                                       
                                                        <img id="img1" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox5'})"
                                                            title="ѡ������" /> &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp;<asp:Button ID="bt_DoSearch" Width="60" Text='�� ѯ' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                         &nbsp;&nbsp;
                                                          <input id="Button9" name="" type="button" value="���վ��" onclick="OpenAddUser()" class="bt" />
                                                               
                                                        &nbsp;&nbsp;
                                                        <input id="Button2" name="" type="button" value=" �� �� " onclick="DoConfig()" class="bt" style="Width:60px"/>
                                                        &nbsp;&nbsp; 
                                                        <input id="Button4" name="" type="button" value=" ɾ �� " onclick="DoDel()" class="bt" style="Width:60px"/>
                                                    </td>
                                                    <td class="fh" style="width: 117px">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="userid" AllowSorting="True"
                                                AutoGenerateColumns="False"  PageSize="25" ShowFooter="True" 
                                                Width="100%" OnSortCommand="DataGrid1_SortCommand">
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
                                                            <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "userid") %>'
                                                                onclick="checkAll('chkAll',this);" />
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="���" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="VIP" SortExpression="sitevip" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           
                                                                <%#getShowVIP(DataBinder.Eval(Container.DataItem,"sitevip").ToString())%>
                                                            
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="��վID" SortExpression="siteid" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="javascript:OpenWindows('<%#DataBinder.Eval(Container.DataItem,"siteid")%>');"
                                                                title="������վ">
                                                                <%#DataBinder.Eval(Container.DataItem,"siteid")%>
                                                            </a>
                                                            <br />(<%#DataBinder.Eval(Container.DataItem,"username")%>)
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="��վ����" SortExpression="sitename" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="http://<%#DataBinder.Eval(Container.DataItem,"username")%>.<%=domain%>"
                                                                target="_blank">
                                                                <%#DataBinder.Eval(Container.DataItem,"sitename")%>
                                                                
                                                            </a>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                   
                                                    <asp:TemplateColumn HeaderText="�ռ��СM" SortExpression="sitespace" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "sitespace")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="���ÿռ�KB" SortExpression="myspace" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "myspace")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="����״̬" SortExpression="LockUser" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem,"State")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�������" SortExpression="ischecks" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "ischecks")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="ע��ʱ��" SortExpression="regtime" HeaderStyle-CssClass="column" ItemStyle-Width="100px">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "regtime")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:BoundColumn DataField="endtime" SortExpression="endtime"  HeaderStyle-CssClass="column" HeaderText="����ʱ��" DataFormatString="{0:yyyy-MM-dd}">
									</asp:BoundColumn>
                                                   
                                                    <asp:TemplateColumn HeaderText="ʣ������" SortExpression="pass_date" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "pass_date")%><br />
                                                            <br /><a href="javascript:goopen('/chinabank/bank_my_list.aspx?tositeid=<%#DataBinder.Eval(Container.DataItem,"siteid")%>');">
                                                                �鿴��ֵ��¼</a>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�ѷ�����" HeaderStyle-CssClass="column" ItemStyle-Width="100px">
                                                        <ItemTemplate>
                                                        <textarea name="book_content" rows="5" style="width:100px"><%#getShowTypes(DataBinder.Eval(Container.DataItem, "systype").ToString())%></textarea>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="����" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            ��<a href="gochange.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"userid")%>">�л���վ</a>��<br /><br />
                                                            ��<a href="javascript:OpenWindows('<%#DataBinder.Eval(Container.DataItem,"siteid")%>')">���ò���</a>��<br /><br />
                                                            ��<a href="javascript:OpenWindowType('<%#DataBinder.Eval(Container.DataItem,"siteid")%>')">������</a>��
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" HorizontalAlign="Left"
                                                OnPageChanged="AspNetPager1_PageChanged" PageButtonCount="5">
                                            </webdiyer:AspNetPager>
                                            ת��:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                            ÿҳ:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                            <asp:Button ID="bt_go" runat="server" Text=" Go " OnClick="bt_go_Click" CssClass="bt"/>
                                            
                                            <br /><br />VIP��վ�����û����߳�ֵ��վʱ��ʱ����ΪVIP��վ���򳬼�����Աֱ�����á�VIP�ô���������VIP��վ����ʾȫ�ֹ�棬ֻ�÷�VIP��վ��ʾȫ�ֹ�档ȫ�ֹ��������Web.Config�ļ��С�
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100%">
                        
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width: 100%">
                        ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                    </td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidDelHangBiaoShis" name="hidDelHangBiaoShis" />
    </form>
</body>
</html>
