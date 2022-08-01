<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" Codebehind="addUser.aspx.cs" Inherits="KeLin.WebSite.WML.addUser" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WML内容</title>
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
<script language="JavaScript" type="text/JavaScript">
function uppic(a) { 
	window.open ("../Upload_Photo.asp?PhotoUrlID="+a+"&delpath=", "window", "height=150, width=360, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}	
function addpicurl(){
messageForm.content.value="[img]?[/img]"+messageForm.content.value;
document.getElementById("FreeTextBox1").value ="[img]?[/img]"+document.getElementById("FreeTextBox1").value;
}

function addurl1(){
messageForm.content.value="[url]?[/url]"+messageForm.content.value;
document.getElementById("FreeTextBox1").value ="[url]?[/url]"+document.getElementById("FreeTextBox1").value;
}
function addurl2(){
//messageForm.content.value="[url=?]点击下载[/url]"+messageForm.content.value;
document.getElementById("FreeTextBox1").value = "[url=?]点击下载[/url]"+document.getElementById("FreeTextBox1").value;
}
function nextrow(){
//messageForm.content.value=messageForm.content.value+"[br]";
document.getElementById("FreeTextBox1").value=document.getElementById("FreeTextBox1").value+"[br]"
}
function show(ubb){
//document.getElementById("FreeTextBox1").value =document.getElementById("FreeTextBox1").value+ubb
form1.FreeTextBox1.value=form1.FreeTextBox1.value+ubb;
//messageForm.content.value=messageForm.content.value+ubb;
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
                                                        网站管理 &gt;&gt; 内容管理 &gt;&gt;WML内容
                                                        
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
                                    <td class="column" colspan="5">
                                        <font face="宋体">WML内容 </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%" >
                                        <font face="宋体">标题： </font>
                                    </td>
                                    <td colspan="4" class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="369px"></asp:TextBox>
                                    </td>
                                </tr>
                                
                                
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">分类：</font>
                                    </td>
                                    <td class="fh3" style="width: 34%">
                                        <font face="宋体">
                                            <asp:DropDownList ID="ddl_type" runat="server">
                                            </asp:DropDownList></font></td>
                                    <td width="20%" class="fh3">
                                        </td>
                                    <td class="fh3" style="width: 22%" colspan="2">
                                        <font face="宋体">
                                            </font>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">内容： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        &nbsp;<asp:TextBox ID="FreeTextBox1" runat="server" Height="325px" TextMode="MultiLine"
                                            Width="449px"></asp:TextBox></td>
                                    <td class="fh3" colspan="1" valign="top">
                                    <strong>
                                    取网站ID:<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">[siteid]</asp:LinkButton><br>
                                    取当前页栏目ID:<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">[classid]</asp:LinkButton><br>
                                    </strong>
                                    <strong>
                                    取用户ID:<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">[userid]</asp:LinkButton><br>
                                    取用户名:<asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">[username]</asp:LinkButton><br>
                                    取用户MD5密码:<asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">[password]</asp:LinkButton><br>
                                    </strong>
                                    <strong>
                                    取用户登录信息串:<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">[sid]</asp:LinkButton><font color="#FF0000"><br>
                                    </font></strong>例:URL.aspx?siteid=[sitid]<br>
                                    &amp;classid=[classid]<br>
                                    &amp;sid=[sid]<strong><font color="#FF0000"><br>禁止使用字符:<textarea name="kl_in" disabled="true" cols="12" rows="8"><%=KL_In%></textarea>
                                    </font></strong>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="5" align="center">
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
