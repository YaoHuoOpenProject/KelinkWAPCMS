<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_toVote.aspx.cs" Inherits="KeLin.WebSite.bbs.book_view_toVote" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    Response.Write(WapTool.showTop(this.GetLang("投票|投票|vote"), wmlVo));//显示头                                                                                                                                                             
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if(this.INFO=="ERR"){

        Response.Write("<b>" + this.GetLang("你投过票了！|你投过票了|你投过票了!") + "</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("投票成功！|投票成功|投票成功") + "</b><br/>");
        
    }


    Response.Write("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;vpage="+this.vpage+"&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("投票|投票|vote") + "</div>");
    Response.Write(this.ERROR);
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "ERR")
    {

        Response.Write("<b>" + this.GetLang("你投过票了！|你投过票了|你投过票了!") + "</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("投票成功！|投票成功|投票成功") + "</b><br/>");

    }
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;vpage=" + this.vpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


