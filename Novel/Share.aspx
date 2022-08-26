<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="KeLin.WebSite.novel.Share" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("分享文章|分享文章|share Notes"), wmlVo));//显示头 
string title2 = "你的好友推荐给你一篇好文章:"+title+"";
string content = "";
string content2 = "";
if (this.id != "0")
{

    content = "推荐给你一篇好文章:" + title + ",网址是" + http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;sid=" + this.sid2;
    content2 = "推荐给你一篇好文章:" + title + ",[url=" + http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;sid=[sid]]点击进入[/url]";
}
else
{
    content = "推荐给你一篇好文章:" + title + ",网址是" + http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;sid=" + this.sid2;
    content2 = "推荐给你一篇好文章:" + title + ",[url=" + http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;sid=[sid]]点击进入[/url]";

}
     
     if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    if (downloadpath == "")
    {
        Response.Write( title + "<br/>");
        Response.Write("作者:<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a><br/>");
        Response.Write("时间:" + bookVo.Oper_time + "<br/>");
        Response.Write("----------<br/>");
    }
    else
    {
        Response.Write("生成成功，点击下载:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("----------<br/>");
    }
    
    Response.Write("<anchor><go href=\""+http_start+"bbs/messagelist_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"go\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"content\" value=\""+content2+"\"/>");
    Response.Write("<postfield name=\"title\" value=\""+title2+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
	Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + this.lpage) + "\"/>");
    Response.Write("</go>推荐给站内好友</anchor><br/>");

    Response.Write("<a href=\"ext:sms/"+content+"\">推荐给短信好友(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body="+content+"\">推荐给短信好友(自带)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">加入收藏/保存书签</a><br/>");
    Response.Write("----------<br/>");

    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成TXT下载(UTF8码)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成JAR下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成UMD下载</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成CHM下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成PDF下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EPUB(iphone格式)下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EML(邮件格式)下载</a><br/>");



    if (id != "0")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回内容|返回内容|Back to subject") + "</a>");
    }
    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0界面

    Response.Write("<div class=\"title\">" + this.GetLang("分享文章|分享文章|share Notes") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");
    }
    if (downloadpath == "")
    {
        Response.Write("<div class=\"subtitle\">");
        Response.Write(title+"<br/>");
        Response.Write("作者:<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a><br/>");
        Response.Write("时间:" + bookVo.Oper_time + "<br/>");
        Response.Write("</div>");
    }
    else
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("生成成功，点击下载:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/messagelist_add.aspx\" method=\"post\">");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"content\" value=\"" + content2 + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"title\" value=\"" + title2 + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;bookid=" + this.bookid) + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"推荐给站内好友\"/><br/>");

   

    Response.Write("<a href=\"ext:sms/" + content + "\">推荐给短信好友(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body=" + content + "\">推荐给短信好友(自带)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">加入收藏/保存书签</a><br/>");
    Response.Write("<hr/>");

    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成TXT下载(UTF8码)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成JAR下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成UMD下载</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成CHM下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成PDF下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EPUB(iphone格式)下载</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成EML(邮件格式)下载</a><br/>");


    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "0")
    {
        Response.Write("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回内容|返回内容|Back to subject") + "</a>");
    }
    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</div></div>");
}
    
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>