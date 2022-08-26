<%@ Page Language="C#" AutoEventWireup="true" Codebehind="viewUser.aspx.cs" Inherits="KeLin.WebSite.link.viewUser" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>友情链接内容</title>
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
                                                网站管理 &gt;&gt; 内容管理 &gt;&gt;友情链接内容&gt;&gt;查看
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
                                        <td colspan="4" >
                                            
                                                    <table class="tableBorder" id="Table1" cellspacing="1" cellpadding="3" width="100%">
                                                        <asp:Repeater ID="TopRepeater" runat="server">
                                                <ItemTemplate>
                                                        <tr>
                                                            <td class="column" colspan="2">
                                                                <table id="Table2" cellspacing="0" cellpadding="2" width="100%">
                                                                    <tr>
                                                                        <td class="dateText" valign="middle" align="left">
                                                                            <img src="/NetImages/icon_post_show.gif" align="absMiddle" border="0">&nbsp; <b><span
                                                                                id="_ctPostSubject">
                                                                                <%# DataBinder.Eval(Container.DataItem,"book_title")%>
                                                                            </span></b>
                                                                        </td>
                                                                        <td class="dateText" align="right">
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="f" colspan="2">
                                                                <span class="forumThread" id="_ct">提交者: <b>
                                                                    <%# DataBinder.Eval(Container.DataItem,"book_author")%>
                                                                </b>&nbsp;&nbsp;&nbsp; 提交时间:<b><%# DataBinder.Eval(Container.DataItem,"book_date")%></b>&nbsp;&nbsp;&nbsp;
                                                                    返回点数: <b>
                                                                        <%# DataBinder.Eval(Container.DataItem,"book_re")%>
                                                                    </b>
                                                                      &nbsp;点击: <b>
                                                                        <%# DataBinder.Eval(Container.DataItem,"book_click")%>
                                                                    </b>
                                                                    </span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="fh3a" width="10%">
                                                                <span class="forumThread" id="_ThreadStats">网站介绍:</span></td>
                                                            <td class="fh3a">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem,"book_content")%>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="fh3a" width="10%">
                                                                <span class="forumThread" id="Span1">网站地址:</span></td>
                                                            <td class="fh3a">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;<%# DataBinder.Eval(Container.DataItem,"book_pub")%>
                                                            </td>
                                                        </tr>
                                             </ItemTemplate>
                                            </asp:Repeater>
                                                        <tr>
                                                            <td class="fh3a" colspan="2">
                                                            
                                                            </td>
                                                        </tr>
                                                    </table>
                                                
                                            
                                         
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" valign="top" align="center">
                                            <!--Repeater-->
                                            <input id="bt_return" type="button" value=" 返 回 " onclick="return bt_return_onclick()" class="bt"/>
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
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！</td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" id="CommandType" name="CommandType" value="<%=strCommandType%>" />
        <input type="hidden" id="hidHangBiaoShis" name="hidHangBiaoShis" />
    </form>
</body>
</html>
