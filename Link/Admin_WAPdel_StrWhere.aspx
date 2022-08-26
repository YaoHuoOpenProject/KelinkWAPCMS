<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPdel_strWhere.aspx.cs" Inherits="KeLin.WebSite.link.admin_WAPdel_strWhere" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("按条件清理友链|按条件清理友链|Content of the link"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    if (this.INFO == "")
    {
        Response.Write("<b>一、默认清理</b>");
        Response.Write("<br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=3&amp;links=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于3天内少于0个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=5&amp;links=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于5天内少于3个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=30&amp;links=15&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于30天内少于15个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=60&amp;links=30&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于60天内少于30个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=90&amp;links=60&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于90天内少于60个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=gocancel&amp;days=7&amp;links=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">最近7天内无链入的取消审核</a><br/>");

        Response.Write("<br/>----------<br/>");
        Response.Write("<b>二、自定义清理</b><br/>");

        Response.Write("申请时间超过<input type=\"text\" name=\"days\" value=\"\" size=\"2\"/>天<br/>");
        Response.Write("返量小于:<input type=\"text\" name=\"days\" value=\"\" size=\"2\"/><br/>");
        Response.Write("<anchor><go href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"godelbig\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + this.siteid + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + this.classid + "\"/>");
        Response.Write("<postfield name=\"days\" value=\"$(days)\"/>");
        Response.Write("<postfield name=\"links\" value=\"$(links)\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + this.page + "\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + this.sid + "\"/>");
        Response.Write("</go>执行删除</anchor><br/>");



    }
    else if (this.INFO == "CANCELOK")
    {
        Response.Write("<b>取消审核成功!</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");


    }
    else
    {
        Response.Write(this.INFO);
    }

    Response.Write("<br/><a href=\"" + this.http_start + "link/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">按条件清理友链</div>");
    if (this.INFO == "")
    {
        Response.Write("<div class=\"tip\">一、默认清理</div>");
        Response.Write("<div class=\"content\">");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=3&amp;links=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于3天内少于0个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=5&amp;links=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于5天内少于3个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=30&amp;links=15&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于30天内少于15个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=60&amp;links=30&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于60天内少于30个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=godel&amp;days=90&amp;links=60&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">大于90天内少于60个链入的删除</a><br/>");
        Response.Write("<a href=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx?action=gocancel&amp;days=7&amp;links=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">最近7天内无链入的取消审核</a><br/>");
        
        Response.Write("</div>");
        Response.Write("<div class=\"tip\">二、自定义清理</div>");
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f1\" action=\"" + this.http_start + "link/admin_WAPdel_strWhere.aspx\" method=\"get\">");
        Response.Write("申请时间超过:<input type=\"text\" name=\"days\" value=\"\" size=\"2\"/>天<br/>返量小于:<input type=\"text\" name=\"links\" value=\"\" size=\"2\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\""+this.siteid +"\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + this.page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"godelbig\"/>");
        Response.Write("<br/><br/><input type=\"submit\" value=\"执行删除\"/>");
        Response.Write("</form></div>");

    }
    else if (this.INFO == "CANCELOK")
    {
        Response.Write("<div class=\"tip\"><b>取消审核成功!</b></div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b></div>");


    }
    else
    {
        Response.Write("<div class=\"tip\">"+this.INFO+"</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "link/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
   
    Response.Write("</div></div>");





}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


