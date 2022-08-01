<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_mod.aspx.cs" Inherits="KeLin.WebSite.bbs.MarkSix.Book_View_mod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("修改内容|修改內容|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        strhtml.Append("</b><br/>");
        
    }
    else if(this.INFO=="NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append("<b>标题最少" + this.titlemax + "字，内容最少" + this.contentmax + "字！</b><br/>");
        strhtml.Append("</b><br/>");

    }


    strhtml.Append("投注[" + GamesClassManager.Tool.GetMarkSix_PlayName(bbsVo.types.ToString()) + "]内容为：<br/>");
    strhtml.Append("<input type=\"text\"  name=\"types_content" + r + "\" value=\"" + bbsVo.types_content + "\" /><br/>");
    strhtml.Append("同时更换标题:");
    strhtml.Append("<select name=\"title"+r+"\"><option value=\"0\">0_不更新标题</option><option value=\"1\">1_更新标题</option></select><br/>");

    strhtml.Append("<br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/marksix/book_view_mod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"bbsid\" value=\"" + bbsid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"types_content\" value=\"$(types_content" + r + ")\"/>");
    strhtml.Append("<postfield name=\"title\" value=\"$(title" + r + ")\"/>");  
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");

    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.bbsid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
   
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        strhtml.Append("</b> <a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.bbsid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a><br/>");
        
    }
     else if(this.INFO=="NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append("<b>标题最少" + this.titlemax + "字，内容最少" + this.contentmax + "字！</b><br/>");
        strhtml.Append("</b><br/>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"go\" action=\"" + this.http_start + "bbs/marksix/book_view_mod.aspx\" method=\"post\">");
    strhtml.Append("投注[" + GamesClassManager.Tool.GetMarkSix_PlayName(bbsVo.types.ToString()) + "]内容为：<br/>");
    strhtml.Append("<input type=\"text\" name=\"types_content\" value=\"" + bbsVo.types_content + "\"/><br/>(多个用,区别)<br/>");

    strhtml.Append("同时更换标题:");
    strhtml.Append("<select name=\"title\"><option value=\"0\">0_不更新标题</option><option value=\"1\">1_更新标题</option></select><br/>");

    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"bbsid\" value=\"" + bbsid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

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

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");   
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.bbsid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");

    strhtml.Append("</div></div>");
    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


