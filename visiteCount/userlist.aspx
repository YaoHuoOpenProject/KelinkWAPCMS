<%@ Page Language="C#" AutoEventWireup="true" Codebehind="userlist.aspx.cs" Inherits="KeLin.WebSite.visiteCount.userlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>网站统计排行</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript">
    function openWin(a) {
        window.open("modify.aspx?tousername=" + a, "awin", "height=550, width=600, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
    }

</script>
</head>
<body>
    <form id="form1" runat="server">
<table width="100%"  border="0" cellpadding="0" cellspacing="0" >
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="/NetImages/i08.gif" width="16" height="16"></td>
                <td width="98%" height="24" valign="middle">
                	系统管理 >> 网站统计排行 
                	 
                	
                  		           
 
                  		 </td>
                </tr>
              </table></td>
              <td width="13"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6" >
            <tr>
                                        <td colspan="5" style="height: 71px" align="center">
                                       
                                                    <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="0" border="0"
                                                        height="90%" width="99%">
                                                        <tr>
                                                            <td class="fh" align="left">&nbsp;
                                                             关健字：&nbsp;
                                                    
                                                        <asp:TextBox runat="server" ID="txtKey" Width="245px"></asp:TextBox>
                                                        排序：
                                                        <asp:DropDownList ID="ddl_sort" runat="server">
                                                            <asp:ListItem Value="0">总访问量PV</asp:ListItem>
                                                            <asp:ListItem Value="1">总访问量UV</asp:ListItem>
                                                           
                                                            <asp:ListItem Value="8">最近注册</asp:ListItem>
                                                        </asp:DropDownList>
                                                        &nbsp;<asp:Button ID="doSearch" Width="60" Text='搜索' runat="server" OnClick="doSearch_Click" CssClass="bt">
                                                        </asp:Button>
                                                         </td>
                                                        </tr>
                                                    </table>
                                                   
                                                </td>

                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="left" style="height: 194px;" width="100%">
                                            <!-- Repeater Begin -->
                                            <asp:Repeater ID="SiteRepeater" runat="server">
                                                <ItemTemplate>
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0" >
                                                        <tr>
                                                            <td width="5">
                                                                <img height="1" src="images2/spacer.gif" width="5" />
                                                            </td>
                                                            <td valign="top" align="center" width="100%">
                                                                <div style="padding-bottom: 3px">
                                                                    <table class="tableBorder" cellspacing="0" cellpadding="0" width="100%">
                                                                        <tr>
                                                                            <td colsan="2">
                                                                                <table cellspacing="0" cellpadding="0" width="100%" align="left">
                                                                                    <tr>
                                                                                        <td class="threadSeparator" valign="middle" align="right" colspan="2">
                                                                                            
                                                                                                <!--img src="/NetImages/icon_post_show.gif" border="0" /--><!--标头-->
                                                                                                
                                                                                              
                                                                                                
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="fh" valign="top" nowrap align="center" width="210" rowspan="2">
                                                                                            <div style="padding-top: 4px">
                                                                                                <img alt="" src="/NetImages/user_IsOffline.gif" border="0" />
                                                                                                <b>
                                                                                                    <%# DataBinder.Eval(Container.DataItem, "vtitle")%>
                                                                                                </b><span class="txt2">
                                                                                                    <br>
                                                                                                    <table align="center">
                                                                                                        <tr>
                                                                                                            <td class="txt2" align="left" width="90%">
                                                                                                                <br>
                                                                                                                <b><a href="<%# DataBinder.Eval(Container.DataItem, "vurl")%>" target="_blank">
                                                                                                                    <%# DataBinder.Eval(Container.DataItem, "vurl")%>
                                                                                                                </a>
                                                                                                                    <br />
                                                                                                                </b>
                                                                                                                <br />
                                                                                                                站长名称：<%# DataBinder.Eval(Container.DataItem, "vbanzhu")%><br />
                                                                                                                站长邮箱：<%# DataBinder.Eval(Container.DataItem, "vemail")%><br />
                                                                                                                注册时间：<%# DataBinder.Eval(Container.DataItem, "vregtime")%>
                                                                                                                 
                                                                                                                
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </span>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td class="f" valign="top" width="100%">
                                                                                            <table cellspacing="0" cellpadding="2" width="100%">
                                                                                                <tr>
                                                                                                    <td class="column" style="width: 70px">
                                                                                                        总访问量PV</td>
                                                                                                    <td class="column" style="width: 80px">
                                                                                                        总访问量UV</td>
                                                                                                    <td class="column" style="width: 80px">
                                                                                                        </td>
                                                                                                    <td class="column" style="width: 80px">
                                                                                                        </td>
                                                                                                    <td class="column" style="width: 80px">
                                                                                                        </td>
                                                                                                    <td class="column" style="width: 80px">
                                                                                                        </td>
                                                                                                    <td class="column" style="width: 80px">
                                                                                                        </td>
                                                                                                    <td class="column" style="width: 80px">
                                                                                                        </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td class="f" style="width: 70px">
                                                                                                        <%# DataBinder.Eval(Container.DataItem, "vtotal")%>
                                                                                                    </td>
                                                                                                    <td class="f" style="width: 80px">
                                                                                                        <%# DataBinder.Eval(Container.DataItem, "vtotal1")%>
                                                                                                    </td>
                                                                                                    <td class="f" style="width: 80px">
                                                                                                        
                                                                                                    </td>
                                                                                                    <td class="f" style="width: 80px">
                                                                                                         
                                                                                                    </td>
                                                                                                    <td class="f" style="width: 80px">
                                                                                                         
                                                                                                    </td>
                                                                                                    <td class="f" style="width: 80px">
                                                                                                        
                                                                                                    </td>
                                                                                                    <td class="f" style="width: 80px">
                                                                                                        
                                                                                                    </td>
                                                                                                    <td class="f" style="width: 80px">
                                                                                                        
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="fh3a" valign="top">
                                                                                            <table cellspacing="2" cellpadding="0" width="100%" align="left" border="0">
                                                                                                <tr>
                                                                                                    <td width="1" rowspan="2">
                                                                                                        <img height="50px" src="/NetImages/spacer.gif" width="1" />
                                                                                                    </td>
                                                                                                    <td class="txt4" style="padding-top: 4px" valign="top">
                                                                                                        <table cellspacing="0" cellpadding="4" width="90%" align="left">
                                                                                                            <tr>
                                                                                                                <td class="txt4" valign="top" align="left">
                                                                                                                    <%# DataBinder.Eval(Container.DataItem, "vcontent")%>
                                                                                                                    
                                                                                                                    
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                              <%if (base.ManagerLvl == "00")
                                                                                                                  { %>
                                                                                                                <p align="right">
                                                                                                                <input type="button" name="gg" onclick="javascript:openWin('<%# DataBinder.Eval(Container.DataItem, "vuser")%>')" value="修 改" class ="bt" />
                                                                                                                </p>
                                                                                                                <%} %>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                            <td width="5">
                                                                <img height="1" src="images2/spacer.gif" width="5" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <!-- Repeater End-->
                                             <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="25" UrlPaging="true"
                                                    ShowPageIndexBox="Always" PageIndexBoxType="TextBox" TextBeforePageIndexBox="Go To Page: "
                                                    HorizontalAlign="left" OnPageChanged="AspNetPager1_PageChanged" EnableTheming="true"
                                                    PageButtonCount="5" ShowBoxThreshold="5" ShowInputBox="Never">
                                                </webdiyer:AspNetPager>
                                              转到:<asp:TextBox ID="tb_page" runat="server" Width="30px"></asp:TextBox>
                                                每页:<asp:TextBox ID="tb_pagecount" runat="server" Width="30px"></asp:TextBox>                                                
                                                <asp:Button ID="Button1" runat="server" Text="Go" OnClick="bt_go_Click" CssClass="bt"/>
                                            <br />&nbsp;
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                    <td class="border_right" style="width: 10px; height: 30px;">
                    </td>
                </tr>
                <tr align="right" height="10px">
                    <td>
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！</td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
