<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list_bet.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.book_list_bet" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string showtitle="������¼";
if (touserid == this.userid)
{
    showtitle = "�ҵ�Ͷע��¼";
}
Response.Write(WapTool.showTop(showtitle, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("����ɹ���|����ɹ���|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("��˺���ʾ��");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/" + id + "/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "&amp;sid=" + sid + "\">����</a><br/>");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("���ݲ���Ϊ�գ�|���ݲ��ܠ��գ�|The content can not be empty!"));
        strhtml.Append("</b><br/>");


    }
    else if (this.INFO == "ERR_FORMAT")
    {

        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b>");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "WAITING")
    {

        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b>");
        strhtml.Append("<br/>");

    }

    strhtml.Append("�ҵ�Ͷע|<a href=\"" + this.http_start + "bbs/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">��Ҫ�ҽ�</a><br/>");
        
    //��ʾ�����
    strhtml.Append("���:<input type=\"text\" name=\"toyear" + r + "\" size=\"4\" value=\"" + toyear + "\"/> ");
    strhtml.Append("�ں�:<input type=\"text\" name=\"content" + r + "\" size=\"4\" value=\"" + content + "\"/> �淨ID:<input type=\"text\" name=\"types" + r + "\" size=\"4\" value=\"" + types + "\"/><br/>");
    strhtml.Append("��ԱID:<input type=\"text\" name=\"touserid" + r + "\" size=\"10\"  value=\"" + touserid + "\"/><br/>");
    strhtml.Append("״̬:<select name=\"tostate" + r + "\" value=\"" + tostate + "\">");
    strhtml.Append("<option value=\"\">_����</option>");
    strhtml.Append("<option value=\"0\">0_������</option>");
    strhtml.Append("<option value=\"1\">1_�ѿ���</option>");
    strhtml.Append("<option value=\"2\">2_δ�н�</option>");
    strhtml.Append("<option value=\"3\">3_���н�</option>");
    strhtml.Append("<option value=\"4\">4_δ�ҽ�</option>");
    strhtml.Append("<option value=\"5\">5_�Ѷҽ�</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/MarkSix/book_list_bet.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<postfield name=\"toyear\" value=\"$(toyear" + r + ")\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"tostate\" value=\"$(tostate" + r + ")\"/>");
    strhtml.Append("<postfield name=\"types\" value=\"$(types" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>��ѯ</anchor>");

    strhtml.Append("<br/>--------<br/>");
    //��ʾͳ��
    if (WapTool.IsNumeric(toyear) == true && WapTool.IsNumeric(content) == true)
    {
        this.GetLastInfo(toyear, content);
        strhtml.Append("<b>" + toyear + "��" + content + "��ͳ��</b>");
        strhtml.Append("<br/>");
        strhtml.Append("��������:" + this.last_people + "<br/>");
        strhtml.Append("��ע���:" + this.last_money + " ��" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("��עע��:" + this.last_doit + "<br/>");
        strhtml.Append("�н�����:" + this.last_people_win + "<br/>");
        strhtml.Append("�н�ע��:" + this.last_doit_win + "<br/>");
        strhtml.Append("�н�����:" + this.last_money_win + " ��" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("<br/>");

    }

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

        strhtml.Append(string.Format("{0:dd��HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "���" + listVo[i].peroid + "��]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "&amp;sid=" + this.sid + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>Ͷע[" + GamesClassManager.Tool.GetMarkSix_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]��" + listVo[i].num + "ע��ÿע���" + listVo[i].betMoney + "�����:");
        if (listVo[i].state == 0)
        {
            strhtml.Append("������");
        }
        else if (listVo[i].state == 1)
        {
            strhtml.Append("�ѿ���");
        }

        if (listVo[i].state == 1 && listVo[i].GetMoney == 0)
        {
            strhtml.Append("δ�н�");
        }
        if (listVo[i].state == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("�н�");
        }

        if (listVo[i].state == 1 && listVo[i].attribute == 0 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("δ�ҽ�");
        }
        else if (listVo[i].state == 1 && listVo[i].attribute == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("�Ѷҽ�");
        }
        if (listVo[i].GetMoney > 0)
        {
            strhtml.Append("����:" + listVo[i].GetMoney);
        }

        strhtml.Append("��<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bbsid+ "&amp;sid=" + this.sid + "\">�鿴����</a>��");


        strhtml.Append("<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<b>���޼�¼��</b><br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");
    
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + showtitle);
     strhtml.Append("|<a href=\"" + this.http_start + "bbs/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">��Ҫ�ҽ�</a><br/>");
       
    strhtml.Append("</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("����ɹ���|����ɹ���|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("��˺���ʾ��");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "&amp;sid=" + sid + "\">����</a><br/>");
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
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "bbs/marksix/book_list_bet.aspx\" method=\"get\">");
    strhtml.Append("���:<input type=\"text\" name=\"toyear\" size=\"4\" value=\"" + toyear + "\"/> ");

    strhtml.Append("�ں�:<input type=\"text\" name=\"content\" size=\"4\" value=\"" + content + "\"/> �淨ID<input type=\"text\" name=\"types\" size=\"4\" value=\"" + types + "\"/><br/>");
    strhtml.Append("��ԱID:<input type=\"text\" name=\"touserid\" size=\"10\"  value=\"" + touserid + "\"/><br/>");
    strhtml.Append("״̬:<select name=\"tostate\">");
    strhtml.Append("<option value=\"" + tostate + "\">" + tostate + "</option>");
    strhtml.Append("<option value=\"\">_����</option>");
    strhtml.Append("<option value=\"0\">0_������</option>");
    strhtml.Append("<option value=\"1\">1_�ѿ���</option>");
    strhtml.Append("<option value=\"2\">2_δ�н�</option>");
    strhtml.Append("<option value=\"3\">3_���н�</option>");
    strhtml.Append("<option value=\"4\">4_δ�ҽ�</option>");
    strhtml.Append("<option value=\"5\">5_�Ѷҽ�</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"��ѯ\"/></form> ");
  
 
    strhtml.Append("</div>");
    //��ʾͳ��
    if (WapTool.IsNumeric(toyear) == true && WapTool.IsNumeric(content) == true)
    {
        this.GetLastInfo(toyear, content);
        strhtml.Append("<div class=\"subtitle\">"+toyear+"��"+content+"��ͳ��</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("��������:" + this.last_people + "<br/>");
        strhtml.Append("��ע���:" + this.last_money + " ��" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("��עע��:" + this.last_doit + "<br/>");
        strhtml.Append("�н�����:" + this.last_people_win + "<br/>");
        strhtml.Append("�н�ע��:" + this.last_doit_win + "<br/>");
        strhtml.Append("�н�����:" + this.last_money_win + " ��" + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("</div>");

    }

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

        strhtml.Append(string.Format("{0:dd��HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "���" + listVo[i].peroid + "��]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "&amp;sid=" + this.sid + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>Ͷע[" + GamesClassManager.Tool.GetMarkSix_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]��" + listVo[i].num + "ע��ÿע���" + listVo[i].betMoney + "�����:");
        if (listVo[i].state == 0)
        {
            strhtml.Append("������");
        }
        else if (listVo[i].state == 1)
        {
            strhtml.Append("�ѿ���");
        }

        if (listVo[i].state == 1 && listVo[i].GetMoney == 0)
        {
            strhtml.Append("δ�н�");
        }
        if (listVo[i].state == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("�н�");
        }

        if (listVo[i].state == 1 && listVo[i].attribute == 0 && listVo[i].GetMoney>0)
        {
            strhtml.Append("δ�ҽ�");
        }
        else if (listVo[i].state == 1 && listVo[i].attribute == 1 && listVo[i].GetMoney > 0)
        {
            strhtml.Append("�Ѷҽ�");
        }
        if (listVo[i].GetMoney > 0)
        {
            strhtml.Append("����:" + listVo[i].GetMoney);
        }
        strhtml.Append("��<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bbsid + "&amp;sid=" + this.sid + "\">�鿴����</a>��");

        
        
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");
  
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
