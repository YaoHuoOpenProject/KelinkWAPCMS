<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="VIPconfig.aspx.cs" Inherits="KeLin.WebSite.WeiXin.VIPconfig" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function UpLoad() {
        

        window.open("/admin/Upload_Photo.aspx?PhotoUrlID=img&info=微信编辑页面&delpath=", "addpicwindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
    }
    
    function addImgOrFile(a, b) {
       

        if (b == 'img') {
      
            
            form1.cardImg.value = "<%=this.http_start  %>" + a;

        } else if (b == 1) {

        }
    }
</script>
<title>会员卡配置</title>
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
                                                会员卡配置
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
                                     
											<font color="#FF0000"><b>用户关注本微信公共帐将默认注册会员，会员卡号即为会员用户ID</b>
											</font>
											<br /><br />
											
											
											
											</td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="宋体">会员卡图片： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="cardImg" runat="server" Width="200px"></asp:TextBox>  <input type="button" name="back" value=" 上传图片 "  class="bt" style="width:60px;" onclick="UpLoad();" /> <a href="images/test_02.jpg" target="_blank">下载VIP卡图片模板</a> 留空为默认
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="宋体">显示卡号位数： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="cardNum" runat="server" Width="200px"></asp:TextBox>（大于3，默认为会员ID,不足前面补0)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="宋体">会员卡说明： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="cardInfo" runat="server" Width="400px" Height ="100px" TextMode="MultiLine"></asp:TextBox>
                                                   
                                           
                                            
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                           <font face="宋体"> </font>
                                        </td>
                                        <td class="fh3">
                                             <tr>
                                        <td class="f" style="width: 15%">
                                           * <font face="宋体">本插件调用： </font>
                                        </td>
                                        <td class="fh3">
                                           请复制以下链接代码 <asp:TextBox ID="TextBox1" runat="server" Width="300px"   ></asp:TextBox> 到“发送消息管理”中的“添加文本消息”/“添加图文消息”中作为链接地址。自定义菜单调用“发送消息管理”的消息，否则取不到微信用户[wxid]参数。即需要先向用户回一条消息，用户点击消息后即可取得[wxid]。
                                                   
                                           
                                            
                                        </td>
                                    </tr>
                                            
                                        </td>
                                    </tr>
                                    
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                            </asp:Button> 

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
