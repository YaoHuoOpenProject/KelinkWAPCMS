<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="myQR.aspx.cs" Inherits="KeLin.WebSite.WeiXin.myQR" %>
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
    function DaoRuLink(name,typevalue) {

        
        window.open("viewindex.aspx?name=" + name + "&typevalue=" + typevalue, "menuwindow", "height=600, width=480, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");

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
<title>显示我的公共帐号二维码</title>
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
                    <td>
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
                                                显示公共帐号二维码
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
                                        <td class="column">
                                           &nbsp;<br/><br/>
                                           
                                           <%if (INFO == "OK")
                                             { %>
                                           <img src ="<%=myurl %>" alt="二维码">
                                           <%}
                                             else if (INFO == "WEIXIN")
                                             {
                                                 %>
                                                 
                                                  <font color="red"><b>提示：接口权限不够。服务号可以到微信官方付费认证，将获得更多的接口权限。
                                                  <br /><br />解决方示：请登录微信官方<a href="http://mp.weixin.qq.com">http://mp.weixin.qq.com</a>，左边最下面菜单【设置】→【帐号信息】可以查看或下载二维码图。</b></font>
                                          
                                                 <%

                                             }else
                                             { %>
                                           <font color="red"><b>“微信接口配置”还没有配置开发者参数，不能获取图片。</b></font>
                                           
                                           <%} %>
                                           

                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" align="center">
                                           <font face="宋体">&nbsp;</font>　<p>
											说明：二维码图用于宣传和印刷，需要用手机上的微信软件来“扫一扫” </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
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