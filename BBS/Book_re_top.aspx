﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_re_top.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_re_top" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    string lang1 = "";
    string lang2 = "";
    string lang3 = "";
                                                                                                                                                                             
    if (tops == "0")
    {
        lang1 = "取消";
        lang2 = "取消";
        lang3 = "Cancel";
    }

Response.Write(WapTool.showTop(this.GetLang(lang1+"置頂回复|"+lang2+"置頂回複|"+lang3+" Top Replies"), wmlVo));//显示头                                                                                                                                                             
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/book_re_top.aspx?action=gomod&amp;tops="+this.tops+"&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定要"+lang1+"置顶此回复吗？是！|確定要"+lang2+"置頂此回複嗎？是！|Are you sure? YES") + "</a><br/>");
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang(lang1+"置顶成功！|"+lang2+"置頂成功！|"+lang3+" TOP successfully!") + "</b><br/>");
        

    }
   

    Response.Write("<br/><a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage="+this.lpage+"&amp;page=" + this.page + "&amp;ot="+this.ot+"&amp;id="+this.id+"\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("置顶操作|置頂操作|TOP") + "</div>");
    Response.Write(this.ERROR);
    
    if (this.INFO == "")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<a href=\"" + this.http_start + "bbs/book_re_top.aspx?action=gomod&amp;tops=" + this.tops + "&amp;reid=" + this.reid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "\">" + this.GetLang("确定要" + lang1 + "置顶此回复吗？是！|確定要" + lang2 + "置頂此回複嗎？是！|Are you sure? YES") + "</a><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang(lang1 + "置顶成功！|" + lang2 + "置頂成功！|" + lang3 + " TOP successfully!") + "</b><br/>");
        Response.Write("</div>");

    }
    

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.page + "&amp;ot=" + this.ot + "&amp;id=" + this.id + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


