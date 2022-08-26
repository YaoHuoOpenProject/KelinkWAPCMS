<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShareAll.aspx.cs" Inherits="KeLin.WebSite.novel.ShareAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("全本下载|全本下载|share Notes"), wmlVo));//显示头 

                                                                                                                                                                           
     if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "UPOK")
    {
        Response.Write("<b>更新成功！</b><br/>");

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
    
    
    Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成TXT下载(UTF8码)</a><br/>");

    Response.Write("生成JAR,每个约80K:<br/>");
    for (int i = 1; i <= this.totalPage; i++)
    {
        Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + i + "\">" + i + "_JAR下载</a><br/>");
    }

    Response.Write("<br/>【<a href=\"" + this.http_start + "novel/shareall.aspx?action=up&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">更新以上文件</a>】<br/>");
    

    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("返回书本|返回书本|Back to book") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0界面

    Response.Write("<div class=\"title\">" + this.GetLang("全本下载|全本下载|share Notes") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "UPOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>更新成功！</b><br/>");
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
    
         

    Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">生成TXT下载(UTF8码)</a><br/>");

    Response.Write("生成JAR,每个约80K:<br/>");
    for (int i = 1; i <= this.totalPage; i++)
    {
        Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + i + "\">" + i + "_JAR下载</a><br/>");
    }

    Response.Write("<br/>【<a href=\"" + this.http_start + "novel/shareall.aspx?action=up&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">更新以上文件</a>】<br/>");
    
    Response.Write("</div>");
    Response.Write("<div class=\"mylink\">");

    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("返回书本|返回书本|Back to book") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
}
    
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>