<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.article.admin_WAPmodify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改内容|修改內容|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("标题不能为空！|標題不能爲空！|The title or content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "article/book_view_modadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">续传内容</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "article/admin_wapmodifyadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面续传|进入WAP2.0界面续传|wap2.0 add upfile") + "</a><br/>");
    Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"book_title"+r+"\" value=\""+bookVo.book_title+"\"/><br/>");
    Response.Write(this.GetLang("作者|作者|Author") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_author"+r+"\" value=\""+bookVo.book_author+"\"/><br/>");
    Response.Write(this.GetLang("来源|來源|Source") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_pub"+r+"\" value=\""+bookVo.book_pub+"\"/><br/>");
    Response.Write(this.GetLang("内容|內容|Content") + ":<br/>");
    Response.Write("<input type=\"text\"  name=\"book_content"+r+"\" value=\""+bookVo.book_content+"\" /><br/>");
    Response.Write("缩放图:<br/>");
    Response.Write("<input type=\"text\"  name=\"book_img" + r + "\" value=\"" + bookVo.book_img + "\" /><br/>");
   
    Response.Write("展示图:<br/>");
    Response.Write("<input type=\"text\"  name=\"book_file" + r + "\" value=\"" + bookVo.book_file + "\" /><br/>");
    Response.Write("(多个用|区分)<br/>");
    Response.Write(this.GetLang("图片介绍|图片介绍|PIC INFO") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"book_fileINFO" + r + "\" value=\"" + bookVo.book_fileINFO + "\" /><br/>");
    Response.Write("(多个用|区分)<br/>");
    Response.Write(this.GetLang("提交人ID|提交人ID|MakerID") + ":" + bookVo.makerid + "<br/>");
    Response.Write("<anchor><go href=\""+http_start+"article/admin_WAPmodify.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"book_title\" value=\"$(book_title"+r+")\"/>");
    Response.Write("<postfield name=\"book_author\" value=\"$(book_author"+r+")\"/>");
    Response.Write("<postfield name=\"book_pub\" value=\"$(book_pub"+r+")\"/>");	
    Response.Write("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    Response.Write("<postfield name=\"book_img\" value=\"$(book_img" + r + ")\"/>");
    Response.Write("<postfield name=\"book_file\" value=\"$(book_file" + r + ")\"/>");
    Response.Write("<postfield name=\"book_fileINFO\" value=\"$(book_fileINFO" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + strInfo + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("标题不能为空！|標題不能爲空！|The title or content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
   
    Response.Write("<div class=\"content\">");   
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "article/admin_WAPmodify.aspx\" method=\"post\">");
    Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + bookVo.book_title + "\"/><br/>");
    Response.Write(this.GetLang("作者|作者|Author") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_author\" value=\"" + bookVo.book_author + "\"/><br/>");
    Response.Write(this.GetLang("来源|來源|Source") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_pub\" value=\"" + bookVo.book_pub + "\"/><br/>");
    Response.Write(this.GetLang("内容|內容|Content") + "*:");
    Response.Write("<a href=\"" + this.http_start + "article/book_view_modadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">续传内容</a>.");
    Response.Write("<br/>");
    Response.Write("<textarea name=\"book_content\" rows=\"12\" style=\"width:100%\">" + bookVo.book_content.Replace("[br]", "\r\n") + "</textarea><br/>");

    Response.Write("缩放图:<br/>");
    Response.Write("<input type=\"text\"  name=\"book_img\" value=\"" + bookVo.book_img + "\" /><br/>");
   
    Response.Write(this.GetLang("展示图地址|展示图地址|PIC") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_file\" value=\"" + bookVo.book_file + "\"/><br/>");
    Response.Write("(多个用|区分)<br/>");
    Response.Write(this.GetLang("图片介绍|图片介绍|PIC INFO") + ":<br/>");
    Response.Write("<input type=\"text\"  name=\"book_fileINFO\" value=\"" + bookVo.book_fileINFO + "\" /><br/>");
    Response.Write("(多个用|区分)<br/>");
    Response.Write("<a href=\"" + this.http_start + "article/admin_wapmodifyadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">续传图片</a><br/>");
    
    Response.Write(this.GetLang("提交人ID|提交人ID|MakerID") + ":"+bookVo.makerid+"<br/>");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + strInfo+"\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
   
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


