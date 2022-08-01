<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" Codebehind="search.aspx.cs"
    Inherits="KeLin.WebSite.visiteCount.search" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="ProgId" content="SharePoint.WebPartPage.Document">
<meta name="WebPartPageExpansion" content="full">
<title>流量统计</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>
<script language="JavaScript" src="JSClass/FusionCharts.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
	    
        function DoDel() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidDelHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "delsite";
                document.getElementById("form1").submit();
            }
        }
        function DoConfig() {
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
                                                        系统管理 >> 访问量统计 >> 网站详细统计 
                                                        
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
                                                        搜索引擎统计报表</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh">
                                                       <div id="chartdiv" align="center"> <img  src="/NetImages/load.gif" align="absmiddle">&nbsp;&nbsp; 请稍后，3D图型报表加载中... </div>

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
                                                        查询条件</td>
                                                </tr>
                                                <tr>
                                                    <td class="fh">
                                                       
                                                      
                                                        网站ID：<asp:TextBox ID="TextBox1" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>                                                        
                                                        统计页面标识：<asp:TextBox ID="TextBox2" runat="server" Columns="20" MaxLength="20" Width="50px"></asp:TextBox>(不要动它)
                                                        最近天数：<asp:TextBox ID="TextBox3" runat="server" Columns="20" MaxLength="20" Width="40px"></asp:TextBox>
                                                        &nbsp;日期从：<asp:TextBox ID="TextBox4" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
                                                        &nbsp;<img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox4'})"
                                                            title="选择日期" />
                                                        到：<asp:TextBox ID="TextBox5" runat="server" Columns="10" MaxLength="10"></asp:TextBox>
                                                       
                                                        <img id="img1" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'TextBox5'})"
                                                            title="选择日期" /> &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp;<asp:Button ID="bt_DoSearch" Width="60" Text='查 询' runat="server" OnClick="bt_DoSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                        &nbsp;<asp:Button ID="Button1" Width="60" Text='重 置' runat="server" OnClick="bt_DoReset_Click" CssClass="bt">
                                                        </asp:Button>
                                                        &nbsp;&nbsp;
                                                       
                                                        <input id="Button4" name="" type="button" value=" 删 除 " onclick="DoDel()" class="bt" style="Width:60px"/>
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
                                                   
                                                    <asp:TemplateColumn HeaderText="日期" SortExpression="everydate" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#getShowDate(DataBinder.Eval(Container.DataItem,"everydate").ToString())%>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </FooterTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="网站ID" SortExpression="siteid" HeaderStyle-CssClass="column">
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
                                                    
                                                    <asp:TemplateColumn HeaderText="谷歌" SortExpression="sh_google" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_google")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="搜搜" SortExpression="sh_soso" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_soso")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                     <asp:TemplateColumn HeaderText="百度" SortExpression="sh_baidu" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_baidu")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="搜狗" SortExpression="sh_sogou" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_sogou")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="雅虎" SortExpression="sh_yahoo" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_yahoo")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="必应" SortExpression="sh_bing" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_bing")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="有道" SortExpression="sh_youdao" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_youdao")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="狗狗" SortExpression="sh_gougou" HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <%#DataBinder.Eval(Container.DataItem, "sh_gougou")%>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="其它明细"   HeaderStyle-CssClass="column">
                                                        <ItemTemplate>
                                                           <a href="dataillist.aspx?fromdate=<%#getShowDate(DataBinder.Eval(Container.DataItem,"everydate").ToString())%>&types=<%#DataBinder.Eval(Container.DataItem, "types")%>">查看</a>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" HorizontalAlign="Left"
                                                OnPageChanged="AspNetPager1_PageChanged" PageButtonCount="5">
                                            </webdiyer:AspNetPager>
                                            转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                            每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>
                                            
                                     
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
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidDelHangBiaoShis" name="hidDelHangBiaoShis" />
    </form>
</body>
</html>
