<%@ Page Language="C#" AutoEventWireup="true" Codebehind="RoleManageSel.aspx.cs" Inherits="KeLin.WebSite.admin.RoleManageSel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>���ɾ������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

</head>
<body>
    <form id="form1" runat="server">
        <table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
            <tr>
                    <td colspan="4">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="1%">
                                    <img src="/NetImages//main_title_01.gif" width="12" height="24"></td>
                                <td width="98%" background="/NetImages//main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="/NetImages//i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                �û����� &gt;&gt; �û���ɫ����
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
                                    <img src="/NetImages//main_title_03.gif" width="13" height="24"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="center" style="width: 100%;">
                        <table cellspacing="7" width="100%" class="TABLE6">
                            <tbody>
                                <tr>
                                    <td valign="top" align="left">
                                        <br />
                                        <br />
                                        <br />
                                        <p align="center">
                                        </p>
                                        <p align="center">
                                        <input type =button name=bt onclick="window.location='/bbs/smalltypelist.aspx?siteid=<%=base.SiteId %>&systype=card&sid=<%=base.SID %>';" class="bt" value="  ���û���/��ݼ���  " style="font-size: 20pt" />
                                      
                                            </p>
                                        <p align="center">
                                        һ��һ��ϵ����һ���û�ֻ�ܶ�Ӧһ����ݼ��𣬽�����ݼ����ǵ�����(��VIP1,VIP2)����Ա������WAP����RMBֱ�ӹ���
                                        </p>
                                         <br />
                                        <br />
                                        <br />
                                        <p align="center">
                                         <input type =button name=bt onclick="window.location='RoleManage.aspx';" class="bt" value="  ���û���ɫ����  " style="font-size: 20pt" />
                                         
                                         </p>
                                        <p align="center">
                                        һ�Զ��ϵ����һ���û����Զ�Ӧ�����ɫ�����ܹ���ֻ����վ�����á��̶���Ա�������(����ҵ�ڲ�Ա��)���ô˹��ܡ�
                                        </p>
                                         <br />
                                        <br />
                                        <br />
                                        
                                        </p>
                                        <p align="center">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="100%">
                            <tr>
                                <td align="right">
                                   
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
    <!--
<script language="JavaScript" type="text/JavaScript">
   var time=6;
   function timedown()
   {
    time=time-1;
    if (time<0)
     window.location.href='../ContentTree.aspx' ;
    else
     document.getElementById("second").innerHTML = time;
   }
  
   setInterval("timedown()",1000);

</script>     
-->
</body>
</html>
