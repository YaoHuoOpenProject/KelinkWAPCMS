<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="randNum.aspx.cs" Inherits="KeLin.WebSite.Games.marksix.randNum" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("���ձ�", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>���Ϊ��ѡ��</b><br/>");

    strhtml.Append("ƽ: " + ball1 + "-" + ball2 + "-" + ball3 + "-" + ball4 + "-" + ball5 + "-" + ball6 + "<br/>");
    strhtml.Append("��:" + ballTM + "<br/>");
    strhtml.Append("~����ѡ��,��������~<br/>");
    strhtml.Append("<br/>");


    //������ť
    strhtml.Append("--------<br/>");
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
    
    strhtml.Append("<div class=\"subtitle\">���Ϊ��ѡ��</div>");    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("ƽ: " + ball1 + "-" + ball2 + "-" + ball3 + "-" + ball4 + "-" + ball5 + "-" + ball6 +  "<br/>");
    strhtml.Append("��:" + ballTM  + "<br/>");
    strhtml.Append("~����ѡ��,��������~<br/>");
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
