<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_log.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_log" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("���Ӳ�����־|���Ӳ�����־|Management Notes"), wmlVo));//��ʾͷ 
if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");

    Response.Write("����:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
    Response.Write("����:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
    Response.Write("ʱ��:"+bookVo.book_date+"<br/>");
    Response.Write("����:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "(ID:" + classVo.classid + ")</a><br/>");
    Response.Write("----------<br/>");
 
    Response.Write("������־��<br/>");


    Response.Write(bookVo.whylock);
    Response.Write("<br/>----------");
    Response.Write("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0����

    Response.Write("<div class=\"subtitle\">" + this.GetLang("���Ӳ�����־|���Ӳ�����־|Management Notes") + "</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("���⣺<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
    Response.Write("���ߣ�<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
    Response.Write("ʱ�䣺" + bookVo.book_date + "<br/>");
    Response.Write("������<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "(ID:" + classVo.classid + ")</a><br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"subtitle\">");
    Response.Write("������־");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(bookVo.whylock);
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");

    Response.Write("</div></div>");
}
    
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>