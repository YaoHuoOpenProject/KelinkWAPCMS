<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_del.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="ɾ������";


Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
     if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("ɾ���ɹ���");
        strhtml.Append("</div>");
    }



     if (this.INFO != "OK")
     {
         strhtml.Append("<b>ȷ��ɾ����</b>");
          strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">ɾ������������ע��¼</a> <br/>");
          strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godelall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">ɾ����������ע��¼</a> <br/>");
     }

     strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "" + "\">�����ϼ�</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(title);
    strhtml.Append("</div>");
    if (ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(ERROR);
        strhtml.Append("</div>");
    }
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("ɾ���ɹ���");
        strhtml.Append("</div>");
    }



    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append("<b>ȷ��ɾ����</b>");
        strhtml.Append("</div>");

        strhtml.Append("<div class=\"content\">");

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">ɾ������������ע��¼</a> <br/>");
        strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godelall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">ɾ����������ע��¼</a> <br/>");



        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id="+this.id+"" + "\">�����ϼ�</a> ");

    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
