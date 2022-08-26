<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="addModMenu.aspx.cs" Inherits="KeLin.WebSite.WeiXin.addModMenu" %>
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
    function DaoRuID(name) {

        window.open("msglist.aspx?typename=" + name, "addIDwindow", "height=600, width=600, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");

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
<title>自定义微信菜单</title>
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
                                                创建微信底部菜单
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
                                        <td class="column" colspan="5">
                                           &nbsp;

                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" style="width: 20px" rowspan="2">
                                           <font face="宋体">&nbsp;</font></td>
                                        <td class="fh3" width="279">
                                            
                                            
                                            <%for (int i = 0; i < 5; i++)
                                              { %><font color="red">第<%=i+1 %>个：</font><br />
											名称:<input type="text" name="name1" value="<%=name1[i] %>"  class="input" style="width:150px;" />  <br />
											响应:<input type="text" name="typevalue1" value="<%=typevalue1[i] %>"  class="input" style="width:80px;" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuID('typevalue1[<%=i %>]');" title="回复消息"><img src="images/txt.gif" alt="回复消息" border="0" align="middle"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuLink('name1[<%=i %>]','typevalue1[<%=i %>]');" title="链接地址"><img src="images/link.gif" alt="链接地址" border="0" align="middle"/></a>
											
<hr />

                                            <%} %>
                                        </td>
                                        <td class="fh3" width="276">
                                            
                                            
                                            
                                            <%for (int i = 0; i < 5; i++)
                                              { %><font color="red">第<%=i+1 %>个：</font><br />
											名称:<input type="text" name="name2" value="<%=name2[i] %>"  class="input" style="width:150px;" />  <br />
											响应:<input type="text" name="typevalue2" value="<%=typevalue2[i] %>"  class="input" style="width:80px;" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuID('typevalue2[<%=i %>]');" title="回复消息"><img src="images/txt.gif" alt="回复消息" border="0" align="middle"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuLink('name2[<%=i %>]','typevalue2[<%=i %>]');" title="链接地址"><img src="images/link.gif" alt="链接地址" border="0" align="middle"/></a>
											
											
<hr />

                                            <%} %>

                                            </td>
                                        <td class="fh3" width="271">
                                            
                                            
                                            <%for (int i = 0; i < 5; i++)
                                              { %><font color="red">第<%=i+1 %>个：</font><br />
											名称:<input type="text" name="name3" value="<%=name3[i] %>"  class="input" style="width:150px;" />  <br />
											响应:<input type="text" name="typevalue3" value="<%=typevalue3[i] %>"  class="input" style="width:80px;" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuID('typevalue3[<%=i %>]');" title="回复消息"><img src="images/txt.gif" alt="回复消息" border="0" align="middle"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuLink('name3[<%=i %>]','typevalue3[<%=i %>]');" title="链接地址"><img src="images/link.gif" alt="链接地址" border="0" align="middle"/></a>
											
<hr />

                                            <%} %>

</td>
                                        <td class="fh3" width="469" rowspan="2" valign="top">
                                            说明：此功能制作微信底部菜单按钮，服务号才支持。<br />
                                            <img src="images/txt.gif" alt="回复消息" border="0" align="middle"/>&nbsp;&nbsp;表示点击按钮后响应：回复消息，填写“发送消息管理”中的ID值。一定是数字。<br />
                                            <img src="images/link.gif" alt="链接地址" border="0" align="middle"/>&nbsp;&nbsp;表示点击按钮后响应：直接链接到您录入的URL链接地址中。一定是http开头。<br />
                                            <font color="red" >底部按钮如果有子菜单按钮，响应可以随便填写或空。底部按钮可以无子菜单按钮。</font>
                                            <br /><br />
                                            <img src="/help/images/weixin/5.png" height ="380px" alt="效果图"/>
                                            
                                            
                                            </td>
                                    </tr>
                                    <tr>
                                        <td  width="279" background="images/bg.gif" height="93">
                                            <font color="red">第一列底部按钮</font><br />
											名称:<input type="text" name="name_1" value="<%=name_1 %>"  class="input" style="width:150px;" />  <br />
											响应:<input type="text" name="typevalue_1" value="<%=typevalue_1 %>"  class="input" style="width:80px;" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuID('typevalue_1');" title="回复消息"><img src="images/txt.gif" alt="回复消息" border="0" align="middle"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuLink('name_1','typevalue_1');" title="链接地址"><img src="images/link.gif" alt="链接地址" border="0" align="middle"/></a>
											
											</td>
                                        <td width="276" background="images/bg.gif" height="93">
                                            <font color="red">第二列底部按钮</font><br />
											名称:<input type="text" name="name_2" value="<%=name_2%>"  class="input" style="width:150px;" />  <br />
											响应:<input type="text" name="typevalue_2" value="<%=typevalue_2 %>"  class="input" style="width:80px;" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuID('typevalue_2');" title="回复消息"><img src="images/txt.gif" alt="回复消息" border="0" align="middle"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuLink('name_2','typevalue_2');" title="链接地址"><img src="images/link.gif" alt="链接地址" border="0" align="middle"/></a>
											</td>
                                        <td  width="271" background="images/bg.gif" height="93">
                                            <font color="red">第三列底部按钮</font><br />
											名称:<input type="text" name="name_3" value="<%=name_3%>"  class="input" style="width:150px;" />  <br />
											响应:<input type="text" name="typevalue_3" value="<%=typevalue_3 %>"  class="input" style="width:80px;" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuID('typevalue_3');" title="回复消息"><img src="images/txt.gif" alt="回复消息" border="0" align="middle"/></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:DaoRuLink('name_3','typevalue_3');" title="链接地址"><img src="images/link.gif" alt="链接地址" border="0" align="middle"/></a>
											</td>
                                    </tr>
                                    <tr>
                                        <td class="f" colspan="5">
                                            　</td>
                                    </tr>
                                   
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="5" align="center">
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="bt_ok" runat="server" Text="保存 + 更新至微信服务器" OnClick="bt_ok_Click" Width="150px" CssClass="bt">
                                            </asp:Button> 
                                            &nbsp;&nbsp;（由于缓存原因，保存后手机上不能即时显示效果，您可以取消关注，再加关注可即时生效）

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