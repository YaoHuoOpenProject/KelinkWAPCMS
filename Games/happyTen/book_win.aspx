<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_win.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.book_win" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if (this.INFO == "gowin"){
    wmlVo.strUrl = "games/happyTen/book_win.aspx?action=doit&amp;siteid="+this.siteid +"&amp;classid="+this.classid+"&amp;id="+this.id +"&amp;r="+this.r;
    wmlVo.timer = "1";  
 }
Response.Write(WapTool.showTop(this.GetLang("��������|��������|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    //strhtml.Append("<div class=\"subtitle\">��������</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("������ɣ�|������ɣ�|Successfully add"));



        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "" + "\">����</a><br/>");
        //strhtml.Append("</div>");
    }

    else if (this.INFO == "EXIST")
    {
        //strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�����ˣ�״̬��1���������ſ���ִ�п�����</b><br/>");
        //strhtml.Append("</div>");
    }
    else if (this.INFO == "gowin")
    {
        //strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>ִ����...�����ĵȴ�...</b><br/>");
        //strhtml.Append("</div>");
    }

    //��ʾ�����
    if (this.INFO != "OK" && this.INFO != "gowin")
    {

        strhtml.Append("" + bookVo.years + "��� <b>" + bookVo.period + "</b> �ڿ����������:<br/>");
        strhtml.Append("" + bookVo.ball1 + "-" + bookVo.ball2 + "-" + bookVo.ball3 + "-" + bookVo.ball4 + "-" + bookVo.ball5 + "-" + bookVo.ball6 + "-" + bookVo.ball7 + "-" + bookVo.ball8 + "");
       
        strhtml.Append("<br/>״̬:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
        strhtml.Append("�鿴:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + bookVo.years + "&amp;content=" + bookVo.period + "\">����עͳ�ơ�</a>");
        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_win.aspx?action=gowin&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;r=" + this.r + "\">��ȷ�Ͽ�����</a><br/><br/>");
        strhtml.Append("˵��:��ȷ�Ϻ������ĵȴ��������ظ������");
        strhtml.Append("<br/>");
    }



    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">��������</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("������ɣ�|������ɣ�|Successfully add"));
       


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "" + "\">����</a><br/>");
        strhtml.Append("</div>");
    }
 
    else if (this.INFO == "EXIST")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�����ˣ�״̬��1���������ſ���ִ�п�����</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "gowin")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>ִ����...�����ĵȴ�...</b><br/>");
        strhtml.Append("</div>");
    }
   
    //��ʾ�����
    if (this.INFO != "OK" && this.INFO!="gowin")
    {
     
        strhtml.Append("<div class=\"subtitle\">"+bookVo.years+"��� <b>" + bookVo.period + "</b> �ڿ����������:</div>");
        strhtml.Append("<div class=\"content\">" + bookVo.ball1 + "-" + bookVo.ball2 + "-" + bookVo.ball3 + "-" + bookVo.ball4 + "-" + bookVo.ball5 + "-" + bookVo.ball6 + "-" + bookVo.ball7 + "-" + bookVo.ball8 + "");
        strhtml.Append("<br/>״̬:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
        strhtml.Append("�鿴:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + bookVo.years + "&amp;content=" + bookVo.period + "\">����עͳ�ơ�</a>");
        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("<a href=\""+this.http_start+"games/happyTen/book_win.aspx?action=gowin&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+this.id+"&amp;r="+this.r+"&amp;sid="+this.sid+"\">��ȷ�Ͽ�����</a><br/><br/>");
        strhtml.Append("˵��:��ȷ�Ϻ������ĵȴ��������ظ������");
        strhtml.Append("</div>");
    }



    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
