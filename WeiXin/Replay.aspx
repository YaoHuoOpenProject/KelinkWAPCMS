<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="Replay.aspx.cs" Inherits="KeLin.WebSite.WeiXin.Replay" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">

</script>
<title>回复文本消息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" name="id" value ="<%=this.id %>" />
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                    <td colspan="4">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="1%">
                                    <img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
                                <td width="98%" background="/NetImages/main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="/NetImages/i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                回复文本消息
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
                                    <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="left">
                        <div class="txt4">
                            <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                                <tbody>
                                    <tr>
                                        <td class="column" colspan="2">
                                           &nbsp;

                                        </td>
                                    </tr>
                                    
                                      <tr>
                                        <td class="f" style="width: 30%">
                                           <%=this.nickname %>
                                           
                                        </td>
                                        <td class="fh3">(<%=weixinID%> )说：<br /><br />
                                            <%=this.content %>
                                        </td>
                                    </tr>
                                   
                                    
                                    <tr>
                                        <td class="f" style="width: 30%">
                                           * <font face="宋体">消息内容： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="title" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                            <br />说明：输入消息内容，链接地址用  &lt;a href="http://链接地址"&gt;说明&lt;/a&gt;
                                            <br /><br />&nbsp;
                                        </td>
                                    </tr>
                                  
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            <asp:Button ID="bt_ok" runat="server" Text="回 复" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                            </asp:Button> 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="button" name="back" value=" 关 闭 "  class="bt" style="width:70px;" onclick="window.opener.location.reload();window.close();" /> 
                                            <br />需要开通微信认证，在48小时内不限制发送次数。


                                            <br />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
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
                      <!--  页面执行时间：<%=loadpagetime %>&nbsp;毫秒！-->
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
