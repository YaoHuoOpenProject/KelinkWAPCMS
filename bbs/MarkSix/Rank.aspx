<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("�������а�", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");






    strhtml.Append("<b>�������а�|<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">��Ա���а�</a></b>");
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<b>����</b><br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=9&amp;sid=" + this.sid + "\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=12&amp;sid=" + this.sid + "\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=53&amp;sid=" + this.sid + "\">��β</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=54&amp;sid=" + this.sid + "\">��ͷ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13&amp;sid=" + this.sid + "\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14&amp;sid=" + this.sid + "\">��ɫ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17&amp;sid=" + this.sid + "\">��˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=18&amp;sid=" + this.sid + "\">��С</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=55&amp;sid=" + this.sid + "\">��Ұ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=56&amp;sid=" + this.sid + "\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=57&amp;sid=" + this.sid + "\">�벨</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=58&amp;sid=" + this.sid + "\">������˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=59&amp;sid=" + this.sid + "\">������С</a><br/>");

    strhtml.Append("--------<br/>");
    strhtml.Append("<b>ƽ��</b><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=10&amp;sid=" + this.sid + "\">��ƽ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=11&amp;sid=" + this.sid + "\">ƽ��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=52&amp;sid=" + this.sid + "\">ƽ��β</a><br/>");

    strhtml.Append("--------<br/>");
    strhtml.Append("<b>����</b><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=19&amp;sid=" + this.sid + "\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=20&amp;sid=" + this.sid + "\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=21&amp;sid=" + this.sid + "\">ƽ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=51&amp;sid=" + this.sid + "\">�ش�</a><br/>");

    strhtml.Append("--------<br/>");

    //������ť

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"title\">�������а�|<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">��Ա���а�</a></div>");

    strhtml.Append("<div class=\"subtitle\">����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=9&amp;sid=" + this.sid + "\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=12&amp;sid=" + this.sid + "\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=53&amp;sid=" + this.sid + "\">��β</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=54&amp;sid=" + this.sid + "\">��ͷ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13&amp;sid=" + this.sid + "\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14&amp;sid=" + this.sid + "\">��ɫ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17&amp;sid=" + this.sid + "\">��˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=18&amp;sid=" + this.sid + "\">��С</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=55&amp;sid=" + this.sid + "\">��Ұ</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=56&amp;sid=" + this.sid + "\">��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=57&amp;sid=" + this.sid + "\">�벨</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=58&amp;sid=" + this.sid + "\">������˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=59&amp;sid=" + this.sid + "\">������С</a><br/>");
   
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">ƽ��</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=10&amp;sid=" + this.sid + "\">��ƽ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=11&amp;sid=" + this.sid + "\">ƽ��Ф</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=52&amp;sid=" + this.sid + "\">ƽ��β</a><br/>");
       
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=19&amp;sid=" + this.sid + "\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=20&amp;sid=" + this.sid + "\">ƽ���ж�</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=21&amp;sid=" + this.sid + "\">ƽ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=51&amp;sid=" + this.sid + "\">�ش�</a><br/>");

    strhtml.Append("</div>");
   
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");

    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
