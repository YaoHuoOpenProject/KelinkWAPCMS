<%@ Page Language="C#" AutoEventWireup="true" Codebehind="userlist01.aspx.cs" Inherits="KeLin.WebSite.FormEdit.userlist01" %><%@ Import namespace="KeLin.ClassManager.Tool" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
		<!--
        function openViewCach() {
            window.open("/admin/applicationadmin.aspx?action=remove&siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "viewSite2", "height=400, width=520, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=yes, status=yes")
        }   
        function DoEdit(types) {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("��ѡ����Ҫ�޸ĵļ�¼��")
                return;
            }
            if (SelectNo > 1) {
                alert("�޸�����ʱ���ܶ�ѡ��")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            var toclassid = document.getElementsByName('toclassid').value;

            if (types == 1) {
            
                T("Edit", edtHangBiaoShis);

            } else {
            
            window.open('/article/admin_WAPmodify.aspx?action=go&id=' + edtHangBiaoShis + '&classid=' + toclassid + '&siteid=<%=base.SiteId %>&page=1&sid=<%=base.SID %>');
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
        function DoNew() {
            T("add", 0);
           // window.location.href="addUser.aspx?classid="+document.getElementById("TextBox4").value;
        }
        function DoAd() {
        /*
        var edtHangBiaoShis=document.getElementById("TextBox4").value;
        if (edtHangBiaoShis == "")
        {
        var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("��ѡ����Ҫ��Ź�����Ŀ��")
                return;
            }
            if (SelectNo > 1) {
                alert("��Ź�����Ŀ���ܶ�ѡ��")
                return;
            }
            edtHangBiaoShis = GetOnChecked();
         }
         **/
            window.location.href = "/admin/modifyAD.aspx?systype=article";
        }
        function DoContent() {
            window.location.href="userlist01.aspx?classid="+document.getElementById("TextBox4").value;
            }
        function DoReBack() {
            window.location.href="userlist01_Data.aspx?classid="+document.getElementById("TextBox4").value;        
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=article&classid="+document.getElementById("TextBox4").value;  
        }
        function DoMyItem() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("��ѡ��Ҫת���")
                return;
            }  
            if (document.getElementById("DropDownList2").value == "")          
            {
                alert("��ѡ��Ҫת�Ƶ�����Ŀ��")
                return;
            }
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "myitem";
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

function bathdaoru() { 
var ItemID = document.getElementById("TextBox4").value;
window.location.href="upload_bath.aspx?systype=article&classid="+ItemID;
//window.open ("upload_bath.aspx?systype=article&classid=<%=classid%>", "addsystemwindow", "height=450, width=550, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
}
function daoru() { 
window.open ("systemindex.aspx?site=<%=base.SiteId%>&classid=<%=classid%>", "daoruwindow", "height=520, width=720, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

}
function T(AddorEdit, id) {
    var winPar;
    if (AddorEdit == "add") {
       // window.open('admin_wapadd.aspx?siteid=<%=base.SiteId %>&classid=<%=classid%>&sid=<% =base.SID.Replace("-500","-750")%>');
        //winPar = window.open('admin_wapadd.aspx?siteid=<%=base.SiteId %>&classid=<%=classid%>&sid=<% =base.SID.Replace("-500","-750")%>', null, 'dialogWidth=760px;dialogHeight=500px;menuba=no;resizable=yes');

        window.open('admin_wapadd.aspx?siteid=<%=base.SiteId %>&classid=<%=classid%>&sid=<% =base.SID.Replace("-320","-750").Replace("-500","-750")%>')

    } else {
     // window.open('admin_wapmodify.aspx?id=' + id + '&siteid=<%=base.SiteId %>&classid=<%=classid%>&sid=<% =base.SID.Replace("-500","-750")%>');
   // winPar = window.open('admin_wapmodify.aspx?id=' + id + '&siteid=<%=base.SiteId %>&classid=<%=classid%>&sid=<% =base.SID.Replace("-500","-750")%>', null, 'dialogWidth=760px;dialogHeight=500px;menuba=no;resizable=yes');
    window.open('admin_wapmodify.aspx?id=' + id + '&siteid=<%=base.SiteId %>&classid=<%=classid%>&sid=<% =base.SID.Replace("-320","-750").Replace("-500","-750")%>')

    }

    //if (winPar == "refresh") {
    //    window.location.reload();
   // }
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
                                                ��վ���� &gt;&gt; ���ɾ������ &gt;&gt; ����ƹ���
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
                                                            &nbsp;&nbsp;<a  href="#" onclick="DoContent()">����ƹ���</a>&nbsp;&nbsp;&nbsp;
                                                            <a href="#" onclick="DoReBack()">�������ݹ���</a>&nbsp;&nbsp; 
                                                           
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            ���״̬��
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value="">δѡ</asp:ListItem>
                                                                <asp:ListItem Value="0">���</asp:ListItem>
                                                                <asp:ListItem Value="1">δ���</asp:ListItem>
                                                               
                                                            </asp:DropDownList>��ĿID��<asp:TextBox ID="TextBox4" runat="server" Columns="20" MaxLength="8"
                                                                Width="64px"></asp:TextBox>
                                                            ����/�����ؼ��֣�<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="80px"></asp:TextBox>
                                                            
                                                         
                                                               
                                                            <asp:Button ID="bt_DoSearch" Width="60" Text='�� ѯ' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                            </asp:Button>
                                                            <input type="button" onclick="window.location.href='userlist01.aspx';" value="�� ��" class="bt" />
                                                            
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                    
                                                            <input id="Button5" name="" type="button" value=" �� �� " onclick="DoCheck()" class="bt"/>                                                       
                                                            <input id="Button2" name="" type="button" value="ȡ�����" onclick="DoUnCheck()" class="bt"/>     
                                                                                                              
                                                           
                                                            <input id="Button7" name="" type="button" value="����" onclick="DoNew()" class="bt"/>
                                                         
                                                            <input id="Button6" name="" type="button" value="�޸�" onclick="DoEdit(1)"class="bt" />
                                                          
                                                            <input id="Button4" name="" type="button" value="ɾ��" onclick="DoDel()" class="bt"/>
                                                           
                                                            
                                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                            </asp:DropDownList>
                                                            <input name="" type="button" value="ת���ҵ���Ŀ" onclick="DoMyItem()" id="Button9" class="bt"/>
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
                                                        <asp:TemplateColumn HeaderText="���" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="״̬" SortExpression="ischeck" ItemStyle-HorizontalAlign="Center"
                                                            ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif" alt="���״̬" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="��ĿID" SortExpression="book_classid" ItemStyle-Width="50px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <input type ="hidden" id="classidtemp" name ="classidtemp" value ="<%#DataBinder.Eval(Container.DataItem,"book_classid") %>" /><a href="userlist01.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>"
                                                                    target="_self" title="���ٽ������Ŀ">
                                                                    <%#DataBinder.Eval(Container.DataItem, "book_classid")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                       
                                                         <asp:TemplateColumn HeaderText="����" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <a href="book_view.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"siteid") %>&classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>&id=<%#DataBinder.Eval(Container.DataItem,"id") %>&sid=-2-0-0-0-480"
                                                                    target="_blank" title="�鿴�����ظ�">
                                                                    <%#DataBinder.Eval(Container.DataItem, "book_title")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="UBB����" SortExpression="book_content" ItemStyle-Width="120px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                [getform]<%#DataBinder.Eval(Container.DataItem, "id")%>[/getform]
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="���ʱ��" SortExpression="addtime" ItemStyle-Width="120px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                            ����ID:<%#DataBinder.Eval(Container.DataItem, "makerid")%>
                                                            <br />
                                                                <%#DataBinder.Eval(Container.DataItem, "addtime")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                         <asp:TemplateColumn HeaderText="��������" SortExpression="book_submit" ItemStyle-Width="120px"
                                                            HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_submit")%>
                                                                <br />
                                                                <a href="userlist01_data.aspx?bookid= <%#DataBinder.Eval(Container.DataItem, "id")%>">���鿴���ݡ�</a>
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
                                                ת��:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                ÿҳ:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                                <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                            
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                        ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
