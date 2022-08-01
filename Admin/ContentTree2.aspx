<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ContentTree2.aspx.cs" Inherits="KeLin.WebSite.admin.ContentTree2" %>

<%@ Register TagPrefix="iewc" Namespace="Excellence.Web.UI.WebControls" Assembly="Excellence.Web.UI.WebControls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>添加删除内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">
<base target="_self" />
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

 window.returnValue = 'refresh';
</script>

</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                   <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="12">
                                <img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
                            <td width="100%" background="../NetImages/main_title_02.gif">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%">
                                            <div align="center">
                                                <img src="../NetImages/i08.gif" width="16" height="16"></div>
                                        </td>
                                        <td width="98%" height="24" valign="middle">
                                            网站管理 &gt;&gt; 添加删除内容
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="13">
                                <img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
                        </tr>
                    </table>                  

                    
                    
                </td>
            </tr>
            <tr>
                <td width="100%" colspan="4">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="TABLE6">
                        <tr>
                            <td>
                                
                                            <div class="txt4">
                                                <table id="Table1" width="100%">
                                                    <tr>
                                                        <td style="word-wrap: break-word; width: 150px; height: 520px;" valign="top" align="left">
                                                         <!--div id="Div1" style="z-index: 1; left: 3px; visibility: inherit; overflow: auto;
                                                                width: 180px; position: absolute; top: 31px; height: 520px"-->
                                                                         <!--开始左边文章分类列表-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="adminSeparator">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                <img src="/netimages/shdot.gif" /> </td>
                                                                        </tr>
                                                                        <tr>
                           <td class="f">
<script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'<%=function.ToUpper() %>的栏目内容');
  	                                      
  <%=strJavascript %>                                     


  
document.write(d);
</script>
                                                                        
                                                                        
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--结束左边文章列表-->
                                                           <!--</div>-->
                                                           
                                                        </td>
                                                        <td colspan="4" valign="top" align="left" height="630px">
                                                            <iframe name ="ir" src="<%=gourl %>" id="iframe" width="100%" height="100%" frameborder="0"
                                                                scrolling="yes"></iframe>
                                                        </td>
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
