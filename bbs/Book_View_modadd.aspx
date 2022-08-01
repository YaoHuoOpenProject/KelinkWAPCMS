<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_modadd.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_modadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("续贴内容|續貼內容|Continued posted"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("续贴成功！|續貼成功！|Successfully modified"));
        strhtml.Append("</b><br/>");
        
    }
    else if(this.INFO=="NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append("<b>标题最少" + this.titlemax + "字，内容最少" + this.contentmax + "字！</b><br/>");
        strhtml.Append("</b><br/>");

    }

    strhtml.Append(this.GetLang("标题|標題|Title") + ":<input type=\"text\" name=\"book_title"+r+"\" value=\"" + bbsVo.book_title + "\"/><br/>");    
    strhtml.Append(this.GetLang("作者|作者|Author") + ":"+bbsVo.book_author+"<br/>");   
    
    strhtml.Append(this.GetLang("续内容|续內容|Content") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"book_content"+r+"\" value=\""+this.book_content+"\" /><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/book_view_modadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"book_title\" value=\"$(book_title" + r + ")\"/>");  
    strhtml.Append("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("确 定|确 定|Submit") + "</anchor><br/><br/>");

    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("續貼内容|續貼內容|Continued posted") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("续贴成功！|續貼成功！|Successfully modified"));
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a>");
        strhtml.Append("</b><br/>");
        
    }
     else if(this.INFO=="NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append("<b>标题最少" + this.titlemax + "字，内容最少" + this.contentmax + "字！</b><br/>");
        strhtml.Append("</b><br/>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"go\" action=\"" + this.http_start + "bbs/book_view_modadd.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("标题|標題|Title") + ":<input type=\"text\" name=\"book_title\" value=\"" + bbsVo.book_title + "\"/><br/>");
    strhtml.Append(this.GetLang("作者|作者|Author") + ":" + bbsVo.book_author + "<br/>");    
    strhtml.Append(this.GetLang("续内容|续內容|Content") + "*:<br/>");
    strhtml.Append("<textarea name=\"book_content\" rows=\"12\" style=\"width:100%\">" + this.book_content + "</textarea><br/>");    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/>");

    strhtml.Append("</form></div>");

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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");   
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


