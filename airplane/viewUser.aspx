<%@ Page Language="C#" AutoEventWireup="true" Codebehind="viewUser.aspx.cs" Inherits="KeLin.WebSite.airplane.viewUser" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>航班信息</title>

    <script language="JavaScript" src="../admin/js/datatime.js" type="text/JavaScript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

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
function bt_return_onclick() 
{
    history.go(-1)
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
                                                内容审核 &gt;&gt; 航班内容 &gt;&gt;查看航班信息
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
                                        <font face="宋体">  </font>
                                    </td>
                                </tr>
                                <!--
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">航班小图：<br />
                                            (50X50) </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <img id="imgPhoto" src="" runat="server" width="50" height="50" border="0" alt="航班小图标" />&nbsp;</td>
                                </tr>-->
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">航空公司： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="369px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">航班号： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_airno" runat="server" Width="146px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">机型： </font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <asp:TextBox ID="tb_airmodel" runat="server" Width="145px"></asp:TextBox>
                                    </td>
                                    <td width="20%" class="f">
                                        仓位：</td>
                                    <td width="37%" class="fh3">
                                        <asp:TextBox ID="tb_seat" runat="server" Width="145px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">价格： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_price" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">起飞站： </font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <asp:TextBox ID="tb_startsite" runat="server" Width="141px"></asp:TextBox>
                                    </td>
                                    <td width="20%" class="f">
                                        降落站：</td>
                                    <td width="37%" class="fh3">
                                        <asp:TextBox ID="tb_endsite" runat="server" Width="145px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">起飞时间： </font>
                                    </td>
                                    <td class="fh3" style="width: 29%">
                                        <asp:TextBox ID="tb_starttime" runat="server" Width="139px"></asp:TextBox>
                                        <img id="imgdate" style="cursor: hand;" src="../admin/images/vbeditor.gif" onclick="setday(this,document.all.tb_starttime)"
                                            title="选择日期" />
                                    </td>
                                    <td width="20%" class="f">
                                        降落时间：</td>
                                    <td width="37%" class="fh3">
                                        <asp:TextBox ID="tb_endtime" runat="server" Width="145px"></asp:TextBox>
                                        <img id="img1" style="cursor: hand;" src="../admin/images/vbeditor.gif" onclick="setday(this,document.all.tb_endtime)"
                                            title="选择日期" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">分类：</font>
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
                                        <font face="宋体">备注/介绍 ： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="FreeTextBox1" runat="server" Height="274px" TextMode="MultiLine" Width="614px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="4" align="center">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" Width="70px"
                                            OnClientClick="CheckSave()" Visible="False"></asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        <input id="bt_return" type="button" value=" 返 回 " onclick="return bt_return_onclick()" class="bt" /><br />
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
