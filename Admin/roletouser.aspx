<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roletouser.aspx.cs" Inherits="KeLin.WebSite.admin.roletouser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�����ɫ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
		<!--       
       
        function save() {
            var hidHangBiaoShis = GetOnChecked();
            //if (hidHangBiaoShis == null || hidHangBiaoShis == "") {
            //    alert("��ѡ���ɫ��")
            //    return;
            //}
            
                document.getElementById("hidHangBiaoShis").value = hidHangBiaoShis;
                document.getElementById("CommandType").value = "save";
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
                                                �û����� &gt;&gt; �����ɫ
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
                        <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                            <tbody>
                                <tr>
                                    <td class="column" colspan="4">
                                        <font face="����">�����ɫ </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="����">�û�ID�� </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="185px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="����">��ɫ�� </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                    
                                    <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="role_id" AllowSorting="True"
                                                                                AutoGenerateColumns="False" CssClass="tableBorder" PageSize="25" Width="100%" ShowFooter="True">
                                                                                <HeaderStyle Font-Bold="True" Font-Size="9pt" BackColor="#78ABDE"></HeaderStyle>
                                                                                <ItemStyle BackColor="#DDEEFF"></ItemStyle>
                                                                                <AlternatingItemStyle CssClass="fh" BackColor="White"></AlternatingItemStyle>
                                                                                <Columns>
                                                                                    <asp:TemplateColumn HeaderStyle-CssClass="column">
                                                                                        <HeaderStyle Width="40px"></HeaderStyle>
                                                                                        <ItemStyle Width="40px"></ItemStyle>
                                                                                        <HeaderTemplate><input type="checkbox" id="chkAll" name="chkAll" value="checkbox" onclick="checkAll('chkAll',this);" />����
                                                                                        </HeaderTemplate>
                                                                                        <ItemTemplate>
                                                                                        <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "role_id") %>'  <%# DataBinder.Eval(Container.DataItem, "checktag") %> onclick="checkAll('chkAll',this);"/>
                                                                                        </ItemTemplate>
                                                                                        <FooterTemplate>
                                                                                        </FooterTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="���" ItemStyle-Width="30px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#(Container.ItemIndex + 1)%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="��վID" SortExpression="siteid" ItemStyle-Width="40px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "siteid")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="��ɫID" SortExpression="role_id" ItemStyle-Width="50px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "role_id")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="��ɫ����" SortExpression="role_name" ItemStyle-Width="140px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            
                                                                                                <%#DataBinder.Eval(Container.DataItem, "role_name")%>
                                                                                            
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    <asp:TemplateColumn HeaderText="��ɫ˵��" SortExpression="role_remark" ItemStyle-Width="250px" HeaderStyle-CssClass="column">
                                                                                        <ItemTemplate>
                                                                                            <%#DataBinder.Eval(Container.DataItem, "role_remark")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateColumn>
                                                                                    
                                                                                </Columns>
                                                                            </asp:DataGrid>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="4" align="center">
                                        <br />
                                        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
                                        <input type="hidden" id="CommandType" name="CommandType" />
                                        <!--
                                        <asp:Button ID="bt_ok" runat="server" Text="�� ��" OnClick="bt_ok_Click" Width="70px"
                                            OnClientClick="CheckSave()"></asp:Button> -->
                                            <input id="bt_save" name="" type="button" value=" ��  �� " onclick="save()" class="bt"/>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text=" �� �� " OnClick="Button1_Click"  CssClass="bt"/><br />
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right">
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
