<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gamesAdmin00.aspx.cs" Inherits="KeLin.WebSite.Games.gamesAdmin00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("��Ϸ������������Ա��̨", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");

    //��ʾ����
    //strhtml.Append("<div class=\"line2\">");
    strhtml.Append("00.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�������ݹ���</a><br/>");
    strhtml.Append("--------<br/>");

    strhtml.Append("��Ϸ������Ҫվ����ݹ���<br/>");
    strhtml.Append("--------<br/>");

    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));    
    
    
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{




    strhtml.Append("<div class=\"subtitle\">��Ϸ������������Ա��̨</div>");
    
  
    //��ʾ����
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("00.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�������ݹ���</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("��Ϸ������Ҫվ����ݹ���<br/>");
    strhtml.Append("</div>");
    
    
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");

    strhtml.Append("</div></div>");
   

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
