<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("�������а�", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>�������а�</b>");

    strhtml.Append("<br/>--------<br/>");  
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">��С</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">��˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">�ܺͣ�9-12</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">�ܺͣ�8,13</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">�ܺͣ�7,14</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">�ܺͣ�6,15</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">�ܺͣ�5,16</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">�ܺͣ�4,17</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">ָ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">���ⱪ��</a><br/>");
    
   
    strhtml.Append("--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
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
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">��С</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">��˫</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">�ܺͣ�9-12</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">�ܺͣ�8,13</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">�ܺͣ�7,14</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">�ܺͣ�6,15</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">�ܺͣ�5,16</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">�ܺͣ�4,17</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">ָ������</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">���ⱪ��</a><br/>");
    
    strhtml.Append("</div>");
   
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
