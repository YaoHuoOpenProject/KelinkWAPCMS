<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ContentTree.aspx.cs" Inherits="KeLin.WebSite.admin.ContentTree" %>

<%@ Register TagPrefix="iewc" Namespace="Excellence.Web.UI.WebControls" Assembly="Excellence.Web.UI.WebControls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>????ɾ??????</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--

-->
</style>

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
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4">
                    <!--<table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="1%">
                                <img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
                            <td width="98%" background="../NetImages/main_title_02.gif">
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="2%">
                                            <div align="center">
                                                <img src="../NetImages/i08.gif" width="16" height="16"></div>
                                        </td>
                                        <td width="98%" height="24" valign="middle">
                                            ??վ???? &gt;&gt; ????ɾ??????
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="1%">
                                <img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
                        </tr>
                    </table>-->
                    
<!--?޸?begin-->
<div id="title">
   <div class="tit_right"><img src="../NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="../NetImages/tit_left.gif" /></div>
   <div class="tit_center">
      <ul>
        <li><a href="../admin/SitePreview.aspx">ҳ???ۺ??Ű?</a></li>
        <li><a href="../admin/ContentTree.aspx"  class="check">???ݹ???</a></li>
        <li><a href="../WapStyle/Style_List.aspx">Ƥ??CSS??ʽ</a></li>
        <li><a href="../models/systemindex.aspx">ģ??????</a></li>
        <li><a href="../admin/SitePreviewGo.aspx"  style="color:red;">?L?????K</a></li>
        <li><a href="../models/systemmodel.aspx" >ϵͳģ??????</a></li>
        <li><a href="../WapStyle/Style_List00.aspx"  >ϵͳCSS??ʽ</a></li>
      </ul>
   </div>
</div>
<!--?޸?end-->
                    
                    
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
                                                        <td style="word-wrap: break-word; width: 180px; height: 520px;" valign="top" align="left">
                                                         <!--div id="Div1" style="z-index: 1; left: 3px; visibility: inherit; overflow: auto;
                                                                width: 180px; position: absolute; top: 31px; height: 520px"-->
                                                                         <!--??ʼ???????·????б?-->
                                                                <table class="adminTable" cellspacing="0" cellpadding="3" width="100%">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="adminSeparator">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="column" align="center">
                                                                                <img src="/netimages/shdot.gif" /> <a href="functionindex.aspx">??????ģ??????</a></td>
                                                                        </tr>
                                                                        <tr>
                           <td class="f">
&nbsp;<img src="/NetImages/icon_post_show.gif" /> <a href="/admin/systemindexFiles.aspx" target="ir">?ϴ??ļ?????</a> <br />
&nbsp;<img src="/NetImages/icon_post_show.gif" /> <a href="/class/admin_infolist.aspx" target="ir">??Ŀ?Ű?????</a> 
<script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'?ҵ???Ŀ????');
  	                                      
  <%=strJavascript %>                                     

document.write(d);
</script>
                                                                        
                                                                        
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!--?????????????б?-->
                                                           <!--</div>-->
                                                           
                                                        </td>
                                                        <td colspan="4" valign="top" align="left" height="630px">
                                                            <iframe name ="ir" src="/admin/tip.htm" id="iframe" width="100%" height="100%" frameborder="0"
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
