<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="systemdetails.aspx.cs"
    Inherits="KeLin.WebSite.SMS.systemdetails" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%
Response.Buffer = true; 
Response.Expires = -1;
Response.ExpiresAbsolute = DateTime.Now.AddDays(-1); 
Response.Expires = 0 ;
Response.CacheControl = "no-cache";  %>
    <title>编辑短信</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/day.js" type="text/JavaScript"></script>

    <script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}
function calCtrlPopup(inputField) {
    showCalendar(inputField.name, 'y-mm-dd');
}
// ]]>
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                    <td valign="top" align="left">
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
                                                        网站管理>>短信发送>>编辑短信
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="13">
                                            <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                                    </tr>
                         </table>
                       </td>
                       <tr><td>
                       
                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                            <tbody>
                                <tr>
                                    <td class="column" colspan="2">
                                        <font face="宋体"><%=title%> </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">手机号码： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>(多个号码用逗号 , 区分，每次最多5000个)
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">定时发送：</font>
                                    </td>
                                    <td class="fh3">
                                        <font face="宋体">
                                            <asp:TextBox ID="tb_date" runat="server"></asp:TextBox>
                                            <img style="cursor:hand;" onclick="setday(this,document.all.tb_date)" TITLE="选择" src="/NetImages/choose.gif"> 
                                          （即时发送留空）
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">短信内容： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="FreeTextBox1" runat="server" Height="50px" TextMode="MultiLine" Width="400px"></asp:TextBox>(70个汉字/140个英文)
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">二维码图内容： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="QR_content" runat="server" Height="30px" TextMode="MultiLine" Width="400px"></asp:TextBox>(500内，字符越少越容易识别)
                                        <br />本系统自带校验地址：http://<%=base.GetMyDomain() %>/sms/CheckQR.aspx?QR=[id]_[mobile] 
                                        <br />其中[id]是任务ID，[mobile]是当前手机号码。二者组合可以确保本次任务的唯一性。
                                        
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">图片地址： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="QR_img" runat="server" Height="30px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                        <br />如果你在“二维码图内容”录入了内容将自动生成一张图片，你也可以在此手动录入，多张图用|区别
                                    </td>
                                </tr>
                                  <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">本次新增任务代号ID： </font>
                                    </td>
                                    <td class="fh3">
                                    
                                        <asp:TextBox ID="actionType" runat="server"></asp:TextBox>（只能录入数字，可随便弄个唯一数字标识一下即可）
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="2" align="center">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text="  保 存 " OnClick="bt_ok_Click" CssClass="bt">
                                        </asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="bt_return" runat="server" Text="  返 回  "  CssClass="bt" OnClick="bt_return_Click">
                                        </asp:Button>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                        </tr>
                       <tr>
                                <td align="center">
                                    页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                                </td>
                            </tr>
                  
                    
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
