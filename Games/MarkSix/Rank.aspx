<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="KeLin.WebSite.Games.marksix.Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("�������а�", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
   
   
    

    strhtml.Append("<b>�������а�</b>");
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<b>����</b><br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=9\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=12\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=53\">��β</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=54\">��ͷ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">��ɫ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">��˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=18\">��С</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=55\">��Ұ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=56\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=57\">�벨</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=58\">������˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=59\">������С</a><br/>");

    strhtml.Append("--------<br/>");
    strhtml.Append("<b>ƽ��</b><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=10\">��ƽ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=11\">ƽ��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=52\">ƽ��β</a><br/>");

    strhtml.Append("--------<br/>");
    strhtml.Append("<b>����</b><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=19\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=20\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=21\">ƽ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=51\">�ش�</a><br/>");

    strhtml.Append("--------<br/>");

    //������ť

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"title\">�������а�</div>");
    strhtml.Append("<div class=\"subtitle\">����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=9\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=12\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=53\">��β</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=54\">��ͷ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">��ɫ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">��˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=18\">��С</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=55\">��Ұ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=56\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=57\">�벨</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=58\">������˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=59\">������С</a><br/>");
   
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">ƽ��</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=10\">��ƽ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=11\">ƽ��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=52\">ƽ��β</a><br/>");
       
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=19\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=20\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=21\">ƽ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=51\">�ش�</a><br/>");

    strhtml.Append("</div>");
   
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
