<%@ Page Language="C#" AutoEventWireup="true" Codebehind="viewUser.aspx.cs" Inherits="KeLin.WebSite.yuehui.viewUser" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�鿴Լ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}

// ]]>
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
                                                        ������� &gt;&gt; Լ������ &gt;&gt;�鿴Լ��
                                                        
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
                                            <asp:Repeater ID="TopRepeater" runat="server">
                                                <ItemTemplate>
                                                    <table class="tableBorder" id="Table1" cellspacing="1" cellpadding="3" width="100%">
                                                        <tr>
                                                            <td class="column" colspan="2">
                                                                <table id="Table2" cellspacing="0" cellpadding="2" width="100%">
                                                                    <tr>
                                                                        <td class="dateText" valign="middle" align="left">
                                                                            <img src="/NetImages/icon_post_show.gif" align="absMiddle" border="0">&nbsp; <b><span
                                                                                id="_ctPostSubject">
                                                                                <%# DataBinder.Eval(Container.DataItem, "yh_title")%>
                                                                            </span></b>
                                                                        </td>
                                                                        <td class="dateText" align="right">
                                                                            <font face="Webdings" color="#ff0000">4</font><b><font color="#ffffff"></font></b>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="f" colspan="2">
                                                                <span class="forumThread" id="_ct">������: <b>
                                                                    <%# DataBinder.Eval(Container.DataItem, "nickname")%>
                                                                </b>&nbsp;&nbsp;&nbsp; Լ������: <b>
                                                                    <%# DataBinder.Eval(Container.DataItem, "yh_type")%>
                                                                </b>&nbsp;&nbsp;&nbsp; ����ʱ��:<b><%# DataBinder.Eval(Container.DataItem,"yh_date")%></b>&nbsp;&nbsp;&nbsp;
                                                                    ��������: <b>
                                                                        <%# DataBinder.Eval(Container.DataItem, "yh_people")%>
                                                                    </b></span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="fh3a" width="10%">
                                                                <span class="forumThread" id="_ThreadStats">����:</span></td>
                                                            <td class="fh3a">
                                                                �Ա�Ҫ��<%# DataBinder.Eval(Container.DataItem, "yh_sex")%><br />
                                                                ����Ҫ��<%# DataBinder.Eval(Container.DataItem, "yh_age")%><br />
                                                                Լ��ʱ�䣺<%# DataBinder.Eval(Container.DataItem, "yh_time")%><br />
                                                                Լ��ص㣺<%# DataBinder.Eval(Container.DataItem, "yh_address")%><br />
                                                                <br />
                                                                �ƻ���<%# DataBinder.Eval(Container.DataItem, "yh_plan")%>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <!-- Repeater Begin -->
                                            <asp:Repeater ID="SiteRepeater" runat="server">
                                                <ItemTemplate>
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                        <tr>
                                                            <td valign="top" align="center" width="100%">
                                                                <div style="padding-bottom: 3px">
                                                                    <table class="tableBorder" cellspacing="0" cellpadding="0" width="100%">
                                                                        <tr>
                                                                            <td colsan="2">
                                                                                <table cellspacing="0" cellpadding="0" width="100%" align="left">
                                                                                    <tr>
                                                                                        <td class="threadSeparator" valign="middle" align="left" colspan="2">
                                                                                            <span class="dateText" align="left">
                                                                                                <img src="/NetImages/icon_post_show.gif" border="0" />
                                                                                                <%#(Container.ItemIndex + 1) + AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1)%>
                                                                                                ¥
                                                                                                <!--��ͷ-->
                                                                                            </span>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="fh" valign="top" nowrap align="center" width="210" rowspan="2">
                                                                                            <div style="padding-top: 4px">
                                                                                                <img alt="" src="/NetImages/user_IsOffline.gif" border="0" />
                                                                                                <b>
                                                                                                    <%# DataBinder.Eval(Container.DataItem, "nickname")%>
                                                                                                </b><span class="txt2">
                                                                                                    <br>
                                                                                                    <table align="center">
                                                                                                        <tr>
                                                                                                            <td class="txt2" align="left" width="90%">
                                                                                                                <br>
                                                                                                                <b>
                                                                                                                    <br />
                                                                                                                </b>
                                                                                                                <br />
                                                                                                                �ظ�ʱ�䣺<%# DataBinder.Eval(Container.DataItem, "redate")%><br />
                                                                                                                ���״̬��<img src="/NetImages/<%#DataBinder.Eval(Container.DataItem, "ischeck")%>.gif"
                                                                                                                    alt="���״̬" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </span>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td class="f" valign="top" width="100%">
                                                                                            <table cellspacing="0" cellpadding="2" width="100%">
                                                                                                <tr align="right">
                                                                                                    <td>
                                                                                                        &nbsp;
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
                                                                                                                    <%# DataBinder.Eval(Container.DataItem, "content")%>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
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
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="30" OnPageChanged="AspNetPager1_PageChanged">
                                            </webdiyer:AspNetPager>
                                            <br />
                                            <!-- Repeater End-->
                                            <!--��ݱ༭ by Saufu
                                            <table id="Table10" cellspacing="0" cellpadding="0" border="0" style="height: 225px" width="100%">
                                                <tbody>
                                                    <tr>
                                                        <td valign="top" align="center" width="100%">
                                                            <div id="k" align="center">
                                                                <table class="tableBorder" id="Table11" cellspacing="1" cellpadding="3" width="100%"
                                                                    border="0">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="column" colspan="2" align="left">
                                                                                <span class="dateText">&nbsp;<img src="/NetImages/icon_post_show.gif" border="0">&nbsp;
                                                                                    ���ٱ༭ </span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="fh" style="width: 90px" valign="top" rowspan="2">
                                                                                UBB�﷨֧��<br>
                                                                                <br>
                                                                                ʾ��:<br>
                                                                                <b>��������</b><br>
                                                                                [b]��������[/b]
                                                                                <p>
                                                                                    &nbsp;</p>
                                                                                <br>
                                                                                <br>
                                                                                <br>
                                                                            </td>
                                                                            <td class="f" valign="top" align="left">
                                                                                <span class="txt5Bold">����:&nbsp; </span>
                                                                                <asp:TextBox ID="tb_title" runat="server" Width="521px"></asp:TextBox><span class="txt5Bold">&nbsp;
                                                                                </span>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="fh3b" valign="top" align="left">
                                                                                <asp:TextBox ID="tb_rec" runat="server" Width="606px" Height="193px" TextMode="MultiLine">
                                                                                </asp:TextBox>
                                                                                <br>
                                                                                <asp:Button ID="bt_revert" runat="server" Text=" �� �� "></asp:Button>&nbsp;&nbsp;
                                                                                <span class="QuickPostText">&nbsp; &nbsp; &nbsp; </span>
                                                                                
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            �ݻظ� ����-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="center">
                                            <!--Repeater-->
                                            <input id="bt_return" type="button" value=" �� �� " onclick="return bt_return_onclick()" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr align="right">
                    <td>
                        
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡</td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
    </form>
</body>
</html>
