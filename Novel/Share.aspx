<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="KeLin.WebSite.novel.Share" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("��������|��������|share Notes"), wmlVo));//��ʾͷ 
string title2 = "��ĺ����Ƽ�����һƪ������:"+title+"";
string content = "";
string content2 = "";
if (this.id != "0")
{

    content = "�Ƽ�����һƪ������:" + title + ",��ַ��" + http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;sid=" + this.sid2;
    content2 = "�Ƽ�����һƪ������:" + title + ",[url=" + http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;sid=[sid]]�������[/url]";
}
else
{
    content = "�Ƽ�����һƪ������:" + title + ",��ַ��" + http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;sid=" + this.sid2;
    content2 = "�Ƽ�����һƪ������:" + title + ",[url=" + http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;sid=[sid]]�������[/url]";

}
     
     if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");

    }
    if (downloadpath == "")
    {
        Response.Write( title + "<br/>");
        Response.Write("����:<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a><br/>");
        Response.Write("ʱ��:" + bookVo.Oper_time + "<br/>");
        Response.Write("----------<br/>");
    }
    else
    {
        Response.Write("���ɳɹ����������:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
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
    Response.Write("</go>�Ƽ���վ�ں���</anchor><br/>");

    Response.Write("<a href=\"ext:sms/"+content+"\">�Ƽ������ź���(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body="+content+"\">�Ƽ������ź���(�Դ�)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">�����ղ�/������ǩ</a><br/>");
    Response.Write("----------<br/>");

    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����TXT����(UTF8��)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����JAR����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����UMD����</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����CHM����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����PDF����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EPUB(iphone��ʽ)����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EML(�ʼ���ʽ)����</a><br/>");



    if (id != "0")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    }
    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0����

    Response.Write("<div class=\"title\">" + this.GetLang("��������|��������|share Notes") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
        Response.Write("</div>");
    }
    if (downloadpath == "")
    {
        Response.Write("<div class=\"subtitle\">");
        Response.Write(title+"<br/>");
        Response.Write("����:<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a><br/>");
        Response.Write("ʱ��:" + bookVo.Oper_time + "<br/>");
        Response.Write("</div>");
    }
    else
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("���ɳɹ����������:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
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
    Response.Write("<input type=\"submit\" name=\"g\" value=\"�Ƽ���վ�ں���\"/><br/>");

   

    Response.Write("<a href=\"ext:sms/" + content + "\">�Ƽ������ź���(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body=" + content + "\">�Ƽ������ź���(�Դ�)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">�����ղ�/������ǩ</a><br/>");
    Response.Write("<hr/>");

    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����TXT����(UTF8��)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����JAR����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����UMD����</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����CHM����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����PDF����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EPUB(iphone��ʽ)����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EML(�ʼ���ʽ)����</a><br/>");


    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "0")
    {
        Response.Write("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    }
    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");

    Response.Write("</div></div>");
}
    
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>