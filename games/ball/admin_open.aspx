<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_open.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_open" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="��������";


Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    Response.Write("<br/><a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"&amp;id="+this.id+"&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">����WAP2.0�������</a> <br/>");
   
    
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype="+ptype+"" + "\">�����ϼ�</a> ");

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
    strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
    strhtml.Append("</div>");
    
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("����:"+bookVo.p_TPRtime);
        
        strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/ball/admin_open.aspx\" method=\"post\">");

        strhtml.Append("<br/>*��д�ȷ�<br/><input  type=\"text\" emptyok=\"flase\" name=\"resultone\" value=\"0\"  /><br/>");
        strhtml.Append("��<br/><input  type=\"text\" emptyok=\"false\" name=\"resulttwo\" value=\"0\"  /><br/>");
        strhtml.Append("����ģʽ<br/>");
        strhtml.Append("<select name=\"iType\"><option selected=\"true\" value=\"1\">����ģʽ</option><option  value=\"2\">ƽ��ģʽ</option><option  value=\"3\">��ʱģʽ</option></select><br/>");
        strhtml.Append("��ֹʱ��<input type=\"text\" name=\"oTime\" value=\""+DateTime.Now+"\" /><br/>");
        strhtml.Append("����ԭ��<input type=\"text\" name=\"pSms\" value=\"\" /><br/>");
        if (bookVo.p_ison == 1)
        {
            strhtml.Append("�ߵرȷ�ʱ��(��ʽ2010-10-7 1:00:00#2010-10-7 1:20:00)<br /><textarea  name=\"onceTime\"></textarea>");
        }
        strhtml.Append("<br/><input type=\"submit\" name=\"b\" value=\"ȷ������\" />");

        strhtml.Append("<br/><br/>��ʾ��������ģʽ����ʱ���������ԭ�򣻵�ѡ���ʱģʽʱ������ʱ��ǰ��������������ʱ������ƽ�̷���������ѡ��ƽ��ģʽʱ���ȷ�д��0:0����<br/>");

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
