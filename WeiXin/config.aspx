<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="config.aspx.cs" Inherits="KeLin.WebSite.WeiXin.config" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">

</script>
<title>微信公共帐号配置</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
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
                                                微信公共帐号配置
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
                                        <td  colspan="2"  color="#FFFFFF">
                                     
											<font color="#FF0000"><b>第一步：进入微信官方(<a target="_blank" href="http://mp.weixin.qq.com">http://mp.weixin.qq.com</a>)申请公共帐号，通过审核后配置以下对应信息</b>
											</font>
											<br /><br />
											说明：申请公众号分订阅号和服务号，订阅号每天可推送一条消息，花钱认证有自定义菜单按钮；服务号每月只能推送一条消息，底部能自定义菜单按钮等
											<br /><img src="images/1.jpg" alt="申请流程"/>
											
											
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="宋体">公众号名称： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="publicName" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="宋体">公众号原始ID： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="publicID" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            * <font face="宋体">微信号： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="weiXinName" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            * <font face="宋体">公共帐号： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:DropDownList ID="publicType" runat="server">                                                                
                                                                <asp:ListItem Value="服务号">服务号</asp:ListItem>
                                                                <asp:ListItem Value="订阅号">订阅号</asp:ListItem>                                                                
                                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  colspan="2" color="#FFFFFF">
                                           <br /><br />
											<font color="#FF0000"><b>第二步：申请成为开发者，将以下信息配置到微信官方后台
                                         
											</b></font>
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            你的接口URL是：
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="myurl" runat="server" Width="400px" ReadOnly ="true" onfocus="javascript:this.select()"></asp:TextBox> (请复制到微信后台)
                                        </td>
                                    </tr>
                                   
                                    
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">您的Token是： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="token" runat="server" Width="400px" ReadOnly ="true" onfocus="javascript:this.select()"></asp:TextBox> (请复制到微信后台)
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td  colspan="2" bgcolor="#FFFFFF">
                                           <br /><br />
											<font color="#FF0000"><b>第三步：申请成为开发者后，微信后台显示以下参数，请录入(服务号才有，花钱认证订阅号也有。)
                                         
											</b></font>
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">您的AppId是： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="AppId" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">您的AppSecret是： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="AppSecret" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                            </asp:Button> (以上不会操作请联系本系统主人或程序开发商，帮您配置好)

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
