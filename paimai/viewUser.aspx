<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewUser.aspx.cs" Inherits="KeLin.WebSite.paimai.viewUser" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
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
                                                网站管理 &gt;&gt; 内容管理 &gt;&gt;拍卖管理 &gt;&gt;拍卖内容
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
                                        <font face="宋体">编辑拍卖内容 </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 22%">
                                        <font face="宋体">缩放图：<br />
                                           </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                         <asp:TextBox ID="book_smallimg" runat="server" Width="223px"></asp:TextBox>
                                        
                                        </td>
                                </tr>
                                 <tr>
                                    <td class="f" style="width: 22%">
                                        <font face="宋体">图片地址：<br />
                                           </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                         <asp:TextBox ID="book_file" runat="server" Width="223px"></asp:TextBox>
                                        
                                        </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 22%">
                                        <font face="宋体">名称： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_name" runat="server" Width="223px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 22%">
                                        <font face="宋体">一口价： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_price" runat="server" Width="90px"></asp:TextBox>
                                     </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 22%">
                                        <font face="宋体">最低起价： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_lowprice" runat="server" Width="89px"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 22%">
                                        <font face="宋体">有效日期： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_time" runat="server" Width="144px"></asp:TextBox>
                                      
                                    </td>
                                </tr>
                                
                               
                                <tr>
                                    <td class="f" style="width: 22%">
                                        <font face="宋体">介绍 ： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="FreeTextBox1" runat="server" Height="274px" TextMode="MultiLine" Width="614px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="4" align="center">
                                        <br />                                                                                
                                        <input id="bt_return" type="button" value=" 返 回 " onclick="return bt_return_onclick()" class="bt" />
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px" align="center">
                        <span class="txt4"></span>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
