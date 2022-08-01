<%@ Page Language="C#" AutoEventWireup="true" Codebehind="addUser.aspx.cs" Inherits="KeLin.WebSite.hotel.addUser" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>酒店内容</title>

    <script language="JavaScript" src="../admin/js/datatime.js" type="text/JavaScript"></script>

    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
function CheckSave() {             
            if (document.getElementById("tb_airno").value=="") { 
                alert("航班号不能为空！");
                document.getElementById("tb_airno").focus();
                return false;
            }  
            if (document.getElementById("tb_seat").value == "")  {
                alert("仓位不能为空！");
                document.getElementById("tb_seat").focus();
                return false;
            }  
            if (document.getElementById("tb_airmodel").value == "")  {
                alert("机型不能为空！");
                document.getElementById("tb_seat").focus();
                return false;
            }  
            if (document.getElementById("tb_title").value == "")  {
                alert("航空公司不能为空！");
                document.getElementById("tb_title").focus();
                return false;
            } 
            if (document.getElementById("tb_price").value =="")  {
                alert("价格不能为空！");
                document.getElementById("tb_price").focus();
                return false;
            }          
            if (document.getElementById("tb_startsite").value =="")  {
                alert("起始站不能为空！");
                document.getElementById("tb_startsite").focus();
                return false;
            }   
            if (document.getElementById("tb_endsite").value =="")  {
                alert("降落站不能为空！");
                document.getElementById("tb_endsite").focus();
                return false;
            }      
            if (document.getElementById("tb_starttime").value =="")  {
                alert("起飞时间不能为空！");
                document.getElementById("tb_starttime").focus();
                return false;
            }   
            if (document.getElementById("tb_endtime").value =="")  {
                alert("降落时间不能为空！");
                document.getElementById("tb_endtime").focus();
                return false;
            }              
            return true;
        }
function PreviewImage(File)
{
var imageID="imgPhoto";//img控件的id
var picName=File.value;
var array=new Array();
array=picName.split(".");
var extendName=array[1];
extendName=extendName.toLowerCase();
if(extendName=="jpg" || extendName=="jpeg" || extendName=="gif" || extendName=="png" || extendName=="bmp" || extendName=="ico")
{
document.getElementById(imageID).src=picName;
}
else
{
var errMessage="对不起！你选择的图片类型有误！请重新选择！";
window.alert(errMessage);
}
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
                                                网站管理 &gt;&gt; 内容管理 &gt;&gt;酒店内容
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
                        <table cellspacing="1" cellpadding="3" width="100%" class="TABLE6">
                            <tbody>
                                <tr>
                                    <td class="column" colspan="4">
                                        <font face="宋体">编辑酒店内容 </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">酒店小图：<br />
                                            (50X50) </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <img id="imgPhoto" src="" runat="server" width="50" height="50" border="0" alt="酒店小图标" />
                                        <input id="file1" style="width: 320px" type="file" runat="server" onpropertychange="PreviewImage(this)" /></td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">酒店名称： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_hotel" runat="server" Width="369px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">酒店地址： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_address" runat="server" Width="146px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">酒店城市： </font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <asp:TextBox ID="tb_city" runat="server" Width="145px"></asp:TextBox>
                                    </td>
                                    <td width="20%" class="f">
                                        酒店星级：</td>
                                    <td width="37%" class="fh3">
                                        <asp:DropDownList ID="ddl_star" runat="server">
                                            <asp:ListItem>五星级</asp:ListItem>
                                            <asp:ListItem>四星级</asp:ListItem>
                                            <asp:ListItem>三星级</asp:ListItem>
                                            <asp:ListItem>二星级</asp:ListItem>
                                            <asp:ListItem>一星级</asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">主推房间类型： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_room1" runat="server" Width="209px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">主推房间挂版价： </font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <asp:TextBox ID="tb_marketprice" runat="server" Width="208px"></asp:TextBox>
                                    </td>
                                    <td width="20%" class="f">
                                        主推房间预订价：</td>
                                    <td width="37%" class="fh3">
                                        <asp:TextBox ID="tb_bookprice" runat="server" Width="206px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">附加房间类型： </font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <asp:TextBox ID="tb_room2" runat="server" Width="207px"></asp:TextBox>&nbsp;
                                    </td>
                                    <td width="20%" class="f">
                                    </td>
                                    <td width="37%" class="fh3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">附加房间挂版价： </font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <asp:TextBox ID="tb_marketprice2" runat="server" Width="206px"></asp:TextBox>
                                    </td>
                                    <td width="20%" class="f">
                                        附加房间预订价：</td>
                                    <td width="37%" class="fh3">
                                        <asp:TextBox ID="tb_bookprice2" runat="server" Width="201px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">提醒： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        在有多个附加房间类型时，请用 | 隔开，相对应的价格也用 | 隔开，要注意的是：有多少房间类型就应该有多少价格。即上面三个输入框内 | 符号存在的个数必须相等。
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">所属栏目：</font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <font face="宋体">
                                            <asp:DropDownList ID="ddl_type" runat="server">
                                            </asp:DropDownList></font></td>
                                    <td width="20%" class="f">
                                        </td>
                                    <td width="37%" class="fh3">
                                        <font face="宋体">
                                            </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">是否加入系统资源： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:DropDownList ID="ddl_systype" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">酒店介绍 ： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <FTB:FreeTextBox ID="FreeTextBox1" runat="server" ButtonPath="../images/ftb/office2003/" ImageGalleryPath="hotel/upload">
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
