<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShareToMail.aspx.cs" Inherits="KeLin.WebSite.bbs.ShareToMail" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�ʼ�����|�����N��|share Notes"), wmlVo));//��ʾͷ 

if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
   
    if (this.INFO == "NULL")
    {
        Response.Write("<b>�����ַ����Ϊ�գ�</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>���ͳɹ���</b><br/>");

    }else if (this.INFO == "ERROR")
    {
        Response.Write("<b>���ͽ����"+this.ERROR+"</b><br/>");

    }


    Response.Write("�������䣺<br/><input type=\"text\" name=\"tomail\" value=\""+tomail+"\"/><br/>");
    Response.Write("˵���䣺<br/><input type=\"text\" name=\"title\" value=\"" + title + "\"/>");
    Response.Write("<br/><anchor><go href=\""+http_start+"bbs/sharetomail.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"go\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");   
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"title\" value=\"$(title)\"/>");
    Response.Write("<postfield name=\"tomail\" value=\"$(tomail)\"/>");
    Response.Write("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
	Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
    Response.Write("</go> �� �� </anchor><br/>");
   


    Response.Write("<a href=\""  + (backurl) + "" + "\">[����Դ��ҳ]</a><br/>");
    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0����

    Response.Write("<div class=\"subtitle\">" + this.GetLang("�ʼ�����|�����N��|share Notes") + "</div>");
   
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>�����ַ����Ϊ�գ�</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>���ͳɹ���</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "ERROR")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>���ͽ����" + this.ERROR + "</b><br/>");
        Response.Write("</div>");

    }
    
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/ShareToMail.aspx\" method=\"post\">");
    Response.Write("�������䣺<br/><input type=\"text\" name=\"tomail\" value=\""+tomail+"\"/><br/>");
    Response.Write("˵���䣺<br/><input type=\"text\" name=\"title\" value=\"" + title + "\"/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");    
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\"/>");
    Response.Write("<br/><input type=\"submit\" name=\"g\" value=\" �� ��\"/></form>");   
    

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\""  + (backurl) + "" + "\">����Դ��ҳ</a> ");

  
    Response.Write("</div></div>");
}
    
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>