<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="myQR.aspx.cs" Inherits="KeLin.WebSite.WeiXin.myQR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    function UpLoad(ii) {
        form1.aTemp.value = ii;

        window.open("/admin/Upload_Photo.aspx?PhotoUrlID=img&info=΢�ű༭ҳ��&delpath=", "addpicwindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
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
<title>��ʾ�ҵĹ����ʺŶ�ά��</title>
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
                                                ��ʾ�����ʺŶ�ά��
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
                                           <img src ="<%=myurl %>" alt="��ά��">
                                           <%}
                                             else if (INFO == "WEIXIN")
                                             {
                                                 %>
                                                 
                                                  <font color="red"><b>��ʾ���ӿ�Ȩ�޲���������ſ��Ե�΢�Źٷ�������֤������ø���Ľӿ�Ȩ�ޡ�
                                                  <br /><br />�����ʾ�����¼΢�Źٷ�<a href="http://mp.weixin.qq.com">http://mp.weixin.qq.com</a>�����������˵������á������ʺ���Ϣ�����Բ鿴�����ض�ά��ͼ��</b></font>
                                          
                                                 <%

                                             }else
                                             { %>
                                           <font color="red"><b>��΢�Žӿ����á���û�����ÿ����߲��������ܻ�ȡͼƬ��</b></font>
                                           
                                           <%} %>
                                           

                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" align="center">
                                           <font face="����">&nbsp;</font>��<p>
											˵������ά��ͼ����������ӡˢ����Ҫ���ֻ��ϵ�΢���������ɨһɨ�� </td>
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
                      <!--  ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡-->
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>