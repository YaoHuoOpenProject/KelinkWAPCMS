<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="��ʾ��¹����̨";
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("������ӻ�����ID��<br/><input type=\"text\" name=\"p_title" + r + "\" value=\"" + this.p_title + "\" size=\"8\"/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/admin_book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\" />");
    strhtml.Append("<postfield name=\"p_title\" value=\"$(p_title" + r + ")\" />");      
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor> ");
    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�
     if (ptype == "1")
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">ȫ��</a>.����.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");
    }
     else if (ptype == "2")
     {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">ȫ��</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>.����.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");
   

     }
     else if (ptype == "3")
     {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">ȫ��</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>.����.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");
   

     }
     else
     {
         strhtml.Append("ȫ��.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");
   

     }

     strhtml.Append("<br/>");
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            if (i != 0)
            {
                if (string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) != string.Format("{0:MM��dd��}", listVo[i - 1].p_TPRtime))
                {

                    strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");

                }
            }
            else
            {
                strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");
            }

            strhtml.Append("[<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">����</a>]<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">" + string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");
            if (listVo[i].p_del == 1)
            {
                strhtml.Append("{��}");
            }
            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{��}");
            }
            if (listVo[i].p_active == 1)
            {
                strhtml.Append("{�ѿ�}");
            }
            if (listVo[i].p_active == 2)
            {
                strhtml.Append("{ƽ��}");
            }
        }
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">������ʾ���</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">������Ϸ����</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append(title);    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/apple/book_list.aspx\" method=\"get\">");
    strhtml.Append("������ӻ�����ID��<br/><input type=\"text\" name=\"p_title\" value=\"" + p_title + "\" size=\"8\"/>");
   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + this.ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|Search") + "\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "\">��������</a>.���а�.����");
    strhtml.Append("<br/>");
    //��ʾ�б�
    if (ptype == "1")
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">ȫ��</a>.����.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");
    }
    else if (ptype == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">ȫ��</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>.����.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");


    }
    else if (ptype == "3")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">ȫ��</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>.����.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");


    }
    else
    {
        strhtml.Append("ȫ��.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">����</a>");


    }
    strhtml.Append("</div>");
    //��ʾ�б�
    
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
        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            if (i != 0)
            {
                if (string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) != string.Format("{0:MM��dd��}", listVo[i - 1].p_TPRtime))
                {

                    strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");

                }
            }
            else
            {
                strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");
            }

            strhtml.Append("[<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">����</a>]<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">" + string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");

            if (listVo[i].p_del == 1)
            {
                strhtml.Append("{��}");
            }
            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{��}");
            }
            if (listVo[i].p_active == 1)
            {
                strhtml.Append("{�ѿ�}");
            }
            if (listVo[i].p_active == 2)
            {
                strhtml.Append("{ƽ��}");
            }
        }
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">���������Ϸ</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">������Ϸ����</a> ");

    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
