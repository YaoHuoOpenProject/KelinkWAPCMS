<%@ Page Language="C#" AutoEventWireup="true" Codebehind="userlist.aspx.cs" Inherits="KeLin.WebSite.shop.userlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�̵�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<%//if (base.ManagerLvl == "03") Response.Redirect("/shop/orderlistWAP.aspx?siteid="+base.SiteId+"&classid=0&sid="+base.SID); %>
    <script language="javascript" type="text/javascript">
		<!--       
        function DoEdit() {
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
            //window.location.href="addUser.aspx?bookid="+edtHangBiaoShis;
            window.open('/shop/admin_WAPmodify.aspx?action=go&id=' + edtHangBiaoShis + '&siteid=<%=base.SiteId %>&classid=' + toclassid + '&page=1&sid=<%=base.SID %>');
        }
        function ViewQR(a) {
            window.open("http://qr.liantu.com/api.php?text="+a, "viewSite2", "height=400, width=520, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=yes, status=yes")
        } 
        function DoEditCopy() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("��ѡ����Ҫ���Ƶļ�¼��")
                return;
            }
            if (SelectNo > 1) {
                alert("��������ʱ���ܶ�ѡ��")
                return;
            }
            var edtHangBiaoShis = GetOnChecked();
            var toclassid = document.getElementsByName('toclassid').value;
            //window.location.href="addUser.aspx?bookid="+edtHangBiaoShis;
            window.open('/shop/admin_WAPcopy.aspx?action=go&id=' + edtHangBiaoShis + '&siteid=<%=base.SiteId %>&classid=' + toclassid + '&page=1&sid=<%=base.SID %>');
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
            window.location.href="addUser.aspx?classid="+document.getElementById("TextBox4").value;
        }
        function DoAd() {        
            window.location.href="../admin/modifyAD.aspx?systype=shop";
        }
        function DoTop() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("��ѡ��Ҫ�����")
                return;
            }
            if (window.confirm("��ȷ�������Ҫ���ã�����ѡ��ȡ��?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Top";
                document.getElementById("form1").submit();
            }
        }
        function DoCancelTop() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("��ѡ��ȡ�������")
                return;
            }
            if (window.confirm("��ȷ��ȡ�����ã�����ѡ��ȡ��?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "CancelTop";
                document.getElementById("form1").submit();
            }
        }
        function DoGood() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("��ѡ��Ҫ�Ӿ��")
                return;
            }
            if (window.confirm("��ȷ�ϼӾ�������ѡ��ȡ��?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Good";
                document.getElementById("form1").submit();
            }
        }
        function DoCancelGood() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("��ѡ��ȡ�������")
                return;
            }
            if (window.confirm("��ȷ��ȡ������������ѡ��ȡ��?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "CancelGood";
                document.getElementById("form1").submit();
            }
        }
        function DoContent() {
            window.location.href="userlist.aspx?classid="+document.getElementById("TextBox4").value;
        }
        function DoOrder() {
            //window.open("/shop/orderlistWAP.aspx?siteid=<%=base.SiteId%>&classid=0&sid=<%=base.SID %>");
            window.location.href = "/shop/orderlist.aspx?siteid=<%=base.SiteId%>";
       
        }
        function DoReBack() {
            window.location.href="guestlist.aspx?classid="+document.getElementById("TextBox4").value;        
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=shop&classid="+document.getElementById("TextBox4").value;  
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
window.open ("upload_bath.aspx?systype=article&classid=<%=classid%>", "addsystemwindow", "height=450, width=550, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
}
function daoru() { 
window.open ("systemindex.aspx?site=<%=base.SiteId%>&classid=<%=classid%>", "daoruwindow", "height=520, width=720, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
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
                                                ��վ���� &gt;&gt; ���ݹ��� &gt;&gt;�̵�����
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
                    <td valign="top" align="left" style="width: 100%;">
                        <div class="txt4">
                            <font face="����">
                                <table id="Table1" width="100%" class="TABLE6">
                                    <tbody>
                                        <tr>
                                            <td colspan="4">
                                                <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                    height="100%" width="100%">
                                                    <tr>
                                                        <td class="column" colspan="4">
                                                        <a style="cursor: hand" onclick="DoContent()">���ݹ���</a>&nbsp;&nbsp;&nbsp;<a style="cursor: hand" onclick="DoReBack()">�ظ�����</a>&nbsp;&nbsp;&nbsp;<a style="cursor: hand" onclick="DoOrder()">��������</a>
                                                                <!--
                                                                <a style="cursor: hand" onclick="DoSmall()">
                                                                    С�����</a> -->
                                                                    &nbsp;&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                            ���״̬��
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value=" ">δѡ</asp:ListItem>
                                                                <asp:ListItem Value="0">���</asp:ListItem>
                                                                <asp:ListItem Value="1">δ���</asp:ListItem>
                                                            </asp:DropDownList>��ĿID��<asp:TextBox ID="TextBox4" runat="server" Columns="20" MaxLength="8"
                                                                Width="64px"></asp:TextBox>
                                                            ����/���ݹؼ��֣�<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="100px"></asp:TextBox>
                                                            <asp:Button ID="bt_DoSearch" Width="60" Text='�� ѯ' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                            </asp:Button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="fh" colspan="4">
                                                        <input id="Button8" name="" type="button" value=" �� �� " onclick="DoCheck()" class="bt"/>                                                       
                                                            <input id="Button12" name="" type="button" value="ȡ�����" onclick="DoUnCheck()" class="bt"/> 
                                                            <input id="Button13" name="" type="button" value="��Ŀ����" onclick="window.open('/shop/classconfigall.aspx?classid=<%=this.classid %>&siteid=<%=base.SiteId %>&page=1&sid=<%=base.SID %>');" class="bt"/>
                                                            <input id="Button7" name="" type="button" value="�˷ѹ���" onclick="window.open('/shop/smalltypelist.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&sid=<%=base.SID %>');" Class="bt" />
                                                            <input id="Button5" name="" type="button" value="��Ź��" onclick="DoAd()" Class="bt"/>
                                                       
                                                            <input id="Button11" name="" type="button" value="�� ��" onclick="window.open('/shop/admin_WAPadd.aspx?action=class&siteid=<%=base.SiteId %>&classid=<%=this.classid %>&page=&sid=<%=base.SID %>');" Class="bt" />
                                                            <input id="Button6" name="" type="button" value="�� ��" onclick="DoEdit()" Class="bt"/>
                                                            <input id="Button4" name="" type="button" value="ɾ ��" onclick="DoDel()" Class="bt"/>
                                                            <input id="Button2" name="" type="button" value="����" onclick="DoTop()" Class="bt"/>
                                                            <input id="Button1" name="" type="button" value="ȡ������" onclick="DoCancelTop()" Class="bt"/>
                                                            <input id="Button3" name="" type="button" value="�Ӿ�" onclick="DoGood()" Class="bt"/>
                                                            <input id="Button10" name="" type="button" value="ȡ������" onclick="DoCancelGood()" Class="bt"/>
                                                            
                                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                                            </asp:DropDownList>
                                                            <input name="" type="button" value="ת���ҵ���Ŀ" onclick="DoMyItem()" id="Button9" Class="bt"/>
                                                             <input name="" type="button" value="���Ƶ�������Ŀ" onclick="DoEditCopy()" id="Button14" Class="bt"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" valign="top" align="left">
                                                <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="id" AllowSorting="True"
                                                    AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" ShowFooter="True"
                                                    OnSortCommand="DataGrid1_SortCommand" Width="100%">
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
                                                        <asp:TemplateColumn HeaderText="״̬" SortExpression="isCheck" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="column"
                                                            ItemStyle-Width="40px">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/<%#DataBinder.Eval(Container.DataItem, "isCheck")%>.gif" alt="���״̬" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="��ĿID" SortExpression="book_classid" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <input type ="hidden" id="classidtemp" name ="classidtemp" value ="<%#DataBinder.Eval(Container.DataItem,"book_classid") %>" /><a href="userlist.aspx?classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>"
                                                                    target="_self" title="���ٽ������Ŀ">
                                                                    <%#DataBinder.Eval(Container.DataItem, "book_classid")%>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                           <asp:TemplateColumn HeaderText="��ƷͼƬ"  HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                 <img src="<%#DataBinder.Eval(Container.DataItem,"book_smallimg") %>"  height ="100" width="100" alt="����ͼ"/>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                         
                                                        <asp:TemplateColumn HeaderText="��Ʒ����"  HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                 <a href="book_view.aspx?siteid=<%#DataBinder.Eval(Container.DataItem,"userid") %>&classid=<%#DataBinder.Eval(Container.DataItem,"book_classid") %>&id=<%#DataBinder.Eval(Container.DataItem,"id") %>&sid=-2-0-0-0-480"
                                                                    target="_blank" title="�鿴���¼��ظ�">
                                                                  <%#DataBinder.Eval(Container.DataItem,"book_title") %>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="�۸�" ItemStyle-Width="60px" SortExpression="book_yhjiage"  HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                
                                                                  �г��ۣ���<%#decimal.Parse(DataBinder.Eval(Container.DataItem, "book_jiage").ToString()).ToString("f2")%><br /><br />
                                                               ��Ա�ۣ���<%#decimal.Parse(DataBinder.Eval(Container.DataItem, "book_yhjiage").ToString()).ToString("f2")%>
                                                               
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        <asp:TemplateColumn HeaderText="��ά��"  ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                            <a href="javascript:ViewQR('<%#ShowQRimg(DataBinder.Eval(Container.DataItem, "id").ToString())%>');">��Ʒչʾ</a>
                                                               <br />
                                                               <br />
                                                                <a href="javascript:ViewQR('<%#ShowQRimg_pay(DataBinder.Eval(Container.DataItem, "id").ToString())%>');">֧������</a>
                                                             
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                        
                                                        <asp:TemplateColumn HeaderText="���" SortExpression="book_hottel" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_hottel")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="����" SortExpression="saleCount" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "saleCount")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="�ظ�" SortExpression="book_re" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_re")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="���" SortExpression="book_click" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_click")%>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="����" SortExpression="book_good" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="column"
                                                            ItemStyle-Width="30px">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/f<%#DataBinder.Eval(Container.DataItem, "book_good")%>.gif"
                                                                    alt="����״̬" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        <asp:TemplateColumn HeaderText="����" SortExpression="book_top" ItemStyle-HorizontalAlign="Center" HeaderStyle-CssClass="column"
                                                            ItemStyle-Width="30px">
                                                            <ItemTemplate>
                                                                <img src="/NetImages/f<%#DataBinder.Eval(Container.DataItem, "book_top")%>.gif"
                                                                    alt="����״̬" />
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                                                                             
                                                        
                                                        <asp:TemplateColumn HeaderText="����ʱ��" SortExpression="book_date" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                            <ItemTemplate>
                                                                <%#DataBinder.Eval(Container.DataItem, "book_date")%>
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
                                                <asp:Button ID="bt_go" runat="server" Text="Go" OnClick="bt_go_Click" cssClass="bt"/>
                                                
                                                <br /><br /><font color=red>��Ʒ�Ƽ��ж���������<br />һ�����������ӣ�������վͳ�ƣ�����������ָ������ҳ�棬����ÿ����ϸPV/UV/VV/IPͳ�ơ�<br />������վ��Ա�Ƽ���WAP���ҵĵ���---�Ƽ�������<br />���϶��ַ�����Ҫ�ն�cookies֧�����ڶ��������п��Բ�ѯ����</font>
                                              <br /><br /><b>  ��ά��ͼ����ڣ�/shop/upload/<%=base.SiteId %>/QR ���Խ���QRĿ¼ɾ���������������ɡ�</b>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </font>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                    </td>
                </tr>
                <tr>
                    <td>
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