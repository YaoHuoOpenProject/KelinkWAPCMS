<%@ Page Language="C#" AutoEventWireup="true" Codebehind="fyday.aspx.cs" Inherits="KeLin.WebSite.visiteCount.fyday" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>月统计</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                            <td>
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
                                                        系统管理 &gt;&gt; 公告信息 &gt;&gt; 按月统计
                                                        
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
                            <font face="宋体">
                                <table id="Table1" width="100%" class="TABLE6">
                                    <tbody>
                                        <tr>
                                            <td colspan="5" align="center">
                                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  CssClass="bt">当前月份统计</asp:LinkButton>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  CssClass="bt">所有月份统计</asp:LinkButton>
                                                &nbsp;&nbsp;&nbsp;&nbsp;总访问人数：<%=total %>
                                            </td>
                                        </tr>
                                        <tr>
                                            
                                            <td colspan="3" valign="top" align="left">
                                                <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="fvalueDec">
                                                    <HeaderTemplate>
                                                        <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0" width="100%">
                                                            <tr>
                                                                <td class="column" width="100px">
                                                                    日期</td>
                                                                <td class="column" width="120px">
                                                                    访问人数</td>
                                                                <td class="column" width="460px">
                                                                    比例图--报表</td>
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
                                                        </tr>
                                                        </table>
                                                    </FooterTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td class="f">
                                                                <%# DataBinder.Eval(Container.DataItem, "fvalueDec")%>
                                                            </td>
                                                            <td class="f">
                                                                <%# DataBinder.Eval(Container.DataItem, "fdaytotal")%>
                                                            </td>
                                                            <td class="f">
                                                                <img src="image/b3.gif" width="<%# DataBinder.Eval(Container.DataItem, "fdaytotal")%>"
                                                                    height="10px" />
                                                                <%# DataBinder.Eval(Container.DataItem, "percents")%>
                                                                %</td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <AlternatingItemTemplate>
                                                        <tr>
                                                            <td class="fh">
                                                                <%# DataBinder.Eval(Container.DataItem, "fvalueDec")%>
                                                            </td>
                                                            <td class="fh">
                                                                <%# DataBinder.Eval(Container.DataItem, "fdaytotal")%>
                                                            </td>
                                                            <td class="fh">
                                                                <img src="image/b3.gif" width="<%# DataBinder.Eval(Container.DataItem, "fdaytotal")%>"
                                                                    height="10px" />
                                                                <%# DataBinder.Eval(Container.DataItem, "percents")%>
                                                                %</td>
                                                        </tr>
                                                    </AlternatingItemTemplate>
                                                </asp:DataList>
                                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30">
                                                </webdiyer:AspNetPager>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </font>
                        </div>
                     </td>
                </tr>
                        <tr align="right">
                            <td>
                               
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                                页面执行时间：ime %>&nbsp;&nbsp;毫秒</td>
                        </tr>
                        <tr>
                            <td class="border_right" style="width: 10px; height: 30px;">
                                
                            </td>
                        </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
