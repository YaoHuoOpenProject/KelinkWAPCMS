<%@ Page Language="C#" AutoEventWireup="true" Codebehind="UBBEdit.aspx.cs" Inherits="KeLin.WebSite.admin.UBBEdit" %>

<%@ Register TagPrefix="iewc" Namespace="Excellence.Web.UI.WebControls" Assembly="Excellence.Web.UI.WebControls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>UBB可视化操作</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="../NetCSS/tree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">
<base target="_self" />
<script language="JavaScript" type="text/JavaScript">
    function addImgOrFile(file, typeid) {
    
        document.getElementById(typeid).value ="/"+ file;

    }
    function EditURLContent(a) {
        //http://localhost/wapindex.aspx?siteid=1000&classid=127&sid=68375C651AC4DD700_0_00_14799_800100-2-0-0-0-480&path=article/index.aspx
        if (a.toLowerCase().indexOf("classid=") < 0) {
            alert("没有识别到相关标识，不能编辑内容！");
        } else {
        
        var arry;        
        var checkclassid="";
        arry = a.split('&');
            
            for (var i = 0; i < arry.length; i++)
            {
                if (arry[i].toLowerCase().indexOf("classid=") >= 0) {
                    checkclassid = arry[i].toLowerCase().replace("amp;", "").replace("classid=", "");
                    break;
                }

            }
            window.open("/admin/addtop.aspx?classid=" + checkclassid);
        
        }
       

    }
    
    function addpic(a) {
       
        //window.open("/shop/uploadPIC.aspx?siteid=<%=base.SiteId %>&amp;classid=0&amp;sid=<%=base.SID %>&amp;typeid=" + a, "addpic", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
        window.open("Upload_Photo.aspx?PhotoUrlID="+a+"&info=WEB页面综合排版&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
    }
    
    function SaveURL() {
        var title = document.getElementById('title').value;
        var gourl=document.getElementById('gourl').value;
        document.getElementById('toubb_new').value = '[url=' + gourl + ']' + title + '[/url]';
        document.getElementById('form1').submit();

    }
    function SaveCALL() {
        var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        document.getElementById('toubb_new').value = '[call=' + gourl + ']' + title + '[/call]';
        document.getElementById('form1').submit();

    }
    function SaveIndex() {
        var title = document.getElementById('title').value;
        if (title == "") {
            alert('不能为空！');
            return;
        }
        document.getElementById('toubb_new').value = '[index]' + title + '[/index]';
        document.getElementById('form1').submit();

    }
    function SaveText() {
        var title = document.getElementById('title').value;
        if (title == "") {
            alert('不能为空！');
            return;
        }
        if (title.indexOf('[/url]') >= 0 || title.indexOf('[/img]') >= 0 || title.indexOf('[/imgurl]') >= 0 || title.indexOf('[/picurl8]') >= 0) {
            alert('请不要录入链接，图片等UBB,此处只允许录入纯文本文字！');
            return;
        }
        
        document.getElementById('toubb_new').value = '[text]' + title + '[/text]';
        document.getElementById('form1').submit();

    }
    function SaveImages() {
        var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        document.getElementById('toubb_new').value = '[img=' + gourl + ']' + title + '[/img]';
        document.getElementById('form1').submit();

    }
    function SaveJS() {
        //var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        document.getElementById('toubb_new').value = '[js]' + gourl + '[/js]';
        document.getElementById('form1').submit();

    }
    function SaveCSS() {
        //var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        document.getElementById('toubb_new').value = '[css]' + gourl + '[/css]';
        document.getElementById('form1').submit();

    }
    
    function SavePIC8() {
        var pwidth = document.getElementById('pwidth').value;
        var pheight = document.getElementById('pheight').value;

        var pinfo = document.getElementsByName('pinfo');
        var purl = document.getElementsByName('purl');
        var n = pinfo.length;
        var str_pinfo = "";
        var str_purl = "";

        for (var i = 0; i < n; i++) {
            if (pinfo[i].value != "") {
                if (i == 0) {
                    str_pinfo = pinfo[i].value;
                    str_purl = purl[i].value;
                } else {
                    str_pinfo = str_pinfo + "|" + pinfo[i].value;
                    str_purl = str_purl + "|" + purl[i].value;
                }
            }
            }

            //alert(str_pinfo + "*" + str_purl);

            document.getElementById('toubb_new').value = '[picurl8=' + pwidth + '*' + pheight + ']' + str_pinfo + "*" + str_purl + '[/picurl8]';
        document.getElementById('form1').submit();

    }
    function SavePIC9() {
        var pwidth = document.getElementById('pwidth').value;
        var pheight = document.getElementById('pheight').value;

        var pinfo = document.getElementsByName('pinfo');
        var purl = document.getElementsByName('purl');
        var n = pinfo.length;
        var str_pinfo = "";
        var str_purl = "";

        for (var i = 0; i < n; i++) {
            if (pinfo[i].value != "") {
                if (i == 0) {
                    str_pinfo = pinfo[i].value;
                    str_purl = purl[i].value;
                } else {
                    str_pinfo = str_pinfo + "|" + pinfo[i].value;
                    str_purl = str_purl + "|" + purl[i].value;
                }
            }
        }

        //alert(str_pinfo + "*" + str_purl);

        document.getElementById('toubb_new').value = '[picurl9=' + pwidth + '*' + pheight + ']' + str_pinfo + "*" + str_purl + '[/picurl9]';
        document.getElementById('form1').submit();

    }
    function SavePIC10() {
        var pwidth = document.getElementById('pwidth').value;
        var pheight = document.getElementById('pheight').value;

        var pinfo = document.getElementsByName('pinfo');
        var purl = document.getElementsByName('purl');
        var n = pinfo.length;
        var str_pinfo = "";
        var str_purl = "";

        for (var i = 0; i < n; i++) {
            if (pinfo[i].value != "") {
                if (i == 0) {
                    str_pinfo = pinfo[i].value;
                    str_purl = purl[i].value;
                } else {
                    str_pinfo = str_pinfo + "|" + pinfo[i].value;
                    str_purl = str_purl + "|" + purl[i].value;
                }
            }
        }

        //alert(str_pinfo + "*" + str_purl);

        document.getElementById('toubb_new').value = '[picurl10=' + pwidth + '*' + pheight + ']' + str_pinfo + "*" + str_purl + '[/picurl10]';
        document.getElementById('form1').submit();

    }
    function SaveImgURL() {
        var pwidth = document.getElementById('pwidth').value;
        var pheight = document.getElementById('pheight').value;

        var pinfo = document.getElementById('pinfo').value;
        var purl = document.getElementById('purl').value;


        document.getElementById('toubb_new').value = '[imgurl=' + pwidth + '*' + pheight + ']' + pinfo + "*" + purl + '[/imgurl]';
        document.getElementById('form1').submit();

    }
    function SaveIframe() {
        var pwidth = document.getElementById('pwidth').value;
        var pheight = document.getElementById('pheight').value;

        //var pinfo = document.getElementById('pinfo').value;
        var purl = document.getElementById('purl').value;


        document.getElementById('toubb_new').value = '[iframe=' + pwidth + '*' + pheight + ']'  + purl + '[/iframe]';
        document.getElementById('form1').submit();

    }
</script>
</head>
<body>
    <form id="form1" name ="form1" action="UBBEdit.aspx" method ="POST">
   
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
                                            网站管理 &gt;&gt; 页面综合排版 &gt;&gt; UBB可视化操作
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
                                                <table id="Table1" width="100%" height="400">
                                                    <tr>
                                                        <td style="word-wrap: break-word; height: 400px;" valign="top" align="left">
                                                     
                                                               
                                                              
                                                           
                                                        <div align="center">
　<table border="0" width="80%" id="table2">
																<tr>
																	<td>
<!---中间代码开始------>																
<%=strHTML.ToString() %>												
<!---中间代码结束------>
<br /><br />
<hr />
<%
    
    if (this.function == "null")
    {

        Response.Write("系统按链接地址识别到栏目:" + this.checkclassName + " [" + this.checkclassid + "]<br/><IFRAME name=preview2 frameBorder=no height=520 SCROLLING=NO name=link src=\"/admin/addtop.aspx?classid=" + this.checkclassid + "\" width=500></iframe>");
    }
    else if (this.function != "")
    {
        Response.Write("系统按链接地址识别到栏目:" + this.checkclassName + " [" + this.checkclassid + "]<br/><br/> <p align=\"center\"><a href=\"javascript:window.showModalDialog('/admin/ContentTree2.aspx?function=" + this.function + "&classid=" + this.checkclassid + "',null,'dialogWidth=900px;dialogHeight=700px;menuba=no;resizable=yes');window.close();\"><img src=\"/NetImages/content.gif\" border=\"0\" alt=\"内容管理\"/></a></p>");
        

    }   
    
    
    
    
     %>
																	</td>
																</tr>
															</table>
														</div>
														</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
           
            <tr>
                <td class="bg">
                </td>
            </tr>
        </table>
     <input type="hidden" name="action" value ="goedit" />
     <input type="hidden" name="ubb" value ="<%=this.ubb %>" />
     <input type="hidden" name="toclassid" value ="<%=this.toclassid %>" />
     <input type="hidden" id='toubb_new' name="toubb_new" value ="<%=this.toubb_new %>" />
  
    </form>
</body>
</html>
