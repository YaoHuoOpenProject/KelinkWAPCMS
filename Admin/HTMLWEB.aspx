<%@ Page Language="C#" AutoEventWireup="true" Codebehind="HTMLWEB.aspx.cs" Inherits="KeLin.WebSite.admin.HTMLWEB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>电脑版排版</title>
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
                                                网站管理 &gt;&gt; 电脑版排版
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
                                        <input type =button name=bt onclick="window.open('/WEB/AdminIndex.aspx');" class="bt" value="  点击此打开排版电脑网页界面  " style="font-size: 20pt" /> (高级人员使用,建议IE9或以下，因为有很多弹窗动作)
                                       
                                            </p>
                                       
                                       
                                        <p align="center">
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
