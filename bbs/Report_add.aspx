<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_add.aspx.cs" Inherits="KeLin.WebSite.bbs.Report_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("举报|舉報|tip-off"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("举报成功！");
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {


        //选择
        Response.Write("举报理由:<br/>");
        Response.Write("<select name=\"reporttype\">");
        Response.Write("<option value=\"外站网址\">外站网址</option>");
        Response.Write("<option value=\"色情信息\">色情信息</option>");
        Response.Write("<option value=\"反动信息\">反动信息</option>");
        Response.Write("<option value=\"恶意刷币\">恶意刷币</option>");
        Response.Write("<option value=\"其他违规\">其他违规</option>");
        Response.Write("</select><br/>");
        Response.Write("其它:<br/>");
        Response.Write("<input type=\"text\" name=\"reportwhy\" value=\"\"/><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "bbs/Report_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"reporttype\" value=\"$(reporttype)\"/>");
        Response.Write("<postfield name=\"reportwhy\" value=\"$(reportwhy)\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|Submit") + "</anchor><br/><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">" + this.GetLang("返回贴子|返回貼子|Back to post") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
   
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("举报|舉報|tip-off") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>");
        Response.Write("举报成功！");
        Response.Write("</b>");
        Response.Write("</div>");

    }
    else
    {

        //选择
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/Report_add.aspx\" method=\"post\">");
        Response.Write("举报理由:<br/>");
        Response.Write("<select name=\"reporttype\">");
        Response.Write("<option value=\"外站网址\">外站网址</option>");
        Response.Write("<option value=\"色情信息\">色情信息</option>");
        Response.Write("<option value=\"反动信息\">反动信息</option>");
        Response.Write("<option value=\"恶意刷币\">恶意刷币</option>");
        Response.Write("<option value=\"其他违规\">其他违规</option>");
        Response.Write("</select><br/>");
        Response.Write("其它:<br/>");
        Response.Write("<input type=\"text\" name=\"reportwhy\" value=\"\"/><br/>");


        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">" + this.GetLang("返回贴子|返回貼子|Back to post") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");
    

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


