<%@ Page Language="C#" AutoEventWireup="true" Codebehind="app.aspx.cs" Inherits="KeLin.WebSite.weixin.app" %>

<%@ Register TagPrefix="iewc" Namespace="Excellence.Web.UI.WebControls" Assembly="Excellence.Web.UI.WebControls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>生成app</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">

<script language="JavaScript" type="text/JavaScript">
 function gourl(strurl, classid, siteid) {

     var temp;
     temp = strurl.substring(strurl.length - 4, strurl.length);
     if (temp.toLowerCase() == ".asp") {
         document.getElementById("iframe").src = "/" + strurl + "?action=webAdmin&classid=" + classid + "&siteid=" + siteid +"&sid=<%=base.SID %>";
     } else {
         document.getElementById("iframe").src = "/" + strurl + "?action=webAdmin&classid=" + classid + "&siteid=" + siteid;
     }
 }
 function gourl2(strurl, classid, siteid) {
     //window.open(strurl);
     document.getElementById("iframe").src = strurl;
 }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                   
                    
<!--修改begin-->
<div id="title">
   <div class="tit_right"><img src="../NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="../NetImages/tit_left.gif" /></div>
   <div class="tit_center">
      <ul>
        <li><a href="ContentTree.aspx" >微信互动营销</a></li>
        <li><a href="app.aspx" class="check" >单独生成APP</a></li>
   
      </ul>
   </div>
</div>
<!--修改end-->
                    
                    
                </td>
            </tr>
            <tr>
                <td width="100%" colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="TABLE6">
                        <tr>
                            <td>
                                
                                            <div class="txt4">
                                                <table id="Table1" width="100%" height="279">
                                                    <tr>
                                                        <td align="center">
                                                           <b><font size="4">
															生成APP由第三方提供，<a target="_blank" href="http://app.kelink.com/app/makeapp.aspx?tostate=2">点击查看</a>。</font></b><p>　</p>
															<p>　</p>
															<p>　</p>
															<p>　</p>
															<p><font size="4">
															<b>或联系本系统运营商帮您生成APP。</b></font></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr align="center">
                <td style="height: 14px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                </td>
            </tr>
            <tr>
                <td class="bg">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>