<%@ Page Language="C#" AutoEventWireup="true" Codebehind="admin_guestlist.aspx.cs"
    Inherits="KeLin.WebSite.paimai.admin_guestlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�����ظ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
		<!--       
        function DoDelete() {
            var deleteHangBiaoShis = GetOnChecked();
            if (deleteHangBiaoShis == null || deleteHangBiaoShis == "") {
                alert("��ѡ��ɾ���")
                return;
            }
            if (window.confirm("��ȷ��ɾ��������ѡ��ȡ��?")) {
                document.getElementById("hidHangBiaoShis").value = deleteHangBiaoShis;
                document.getElementById("CommandType").value = "del";
                document.getElementById("form1").submit();
            }
        }
        function DoDel() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("��ѡ��ɾ���")
                return;
            }
            if (window.confirm("��ȷ��ɾ��������ѡ��ȡ��?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Del";
                document.getElementById("form1").submit();
            }
        }
        function DoReBack() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("��ѡ����Ҫ�޸ĵ��û���")
                return;
            }
            if (SelectNo > 1) {
                alert("�޸�����ʱ���ܶ�ѡ��")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
            document.getElementById("CommandType").value = "ReBack";
            document.getElementById("form1").submit();            
        }
        function DoCheck() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("��ѡ����Ҫ��˵ļ�¼��")
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
                alert("��ѡ����Ҫ����ļ�¼��")
                return;
            }                        
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "UnCheck";
            document.getElementById("form1").submit();            
        }
        function DoContent() {
            window.location.href="admin_userlist.aspx";
        }
        function DoReback() {
            window.location.href="admin_guestlist.aspx";
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

function Button1_onclick() {

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
                                                ������� &gt;&gt; �����ظ����
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
                                                    <td class="fh" colspan="2" style="width: 100%">
                                                    ���״̬��
                                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem Value="">δѡ</asp:ListItem>
                                                            <asp:ListItem Value="0">���</asp:ListItem>
                                                            <asp:ListItem Value="1">δ���</asp:ListItem>
                                                        </asp:DropDownList>
                                                        ��վID��<asp:TextBox ID="TextBox3" runat="server" Width="64px"></asp:TextBox>
                                                        ��ĿID��<asp:TextBox ID="TextBox1" runat="server" Columns="20" MaxLength="8" Width="64px"></asp:TextBox>
                                                        ����ID��<asp:TextBox ID="TextBox4" runat="server" Width="64px"></asp:TextBox> �ؼ��֣�<asp:TextBox
                                                            ID="TextBox2" runat="server" Columns="20" MaxLength="8" Width="100px"></asp:TextBox>
                                                    
                                                    
                                                        <asp:Button ID="bt_DoSearch" Width="60" Text='�� ѯ' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="4">
                                                        <input id="Button1" name="" type="button" value="���ݹ���" onclick="DoContent()" class="bt" />
                                                        &nbsp;&nbsp;
                                                        <input id="Button3" name="" type="button" value="�ظ�����" onclick="DoReback()" class="bt" />
                                                        &nbsp;&nbsp;
                                                        <input id="Button5" name="" type="button" value=" �� �� " onclick="DoCheck()" class="bt" />
                                                        &nbsp;&nbsp;
                                                        <input id="Button2" name="" type="button" value="ȡ�����" onclick="DoUnCheck()" class="bt" />
                                                        &nbsp;&nbsp;
                                                        <input id="Button4" name="" type="button" value=" ɾ �� " onclick="DoDel()" class="bt"  />
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
                                                    <asp:TemplateColumn HeaderText="���" ItemStyle-Width="30px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="״̬" SortExpression="ischeck" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <img src="/NetImages/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif" alt="���״̬" />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="��վID" SortExpression="devid" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="admin_guestlist.aspx?tositeid=<%#DataBinder.Eval(Container.DataItem,"devid") %>"
                                                                target="_self" title="���ٽ����վ��">
                                                                <%#DataBinder.Eval(Container.DataItem, "devid")%>
                                                            </a>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="��ĿID" SortExpression="classid" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="admin_guestlist.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"classid") %>"
                                                                target="_self" title="���ٽ������Ŀ">
                                                                <%#DataBinder.Eval(Container.DataItem,"classid")%>
                                                            </a>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="����ID" SortExpression="bookid" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="viewUser.aspx?bookid=<%#DataBinder.Eval(Container.DataItem,"bookid") %>"
                                                                target="_self" title="�鿴���޸�">
                                                                <%#DataBinder.Eval(Container.DataItem, "bookid")%>
                                                            </a>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�ظ�����" ItemStyle-Width="200px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "content")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�ظ���" SortExpression="nickname" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "nickname")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�ظ�ʱ��" SortExpression="redate" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "redate")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                                                HorizontalAlign="Left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true">
                                            </webdiyer:AspNetPager>
                                            ת��:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                            ÿҳ:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                            <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                    </td>
                </tr>
                <tr>
                    <td colspan="4" align="center">
                        ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;&nbsp;���룡
                    </td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
    </form>
</body>
</html>