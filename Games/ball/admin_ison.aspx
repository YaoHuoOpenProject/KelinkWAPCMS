<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_ison.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_ison" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="��������";


Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

  
    if (this.INFO == "OK")
    {
        
        strhtml.Append("<b>���óɹ���</b>");
        strhtml.Append("<br/>");
    }



    if (this.INFO != "OK")
    {
        strhtml.Append("ȷ��Ҫת�����ߵ���עģʽ��<br/>");
        Response.Write("����ʱ��<input type=\"text\" name=\"onceTime" + r + "\" value=\"" + bookVo.p_oncetime + "\" /><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "games/ball/admin_ison.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"add\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"onceTime\" value=\"$(onceTime" + r + ")\"/>");  
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>ת��</anchor><br/>");
          
    }

    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id=" + this.id + "" + "\">�����ϼ�</a> ");
   
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
        strhtml.Append("���óɹ���");
        strhtml.Append("</div>");
    }
    
    
    
    if (this.INFO != "OK")
    {
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("ȷ��Ҫת�����ߵ���עģʽ��");
    strhtml.Append("</div>");
    
        strhtml.Append("<div class=\"content\">");
        
        
        strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/ball/admin_ison.aspx\" method=\"post\">");

        strhtml.Append("����ʱ��<input type=\"text\" name=\"onceTime\" value=\"" + bookVo.p_oncetime + "\" /><br/>");
        
        
        strhtml.Append("<br/><input type=\"submit\" name=\"b\" value=\"ת��\" />");

       
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</form>");
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
