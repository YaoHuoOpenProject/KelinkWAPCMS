<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("�������а�", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>�������а�</b>");
    strhtml.Append("<br/>--------<br/>");  
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">ѡһ��Ͷ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">ѡһ��Ͷ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">��ѡ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">ѡ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">ѡ����ֱ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">��ѡ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">ѡ��ǰ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">ѡ��ǰֱ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">��ѡ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">��ѡ��</a><br/>");
    
   
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">�������а�</div>");

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("��ѡ��<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">ѡһ��Ͷ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">ѡһ��Ͷ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">��ѡ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">ѡ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">ѡ����ֱ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">��ѡ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">ѡ��ǰ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">ѡ��ǰֱ</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">��ѡ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">��ѡ��</a><br/>");
    
    strhtml.Append("</div>");
   
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
