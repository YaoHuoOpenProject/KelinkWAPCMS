<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_modadd.aspx.cs" Inherits="KeLin.WebSite.article.Book_View_modadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("续传内容|续传內容|Continued posted"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("续传成功！|续传成功！|Successfully modified"));
        Response.Write("</b><br/>");
        
    }
    else if(this.INFO=="NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
    if (this.INFO != "OK")
    {
        Response.Write(this.GetLang("标题|標題|Title") + ":" + articleVo.book_title + "<br/>");


        Response.Write(this.GetLang("续内容|续內容|Content") + "*:<br/>");
        Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + this.book_content + "\" /><br/>");
        Response.Write("<anchor><go href=\"" + http_start + "article/book_view_modadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
        Response.Write("<postfield name=\"book_content\" value=\"$(book_content" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("确 定|确 定|Submit") + "</anchor><br/><br/>");
    }
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    Response.Write("<br/><a href=\"" + this.http_start + "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "article/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    
    
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("续传内容|续传內容|Continued posted") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("续传成功！|续传成功！|Successfully modified"));
        Response.Write("</b><br/>");
        
    }
     else if(this.INFO=="NULL")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"go\" action=\"" + this.http_start + "article/book_view_modadd.aspx\" method=\"post\">");
        Response.Write(this.GetLang("标题|標題|Title") + ":" + articleVo.book_title + "<br/>");
        Response.Write(this.GetLang("续内容|续內容|Content") + "*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"12\" style=\"width:100%\">" + this.book_content + "</textarea><br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/>");

        Response.Write("</form></div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt3\">");
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");  
    Response.Write("<a href=\"" + this.http_start + "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "article/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


