<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_ListSect.aspx.cs" Inherits="KeLin.WebSite.novel.Book_ListSect" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title+ "-"+ classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    if (showindex == true)
    {
        strhtml.Append("<b>");
        strhtml.Append(bookVo.book_title);
        strhtml.Append("</b><br/>");
        
        if (bookVo.book_img != "") strhtml.Append("<img src=\"" + bookVo.book_img + "\" alt=\".\"/><br/>");
        strhtml.Append("[����]<a href=\"" + this.http_start + "novel/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.classVo.classname + "</a>");
        strhtml.Append("<br/>[����]<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a>");
        strhtml.Append("<br/>[����]" + bookVo.Protagonists);
        strhtml.Append("<br/>[����]" + this.GetChanrNum(bookVo.CharNum) + "��");
        strhtml.Append("<br/>[״̬]" + bookVo.Process);
        strhtml.Append("<br/>[��Ȩ]" + bookVo.Authorized + "/" + bookVo.Nature);
        strhtml.Append("<br/>[�Ǽ�]" + bookVo.Star);
        strhtml.Append("<br/>[���]��:" + bookVo.book_click + "/��:" + bookVo.MonthClick + "/��:" + bookVo.WeekClick + "/��:" + bookVo.DayClick);
        strhtml.Append("<br/>[ͶƱ]<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=1\">�ʻ�(" + bookVo.FlowerClick + ")</a> <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=0\">��ש(" + bookVo.EggClick + ")</a>");
        if (bookVo.book_info.Length > 200) bookVo.book_info = bookVo.book_info.Substring(0, 200) + "...";
        strhtml.Append("<br/>[���]" + bookVo.book_info);
        strhtml.Append("<br/>[����ʱ��]" + string.Format("{0:yy-MM-dd HH:MM}", bookVo.LastUpdateTime));
        if (bookVo.LastUpdateBook != "")
        {
            strhtml.Append("<br/>[�����½�]" + bookVo.LastUpdateBook);
        }
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">�ղ�</a>]" + bookVo.CollectionNum + "��[<a href=\"" + this.http_start + "novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "" + "\">�Ƽ�</a>]" + bookVo.RecommendNum + "��[<a href=\"" + this.http_start + "novel/book_re.aspx?bookid=" + bookid + "&amp;id=0&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">����</a>]" + bookVo.book_re + "��");

        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/shareall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">ȫ������</a>][<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">�������</a>]");
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=0&amp;pn=next\">���Ͽ���</a>]");
        strhtml.Append("<br/><b>������־�</b><br/>");
     
        for (int i = 0; (listVolumeVo != null && i < listVolumeVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;ordertype=0&amp;volumeid=" + listVolumeVo[i].VolumeId + "\">" + listVolumeVo[i].VolumeName + "</a>");
            if (i != (listVolumeVo.Count - 1)) strhtml.Append("/");
        }
        if (listVolumeVo == null) strhtml.Append("�޷־�");
        strhtml.Append("<br/>");
        strhtml.Append("<b>������Ŀ¼��</b><br/>");


    }
    else
    {
        strhtml.Append("<b>" + bookVo.book_title);
        if (this.volumeid != "0")
        {
            strhtml.Append("." + this.volumeName );
        }
        strhtml.Append("</b><br/>");
    }
    strhtml.Append("����:");
    if (showindex == false)
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">��ҳ</a>");
    }
    else
    {
        strhtml.Append("��ҳ");
    }
    strhtml.Append("|");
    if (this.orderType == "1")
    {
        strhtml.Append("����");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=1\">����</a>");
    }
    strhtml.Append("|");

    if (this.orderType == "0")
    {
        strhtml.Append("����");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=0\">����</a>");
    }
    if (this.volumeid != "0")
    {
        strhtml.Append("|<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=0&amp;ordertype=" + this.orderType + "\">ȫ��</a>");

    }
    else
    {
        strhtml.Append("|ȫ��");
    }
    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�
    strhtml.Append(linkTOP);
  
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".<a href=\"" + http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + listVo[i].BookId + "&amp;id=" + listVo[i].SectionId + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].SectionTitle + "</a><br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //������ť
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    }
        strhtml.Append(WapTool.GetVS(wmlVo));
    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    

    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    if (showindex == true)
    {
        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append(bookVo.book_title);
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");
        if (bookVo.book_img != "") strhtml.Append("<img src=\"" + bookVo.book_img + "\" alt=\".\"/><br/>");
        strhtml.Append("[����]<a href=\""+this.http_start+"novel/book_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">" + this.classVo.classname+"</a>");
        strhtml.Append("<br/>[����]<a href=\"" + this.http_start + "novel/book_list.aspx?key=" + HttpUtility.UrlEncode(bookVo.book_author) + "&amp;type=author&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">" + bookVo.book_author + "</a>");
        strhtml.Append("<br/>[����]" + bookVo.Protagonists);
        strhtml.Append("<br/>[����]" + this.GetChanrNum(bookVo.CharNum) + "��");
        strhtml.Append("<br/>[״̬]" + bookVo.Process);
        strhtml.Append("<br/>[��Ȩ]" + bookVo.Authorized + "/" + bookVo.Nature);
        strhtml.Append("<br/>[�Ǽ�]" + bookVo.Star);
        strhtml.Append("<br/>[���]��:" + bookVo.book_click + "/��:" + bookVo.MonthClick + "/��:" + bookVo.WeekClick + "/��:" + bookVo.DayClick);
        strhtml.Append("<br/>[ͶƱ]<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=1\">�ʻ�(" + bookVo.FlowerClick + ")</a> <a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;flower=0\">��ש(" + bookVo.EggClick + ")</a>");
        if (bookVo.book_info.Length > 200) bookVo.book_info = bookVo.book_info.Substring(0, 200) + "...";
        strhtml.Append("<br/>[���]" + bookVo.book_info);
        strhtml.Append("<br/>[����ʱ��]" + string.Format("{0:yy-MM-dd HH:MM}", bookVo.LastUpdateTime));
        if (bookVo.LastUpdateBook != "")
        {
            strhtml.Append("<br/>[�����½�]" + bookVo.LastUpdateBook);
        }
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">�ղ�</a>]" + bookVo.CollectionNum + "��[<a href=\"" + this.http_start + "novel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "" + "\">�Ƽ�</a>]" + bookVo.RecommendNum + "��[<a href=\"" + this.http_start + "novel/book_re.aspx?bookid=" + bookid + "&amp;id=0&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">����</a>]" + bookVo.book_re + "��");

        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/shareall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">ȫ������</a>][<a href=\"" + this.http_start + "novel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;lpage=" + this.CurrentPage + "\">�������</a>]");
        strhtml.Append("<br/>[<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=0&amp;pn=next\">���Ͽ���</a>]");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\">������־�</div>");
        strhtml.Append("<div class=\"content\">");
        for (int i = 0; (listVolumeVo != null && i < listVolumeVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;ordertype=0&amp;volumeid=" + listVolumeVo[i].VolumeId + "\">" + listVolumeVo[i].VolumeName + "</a>");
            if (i != (listVolumeVo.Count-1)) strhtml.Append("/");
        }
        if (listVolumeVo == null) strhtml.Append("�޷־�");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\">������Ŀ¼��</div>");


    }
    else
    {
        strhtml.Append("<div class=\"subtitle\"><b>"+bookVo.book_title);
        if (this.volumeid != "0")
        {
            strhtml.Append("." + this.volumeName );
        }
        strhtml.Append("</b></div>");
    }
    //��ʾ����
    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");



    strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">��ҳ</a>");


    strhtml.Append("<a ");
    if (this.orderType == "1")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=1\">����</a>");


    strhtml.Append("<a ");
    if (this.orderType == "0")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append(" href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=" + this.volumeid + "&amp;ordertype=0\">����</a>");


    strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;volumeid=0&amp;ordertype=" + this.orderType + "\">ȫ��</a>");


    strhtml.Append("</div></div>");
    //��ʾ�б�
    //strhtml.Append(linkTOP);
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        lpagetemp = "&amp;lpage=" + CurrentPage;
    }
    strhtml.Append("<!--listS-->");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("<a href=\"" + http_start + "novel/view.aspx?id=" + listVo[i].SectionId + lpagetemp + "\">" + listVo[i].SectionTitle + "</a>");
        
        strhtml.Append("</div>");
            
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    strhtml.Append("<!--listE-->");
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //������ť
    
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
        strhtml.Append("</div></div>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid+ "" + "\">�����ϼ�</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
        strhtml.Append("</div></div>");
    }
   
    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
