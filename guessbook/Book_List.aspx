<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.guessbook.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    if(action=="" || action=="class")
    strhtml.Append("<b><a href=\"" + this.http_start + "guessbook/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">��Ҫ����</a></b><br/>");
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
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }
        if (listVo[i].ishidden == 1) listVo[i].book_title = "���Ļ�...";
        strhtml.Append("<a href=\"" + http_start + "guessbook/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+"" + "\">" + listVo[i].book_title + book_click+"</a><br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "guessbook/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
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

    string isWebHtml = this.ShowWEB_list(this.classid); //���Ǵ���html����
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB��Ӧ����

    

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
    if (classid != "0")
    {
        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "guessbook/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">��Ҫ����</a></div></div>");
    }
     //��ʾ�б�
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            lpagetemp = "?lpage=" + CurrentPage;
      
        }
        else
        {
            lpagetemp = "&amp;lpage=" + CurrentPage;
        }
    }
    //strhtml_list.Append(linkTOP);
    strhtml_list.Append("<!--listS-->"); 
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "(" + listVo[i].book_click.ToString() + ")";
        }
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        //strhtml_list.Append(index + ".");
        if (listVo[i].book_top == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"��\"/>");

        }
        if (listVo[i].book_good == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"��\"/>");

        }
        if (listVo[i].ishidden == 1) listVo[i].book_title = "���Ļ�...";

        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml_list.Append("<a href=\"" + http_start + "guessbook-" + listVo[i].id +".html"+ lpagetemp + "\">" + listVo[i].book_title + book_click + "</a> <span id=\"KL_GUE_LIST\" class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</span></div>");
        
        }
        else
        {
            strhtml_list.Append("<a href=\"" + http_start + "guessbook/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + book_click + "</a> <span id=\"KL_GUE_LIST\" class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</span></div>");
        }
    }

    if (listVo==null)
    {
        strhtml_list.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    strhtml_list.Append("<!--listE-->"); 
    //��ʾ������ҳ
    strhtml_list.Append(linkURL);

   

    if (isWebHtml == "")
    {
        strhtml.Append(strhtml_list);

    }
    else  //��ʾ����html
    {
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list.ToString()), wmlVo));
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
        strhtml.Append("<a href=\"" + this.http_start + "guessbook/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
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
