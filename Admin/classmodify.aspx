<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="true" Codebehind="classmodify.aspx.cs"
    Inherits="KeLin.WebSite.admin.classmodify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
        function selectclassid(a, b) {
            document.getElementById("childid").value = a;
            document.getElementById("childidtext").value = b;
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

    <script language="javascript" type="text/javascript">
// <!CDATA[
function XmlPost2(obj)
                {
　　                var svalue = obj.value;
　　                var webFileUrl = "?typeid=" + svalue;
　　                var result = "";
　　                var xmlHttp = new ActiveXObject("MSXML2.XMLHTTP");
　　                xmlHttp.open("POST", webFileUrl, false);
　　                xmlHttp.send("");
　　                result = xmlHttp.responseText;
                　　
　　                if(result != "")
　　                {
　　　　                document.all("ddl_type").length=0;
　　　　                var piArray = result.split(",");
　　　　                for(var i=0;i<piArray.length;i++)
　　　　                {
　　　　　　                var ary1 = piArray[i].toString().split("|");
　　　　　　                document.all("ddl_type").options.add(new Option(ary1[1].toString(),ary1[0].toString()));
　　　　                }
　　                }
　　                else
　　                {
　　　　                //alert(result);
　　　　                document.all("ddl_type").options.clear();
　　                }
                }
                function showclass(a) {

                    window.open("showclass.aspx?classid=" + a, "class", "height=380, width=320, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

                }

function bt_return_onclick() 
{
    history.go(-1)
}

// ]]>
    </script>

</head>
<body background="../Images/dw.gif">
    <form id="form1" runat="server">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
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
                                            网站管理 &gt;&gt; 栏目管理 &gt;&gt;栏目信息
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
                <td valign="top">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tbody>
                            <tr>
                                <td valign="top" align="left">
                                    <div class="txt4">
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="宋体">修改信息 </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">栏目前小图标(<font color="red">175X85</font>)： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <img id="imgPhoto" src="" runat="server" />
                                                        <asp:TextBox ID="tb_sitelogo" runat="server" Width="202px" Visible="False"></asp:TextBox><br />
                                                        <input id="file1" style="width: 320px; height: 20px" onpropertychange="PreviewImage(this)"
                                                            type="file" size="34" runat="server">
                                                        <asp:Button ID="bt_updateface" runat="server" Text=" 更新 " OnClick="bt_updateface_Click"
                                                            Visible="False"></asp:Button>
                                                        <asp:Button ID="Button1" runat="server" Text=" 取消 " OnClick="Button1_Click" Visible="False">
                                                        </asp:Button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">栏目名称： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_title" runat="server" Width="237px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">指向连接：</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_type" runat="server">
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">上级栏目： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <input type="text" id="childidtext" name="childidtext" value="" runat="server" readonly="true" />
                                                        <input type="hidden" id="childid" name="childid" value="<%=childid %>" runat="server" />
                                                        <a href="javascript:showclass('<%=classid %>')">点击更改</a>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">栏目管理员(版主)： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_adminusername" runat="server" Width="173px"></asp:TextBox>
                                                        (填用户ID,有多个用"|"区分)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">栏目ID： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_itemid" runat="server" Width="59px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">栏目序号： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_rank" runat="server" Width="59px"></asp:TextBox>
                                                        (您可以改成从1开始或不填)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">充许币数： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_needMoney" runat="server" Width="68px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">消费币数： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_subMoney" runat="server" Width="68px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">充许会员： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_allowUser" runat="server" Width="173px"></asp:TextBox>
                                                        (填用户ID，多个用"|"区分)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">访问密码： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_password" runat="server" Width="173px"></asp:TextBox>
                                                        (可不填)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">绑定专题： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_topicID" runat="server" Width="173px"></asp:TextBox>
                                                        (填专题栏目ID,多用"|"区分)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">是否换行： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_siterowremark" runat="server">
                                                            <asp:ListItem Value="[br]">是</asp:ListItem>
                                                            <asp:ListItem Value="">否</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">是否隐藏栏目： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_ishidden" runat="server">
                                                            <asp:ListItem Value="1">是</asp:ListItem>
                                                            <asp:ListItem Value="0">否</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体">是否设为模板： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_ismodel" runat="server">
                                                            <asp:ListItem Value="1">是</asp:ListItem>
                                                            <asp:ListItem Value="0">否</asp:ListItem>
                                                        </asp:DropDownList>(选择是,新用户注册后自动生成此栏目)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 22%">
                                                        <font face="宋体"></font>
                                                    </td>
                                                    <td class="fh3">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table width="100%">
                                            <tr>
                                                <td style="height: 35px" align="center">
                                                    <span class="txt4">
                                                        <br />
                                                        <asp:Button ID="bt_ok" runat="server" Text=" 保  存 " OnClick="bt_ok_Click" Width="100px">
                                                        </asp:Button>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="bt_return" runat="server" Text=" 返 回 " Width="100px" OnClick="bt_return_Click">
                                                        </asp:Button>
                                                        
                                                        <br />
                                                    </span>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
            </tr>
            <tr>
                <td align="center">
                    页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
