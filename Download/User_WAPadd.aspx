﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_WAPadd.aspx.cs" Inherits="KeLin.WebSite.download.user_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("上传文件|上传文件|add subject"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "download/user_WAPadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传文件|进入WAP2.0界面上传文件|wap2.0 add upfile") + "</a><br/>");



    Response.Write("<a href=\"" + this.http_start + "download/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    if (num > 20) num = 20;

    Response.Write("<div class=\"subtitle\">上传文件</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);    
    if (this.INFO == "OK")
    {

        Response.Write("<b>发表成功！</b> ");
        //if (siteVo.isCheck == 1)
        //{
            Response.Write("<b>审核后显示！</b> ");
       // }
        Response.Write("<a href=\"" + this.http_start + "download/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.getid + "" + "\">查看主题</a><br/>");
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传："+siteVo.UpFileType+"</b><br/>");

    }
    else if (this.INFO == "NOTSPACE")
    {
        Response.Write("<b>网站总空间已经大于系统分配给此网站的最大空间了，网站空间：" + siteVo.sitespace  + "M；此网站已使用：" + (siteVo.myspace) + "KB</b><br/>");

    }
    else if (this.INFO == "MAXFILE")
    {
        Response.Write("<b>你上传的单个文件总大小超出了最大限制" + siteVo.MaxFileSize + "KB</b><br/>");

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
        //选多少个

        Response.Write("<form name=\"g1\" action=\"" + http_start + "download/user_WAPadd.aspx\" method=\"get\">");
        Response.Write(this.GetLang("上传数量|上传数量|Upload Number") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
        Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"page\" value=\"" + page + "\"/>");        
        Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");

        Response.Write("<br/>");
        

        Response.Write("<form name=\"f1\" action=\"" + http_start + "download/user_WAPadd.aspx\" enctype=\"multipart/form-data\" method=\"post\">");

        Response.Write("栏目分类:<select name=\"classid\">");
        Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");

        Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + book_title + "\"/><br/>");
        Response.Write(this.GetLang("资费说明|资费说明|soft Money") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"softMoney\" value=\"使用完全免费\"/><br/>");
        Response.Write(this.GetLang("安全说明|安全说明|soft safe") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"softSafe\" value=\"无病毒/无插件/无暗扣\"/><br/>");
        Response.Write(this.GetLang("更新说明|更新说明|update info") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"updateInfo\" value=\"" + updateInfo + "\"/><br/>");
        Response.Write(this.GetLang("更新日期|更新日期|update info") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"book_date\" value=\"" +  DateTime.Now + "\"/><br/>");

        Response.Write(this.GetLang("软件版本号|软件版本号|ver info") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"softver\" value=\"\"/><br/>");
        Response.Write(this.GetLang("软件开发商|软件开发商|ltd info") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"softltd\" value=\"\"/><br/>");
        Response.Write(this.GetLang("界面语言|界面语言|lang info") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"softlang\" value=\"\"/><br/>");
        
        Response.Write(this.GetLang("下载扣币|下载扣币|sub money") + ":");
        Response.Write("<input type=\"text\" name=\"money\" value=\"0\" size=\"3\"/><br/>");
        Response.Write(this.GetLang("简介|简介|Content") + ":<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">" + book_content + "</textarea><br/>");
  
        
        for (int i = 0; i < this.num; i++)
        {
            Response.Write("<b>----- 上传图片/文件" + (i + 1) + " -------</b><br/>");
            Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
            Response.Write(this.GetLang("输入说明|输入说明|INFO") + ":<br/>");
            Response.Write("<textarea name=\"book_file_info\" rows=\"2\" style=\"width:100%\"></textarea><br/>");

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
            Response.Write(this.GetLang("高级手动录入|高级手动录入|manual") +"<a href=\"javascript:turnon('d"+i+"');\">" + this.GetLang("显|显|ON") + "</a>/<a href=\"javascript:turnoff('d"+i+"');\">" + this.GetLang("关|关|OFF")+"</a>");

            Response.Write("<div class=\"subtitle\" id=\"d" + i + "\" style=\"display:none;\"><textarea name=\"manual\" id=\"manual" + i + "\"  rows=\"2\" style=\"width:100%\"></textarea></div>");
            
         
            Response.Write("<hr/>");
            
            if (i == (this.num - 1))
            {
                Response.Write(this.GetLang("如果有图片文件进行缩放|ss|ss:") + "<br/>"); ;
                Response.Write(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"book_width\" size=\"5\" value=\"\"/>px ");
                Response.Write(this.GetLang("高|高|Height") + ":<input type=\"text\" name=\"book_height\" size=\"5\" value=\"\"/>px<br/>");
                Response.Write("(不缩放,请留空，建议只输入一个图宽或高来保持不变形。)<br/>");
            }
        }
        //Response.Write("<anchor><go href=\"" + http_start + "download/book_view_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        //Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"num\" value=\"" + num + "\"/>");     
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("上传文件|上传文件|submit new subject") + "\"/>");
        Response.Write("</form>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write("说明：输入平台/分辨率/游戏系列是指用来被搜索，建议在电脑上的IE或Opera操作，有些手机可能不支持多选功能。");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "download/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
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

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


