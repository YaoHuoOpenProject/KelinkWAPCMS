<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userGuessBook_del.aspx.cs" Inherits="KeLin.WebSite.bbs.userGuessBook_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("删除留言|删除留言|delete guessbook"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/userguessbook_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.touserid + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定要删除此留言吗？是！|確定要刪除此留言嗎？是！|Are you sure? YES") + "</a><br/>");
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        

    }


    Response.Write("<br/><a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;ot=" + this.ot + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("删除操作|刪除操作|delete") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<a href=\"" + this.http_start + "bbs/userguessbook_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.touserid + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定要删除此留言吗？是！|確定要刪除此留言嗎？是！|Are you sure? YES") + "</a><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        Response.Write("</div>");

    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;ot=" + this.ot + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


