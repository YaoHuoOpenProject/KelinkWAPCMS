<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_bet.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.admin_bet" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("��ʷ����|��ʷ����|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append("ɾ���ɹ���");

        strhtml.Append("</b> <br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap&amp;sid=" + this.sid + "\">��������</a>|��������");
    strhtml.Append("<br/>--------<br/>");
    //��ʾ�����
    strhtml.Append("���:<input type=\"text\" name=\"toyears" + r + "\" size=\"4\" value=\"" + toyears + "\"/> ");
    strhtml.Append("�ں�:<input type=\"text\" name=\"content" + r + "\" size=\"4\" value=\"" + content + "\"/><br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/marksix/admin_bet.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<postfield name=\"toyears\" value=\"$(toyears" + r + ")\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>��ѯ</anchor>");


    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">�ֹ��������</a><br/>");
    strhtml.Append("��������п�����¼��<br/>");
    strhtml.Append("��|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=0&amp;sid=" + this.sid + "\">��</a><br/>");
    strhtml.Append("�����������ע��¼��<br/>");
    strhtml.Append("��|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=1&amp;sid=" + this.sid + "\">��</a><br/>");
    //strhtml.Append("����ն����¼��<br/>");
    //strhtml.Append("��|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">��</a><br/>");
    //strhtml.Append("��<a href=\"" + this.http_start + "bbs/marksix/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">��������</a>��<br/>");

    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }



        if (listVo[i].state == 0)
        {

            strhtml.Append(listVo[i].years + "���" + listVo[i].period + "��:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "&amp;sid=" + sid + "\">������" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">�޸�</a>]");
        }
        else
        {
            strhtml.Append(listVo[i].years + "���" + listVo[i].period + "��:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "&amp;sid=" + sid + "\">" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "[��" + listVo[i].ballTeMa + "]" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            if (listVo[i].state == 1)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">�޸�</a>]");

                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_Win.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">����</a>]");
            }
        }
        strhtml.Append("<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<b>���޼�¼��</b><br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<b>����״̬˳��</b>��<br/>0.��ע(���޸�)��1.�������� �������� 2.�ѽ���(��ɾ��,��Ա�ɶҽ�)<br/><br/>");
    strhtml.Append("<b>�ֶ��������</b>��<br/>��ǰ���м�¼�в����ڣ���ע��״̬ʱ��������<br/><br/>");
    strhtml.Append("<b>�ֶ��޸�����</b>��<br/>״̬��0.��ע  �� 1.��������  �����޸Ĳ�����<br/><br/>");
    strhtml.Append("<b>�ֶ��ҽ�����</b>��<br/>״̬�� 1.�������� �ɶҽ�������");


    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\"><a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap&amp;sid="+this.sid+"\">��������</a>|��������</div>");
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
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "bbs/marksix/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("���:<input type=\"text\" name=\"toyears\" size=\"4\" value=\"" + toyears + "\"/> �ں�:<input type=\"text\" name=\"content\" size=\"4\" value=\"" + content + "\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"��ѯ\"/></form> ");
  
 
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/book_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">�ֹ��������</a><br/>");
    strhtml.Append("��������п�����¼��<br/>");
    strhtml.Append("��|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=0&amp;sid=" + this.sid + "\">��</a><br/>");
    strhtml.Append("�����������ע��¼��<br/>");
    strhtml.Append("��|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=1&amp;sid=" + this.sid + "\">��</a><br/>");
   // strhtml.Append("����ն����¼��<br/>");
   // strhtml.Append("��|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">��</a><br/>");
   // strhtml.Append("��<a href=\"" + this.http_start + "bbs/marksix/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2&amp;sid=" + this.sid + "\">��������</a>��<br/>");

    strhtml.Append("</div>");
    //��ʾ�б�

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        
        
        
        if (listVo[i].state == 0)
        {
            
            strhtml.Append(listVo[i].years + "���" + listVo[i].period + "��:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "&amp;sid=" + sid + "\">������" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            strhtml.Append("[<a href=\""+this.http_start+"bbs/marksix/book_modify.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+listVo[i].id+"&amp;sid="+this.sid+"\">�޸�</a>]");
        }
        else
        {
            strhtml.Append(listVo[i].years + "���" + listVo[i].period + "��:<a href=\"" + http_start + "bbs/marksix/book_list_bet.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;toyear="+listVo[i].years+"&amp;content="+listVo[i].period+"&amp;sid=" + sid + "\">" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "[��" + listVo[i].ballTeMa + "]" + "</a>(" + GamesClassManager.Tool.MarkSix_state(listVo[i].state) + ")");
            if (listVo[i].state == 1)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">�޸�</a>]");
       
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/marksix/book_Win.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "&amp;sid=" + this.sid + "\">����</a>]");
            }
        }
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("<b>����״̬˳��</b>��<br/>0.��ע(���޸�)��1.�������� �������� 2.�ѽ���(��ɾ��,��Ա�ɶҽ�)<br/><br/>"); 
    strhtml.Append("<b>�ֶ��������</b>��<br/>��ǰ���м�¼�в����ڣ���ע��״̬ʱ��������<br/><br/>");
    strhtml.Append("<b>�ֶ��޸�����</b>��<br/>״̬��0.��ע  �� 1.��������  �����޸Ĳ�����<br/><br/>");
    strhtml.Append("<b>�ֶ��ҽ�����</b>��<br/>״̬�� 1.�������� �ɶҽ�������");
    

    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");

    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
