<%@ Page Language="C#" AutoEventWireup="true" Codebehind="RoleManageSel.aspx.cs" Inherits="KeLin.WebSite.admin.RoleManageSel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加删除内容</title>
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
                                                用户管理 &gt;&gt; 用户角色管理
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
                                        <input type =button name=bt onclick="window.location='/bbs/smalltypelist.aspx?siteid=<%=base.SiteId %>&systype=card&sid=<%=base.SID %>';" class="bt" value="  按用户组/身份级别  " style="font-size: 20pt" />
                                      
                                            </p>
                                        <p align="center">
                                        一对一关系，即一个用户只能对应一个身份级别，建议身份级别是递增的(如VIP1,VIP2)，会员可以在WAP上用RMB直接购买！
                                        </p>
                                         <br />
                                        <br />
                                        <br />
                                        <p align="center">
                                         <input type =button name=bt onclick="window.location='RoleManage.aspx';" class="bt" value="  按用户角色设置  " style="font-size: 20pt" />
                                         
                                         </p>
                                        <p align="center">
                                        一对多关系，即一个用户可以对应多个角色，不能购买只能由站长设置。固定会员的情况下(如企业内部员工)可用此功能。
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
