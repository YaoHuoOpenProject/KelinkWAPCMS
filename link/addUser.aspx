<%@ Page Language="C#" AutoEventWireup="true" Codebehind="addUser.aspx.cs" Inherits="KeLin.WebSite.link.addUser" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>友情链接</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
function CheckSave() {             
            if (document.getElementById("tb_source").length > 4) { 
                alert("签到送分不能超过4位！");
                document.getElementById("tb_source").focus();
                return false;
            }  
            if (document.getElementById("tb_sendmoney").length > 4)  {
                alert("悬赏分不能超过4位！");
                document.getElementById("tb_sendmoney").focus();
                return false;
            }  
            if (document.getElementById("tb_title").value == "")  {
                alert("标题不能为空！");
                document.getElementById("tb_title").focus();
                return false;
            } 
            if (document.getElementById("FreeTextBox1").value =="")  {
                alert("内容不能为空！");
                document.getElementById("FreeTextBox1").focus();
                return false;
            }                     
            return true;
        }
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
                                        <td width="1%">
                                            <img src="../Images/main_title_01.gif" width="12" height="24"></td>
                                        <td width="98%" background="../Images/main_title_02.gif">
                                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="2%">
                                                        <div align="center">
                                                            <img src="../Images/i08.gif" width="16" height="16"></div>
                                                    </td>
                                                    <td width="98%" height="24" valign="middle">
                                                        网站管理 &gt;&gt; 内容管理 &gt;&gt;友情链接
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="1%">
                                            <img src="../Images/main_title_03.gif" width="13" height="24"></td>
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
                                        <font face="宋体">友情链接 </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">网站名称： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="185px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">网站地址： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_pub" runat="server" Width="294px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">网站类别：</font>
                                    </td>
                                    <td class="fh3" style="width: 34%">
                                        <font face="宋体">
                                            <asp:DropDownList ID="ddl_type" runat="server">
                                            </asp:DropDownList></font></td>
                                    <td width="20%" class="fh3">
                                        </td>
                                    <td width="37%" class="fh3">
                                        <font face="宋体">
                                            </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">网站介绍：<br />
                                            (查询关键字) </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <FTB:FreeTextBox ID="FreeTextBox1" runat="server" ButtonPath="../images/ftb/office2003/" ImageGalleryPath="link/upload">
                                        </FTB:FreeTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="4" align="center">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" Width="70px"
                                            OnClientClick="CheckSave()"></asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text=" 返 回 " OnClick="Button1_Click" /><br />
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
