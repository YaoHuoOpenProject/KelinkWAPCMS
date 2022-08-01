<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" Codebehind="modifyAD.aspx.cs" Inherits="KeLin.WebSite.admin.modifyAD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>插放广告</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
function CheckSave() {
             if (document.getElementById("tb_top2").value == "" && document.getElementById("tb_bottom2").value == "" && document.getElementById("tb_top2").value == "" && document.getElementById("tb_bottom3").value == "") {
                alert("请输入广告代码！");
                document.getElementById("tb_top2").focus();
                return false;
            }
            if (document.getElementById("tb_top2").length > 1000) { 
                alert("保存失败！每一项字符不能超过1000，请检查后再提交！");
                document.getElementById("tb_top2").focus();
                return false;
            }  
            if (document.getElementById("tb_bottom2").length > 1000)  {
                alert("保存失败！每一项字符不能超过1000，请检查后再提交！");
                document.getElementById("tb_bottom2").focus();
                return false;
            }  
            if (document.getElementById("tb_top3").length > 1000)  {
                alert("保存失败！每一项字符不能超过1000，请检查后再提交！");
                document.getElementById("tb_top3").focus();
                return false;
            } 
            if (document.getElementById("tb_bottom2").length > 1000)  {
                alert("保存失败！每一项字符不能超过1000，请检查后再提交！");
                document.getElementById("tb_bottom3").focus();
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
                                                        网站管理 &gt;&gt; 内容管理 &gt;&gt;插放广告
                                                        
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
                                    <td class="column" colspan="3">
                                        <font face="宋体">广告放置模块：<%=systype%>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="22%" class="f" style="width: 25%">
                                        <font face="宋体">二级列表顶部： </font>
                                    </td>
                                    <td width="37%" class="fh3">
                                        <asp:TextBox ID="tb_top2" runat="server" Width="473px" Height="110px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td width="41%" rowspan="4" class="fh3">
                                        &nbsp;<font color="#FF0000"><b><a href="javascript:preview();">【点击此查看UBB方法】</a>

                                            <script>
function preview(){
	window.open ("../admin/ubb.aspx", "newwindow", "height=450, width=400, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 

}
                                            </script>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 25%">
                                        <font face="宋体">二级列表底部： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="tb_bottom2" runat="server" Width="473px" Height="110px" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 25%; height: 41px;">
                                        <font face="宋体">三级内容顶部：</font>
                                    </td>
                                    <td class="fh3" style="height: 41px">
                                        <asp:TextBox ID="tb_top3" runat="server" Width="473px" Height="110px" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 25%">
                                        <font face="宋体">三级内容底部： </font>
                                    </td>
                                    <td class="fh3">
                                        <asp:TextBox ID="tb_bottom3" runat="server" Height="110px" TextMode="MultiLine" Width="473px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 25%">
                                        <font face="宋体"></font>
                                    </td>
                                    <td colspan="2" class="fh3">
                                    </td>
                                </tr>
                                <tr>
                                <td style="height: 35px" align="center" colspan="3">
                                    <span class="txt4">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text=" 保  存 " OnClick="bt_ok_Click" OnClientClick="CheckSave()" cssClass="bt"
                                            Width="100px"></asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="  返 回   "  cssClass="bt"/> </asp:Button><br />
                                    </span>
                                </td>
                            </tr>
                            </tbody>
                        </table>                        
                    </td>
                    
                </tr>
                <tr>
                <td style="height: 15px">
                </td>
                </tr>
                <tr>
                                <td align="center">
                                    页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                                </td>
                            </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
