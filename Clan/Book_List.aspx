<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.clan.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="�����б�";



Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (type == "0")
    {
        strhtml.Append("����:����.<a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.<a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʵ��</a>");
   
    }
    else if (type == "1")
    {
        strhtml.Append("����:<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.����.<a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʵ��</a>");
   
    }else if(type =="2")
    {
        strhtml.Append("����:<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.<a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.ʵ��");
   
    }

    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (type == "0")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "��)<br/>");
        }
        else if (type == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "��)<br/>");
       

        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "��)[����:" + listVo[i].clan_mark + "]<br/>");
       
        }

        //strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">���ؼ���</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"title\"><a href=\"" + this.http_start + "\">��ҳ</a>>" + title + "</div>");
    strhtml.Append("<div class=\"content\">");
    if (type == "0")
    {
        strhtml.Append("���У�����.<a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a> <a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʵ��</a>");

    }
    else if (type == "1")
    {
        strhtml.Append("���У�<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a> ���� <a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʵ��</a>");

    }
    else if (type == "2")
    {
        strhtml.Append("���У�<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a> <a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a> ʵ��");

    }
    strhtml.Append("</div>");

    //��ʾ�б�

    
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
        if (type == "0")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "��)<br/>");
        }
        else if (type == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "��)<br/>");


        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "��)[����:" + listVo[i].clan_mark + "]<br/>");

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
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?classid=" + classid + "" + "\">��������</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "\">������ҳ</a>");

    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
