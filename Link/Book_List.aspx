<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.link.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    
    strhtml.Append("<select name=\"sort\" value=\""+action+"\">");
    if (classid!="0")
    {
        strhtml.Append("<option value=\"class\" onpick=\"" + http_start + "link/book_list.aspx?action=class&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">��̬����</option>");
    }
    strhtml.Append("<option value=\"hot\" onpick=\"" + http_start + "link/book_list.aspx?action=hot&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">��������</option>");
    strhtml.Append("<option value=\"new\" onpick=\"" + http_start + "link/book_list.aspx?action=new&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">��������</option>");
    strhtml.Append("<option value=\"back\" onpick=\"" + http_start + "link/book_list.aspx?action=back&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">��������</option>");
    strhtml.Append("<option value=\"smalltype\" onpick=\"" + http_start + "link/book_list.aspx?action=smalltype&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">ͶƱ����</option>");
    strhtml.Append("<option value=\"good\" onpick=\"" + http_start + "link/book_list.aspx?action=good&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">�Ƽ���վ</option>");    
    strhtml.Append("<option value=\"checking\" onpick=\"" + http_start + "link/book_list.aspx?action=checking&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">�������վ</option>");
    strhtml.Append("</select>");

    strhtml.Append("-<b><a href=\"" + this.http_start + "link/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">������վ</a></b><br/>");
    //��ʾ�б�
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");

        
        if (listVo[i].book_top == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVo[i].book_good == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (this.action == "hot" || this.action == "back")
        {
            book_click = "(��" + listVo[i].book_click.ToString() + "/��" + listVo[i].book_re.ToString() + ")";
        }
        else if (this.action == "smalltype")
        {
            book_click = "(��Ʊ:" + listVo[i].smalltype.ToString() + ")";
        }
        strhtml.Append("<a href=\"" + http_start + "link/book_view.aspx?action="+this.action+"&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+"" + "\">" + listVo[i].book_title + book_click+"</a><br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "link/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
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



    

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }

    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    strhtml.Append("<!--web-->");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    //if (classid != "0")
    //{
        strhtml.Append("<a ");
        if (action == "class" || action=="")
        {
            strhtml.Append("class=\"btSelect\" ");
        }
        strhtml.Append("href=\"" + http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;action=class\">��̬����</a> ");
    //}
    

    strhtml.Append("<a ");
    if (action == "hot")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;action=hot\">��������</a> ");

    strhtml.Append("<a ");
    if (action == "new")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;action=new\">��������</a> ");

    strhtml.Append("<a ");
    if (action == "back")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;action=back\">��������</a> ");
   
    
    

    strhtml.Append("</div></div>");


    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
   
    strhtml.Append("<a ");
    if (action == "smalltype")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;action=smalltype\">ͶƱ����</a> ");

    strhtml.Append("<a ");
    if (action == "good")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;action=good\">�Ƽ���վ</a> ");

    strhtml.Append("<a ");
    if (action == "checking")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + http_start + "link/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;action=checking\">�����</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "link/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\"> �� �� </a> ");
   

    strhtml.Append("</div></div>");
    

    //��ʾ�б�
   // strhtml.Append(linkTOP);
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        lpagetemp = "&amp;lpage=" + CurrentPage;
    }
    string book_click = "";
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
        index = index + kk;
        //strhtml.Append(index + ".");
        if (listVo[i].book_top == 1)
        {
            strhtml.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"��\"/>");

        }
        if (listVo[i].book_good == 1)
        {
            strhtml.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"��\"/>");

        }
        if (this.action == "hot" || this.action == "back")
        {
            book_click = "<span class=\"right\"> ��" + listVo[i].book_click.ToString() + "/��" + listVo[i].book_re.ToString() + "</span>";
        }
        else if(this.action == "smalltype")
        {
            book_click = "<span class=\"right\"> ��Ʊ:" + listVo[i].smalltype.ToString() + "</span>";
        }
        else if (this.action == "new")
        {
            book_click = "<span class=\"right\"> " + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</span>";
        }
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "link-" + listVo[i].id +".html?action=" + this.action +  lpagetemp + "\">" + listVo[i].book_title + book_click + "</a></div>");
        
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "link/view.aspx?action=" + this.action + "&amp;id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + book_click + "</a></div>");
        }
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    strhtml.Append("<!--listE-->"); 
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    //��ʾ���԰�
    string isWebHtml = this.ShowWEB_list(this.classid); //���Ǵ���html����    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

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
        strhtml.Append("<a href=\"" + this.http_start + "link/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
        strhtml.Append("</div></div>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "link/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">������վ</a> ");
        strhtml.Append("</div></div>");
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
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
