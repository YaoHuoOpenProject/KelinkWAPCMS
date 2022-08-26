<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_chtoDown.aspx.cs" Inherits="KeLin.WebSite.bbs.book_view_chtoDown" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("推送到下载模块|推送到下载模块|推送到下载模块"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_chtodown.aspx?action=class&amp;id="+this.id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面操作|进入WAP2.0界面操作|wap2.0") + "</a><br/>");



    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?id="+this.id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    if (num > 20) num = 20;

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("推送到下载模块|推送到下载模块|推送到下载模块") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);    
    if (this.INFO == "OK")
    {

        strhtml.Append("<b>操作成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }
        else
        {
            strhtml.Append("<br/>下一步：点击自动<a href=\"" + this.http_start + "download/book_view.aspx?sp=0&amp;siteid=" + siteid + "&amp;classid=" + toclassid + "&amp;id="+this.downloadid+"" + "\">生成列表中的缩放小图</a>，并浏览下载模块中的效果。<br/>");
        }
    }
    else if (this.INFO == "EXTERR")
    {
        strhtml.Append("<b>上传文件格式错误，只允许上传："+siteVo.UpFileType+"</b><br/>");

    }
   
 
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>标题不能小于2个字符！</b><br/>");

    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>请不要发重复内容！</b><br/>");
    }


    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    if (this.INFO != "OK")
    {
        

        strhtml.Append("<form name=\"f1\" action=\"" + http_start + "bbs/book_view_chtodown.aspx\" method=\"post\">");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("选择下载栏目:<br/>");
        strhtml.Append("<select name=\"toclassid\">");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            strhtml.Append("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        strhtml.Append("</select><br/>");
        strhtml.Append(this.GetLang("标题|標題|Title") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"book_title\" value=\"" + book_title + "\"/><br/>");
        strhtml.Append(this.GetLang("资费说明|资费说明|soft Money") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"softMoney\" value=\"使用完全免费\"/><br/>");
        strhtml.Append(this.GetLang("安全说明|安全说明|soft safe") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"softSafe\" value=\"无病毒/无插件/无暗扣\"/><br/>");
        strhtml.Append(this.GetLang("更新说明|更新说明|update info") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"updateInfo\" value=\"" + updateInfo + "\"/><br/>");

        strhtml.Append(this.GetLang("更新日期|更新日期|update info") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"book_date\" value=\"" + string.Format("{0:yyyy-MM-dd}", DateTime.Now) + "\"/><br/>");

        strhtml.Append(this.GetLang("软件版本号|软件版本号|ver info") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"softver\" value=\"\"/><br/>");
        strhtml.Append(this.GetLang("软件开发商|软件开发商|ltd info") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"softltd\" value=\"\"/><br/>");
        strhtml.Append(this.GetLang("界面语言|界面语言|lang info") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"softlang\" value=\"\"/><br/>");
        
        strhtml.Append(this.GetLang("下载扣币|下载扣币|sub money") + ":");
        strhtml.Append("<input type=\"text\" name=\"money\" value=\"0\" size=\"3\"/><br/>");
        strhtml.Append(this.GetLang("简介|简介|Content") + ":<br/>");
        strhtml.Append("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">" + book_content + "</textarea><br/>");
        strhtml.Append(this.GetLang("缩略图|缩略图|small img") + "(可留空):<br/>");
        strhtml.Append("<input type=\"text\" name=\"book_imgTrue\" value=\"" + book_imgTrue + "\"/><br/>");
        strhtml.Append("(如果下面有图将自动生成缩放图)<br/>");
        
        for (int i = 0; (imgList!=null&&i < imgList.Count); i++)
        {
            strhtml.Append("<b>----- URL图片/文件" + (i + 1) + " -------</b><br/>");
            strhtml.Append("<input type=\"hidden\" name=\"book_id\" value=\"" + imgList[i].ID + "\"/>");
            strhtml.Append("<input type=\"text\" name=\"book_file\" value=\"/bbs/" + imgList[i].book_file + "\"/><br/>");
            strhtml.Append("(http或/开头或相对地址)<br/>");
            strhtml.Append("文件名:");
            strhtml.Append("<input type=\"text\" name=\"book_file_title\" value=\"" + imgList[i].book_title + "\" size=\"8\"/><br/>");
            strhtml.Append("扩展名:");
            strhtml.Append("<input type=\"text\" name=\"book_ext\" value=\"" + imgList[i].book_ext + "\" size=\"4\"/><br/>");
            strhtml.Append("大小:");
            strhtml.Append("<input type=\"text\" name=\"book_size\" value=\"" + imgList[i].book_size + "\" size=\"4\"/><br/>");
            
            strhtml.Append(this.GetLang("说明|说明|INFO") + ":<br/>");
            strhtml.Append("<textarea name=\"book_file_info\" rows=\"3\" style=\"width:100%\">" + imgList[i].book_content + "</textarea><br/>");

            strhtml.Append("<select name=\"platform\" id=\"platformSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            strhtml.Append("<option value=\"\">选手机平台</option>");
            strhtml.Append(this.platform);
            strhtml.Append("<option value=\"\">留空</option>");
            strhtml.Append("</select>");

            strhtml.Append("<select name=\"screen\" id=\"screenSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            strhtml.Append("<option value=\"0X0\">选手机屏幕</option>");
            strhtml.Append(this.screen);
            strhtml.Append("<option value=\"0X0\">留空</option>");
            strhtml.Append("</select>");


            strhtml.Append("<select name=\"serial\" id=\"serialSel" + i + "\" onchange=\"showManual(" + i + ");\" size=\"8\" multiple=\"multiple\">");
            strhtml.Append("<option value=\"\">选游戏系列</option>");
            strhtml.Append(this.serial);
            strhtml.Append("<option value=\"\">留空</option>");
            strhtml.Append("</select><br/>");
            strhtml.Append("按住 Ctrl 按钮来选择多个选项。<br/>");
            strhtml.Append(this.GetLang("高级手动录入|高级手动录入|manual") + "<a href=\"javascript:turnon('d" + i + "');\">" + this.GetLang("显|显|ON") + "</a>/<a href=\"javascript:turnoff('d" + i + "');\">" + this.GetLang("关|关|OFF") + "</a>");

            strhtml.Append("<div class=\"subtitle\" id=\"d" + i + "\" style=\"display:none;\"><textarea name=\"manual\" id=\"manual" + i + "\"  rows=\"2\" style=\"width:100%\">" + imgList[i].manual + "</textarea></div>");

            strhtml.Append("<hr/>");
            
        }
        
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"num\" value=\"" + num + "\"/>");     
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("确定提交|确定提交|确定提交") + "\"/>");
        strhtml.Append("</form>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("说明：建议在电脑上的IE或Opera操作，有些手机可能不支持多选功能。");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?id="+id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");

    strhtml.Append("</div></div>");

    strhtml.Append("\n<script>\n");
    strhtml.Append("function turnoff(obj){\n");
    strhtml.Append("document.getElementById(obj).style.display=\"none\";\n");
    strhtml.Append("}\n");
    strhtml.Append("function turnon(obj){\n");
    strhtml.Append("document.getElementById(obj).style.display=\"block\";\n");
    strhtml.Append("}\n");
    strhtml.Append("function showManual(obj){\n");
    strhtml.Append("var temp = \"\";\n");
    strhtml.Append("var sel1 = document.getElementById('platformSel'+obj);\n");
    strhtml.Append("var sel2 = document.getElementById('screenSel'+obj);\n");
    strhtml.Append("var sel3 = document.getElementById('serialSel'+obj);\n");
    strhtml.Append("for(var i = 0; i < sel1.options.length; i++){\n");
    strhtml.Append("if(sel1.options[i].selected && sel1.options[i].value!=\"\"){\n");
    strhtml.Append("var kk=0;");
    strhtml.Append("for(var k = 0; k < sel2.options.length; k++){\n");
    strhtml.Append("if(sel2.options[k].selected && sel2.options[k].value!=\"\"){\n");
    strhtml.Append("var zz=0;\n");
    strhtml.Append("for(var x = 0; x < sel3.options.length; x++){\n");
    strhtml.Append("if(sel3.options[x].selected && sel3.options[x].value!=\"\"){\n");
    strhtml.Append("temp = temp + sel1.options[i].value + sel2.options[k].value + sel3.options[x].value+',';\n");
    strhtml.Append("zz++;\n");
    strhtml.Append("}\n");
    strhtml.Append("}\n");
    strhtml.Append("if (zz==0){\n");
    strhtml.Append("temp = temp + sel1.options[i].value + sel2.options[k].value +',';\n");
    strhtml.Append("}\n");
    strhtml.Append("kk++;\n");
    strhtml.Append("}\n");
    strhtml.Append("}\n");
    strhtml.Append("if (kk==0){\n");
    strhtml.Append("temp = temp + sel1.options[i].value  +'0X0,';\n");
    strhtml.Append("}\n");
    strhtml.Append("}\n");
    strhtml.Append("}\n");
    strhtml.Append("document.getElementById('manual'+obj).value=temp;\n");
    strhtml.Append("}\n");

    strhtml.Append("function setDefalut(){\n");
    if (imgList != null)
    {
        strhtml.Append("var selcount = " + imgList.Count + ";\n");
    }
    else
    {
        strhtml.Append("var selcount = 0;\n");
    }
    strhtml.Append("for (var y = 0; y < selcount; y++){\n");

    strhtml.Append("var all =document.getElementById('manual'+y).value;\n");
    strhtml.Append("var sel1 = document.getElementById('platformSel'+y);\n");
    strhtml.Append("var sel2 = document.getElementById('screenSel'+y);\n");
    strhtml.Append("var sel3 = document.getElementById('serialSel'+y);\n");
    strhtml.Append("for(var i = 0; i < sel1.options.length; i++){\n");
    strhtml.Append("if(sel1.options[i].value!=\"\" && all.indexOf(sel1.options[i].value) >=0){\n");
    strhtml.Append("sel1.options[i].selected=true ;\n");
    strhtml.Append("}\n");
    strhtml.Append("}\n");

    strhtml.Append("for(var i = 0; i < sel2.options.length; i++){\n");
    strhtml.Append("if(sel2.options[i].value!=\"\" && all.indexOf(sel2.options[i].value) >=0){\n");
    strhtml.Append("sel2.options[i].selected=true ;\n");
    strhtml.Append("}\n");
    strhtml.Append("}\n");

    strhtml.Append("for(var i = 0; i < sel3.options.length; i++){\n");
    strhtml.Append("if(sel3.options[i].value!=\"\" && all.indexOf(sel3.options[i].value) >=0){\n");
    strhtml.Append("sel3.options[i].selected=true ;\n");
    strhtml.Append("}\n");
    strhtml.Append("}\n");


    strhtml.Append("}\n");

    strhtml.Append("}\n");


    //if (this.INFO != "OK")
    //{
        //strhtml.Append("window.onload=function(){setDefalut();}\n");
    //}
    strhtml.Append("</script>\n");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    Response.Write(strhtml);
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


