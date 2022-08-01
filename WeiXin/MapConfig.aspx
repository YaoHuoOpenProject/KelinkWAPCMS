<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="MapConfig.aspx.cs" Inherits="KeLin.WebSite.WeiXin.MapConfig" %>
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
<title>地图配置</title>
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
                                                地图配置
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
                                     
											<font color="#FF0000"><b>用户在微信留言点击“+”→ "位置"，发送当前位置过来时，将响应以下功能</b>
											</font>
											<br /><br />
											
											
											
											</td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">应用一：我的位置： </font>
                                        </td>
                                        <td class="fh3">
                                            * 纬度：<asp:TextBox ID="lat" runat="server" Width="80px"></asp:TextBox>  经度：<asp:TextBox ID="lng" runat="server" Width="80px"></asp:TextBox>  <input type="button" name="back" value=" 选择位置 "  class="bt" style="width:60px;" onclick="UpLoad();" /><br /><br />
                                            * 标题：<asp:TextBox ID="title" runat="server" Width="200px"></asp:TextBox> <br /><br />
                                            * 描述：<asp:TextBox ID="content" runat="server" Width="400px" Height ="50px" TextMode="MultiLine"></asp:TextBox>（详细地址或其它说明）<br /><br />
                                            高级人员自定义菜单使用本链接：<br />http://api.map.baidu.com/marker?location=23.034403,113.33194&title=联速科技公司&content=地址或说明&src=公司名或应用程序名&output=html
                                            
                                        </td>
                                    </tr>
                                   
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">应用二：周边搜索： </font>
                                        </td>
                                        <td class="fh3">
                                          检索关键字：<asp:TextBox ID="query" runat="server" Width="200px"></asp:TextBox>    （如写公司或商家名称） <br /><br />                                              
                                          检索半径： <asp:TextBox ID="radius" runat="server" Width="200px"></asp:TextBox>    （公里，默认2公里）     <br /><br />
                                          说明：此应用功能可留空。<br />
                                          高级人员自定义菜单使用本链接：<br />http://api.map.baidu.com/place/search?query=海底捞&location=31.204055632862,121.41117785465&radius=2000&src=公司名或应用程序名&output=html                                           
                                                                                       
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
