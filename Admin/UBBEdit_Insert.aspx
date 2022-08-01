<%@ Page Language="C#" AutoEventWireup="true" Codebehind="UBBEdit_Insert.aspx.cs" Inherits="KeLin.WebSite.admin.UBBEdit_Insert" %>

<%@ Register TagPrefix="iewc" Namespace="Excellence.Web.UI.WebControls" Assembly="Excellence.Web.UI.WebControls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>UBB���ӻ�����-�༭�����</title>
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
    function addpic(a) {
       
        //window.open("/shop/uploadPIC.aspx?siteid=<%=base.SiteId %>&amp;classid=0&amp;sid=<%=base.SID %>&amp;typeid=" + a, "addpic", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
        window.open("Upload_Photo.aspx?PhotoUrlID="+a+"&info=WEBҳ���ۺ��Ű�&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
    }
    
    function SaveURL() {
        var title = document.getElementById('title').value;
        var gourl=document.getElementById('gourl').value;
        window.returnValue = '[url=' + gourl + ']' + title + '[/url]';
        window.close();
        //document.getElementById('form1').submit();

    }
    function SaveCALL() {
        var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        window.returnValue = '[call=' + gourl + ']' + title + '[/call]';
        window.close();
        //document.getElementById('form1').submit();

    }
    function SaveImages() {
        var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        window.returnValue  = '[img=' + gourl + ']' + title + '[/img]';        
        window.close();

    }
    function SaveJS() {
        //var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        window.returnValue = '[js]' + gourl + '[/js]';
        window.close();

    }
    function SaveCSS() {
        //var title = document.getElementById('title').value;
        var gourl = document.getElementById('gourl').value;
        window.returnValue = '[css]' + gourl + '[/css]';
        window.close();

    }
    function SaveText() {
        var title = document.getElementById('title').value;
        if (title == "") {
            alert('����Ϊ�գ�');
            return;
        }
        if (title.indexOf('[/url]') >= 0 || title.indexOf('[/img]') >= 0 || title.indexOf('[/imgurl]') >= 0 || title.indexOf('[/picurl8]') >= 0) {
            alert('�벻Ҫ¼�����ӣ�ͼƬ��UBB,�˴�ֻ����¼�봿�ı����֣�');
            return;
        }
        window.returnValue = '[text]' + title + '[/text]';
        window.close();

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

            window.returnValue = '[picurl8=' + pwidth + '*' + pheight + ']' + str_pinfo + "*" + str_purl + '[/picurl8]';
            window.close();

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

            window.returnValue = '[picurl9=' + pwidth + '*' + pheight + ']' + str_pinfo + "*" + str_purl + '[/picurl9]';
            window.close();

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

            window.returnValue = '[picurl10=' + pwidth + '*' + pheight + ']' + str_pinfo + "*" + str_purl + '[/picurl10]';
            window.close();

        }
    function SaveImgURL() {
        var pwidth = document.getElementById('pwidth').value;
        var pheight = document.getElementById('pheight').value;

        var pinfo = document.getElementById('pinfo').value;
        var purl = document.getElementById('purl').value;


        window.returnValue  = '[imgurl=' + pwidth + '*' + pheight + ']' + pinfo + "*" + purl + '[/imgurl]';
        window.close();
    }

    function SaveIframe() {
        var pwidth = document.getElementById('pwidth').value;
        var pheight = document.getElementById('pheight').value;

        //var pinfo = document.getElementById('pinfo').value;
        var purl = document.getElementById('purl').value;


        window.returnValue = '[iframe=' + pwidth + '*' + pheight + ']' + purl + '[/iframe]';
        window.close();
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
                                            ��վ���� &gt;&gt; ҳ���ۺ��Ű� &gt;&gt; UBB���ӻ�����
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
��<table border="0" width="80%" id="table2">
																<tr>
																	<td>

<hr />
<%


    strHTML.Append("��ǰ��ȡUBB:<font color=red><b>" + this.toubb + "<b></font> ���ӻ��������£�<hr />");
    
    
    if (this.toubb.IndexOf("[/url]") > 0)
    {
        strHTML.Append("�ı����ӹ���<br/>");
        strHTML.Append("�������ƣ�<input type='text' id='title' name='title' value='' style='width:250px'/><br/>���ӵ�ַ��<input type='text' id='gourl' name='gourl' value='' style='width:250px'/> <br/>");
        strHTML.Append("<br/><input type='button' onclick='SaveURL();' value=' �� �� '/>");


    }
    else if (this.toubb.IndexOf("[/call]") > 0)
    {
        strHTML.Append("������Ź���<br/>");
        strHTML.Append("˵����<input type='text' id='title' name='title' value='' style='width:250px'/><br/>��ϵ���룺<input type='text' id='gourl' name='gourl' value='' style='width:250px'/> <br/>");
        strHTML.Append("<br/><input type='button' onclick='SaveCALL();' value=' �� �� '/>");


    }
    else if (this.toubb.IndexOf("[/text]") > 0)
    {

        strHTML.Append("���ı����ݣ�<br/><textarea id='title' name='title' rows='3' style='width:100%'/></textarea><br/>");

        strHTML.Append("<br/><input type='button' onclick='SaveText();' value='���±���'/>");

        
    }
    else if (this.toubb.IndexOf("[/img]") > 0)
    {

        strHTML.Append("��ʾͼƬ����<br/>");
        strHTML.Append("ͼƬ˵����<input type='text' id='title' name='title' value='' style='width:250px'/><br/>ͼƬ��ַ��<input type='text' id='gourl' name='gourl' value='' style='width:250px'/> [<a href=\"javascript:addpic('gourl');\">�ϴ�</a>]<br/>");
        strHTML.Append("<br/><input type='button' onclick='SaveImages();' value=' �� �� '/>");




    }
    else if (this.toubb.IndexOf("[/js]") > 0)
    {

        strHTML.Append("����js��̬�ű�����<br/>");
        strHTML.Append("JavaScript�ļ���ַ��<input type='text' id='gourl' name='gourl' value='' style='width:250px'/> [<a href=\"javascript:addpic('gourl');\">�ϴ�</a>]<br/>");
        strHTML.Append("<br/><input type='button' onclick='SaveJS();' value=' �� �� '/>");

    }
    else if (this.toubb.IndexOf("[/css]") > 0)
    {

        strHTML.Append("����CSS��ʽ�ļ�����<br/>");
        strHTML.Append("CSS�ļ���ַ��<input type='text' id='gourl' name='gourl' value='' style='width:250px'/> [<a href=\"javascript:addpic('gourl');\">�ϴ�</a>]<br/>");
        strHTML.Append("<br/><input type='button' onclick='SaveCSS();' value=' �� �� '/>");

    }
    else if (this.toubb.IndexOf("[/picurl8]") > 0)
    {
      
       
                strHTML.Append("ͼƬ�������ֲ�����<br/>");
               strHTML.Append("ͼƬ���:<input type=\"text\" id=\"pwidth\" name=\"pwidth\" value=\"320\" style=\"width:30px\"/>px �߶�:<input type=\"text\" id=\"pheight\" name=\"pheight\" value=\"200\" style=\"width:30px\"/>px<br/><br/>");

                for (int i = 0; i < 6; i++)
                {
                    strHTML.Append("<b>��" + (i + 1) + " ��ͼƬ:</b><br/>");
                    strHTML.Append("ͼƬ��ַ:<input type=\"text\" id=\"pinfo" + i + "\"  name=\"pinfo\" value=\"\" style=\"width:200px\"/> [<a href=\"javascript:addpic('pinfo" + i + "');\">�ϴ�</a>]<br/>");
                    strHTML.Append("���ӵ�ַ:<input type=\"text\" name=\"purl\" value=\"\" style=\"width:200px\"/> <br/>");
                    strHTML.Append("------<br/>");
                }
                strHTML.Append("˵��:������ţ��������ա�");

                
            
       strHTML.Append("<br/><input type='button' onclick='SavePIC8();' value=' �� �� '/>");



    }
    else if (this.toubb.IndexOf("[/picurl9]") > 0)
    {


        strHTML.Append("ͼƬ���������ֲ�����<br/>");
        strHTML.Append("ͼƬ���:<input type=\"text\" id=\"pwidth\" name=\"pwidth\" value=\"320\" style=\"width:30px\"/>px �߶�:<input type=\"text\" id=\"pheight\" name=\"pheight\" value=\"200\" style=\"width:30px\"/>px<br/><br/>");

        for (int i = 0; i < 6; i++)
        {
            strHTML.Append("<b>��" + (i + 1) + " ��ͼƬ:</b><br/>");
            strHTML.Append("ͼƬ��ַ:<input type=\"text\" id=\"pinfo" + i + "\"  name=\"pinfo\" value=\"\" style=\"width:200px\"/> [<a href=\"javascript:addpic('pinfo" + i + "');\">�ϴ�</a>]<br/>");
            strHTML.Append("���ӵ�ַ:<input type=\"text\" name=\"purl\" value=\"\" style=\"width:200px\"/> <br/>");
            strHTML.Append("------<br/>");
        }
        strHTML.Append("˵��:������ţ��������ա�");



        strHTML.Append("<br/><input type='button' onclick='SavePIC9();' value=' �� �� '/>");



    }
    else if (this.toubb.IndexOf("[/picurl10]") > 0)
    {


        strHTML.Append("ͼƬ�����ֲ�����<br/>");
        strHTML.Append("ͼƬ���:<input type=\"text\" id=\"pwidth\" name=\"pwidth\" value=\"320\" style=\"width:30px\"/>px �߶�:<input type=\"text\" id=\"pheight\" name=\"pheight\" value=\"200\" style=\"width:30px\"/>px<br/><br/>");

        for (int i = 0; i < 6; i++)
        {
            strHTML.Append("<b>��" + (i + 1) + " ��ͼƬ:</b><br/>");
            strHTML.Append("ͼƬ��ַ:<input type=\"text\" id=\"pinfo" + i + "\"  name=\"pinfo\" value=\"\" style=\"width:200px\"/> [<a href=\"javascript:addpic('pinfo" + i + "');\">�ϴ�</a>]<br/>");
            strHTML.Append("���ӵ�ַ:<input type=\"text\" name=\"purl\" value=\"\" style=\"width:200px\"/> <br/>");
            strHTML.Append("------<br/>");
        }
        strHTML.Append("˵��:������ţ��������ա�");



        strHTML.Append("<br/><input type='button' onclick='SavePIC10();' value=' �� �� '/>");



    }
    else if (this.toubb.IndexOf("[/imgurl]") > 0)
    {

        

                strHTML.Append("ͼƬ���ӹ���<br/>");
                strHTML.Append("ͼƬ���:<input type=\"text\" id=\"pwidth\" name=\"pwidth\" value=\"320\" style=\"width:30px\"/>px �߶�:<input type=\"text\" id=\"pheight\" name=\"pheight\" value=\"200\" style=\"width:30px\"/>px<br/><br/>");



                strHTML.Append("ͼƬ��ַ:<input type=\"text\" id=\"pinfo\"  name=\"pinfo\" value=\"\" style=\"width:200px\"/> [<a href=\"javascript:addpic('pinfo');\">�ϴ�</a>]<br/>");
                strHTML.Append("���ӵ�ַ:<input type=\"text\" name=\"purl\" value=\"\" style=\"width:200px\"/> <br/>");
                //sb.Append("------<br/>");

        
        strHTML.Append("<br/><input type='button' onclick='SaveImgURL();' value=' �� �� '/>");



    }
    else if (this.toubb.IndexOf("[/iframe]") > 0)
    {



        strHTML.Append("Iframe��ܹ���<br/>");
        strHTML.Append("��ܿ��:<input type=\"text\" id=\"pwidth\" name=\"pwidth\" value=\"320\" style=\"width:30px\"/>px �߶�:<input type=\"text\" id=\"pheight\" name=\"pheight\" value=\"200\" style=\"width:30px\"/>px<br/><br/>");



        strHTML.Append("���ӵ�ַ:<input type=\"text\" name=\"purl\" value=\"\" style=\"width:200px\"/> <br/>");
        //sb.Append("------<br/>");


        strHTML.Append("<br/><input type='button' onclick='SaveIframe();' value=' �� �� '/>");



    }

    Response.Write(strHTML);
    
     %>
     <hr />
     ���ɣ��༭�ú󣬲��룬�Զ�����UBB���롣��Ҫ�ڸ����ڡ����桱���´θ��Ĵ�ֵ��ֻ��Ҫ��ҳ���ۺ��Ű��е���ߡ��༭������������ֻ�ͼƬ�ͻᵯ�����ӻ������ˡ�
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
