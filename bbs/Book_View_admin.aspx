<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_admin.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_admin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("��������|�����N��|Management Notes"), wmlVo));//��ʾͷ 
if(ver=="1"){

    strhtml.Append("<p align=\"" + classVo.position + "\">");

    strhtml.Append("����:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
    strhtml.Append("����:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
    strhtml.Append("ʱ��:"+bookVo.book_date+"<br/>");
    strhtml.Append("����:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "(ID:" + classVo.classid + ")</a><br/>");
    strhtml.Append("----------<br/>");
 
    strhtml.Append("¥����ѡ�������<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�޸�����</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("�ļ�����|�ļ�����|upload file") + "</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ɾ������</a>]<br/>");
    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    }
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.book_pub + "\">�鿴�Ӻ�</a>]");

    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]<br/>");

    strhtml.Append("----------<br/>");
    strhtml.Append("������ѡ�������<br/>");
 

    if (bookVo.book_top == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ȡ���ö�</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�ö�����</a>]");
    }


    if (bookVo.book_good == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ȡ���Ӿ�</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�Ӿ�����</a>]");
    }
    
    

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�޸�����</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_check.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    
    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("�ļ�����|�ļ�����|upload file") + "</a>]");

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_change.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ת������</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ɾ������</a>]");



    strhtml.Append("<br/>");

    if (bookVo.islock == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    }


    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    }
    
    


    strhtml.Append("<br/>");

    if (bookVo.isdown == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">���ó���</a>]");
    }

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.book_pub + "\">�Ӻ��û�</a>]");
    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]<br/>");
    
    if (bookVo.book_top == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ȡ��ȫ���ö�</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�ö�Ϊȫ������</a>]");
    }
    
    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_chtoDown.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">���������͵�����ģ��</a>]<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_chtopic.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��Ϊר��</a>] ����:" + WapTool.getSmallTypeName(siteid, bookVo.topic.ToString()));
    strhtml.Append("<br/>----------");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    strhtml.Append(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
    
}else{ //2.0����

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("��������|�����N��|Management Notes") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("����:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
    strhtml.Append("����:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
    strhtml.Append("ʱ��:" + bookVo.book_date + "<br/>");
    strhtml.Append("����:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "(ID:" + classVo.classid + ")</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("¥����ѡ�����");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�޸�����</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("�ļ�����|�ļ�����|upload file") + "</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ɾ������</a>]<br/>");
    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    }
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.book_pub + "\">�鿴�Ӻ�</a>]<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("������ѡ�����");
    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"content\">");

    if (bookVo.book_top == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ȡ���ö�</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_top.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�ö�����</a>]");
    }


    if (bookVo.book_good == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ȡ���Ӿ�</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_good.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�Ӿ�����</a>]");
    }



    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_mod.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�޸�����</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_check.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modadd.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("�ļ�����|�ļ�����|upload file") + "</a>]");

    strhtml.Append("<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_change.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ת������</a>]");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_del.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ɾ������</a>]");



    strhtml.Append("<br/>");

    if (bookVo.islock == 1)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_lock.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    }


    if (bookVo.islock == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_end.aspx?action=go&amp;tops=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]");
    }




    strhtml.Append("<br/>");

    if (bookVo.isdown == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�������</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_down.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">���ó���</a>]");
    }

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.book_pub + "\">�Ӻ��û�</a>]");
    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_modfile.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��������</a>]<br/>");
    if (bookVo.book_top == 2)
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">ȡ��ȫ���ö�</a>]");
    }
    else
    {
        strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_topall.aspx?action=go&amp;tops=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">�ö�Ϊȫ������</a>]");
    }
    strhtml.Append("<br/>");
    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_chtoDown.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">���������͵�����ģ��</a>]<br/>");

    strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_view_chtopic.aspx?action=go&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "\">��Ϊר��</a>] ����:" + WapTool.getSmallTypeName(siteid, bookVo.topic.ToString()));

    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml.ToString()), wmlVo));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    strhtml.Append(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");

    strhtml.Append("</div></div>");
    Response.Write(strhtml);
}
    
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>