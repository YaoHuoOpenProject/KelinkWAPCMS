<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShareAll.aspx.cs" Inherits="KeLin.WebSite.novel.ShareAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("ȫ������|ȫ������|share Notes"), wmlVo));//��ʾͷ 

                                                                                                                                                                           
     if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");

    }
    else if (this.INFO == "UPOK")
    {
        Response.Write("<b>���³ɹ���</b><br/>");

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
    
    
    Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����TXT����(UTF8��)</a><br/>");

    Response.Write("����JAR,ÿ��Լ80K:<br/>");
    for (int i = 1; i <= this.totalPage; i++)
    {
        Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + i + "\">" + i + "_JAR����</a><br/>");
    }

    Response.Write("<br/>��<a href=\"" + this.http_start + "novel/shareall.aspx?action=up&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">���������ļ�</a>��<br/>");
    

    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("�����鱾|�����鱾|Back to book") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0����

    Response.Write("<div class=\"title\">" + this.GetLang("ȫ������|ȫ������|share Notes") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "UPOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>���³ɹ���</b><br/>");
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
    
         

    Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����TXT����(UTF8��)</a><br/>");

    Response.Write("����JAR,ÿ��Լ80K:<br/>");
    for (int i = 1; i <= this.totalPage; i++)
    {
        Response.Write("<a href=\"" + this.http_start + "novel/shareall.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;vpage=" + i + "\">" + i + "_JAR����</a><br/>");
    }

    Response.Write("<br/>��<a href=\"" + this.http_start + "novel/shareall.aspx?action=up&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">���������ļ�</a>��<br/>");
    
    Response.Write("</div>");
    Response.Write("<div class=\"mylink\">");

    Response.Write(" <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("�����鱾|�����鱾|Back to book") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
}
    
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>