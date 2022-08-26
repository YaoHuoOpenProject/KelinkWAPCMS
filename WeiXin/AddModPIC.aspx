<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="addModPIC.aspx.cs" Inherits="KeLin.WebSite.WeiXin.addModPIC" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function UpLoad(ii) {
        form1.aTemp.value = ii;

        window.open("/admin/Upload_Photo.aspx?PhotoUrlID=img&info=微信编辑页面&delpath=", "addpicwindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
    }
    function DaoRu(ii) {

        window.open("viewindex.aspx?ii="+ii, "addpicwindow", "height=600, width=480, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
   
    }
    
    function addImgOrFile(a, b) {
        var iii = form1.aTemp.value;
        
        if (b == 'img') {

            form1.picurl[iii].value = "<%=this.http_start  %>" + a;
            
        } else if (b == 1) {

        }
    }
    
    function thisFormSubmit() {
        window.open("viewPIC.aspx", "viewPIC", "height=500, width=350, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
   
    } 
</script>
<title>添加图文消息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" name="id" value ="<%=this.id %>" />
    <input type="hidden" name="aTemp" value ="" />
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
                                                添加图文消息
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
                                        <td class="f" style="width: 15%">
                                           * <font face="宋体">消息内容： </font>
                                        </td>
                                        <td class="fh3">
                                            <font color="red">*最多10个标题，第一个标题显示大图360*200，之后的小图200*200 
                                            <br />*下面录入至少1个，最多10个，不需要的请留空即可。
                                            <br />*测试：录入关键字，保存后，用手机微信发送关键字进行测试真实效果。
                                            </font><br /><br />
                                            
                                            <%for (int i = 0; i < 10; i++)
                                              { %>
<font color="red">第<%=i+1 %>个：</font><br />
显示标题：<input type="text" name="title" value="<%=title[i] %>"  class="input" style="width:200px;" /> <br />
简介描述：<input type="text" name="description" value="<%=description[i] %>"  class="input" style="width:200px;" /> (可空) <br />
图片地址：<input type="text" name="picurl" value="<%=picurl[i] %>"  class="input" style="width:200px;" />  <input type="button" name="back" value=" 上传图片 "  class="bt" style="width:60px;" onclick="UpLoad(<%=i %>);" />  <br />
链接地址：<input type="text" name="url" value="<%=url[i] %>"  class="input" style="width:200px;" />  <input type="button" name="back" value=" 从微网站导入四个参数 "  class="bt" style="width:150px;" onclick="DaoRu(<%=i %>);" /> 
<br />
<hr />

                                            <%} %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">关键字： </font>
                                        </td>
                                        <td class="fh3">
                                             <asp:TextBox ID="keyword" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                             <br />说明：多个请用逗号，或,区分开。关键字是指微信用户发的消息内容，如果适配上您的关键字，就显示本条消息。
                                        </td>
                                    </tr>
                                   
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            <input type="button" name="back" value="预 览"  class="bt" style="width:70px;" onclick="thisFormSubmit();" /> 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                            </asp:Button> 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="button" name="back" value="返 回"  class="bt" style="width:70px;" onclick="window.location='msglist.aspx';" /> 


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
