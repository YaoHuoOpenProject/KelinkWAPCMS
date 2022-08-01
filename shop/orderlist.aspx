<%@ Page Language="C#" AutoEventWireup="true" Codebehind="orderlist.aspx.cs" Inherits="KeLin.WebSite.shop.orderlist" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%
    Response.Buffer = true;
    Response.Expires = -1;
    Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
    Response.Expires = 0;
    Response.CacheControl = "no-cache"; 
 %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>��������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="refresh" content="1800;url=orderlist.aspx" />

<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
    <script language="javascript" type="text/javascript">
		<!--    
		function DoEdit() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("��ѡ����Ҫ�޸ĵ��")
                return;
            }
            if (SelectNo > 1) {
                alert("�޸�����ʱ���ܶ�ѡ��")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            //document.getElementById("hidHangBiaoShis").value = edtHangBiaoShis;
           // window.location.href = "admin_modifyUserOrder.aspx?bookid=" + edtHangBiaoShis;
            GoOpenWin(edtHangBiaoShis);
            //document.getElementById("CommandType").value = "Eidt";
            //document.getElementById("form1").submit();
        }
        function GoOpenWin(id) {
            window.open("/shop/orderlistWAPMod.aspx?action=godel&siteid=<%=base.SiteId %>&classid=0&id="+id+"&sid=<%=base.SID%> %>");
        }
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
            window.location.href = "guestlist.aspx?classid=" + document.getElementById("TextBox4").value;              
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
            window.location.href="userlist.aspx?classid=";
        }
        function DoReback() {
            window.location.href="orderlist.aspx?classid="+document.getElementById("TextBox1").value;
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=shop&classid="+document.getElementById("TextBox1").value;  
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
function DoOrder() {
    //window.open("/shop/orderlistWAP.aspx?siteid=<%=base.SiteId%>&classid=0&sid=<%=base.SID %>");
    window.location.href = "/shop/orderlist.aspx?siteid=<%=base.SiteId%>";

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
                                                ��վ���� &gt;&gt; �̵����ݹ��� &gt;&gt;��������
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
                                                       <a style="cursor: hand" onclick="DoContent()">���ݹ���</a>&nbsp;&nbsp;&nbsp;<a style="cursor: hand" onclick="DoReBack()">�ظ�����</a>&nbsp;&nbsp;&nbsp;<a style="cursor: hand" onclick="DoOrder()">��������</a>
                                                        <!--<a style="cursor: hand"
                                                            onclick="DoSmall()">С�����</a>-->&nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="4" >
                                                        ����״̬��
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem Value="">�Ա�ģʽ</asp:ListItem>
                                                                <asp:ListItem Value="0">0_�ȴ���Ҹ���</asp:ListItem>   
                                                                <asp:ListItem Value="11">11_����Ѹ���</asp:ListItem>   
                                                                <asp:ListItem Value="12">12_�����ѷ���</asp:ListItem>   
                                                                <asp:ListItem Value="13">13_���׳ɹ�</asp:ListItem>   
                                                                <asp:ListItem Value="14">14_���׹ر�</asp:ListItem>   
                                                                <asp:ListItem Value="15">15_�˿���</asp:ListItem>   
                                                                                                                       
                                                                <asp:ListItem Value="">��������ģʽ</asp:ListItem>
                                                                 <asp:ListItem Value="0">0_δȷ��δ����</asp:ListItem>   
                                                                 <asp:ListItem Value="4">4_��ȷ��δ����</asp:ListItem>   
                                                                <asp:ListItem Value="1">1_��ȷ���ѷ���</asp:ListItem>                                            
                                                                <asp:ListItem Value="2">2_�ѷ�����ǩ��</asp:ListItem>                                                          
                                                                <asp:ListItem Value="3">3_�ѷ���δǩ��</asp:ListItem>                                                          
                                                                <asp:ListItem Value="-1">-1_�ѱ��ͻ�ȡ��</asp:ListItem>                                                                              
                                                            </asp:DropDownList>
                                                        �����ţ�<asp:TextBox ID="TextBox4" runat="server" Width="64px"></asp:TextBox>������<asp:TextBox
                                                            ID="TextBox2" runat="server" Columns="20" MaxLength="8" Width="100px"></asp:TextBox>
                                                            �绰��<asp:TextBox
                                                            ID="TextBox3" runat="server" Columns="20" MaxLength="20" Width="100px"></asp:TextBox>
                                                            ��Ʒ�ؼ��֣�<asp:TextBox
                                                            ID="TextBox6" runat="server" Columns="20" MaxLength="8" Width="100px"></asp:TextBox>
                                                       <br /> &nbsp;&nbsp;
                                                        ʱ��ӣ�<asp:TextBox ID="TextBox1" runat="server" Columns="20" MaxLength="8"
                                                            Width="105px"></asp:TextBox>
                                                        <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox1'})"
                                                            title="ѡ������" />
                                                        ����<asp:TextBox ID="TextBox5" runat="server" Columns="20" MaxLength="8" Width="105px"></asp:TextBox>
                                                       
                                                        <img id="img1" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox5'})"
                                                            title="ѡ������" />
                                                             &nbsp;&nbsp;���Ի�ԱID��<asp:TextBox ID="TextBox7" runat="server" Width="64px"></asp:TextBox>
                                                             ��������ID��<asp:TextBox ID="TextBox8" runat="server" Width="64px"></asp:TextBox>
                                                        <asp:Button ID="bt_DoSearch" Width="60" Text='�� ѯ' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<input id="Button3" name="" type="button" value="�� ��" onclick="window.location.href='orderlist.aspx'" class="bt" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;<input id="Button7" name="" type="button" value="����Excel" onclick="window.location='orderlist_toExcel.aspx?CommandType=toexcel';" class="bt"/>
                                                    
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="fh" colspan="4">
                                                        <input id="Button5" name="" type="button" value=" ������ " onclick="DoEdit()" class="bt" />
                                                        &nbsp;&nbsp;
                                                             <input id="Button2" name="" type="button" value="�����´���" onclick="window.open('orderlist.aspx?siteid=<%=base.SiteId %>')" class="bt" />
                                                    &nbsp;&nbsp;
                                                    <%if ("|00|01|".IndexOf(base.ManagerLvl) > 0)
                                                      { %>
                                                        <input id="Button4" name="" type="button" value=" ɾ �� " onclick="DoDel()" class="bt"/>
                                                        &nbsp;&nbsp;
                                                        
                                                        <input id="Button1" name="" type="button" value="���һ����ǰ����" onclick="window.open('orderlistWAP_del.aspx?action=goall&siteid=<%=base.SiteId %>&classid=0&sid=<%=base.SID %>')" class="bt" />
                                                    &nbsp;&nbsp;
                                                    <%} %>
                                                    <font color=red><b>�����ܼ�:��<%=totalMoney.ToString("f2") %></b></font>
                                                    <br /><br />
                                                    ����״̬ģʽ���Ե�����վĬ�����á���40�������û�������ģʽ���Ա�ģʽ, &nbsp;&nbsp;��59�����������ʼ����գ��ֻ�΢�ſ����������Ѳ�����ֻ��˿����յ�������
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
                                                    <asp:TemplateColumn HeaderText="������" SortExpression="orderID" ItemStyle-Width="150px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                          
                                                          <b> <%#DataBinder.Eval(Container.DataItem, "orderID")%> </b>    
                                                           <br />
                                                         
                                                           <br />�¶�ʱ��:<br />
                                                           <%#DataBinder.Eval(Container.DataItem, "orderdate")%><br />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="״̬" SortExpression="state" ItemStyle-Width="150px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                          <font color="red"><%#ShowState(DataBinder.Eval(Container.DataItem, "state").ToString())%>      </font>                                                 </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="������Ʒ" SortExpression="shopid" ItemStyle-Width="250px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            
                                                                <%#ShowHTML(DataBinder.Eval(Container.DataItem, "productname").ToString())%>
                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                
                                                   
                                                   
                                                   
                                                    <asp:TemplateColumn HeaderText="����" SortExpression="productjiage" ItemStyle-Width="60px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "productjiage").ToString().Replace(".0000", ".00")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�˷�" SortExpression="book_charge" ItemStyle-Width="60px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "book_charge").ToString().Replace(".0000", ".00")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                   <asp:TemplateColumn HeaderText="�����ܼ�" SortExpression="productmoney" ItemStyle-Width="100px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "productmoney").ToString().Replace(".0000",".00")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�¶���Ա" SortExpression="userid" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            
                                                                <%#DataBinder.Eval(Container.DataItem, "nickname")%>(ID:<%#DataBinder.Eval(Container.DataItem,"userid") %>)
                                                                <hr />
                                                                <a href="/admin/UserModify.aspx?UserID=<%#DataBinder.Eval(Container.DataItem, "fromUserID")%>" target="_blank">�Ƽ���ԱID:<%#DataBinder.Eval(Container.DataItem, "fromUserID")%></a><br />
                                                                <hr />
                                                                <a href="/link/userlist.aspx?id=<%#DataBinder.Eval(Container.DataItem, "fromLinkID")%>" target="_blank">�Ƽ�����ID:<%#DataBinder.Eval(Container.DataItem, "fromLinkID")%></a>
                                                           
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                     <asp:TemplateColumn HeaderText="��ϵ�绰" SortExpression="mobile" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            
                                                                <%#DataBinder.Eval(Container.DataItem, "mobile")%>
                                                           
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�ͻ���ַ" SortExpression="remark" ItemStyle-Width="200px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#ShowHTML(DataBinder.Eval(Container.DataItem, "remark").ToString())%>
                                                            <br />------<br /><b>�곤�ظ�:</b><%#DataBinder.Eval(Container.DataItem, "book_reply")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                   
                                                   
                                                    <asp:TemplateColumn HeaderText="����֧��" SortExpression="orderdate" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#ShowPayState(DataBinder.Eval(Container.DataItem, "payState").ToString(), DataBinder.Eval(Container.DataItem, "payTime").ToString(), DataBinder.Eval(Container.DataItem, "state").ToString())%>
                                                            
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                     <asp:TemplateColumn HeaderText="������" SortExpression="orderdate" ItemStyle-Width="120px" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <a href="javascript:GoOpenWin('<%#DataBinder.Eval(Container.DataItem, "id")%>');">���ļ۸�<br />�ͻ�����</a>
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
                                            <br /><br />(30�����Զ�ˢ��һ��)
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
