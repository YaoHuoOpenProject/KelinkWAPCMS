<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd_sys.aspx.cs" Inherits="KeLin.WebSite.download.admin_WAPadd_sys" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>��������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">


    <script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}

// ]]>
    </script>   
    </head>
<body >   
<table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                    <td>
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
                                                ϵͳ��Դ>>������Դ
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
                    <td valign="top" align="left">
                        <div class="txt4">
                            <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                                <tbody>
                                    <tr>
                                        <td class="column" colspan="2">
                                            <font face="����">�ϴ��ļ� </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%" rowspan="2">
                                            ��</td>
                                        <td class="fh3">
                                                                                                                                                                                     
<%
    if (num > 20) num = 20;
    
   
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);    
    if (this.INFO == "OK")
    {

        Response.Write("<b>�ϴ��ɹ���</b> ");

        Response.Write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"button\" name=\"b\" onclick=\"window.location='systemindex.aspx?typeid=" + this.typeid + "';\" value=\"  �� ��  \" class=\"bt\"/>");
        
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>�ϴ��ļ���ʽ����ֻ�����ϴ���"+base.UpFileType+"</b><br/>");

    }
    else if (this.INFO == "NOTSPACE")
    {
        Response.Write("<b>��վ�ܿռ��Ѿ�����ϵͳ���������վ�����ռ��ˣ���վ�ռ䣺" + base.SiteSpace  + "M������վ��ʹ�ã�" + (base.MySpace) + "KB</b><br/>");

    }
    else if (this.INFO == "MAXFILE")
    {
        Response.Write("<b>���ϴ��ĵ����ļ��ܴ�С�������������" + base.MaxFileSize + "KB</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>���ⲻ��С��2���ַ���</b><br/>");

    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>�벻Ҫ���ظ����ݣ�</b><br/>");
    }


    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>��Ǹ�����Ѿ����������������ע�ⷢ������</b><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    if (this.INFO != "OK")
    {
        //ѡ���ٸ�

        Response.Write("<form name=\"g1\" action=\"" + http_start + "download/admin_WAPadd_sys.aspx\" method=\"get\">");
        Response.Write("�ϴ����� <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
     
        Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"typeid\" value=\"" + typeid + "\"/>");        

        Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"ȷ��\" class=\"bt\"/></form>");

        Response.Write("<br/>");


        Response.Write("<form name=\"f1\" action=\"" + http_start + "download/admin_WAPadd_sys.aspx\" enctype=\"multipart/form-data\" method=\"post\">");



        Response.Write("��Դ����:" + this.clist+"<br/>");
        Response.Write("����*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + book_title + "\"/><br/>");
        Response.Write("���*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">" + book_content + "</textarea><br/>");
  
        
        for (int i = 0; i < this.num; i++)
        {
            Response.Write("----- �ϴ�ͼƬ/�ļ�" + (i + 1) + " -------<br/>");
            Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
            Response.Write("˵��:<br/>");
            Response.Write("<textarea name=\"book_file_info\" rows=\"3\" style=\"width:100%\"></textarea><br/>");
            Response.Write("<select name=\"platform\" id=\"platformSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"\">ѡ�ֻ�ƽ̨</option>");
            Response.Write(this.platform);
            Response.Write("<option value=\"\">����</option>");
            Response.Write("</select>");

            Response.Write("<select name=\"screen\"  id=\"screenSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"0X0\">ѡ�ֻ���Ļ</option>");
            Response.Write(this.screen);
            Response.Write("<option value=\"0X0\">����</option>");
            Response.Write("</select>");


            Response.Write("<select name=\"serial\" id=\"serialSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"\">ѡ��Ϸϵ��</option>");
            Response.Write(this.serial);
            Response.Write("<option value=\"\">����</option>");
            Response.Write("</select><br/>");
            Response.Write("��ס Ctrl ��ť��ѡ����ѡ�<br/>");
            Response.Write("�߼��ֶ�¼��<a href=\"javascript:turnon('d" + i + "');\">��</a>/<a href=\"javascript:turnoff('d" + i + "');\">��</a>");

            Response.Write("<div class=\"subtitle\" id=\"d" + i + "\" style=\"display:none;\"><textarea name=\"manual\" id=\"manual" + i + "\"  rows=\"2\" style=\"width:100%\"></textarea></div>");
            Response.Write("<hr/>");
            
            if (i == (this.num - 1))
            {
                Response.Write("�����ͼƬ�ļ���������<br/>"); ;
                Response.Write("ͼ��:<input type=\"text\" name=\"book_width\" size=\"5\" value=\"\"/>px ");
                Response.Write("��:<input type=\"text\" name=\"book_height\" size=\"5\" value=\"\"/>px<br/>");
                Response.Write("(������,�����գ�����ֻ����һ��ͼ���������ֲ����Ρ�)<br/>");
            }
        }
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"num\" value=\"" + num + "\"/>");

        Response.Write("<br/><br/><input type=\"submit\" name=\"g\" value=\"�ϴ��ļ�\" class=\"bt\"/>");
        Response.Write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"button\" name=\"b\" onclick=\"window.location='systemindex.aspx?typeid=" + this.typeid + "';\" value=\"  �� ��  \" class=\"bt\"/>");
        Response.Write("</form>");
    }
    
    Response.Write("</div>");

    Response.Write("\n<script>\n");
    Response.Write("function turnoff(obj){\n");
    Response.Write("document.getElementById(obj).style.display=\"none\";\n");
    Response.Write("}\n");
    Response.Write("function turnon(obj){\n");
    Response.Write("document.getElementById(obj).style.display=\"block\";\n");
    Response.Write("}\n");
    Response.Write("function showManual(obj){\n");
    Response.Write("var temp = \"\";\n");
    Response.Write("var sel1 = document.getElementById('platformSel'+obj);\n");
    Response.Write("var sel2 = document.getElementById('screenSel'+obj);\n");
    Response.Write("var sel3 = document.getElementById('serialSel'+obj);\n");
    Response.Write("for(var i = 0; i < sel1.options.length; i++){\n");
    Response.Write("if(sel1.options[i].selected && sel1.options[i].value!=\"\"){\n");

    Response.Write("var kk=0;");
    Response.Write("for(var k = 0; k < sel2.options.length; k++){\n");
    Response.Write("if(sel2.options[k].selected && sel2.options[k].value!=\"\"){\n");



    Response.Write("var zz=0;\n");
    Response.Write("for(var x = 0; x < sel3.options.length; x++){\n");
    Response.Write("if(sel3.options[x].selected && sel3.options[x].value!=\"\"){\n");
    //Response.Write("alert(sel3.options[x].value);\n");
    Response.Write("temp = temp + sel1.options[i].value + sel2.options[k].value + sel3.options[x].value+',';\n");
    Response.Write("zz++;\n");
    Response.Write("}\n");
    Response.Write("}\n");


    Response.Write("if (zz==0){\n");
    Response.Write("temp = temp + sel1.options[i].value + sel2.options[k].value +',';\n");
    Response.Write("}\n");



    Response.Write("kk++;\n");
    Response.Write("}\n");
    Response.Write("}\n");



    Response.Write("if (kk==0){\n");
    Response.Write("temp = temp + sel1.options[i].value  +'0X0,';\n");
    Response.Write("}\n");

    Response.Write("}\n");
    Response.Write("}\n");

    Response.Write("document.getElementById('manual'+obj).value=temp;\n");

    Response.Write("}\n");
    Response.Write("</script>\n");
 %>
 </td>
                                    </tr>
                                    <tr>
                                        <td class="fh3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px" align="center">
                        <br />
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            </p>
                                            <br />
                                            <br />
                    </td>
                </tr>
            </tbody>
        </table>
       
</body>
</html>