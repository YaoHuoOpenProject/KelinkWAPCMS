<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.guangbo.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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

    if (action == "" || action == "class")
    {

       
        if (this.touserid == "")
        {
            strhtml.Append("���й㲥/<a href=\"" + this.http_start + "guangbo/Book_List.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">�ҵĹ㲥</a>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">���й㲥</a>/�ҵĹ㲥");

        }

        strhtml.Append("/<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");
        
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;totype=" + this.totype + "&amp;touserid=" + this.touserid + "\">�����㲥</a>");
        if (totype == "1")
        {

            strhtml.Append("/<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0&amp;touserid=" + this.touserid + "\">����Ͷ��</a>/�Ѿ�����");
        }
        else
        {
            strhtml.Append("/����Ͷ��/<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1&amp;touserid=" + this.touserid + "\">�Ѿ�����</a>");
        }
        strhtml.Append("<br/>");

    }
    
    //��ʾ�б�
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }
        DateTime dt_end = System.DateTime.Now;
        TimeSpan ts = listVo[i].endtime - dt_end;
        string del = "";
        if (this.touserid == this.userid)
        {
            del = "[<a href=\"" + this.http_start + "guangbo/admin_wapdel02.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">ɾ</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodify.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">��</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodifyadd.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">��</a>]";
        }
        
        strhtml.Append(index + "."+del+"<a href=\"" + http_start + "guangbo/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+"" + "\">" + listVo[i].book_title + book_click+"</a>");
        strhtml.Append("<br/>(<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("guangbo/book_list.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&amp;sid=" + this.sid) + "\">" + listVo[i].nickname + "</a>��" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "����," );
        if (ts.TotalSeconds > 0)
        {
            strhtml.Append(ts.TotalSeconds.ToString("f0") + "������)");
        }
        else
        {
            strhtml.Append("�ѹ�" + ts.TotalSeconds.ToString("f0") + "��)");
        }
        strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޹㲥��¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("--------<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a><br/>");
        strhtml.Append("--------<br/>");
    }
    
    //������ť
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
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

    strhtml.Append("<div class=\"subtitle\">"+classVo.classname+"</div>");

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
    if (action == "" || action == "class")
    {

        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt4\">");        
        strhtml_list.Append("<a ");
        if (this.touserid == "")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }

        strhtml_list.Append("href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">���й㲥</a>");

        strhtml_list.Append("<a ");
        if (this.touserid != "")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append("href=\"" + this.http_start + "guangbo/Book_List.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">�ҵĹ㲥</a>");


        strhtml_list.Append("<a ");
        if (totype != "1")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }

        strhtml_list.Append("href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0&amp;touserid=" + this.touserid + "\">����Ͷ��</a>");

        strhtml_list.Append("<a ");
        if (totype == "1")
        {
            strhtml_list.Append("class=\"btSelect\" ");
        }
        strhtml_list.Append(" href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1&amp;touserid=" + this.touserid + "\">�Ѿ�����</a>");



        strhtml_list.Append("</div></div>");


        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt2\">");  
        strhtml_list.Append("<a href=\"" + this.http_start + "guangbo/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;totype=" + this.totype + "&amp;touserid=" + this.touserid + "\">�����㲥</a>");
      
        strhtml_list.Append("<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");

        strhtml_list.Append("</div></div>");
    }
    //��ʾ�б�
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        lpagetemp = "&amp;lpage=" + CurrentPage;
    }
    strhtml_list.Append(linkTOP);
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
        string del = "";
        if (this.touserid == this.userid)
        {
            del = "[<a href=\"" + this.http_start + "guangbo/admin_wapdel02.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">ɾ</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodify.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">��</a>.<a href=\"" + this.http_start + "guangbo/admin_wapmodifyadd.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "" + "\">��</a>]";
        }

        DateTime dt_end = System.DateTime.Now;
        TimeSpan ts = listVo[i].endtime - dt_end;

        strhtml_list.Append("" + del + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("guangbo/book_list.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&amp;sid=" + this.sid) + "\">" + listVo[i].nickname + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "</span><br/>");
        strhtml_list.Append("<a href=\"" + http_start + "guangbo/view.aspx?id=" + listVo[i].id + lpagetemp + "&amp;totype=" + this.totype + "&amp;touserid=" + this.touserid + "" + "\">" + listVo[i].book_title + book_click + "</a> ");

        strhtml_list.Append(" <span class=\"subtitleview\">");
        if(ts.TotalSeconds>0){
         strhtml_list.Append(ts.TotalSeconds.ToString("f0") + "������");
        }else{
            strhtml_list.Append("�ѹ�" + ts.TotalSeconds.ToString("f0") + "��");
        }
        strhtml_list.Append("</span>");
        strhtml_list.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml_list.Append("<div class=\"tip\">���޹㲥��¼��</div>");
    }
    
    //��ʾ������ҳ
    strhtml_list.Append(linkURL);
    //strhtml_list.Append("--->" + isWebHtml+"-->");
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
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
         strhtml.Append("<a href=\"" + this.http_start + "guangbo/classconfigall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a><br/>");
         strhtml.Append("</div>");
    }
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "guangbo/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
        strhtml.Append("</div></div>");
    }
     strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div>");
    strhtml.Append("</div>");
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
