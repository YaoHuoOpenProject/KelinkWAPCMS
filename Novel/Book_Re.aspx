<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re.aspx.cs" Inherits="KeLin.WebSite.novel.Book_Re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("����ɹ���|����ɹ���|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("��˺���ʾ��");
        }
        
        
        strhtml.Append("</b><br/>");
        if (id != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a><br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">�����ϼ�</a><br/>");
        }
        
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("���ݲ���Ϊ�գ�|���ݲ��ܠ��գ�|The content can not be empty!"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");

    }
    //��ʾ�����
    strhtml.Append("������ᣬ��������<br/>");
    strhtml.Append("<input emptyok=\"true\" name=\"con" + r + "tent\" maxlength=\"300\"/><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"novel/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"bookid\" value=\"" + bookid + "\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/book_re.aspx?action=class&siteid="+siteid+"&classid="+classid+"&id="+id) + "\"/>");   
    strhtml.Append("</go>��������</anchor> ");

    strhtml.Append("<a href=\"" + http_start + "novel/book_re.aspx?bookid=" + bookid + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;lpage=" + lpage + "&amp;rnd=" + r + "" + "\">ˢ��</a> ");
    if(userid=="0"){
        strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("novel/book_re.aspx?action=class&siteid=" + siteid + "&classid=" + classid + "&bookid=" + bookid + "&id=" + id) + "\">��¼</a>");
    }
    strhtml.Append("<br/>");
 
    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        
        strhtml.Append("["+(total - kk) + "¥]<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname +"</a>("+string.Format("{0:MM-dd HH:mm}",listVo[i].addtime)+")˵��<br/>"+listVo[i].book_content+"<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("���޻ظ���¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    if (id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a> ");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">�����ϼ�</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">�����б�</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<!--web-->");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("����ɹ���|����ɹ���|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("��˺���ʾ��");
        }


        strhtml.Append("</b> ");
        if (id != "0")
        {
            strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a><br/>");
        }
        else
        {
            strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">�����ϼ�</a><br/>");
        }
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("���ݲ���Ϊ�գ�|���ݲ��ܠ��գ�|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b>");
        strhtml.Append("</div>");

    }
    strhtml.Append("<div class=\"subtitle\">��Ҫ����</div>");
    //��ʾ�����
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "novel/book_re.aspx\" method=\"post\">");

    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"bookid\" value=\"" + bookid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    //strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/book_re.aspx?actoin=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"��������\"/></form> ");
   
    strhtml.Append("</div>");

    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    strhtml.Append("<!--listS-->");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("[" + (total - kk) + "¥] <a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "</span><br/>" + listVo[i].book_content + "</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޻ظ���¼��</div>");
    }
    strhtml.Append("<!--listE-->");
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "0")
    {
       
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a> ");
        
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">�����ϼ�</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");
    strhtml.Append("</div></div>");

    

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
