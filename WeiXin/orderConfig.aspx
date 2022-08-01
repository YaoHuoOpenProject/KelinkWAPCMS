<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="orderConfig.aspx.cs" Inherits="KeLin.WebSite.WeiXin.orderConfig" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function UpLoad() {
        

        window.open("mapshow.aspx", "mapwidows", "height=450, width=580, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
    }
    
    function addImgOrFile(a, b) {
       

        if (b == 'img') {
      
            
            form1.cardImg.value = "<%=this.http_start  %>" + a;

        } else if (b == 1) {

        }
    }
</script>
<title>系统指令配置</title>
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
                                                系统指令说明
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
                                     
											<font color="#FF0000"><b>用户在微信上操作，将响应对应的动作。</b>
											</font>
											<br /><br />
											
											
											
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">关注本微信 </font>
                                        </td>
                                        <td class="fh3">
                                           将注册本网站，会员密码为微信ID后四位。
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">发送关键字：密码+XXXX  </font>
                                        </td>
                                        <td class="fh3">
                                           将重置本网站密码为XXXX，及返回会员ID，新密码短消息。
                                        </td>
                                    </tr>
                                   
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">发送关键字：帐号 </font>
                                        </td>
                                        <td class="fh3">
                                          返回会员ID，密码短消息。                                          
                                        </td>
                                    </tr>
                                    
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">“+”发一张图片 </font>
                                        </td>
                                        <td class="fh3">
                                          将在“发送消息管理”中查找关键字“图片”消息。                                          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">“+”发语音 </font>
                                        </td>
                                        <td class="fh3">
                                          将在“发送消息管理”中查找关键字“语音”消息。                                          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">“+”发视频 </font>
                                        </td>
                                        <td class="fh3">
                                          将在“发送消息管理”中查找关键字“视频”消息。                                          
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">“+”发位置 </font>
                                        </td>
                                        <td class="fh3">
                                          将在“LBS地理位置回复”中响应。                                          
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                           

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
