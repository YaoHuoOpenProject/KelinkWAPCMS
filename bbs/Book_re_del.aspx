﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_re_del.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_re_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("论坛回复|論壇回複|Forum Replies"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        if (this.userid == bbsReVo.userid.ToString()) //自己删除自己的
        {
            Response.Write("删除自己回贴扣2倍币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");

        }
        else
        {
            Response.Write("1.删除回贴扣1倍币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=1&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            Response.Write("2.删除回贴扣2倍币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=2&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            Response.Write("3.删除回贴不扣币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
        }
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        

    }

    Response.Write("<br/>说明:如有附件一并删除。");
    Response.Write("<br/><a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage="+this.lpage+"&amp;page=" + this.page + "&amp;ot="+this.ot+"&amp;id="+this.id+"\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("删除操作|刪除操作|delete") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\">");
        if (this.userid == bbsReVo.userid.ToString()) //自己删除自己的
        {
            Response.Write("删除自己回贴扣2倍币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");

        }
        else
        {
            Response.Write("1.删除回贴扣1倍币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=1&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            Response.Write("2.删除回贴扣2倍币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=2&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
            Response.Write("3.删除回贴不扣币和经验<br/>");
            Response.Write("<a href=\"" + this.http_start + "bbs/book_re_del.aspx?action=godel&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sub=0&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定删除！|确定删除！|submit") + "</a><br/>");
        }
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("删除成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
        Response.Write("</div>");

    }
    Response.Write("<div class=\"tip\">");
    Response.Write("说明:如有附件一并删除。");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "&amp;id=" + this.id + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


