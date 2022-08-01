<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPModify_sys.aspx.cs" Inherits="KeLin.WebSite.download.admin_WAPModify_sys" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>下载内容</title>
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
                                                系统资源>>下载资源
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
                                            <font face="宋体">修改 </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%" rowspan="2">
                                            　</td>
                                        <td class="fh3">
<%

    if (num > 20) num = 20;


    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);    
    if (this.INFO == "OK")
    {

        Response.Write("<b>修改成功！</b> ");
        Response.Write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"button\" name=\"b\" onclick=\"window.location='systemindex.aspx?typeid=" + this.typeid + "';\" value=\"  返 回  \" class=\"bt\"/>");
        
        
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传："+base.UpFileType+"</b><br/>");

    }
   
 
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>标题不能小于2个字符！</b><br/>");

    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }


    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    if (this.INFO != "OK")
    {
       

        Response.Write("<form name=\"f1\" action=\"" + http_start + "download/admin_WAPmodify_sys.aspx\" method=\"post\">");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/><br/>");
        Response.Write("标题*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + book_title + "\"/><br/>");
        Response.Write("简介*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">" + book_content + "</textarea><br/>");
  
        
        for (int i = 0; (imgList!=null&&i < imgList.Count); i++)
        {
            Response.Write("<br/>----- URL图片/文件地址" + (i + 1) + " -------<br/>");
            Response.Write("<input type=\"hidden\" name=\"book_id\" value=\"" + imgList[i].ID + "\"/>");
            Response.Write("<input type=\"text\" name=\"book_file\" value=\"" + imgList[i].book_file + "\"/><br/>");
            Response.Write("(http开头的外站地址或本空间地址，相对/绝对都可以)<br/>");
            Response.Write("文件名:");
            Response.Write("<input type=\"text\" name=\"book_file_title\" value=\"" + imgList[i].book_title + "\" size=\"8\"/><br/>");
            Response.Write("扩展名:");
            Response.Write("<input type=\"text\" name=\"book_ext\" value=\"" + imgList[i].book_ext + "\" size=\"4\"/><br/>");
            Response.Write("大小:");
            Response.Write("<input type=\"text\" name=\"book_size\" value=\"" + imgList[i].book_size + "\" size=\"4\"/><br/>");
            
            Response.Write("说明:<br/>");
            Response.Write("<textarea name=\"book_file_info\" rows=\"3\" style=\"width:100%\">" + imgList[i].book_content + "</textarea><br/>");

            Response.Write("<select name=\"platform\" id=\"platformSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"\">选手机平台</option>");
            Response.Write(this.platform);
            Response.Write("<option value=\"\">留空</option>");
            Response.Write("</select>");

            Response.Write("<select name=\"screen\"id=\"screenSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"0X0\">选手机屏幕</option>");
            Response.Write(this.screen);
            Response.Write("<option value=\"0X0\">留空</option>");
            Response.Write("</select>");


            Response.Write("<select name=\"serial\" id=\"serialSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"\">选游戏系列</option>");
            Response.Write(this.serial);
            Response.Write("<option value=\"\">留空</option>");
            Response.Write("</select><br/>");
            Response.Write("按住 Ctrl 按钮来选择多个选项。<br/>");
            Response.Write("高级手动录入<a href=\"javascript:turnon('d" + i + "');\">显</a>/<a href=\"javascript:turnoff('d" + i + "');\">隐</a>");

            Response.Write("<div class=\"subtitle\" id=\"d" + i + "\" style=\"display:none;\"><textarea name=\"manual\" id=\"manual" + i + "\"  rows=\"2\" style=\"width:100%\">" + imgList[i].manual + "</textarea></div>");

            Response.Write("<hr/>");
            
        }
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");

   
        Response.Write("<input type=\"hidden\"  name=\"num\" value=\"" + num + "\"/>");

        Response.Write("<br/><br/><input type=\"submit\" name=\"g\" value=\" 修 改 \" class=\"bt\"/>");
        Response.Write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"button\" name=\"b\" onclick=\"window.location='systemindex.aspx?typeid=" + this.typeid + "';\" value=\"  返 回  \" class=\"bt\"/>");
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

    Response.Write("function setDefalut(){\n");
    Response.Write("var selcount = " + imgList.Count + ";\n");
    Response.Write("for (var y = 0; y < selcount; y++){\n");

    Response.Write("var all =document.getElementById('manual'+y).value;\n");
    Response.Write("var sel1 = document.getElementById('platformSel'+y);\n");
    Response.Write("var sel2 = document.getElementById('screenSel'+y);\n");
    Response.Write("var sel3 = document.getElementById('serialSel'+y);\n");
    Response.Write("for(var i = 0; i < sel1.options.length; i++){\n");
    Response.Write("if(sel1.options[i].value!=\"\" && all.indexOf(sel1.options[i].value) >=0){\n");
    Response.Write("sel1.options[i].selected=true ;\n");
    Response.Write("}\n");
    Response.Write("}\n");

    Response.Write("for(var i = 0; i < sel2.options.length; i++){\n");
    Response.Write("if(sel2.options[i].value!=\"\" && all.indexOf(sel2.options[i].value) >=0){\n");
    Response.Write("sel2.options[i].selected=true ;\n");
    Response.Write("}\n");
    Response.Write("}\n");

    Response.Write("for(var i = 0; i < sel3.options.length; i++){\n");
    Response.Write("if(sel3.options[i].value!=\"\" && all.indexOf(sel3.options[i].value) >=0){\n");
    Response.Write("sel3.options[i].selected=true ;\n");
    Response.Write("}\n");
    Response.Write("}\n");


    Response.Write("}\n");

    Response.Write("}\n");


    if (this.INFO != "OK")
    {
        Response.Write("window.onload=function(){setDefalut();}\n");
    }
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


