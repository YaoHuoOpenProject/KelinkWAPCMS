<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_bet.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.admin_bet" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("��������¼|��������¼|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">��������</a>|������ע����<br/>");
    strhtml.Append("--------<br/>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append("ɾ���ɹ���");
     
        strhtml.Append("</b> <br/>");
    }

    strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/admin_bet.aspx?action=godel&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;typeid=0&amp;sid="+this.sid+"\">������п�����¼</a>��<br/>");
    strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=1\">���������ע��¼</a>��<br/>");
    strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2\">��ն���񵥼�¼</a>��<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2\">��������</a>��<br/>");


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

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\"><a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap&amp;sid="+this.sid+"\">��������</a>|������ע����</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("ɾ���ɹ���");
     

        strhtml.Append("</b> ");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("���ݲ���Ϊ�գ�|���ݲ��ܠ��գ�|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
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
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/waBao/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"godel\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"typeid\" value=\"0\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"������п�����¼\"/></form> ");
    strhtml.Append("<br/><br/>");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/waBao/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"godel\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"typeid\" value=\"1\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"���������ע��¼\"/></form> ");
    strhtml.Append("<br/><br/>");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/waBao/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"godel\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"typeid\" value=\"2\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"��ն���񵥼�¼\"/></form> ");
    strhtml.Append("<br/><br/>--------<br/>");
    strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2\">��������</a>��<br/>");

    strhtml.Append("</div>");


    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
