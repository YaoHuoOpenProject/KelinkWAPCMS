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
<title>��ͼ����</title>
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
                                                ��ͼ����
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
                                     
											<font color="#FF0000"><b>�û���΢�����Ե����+���� "λ��"�����͵�ǰλ�ù���ʱ������Ӧ���¹���</b>
											</font>
											<br /><br />
											
											
											
											</td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="����">Ӧ��һ���ҵ�λ�ã� </font>
                                        </td>
                                        <td class="fh3">
                                            * γ�ȣ�<asp:TextBox ID="lat" runat="server" Width="80px"></asp:TextBox>  ���ȣ�<asp:TextBox ID="lng" runat="server" Width="80px"></asp:TextBox>  <input type="button" name="back" value=" ѡ��λ�� "  class="bt" style="width:60px;" onclick="UpLoad();" /><br /><br />
                                            * ���⣺<asp:TextBox ID="title" runat="server" Width="200px"></asp:TextBox> <br /><br />
                                            * ������<asp:TextBox ID="content" runat="server" Width="400px" Height ="50px" TextMode="MultiLine"></asp:TextBox>����ϸ��ַ������˵����<br /><br />
                                            �߼���Ա�Զ���˵�ʹ�ñ����ӣ�<br />http://api.map.baidu.com/marker?location=23.034403,113.33194&title=���ٿƼ���˾&content=��ַ��˵��&src=��˾����Ӧ�ó�����&output=html
                                            
                                        </td>
                                    </tr>
                                   
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="����">Ӧ�ö����ܱ������� </font>
                                        </td>
                                        <td class="fh3">
                                          �����ؼ��֣�<asp:TextBox ID="query" runat="server" Width="200px"></asp:TextBox>    ����д��˾���̼����ƣ� <br /><br />                                              
                                          �����뾶�� <asp:TextBox ID="radius" runat="server" Width="200px"></asp:TextBox>    �����Ĭ��2���     <br /><br />
                                          ˵������Ӧ�ù��ܿ����ա�<br />
                                          �߼���Ա�Զ���˵�ʹ�ñ����ӣ�<br />http://api.map.baidu.com/place/search?query=������&location=31.204055632862,121.41117785465&radius=2000&src=��˾����Ӧ�ó�����&output=html                                           
                                                                                       
                                        </td>
                                    </tr>
                                    
                                     
                                    
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            <br />
                                            <asp:Button ID="bt_ok" runat="server" Text="�� ��" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
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
                      <!--  ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡-->
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
