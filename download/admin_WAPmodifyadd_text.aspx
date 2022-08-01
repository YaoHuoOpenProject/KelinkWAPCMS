<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodifyadd_text.aspx.cs" Inherits="KeLin.WebSite.download.admin_WAPmodifyadd_text" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("高级批量续传|高级批量续传|add subject"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "download/admin_WAPmodifyadd_text.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面新增|进入WAP2.0界面新增|wap2.0 add upfile") + "</a><br/>");



    Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    if (num > 20) num = 20;

    Response.Write("<div class=\"subtitle\">" + this.GetLang("高级批量续传|高级批量续传|add subject") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);    
    if (this.INFO == "OK")
    {

        Response.Write("<b>续传成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            Response.Write("<b>审核后显示！</b> ");
        }
        Response.Write("<a href=\"" + this.http_start + "download/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">查看主题</a><br/>");
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传："+siteVo.UpFileType+"</b><br/>");

    }
   
 
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>标题和内容不能为空！</b><br/>");

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
        //选多少个

        Response.Write("<form name=\"g1\" action=\"" + http_start + "download/admin_WAPmodifyadd_text.aspx\" method=\"get\">");
        Response.Write(this.GetLang("上传数量|上传数量|Upload Number") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
        Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"id\" value=\"" + id + "\"/>");      
        Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");

        Response.Write("<br/>");


        Response.Write("<form name=\"f1\" action=\"" + http_start + "download/admin_WAPmodifyadd_text.aspx\" method=\"post\">");

        Response.Write(book_title+"<br/>");

        
        for (int i = 0; i < this.num; i++)
        {
            Response.Write("----- URL图片/文件地址" + (i + 1) + " -------<br/>");
            Response.Write("<input type=\"text\" name=\"book_file\" value=\"http://\"/><br/>");
            Response.Write("(http或/开头或相对地址)<br/>");
            Response.Write("文件名:");
            Response.Write("<input type=\"text\" name=\"book_file_title\" value=\"\" size=\"8\"/><br/>");
            Response.Write("扩展名(可留空):");
            Response.Write("<input type=\"text\" name=\"book_ext\" value=\"\" size=\"4\"/><br/>");
            Response.Write("大小:");
            Response.Write("<input type=\"text\" name=\"book_size\" value=\"\" size=\"4\"/><br/>");
            Response.Write(this.GetLang("说明|说明|INFO") + ":<br/>");
            Response.Write("<textarea name=\"book_file_info\" rows=\"3\" style=\"width:100%\"></textarea><br/>");

            Response.Write("<select name=\"platform\" id=\"platformSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"\">选手机平台</option>");
            Response.Write(this.platform);
            Response.Write("<option value=\"\">留空</option>");
            Response.Write("</select>");

            Response.Write("<select name=\"screen\" id=\"screenSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"0X0\">选手机屏幕</option>");
            Response.Write(this.screen);
            Response.Write("<option value=\"0X0\">留空(0X0)</option>");
            Response.Write("</select>");


            Response.Write("<select name=\"serial\" id=\"serialSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            Response.Write("<option value=\"\">选游戏系列</option>");
            Response.Write(this.serial);
            Response.Write("<option value=\"\">留空</option>");
            Response.Write("</select><br/>");
            Response.Write("按住 Ctrl 按钮来选择多个选项。<br/>");
            Response.Write(this.GetLang("高级手动录入|高级手动录入|manual") + "<a href=\"javascript:turnon('d" + i + "');\">" + this.GetLang("显|显|ON") + "</a>/<a href=\"javascript:turnoff('d" + i + "');\">" + this.GetLang("关|关|OFF") + "</a>");

            Response.Write("<div class=\"subtitle\" id=\"d" + i + "\" style=\"display:none;\"><textarea name=\"manual\" id=\"manual" + i + "\"  rows=\"2\" style=\"width:100%\"></textarea></div>");
            
            Response.Write("<hr/>");
            
        }
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"num\" value=\"" + num + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"id\" value=\"" + id + "\"/>");    
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("新增|新增|submit new subject") + "\"/>");
        Response.Write("</form>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
   
    Response.Write("</div></div>");

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
    Response.Write("</script>\n");
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


