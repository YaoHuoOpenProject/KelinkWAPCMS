<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_modify.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.book_modify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�޸�����|�޸�����|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    
        strhtml.Append("<b>�����ʰ������</b><br/>");

    


    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">�޸�����</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("�޸ĳɹ���|�޸ĳɹ���|Successfully add"));
       


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "&amp;sid=" + sid + "\">����</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("��ʽ����");
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "EXIST")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�����ˣ�״̬��0.��ע(���޸�) �� 1.��������(�ɶҽ�) �����޸Ĳ�����</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b>");
        strhtml.Append("</div>");

    }
    //��ʾ�����
    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"re\" action=\"" + http_start + "bbs/marksix/book_modify.aspx\" method=\"get\">");
        strhtml.Append("���:<input type=\"text\" name=\"years\" size=\"4\" value=\"" + bookVo.years + "\"/> ");
        strhtml.Append("�ں�:<input type=\"text\" name=\"period\" size=\"4\" value=\"" + bookVo.period + "\"/><br/>");
        strhtml.Append("ƽ��1:<input type=\"text\" name=\"ball1\" size=\"4\" value=\"" + bookVo.ball1 + "\"/><br/>");
        strhtml.Append("ƽ��2:<input type=\"text\" name=\"ball2\" size=\"4\" value=\"" + bookVo.ball2 + "\"/><br/>");
        strhtml.Append("ƽ��3:<input type=\"text\" name=\"ball3\" size=\"4\" value=\"" + bookVo.ball3 + "\"/><br/>");
        strhtml.Append("ƽ��4:<input type=\"text\" name=\"ball4\" size=\"4\" value=\"" + bookVo.ball4 + "\"/><br/>");
        strhtml.Append("ƽ��5:<input type=\"text\" name=\"ball5\" size=\"4\" value=\"" + bookVo.ball5 + "\"/><br/>");
        strhtml.Append("ƽ��6:<input type=\"text\" name=\"ball6\" size=\"4\" value=\"" + bookVo.ball6 + "\"/><br/>");
        strhtml.Append("����:<input type=\"text\" name=\"ballTM\" size=\"4\" value=\"" + bookVo.ballTeMa + "\"/><br/>");
        
        strhtml.Append("����ʱ��:<input type=\"text\" name=\"opentime\" size=\"15\" value=\"" + bookVo.OpenTime + "\"/><br/>");
        strhtml.Append("״̬��<select name=\"state\">");
        strhtml.Append("<option value=\"" + bookVo.state + "\">" + bookVo.state + "</option>");
        strhtml.Append("<option value=\"0\">0_��ע��</option>");
        strhtml.Append("<option value=\"1\">1_����(��)��</option>");
        strhtml.Append("</select>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<br/><input type=\"submit\" name=\"go\" value=\" �� �� \"/> </form> ");
        

        strhtml.Append("</div>");
    }



    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");

    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
