<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" Codebehind="search.aspx.cs"
    Inherits="KeLin.WebSite.visiteCount.search" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="ProgId" content="SharePoint.WebPartPage.Document">
<meta name="WebPartPageExpansion" content="full">
<title>����ͳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
<script language="JavaScript" src="JSClass/FusionCharts.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
	    
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
function OpenWindows(a) { 
window.open("configsite.aspx?siteid="+a, "addsystemwindow", "height=400, width=500, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
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
                                                        ϵͳ���� >> ������ͳ�� >> ��վ��ϸͳ�� 
                                                        
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
                        <table id="Table2" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                height="100%" width="100%">
                                                <tr>
                                                    <td class="column">
                                                        ��������ͳ�Ʊ���</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh">
                                                       <div id="chartdiv" align="center"> <img  src="/NetImages/load.gif" align="absmiddle">&nbsp;&nbsp; ���Ժ�3Dͼ�ͱ��������... </div>

                                                             <script type="text/javascript">
                                                                 var chart = new FusionCharts("Charts/MSLine.swf", "ChartId", "100%", "350");
                                                                 //chart.setDataURL("Charts/MSLine3.xml");
                                                                 chart.setDataXML("<%=this.xmldata %>");
                                                                 chart.render("chartdiv");
                                                             </script>
                                                     </td>
                                                </tr>
                                                </table>
                                        &nbsp;<br />
                            <table id="Table1" width="100%" class="TABLE6">
                                <tbody>
                                    <tr>
                                        <td colspan="4">
                                            <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                height="100%" width="100%">
                                                <tr>
                                                    <td class="column">
                                                        ��ѯ����</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh">
                                                       
                                                      
                                                        ��վID��<asp:TextBox ID="TextBox1" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>                                                        
                                                        ͳ��ҳ���ʶ��<asp:TextBox ID="TextBox2" runat="server" Columns="20" MaxLength="20" Width="50px"></asp:TextBox>(��Ҫ����)
                                                        ���������<asp:TextBox ID="TextBox3" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                        &nbsp;���ڴӣ�<asp:TextBox ID="TextBox4" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
                                                        &nbsp;<img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox4'})"
                                                            title="ѡ������" />
                                                        ����<asp:TextBox ID="TextBox5" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
                                                       
                                                        <img id="img1" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox5'})"
                                                            title="ѡ������" /> &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp;<asp:Button ID="bt_DoSearch" Width="60" Text='�� ѯ' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                        &nbsp;<asp:Button ID="Button1" Width="60" Text='�� ��' runat="server" OnClick="bt_DoReset_Click" CssClass="bt">
                                                        </asp:Button>
                                                        &nbsp;&nbsp;
                                                       
                                                        <input id="Button4" name="" type="button" value=" ɾ �� " onclick="DoDel()" class="bt" style="Width:60px"/>
                                                        </td>
                                                </tr>
                                                </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left">
                                            <asp:DataGrid ID="DataGrid1" runat="server" DataKeyField="id" AllowSorting="True"
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
                                                            <input type="checkbox" name="chkSelect" value='<%# DataBinder.Eval(Container.DataItem, "id") %>'
                                                                onclick="checkAll('chkAll',this);" />
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                   
                                                    <asp:TemplateColumn HeaderText="����" SortExpression="everydate" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#getShowDate(DataBinder.Eval(Container.DataItem,"everydate").ToString())%>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="��վID" SortExpression="siteid" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>                                                           
                                                                <%#DataBinder.Eval(Container.DataItem,"siteid")%><br />
                                                                [<%#DataBinder.Eval(Container.DataItem,"types")%>]
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="PV" SortExpression="PV" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>                                                            
                                                                <%#DataBinder.Eval(Container.DataItem,"PV")%>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="UV" SortExpression="UV" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem,"UV")%>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="VV" SortExpression="VV" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "VV")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="IP" SortExpression="IP" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                            <%#DataBinder.Eval(Container.DataItem, "IP")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    
                                                    <asp:TemplateColumn HeaderText="�ȸ�" SortExpression="sh_google" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_google")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="����" SortExpression="sh_soso" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_soso")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                     <asp:TemplateColumn HeaderText="�ٶ�" SortExpression="sh_baidu" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_baidu")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�ѹ�" SortExpression="sh_sogou" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_sogou")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�Ż�" SortExpression="sh_yahoo" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_yahoo")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="��Ӧ" SortExpression="sh_bing" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_bing")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="�е�" SortExpression="sh_youdao" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_youdao")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="����" SortExpression="sh_gougou" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_gougou")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="������ϸ"   HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <a href="dataillist.aspx?fromdate=<%#getShowDate(DataBinder.Eval(Container.DataItem,"everydate").ToString())%>&types=<%#DataBinder.Eval(Container.DataItem, "types")%>">�鿴</a>
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
