<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_doit.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="������������";

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "NULL")
    {
        
        strhtml.Append("����¼�����Ϊ�գ�  ");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "WAITING")
    {
        
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
   

    }

    else if (this.INFO == "NUMBER")
    {

        strhtml.Append("<b>ֻ��¼����ֵ�����ڷ�Χ��</b><br/>");

    }
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<b>��Ǹ�����" + siteVo.sitemoneyname + "�����ˣ�</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("��ע�ɹ���<a href=\"" + this.http_start + "games/ball/super_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">����</a><br/>");

    }


    if (this.INFO != "OK")
    {
       
        strhtml.Append("������ѡ��" + min_ball + "������,���շ���������ѡ��ı������Ϊ׼.");
        strhtml.Append("<br/>----------<br/>");

       
        int kk = 0;
        for (int i = 0; listVo != null && i < listVo.Count; i++)
        {

            strhtml.Append("��������" + (i + 1) + ":" + listVo[i].payview);

            strhtml.Append("<br/>[<a href=\"" + this.http_start + "games/ball/super_doit.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">ɾ��</a>.<a href=\"" + this.http_start + "games/ball/super_book_view.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">�޸�</a>]");
            strhtml.Append("<br/>----------<br/>");
            kk++;


        }
        long yy = max_ball - kk;
        if (yy > 0)
        {
            for (int i = 0; i < yy; i++)
            {

                strhtml.Append("��������" + (kk + 1) + ":");

                strhtml.Append("[<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">ѡ��</a>]");
                strhtml.Append("<br/>----------<br/>");
                kk++;


            }

        }



       // strhtml.Append("----------<br/>");
        
        strhtml.Append("��������" + userVo.money + "��" + siteVo.sitemoneyname + "��<br/>");

        strhtml.Append("Ͷע���:<input type=\"text\" name=\"mymoney" + r + "\" value=\"" + min + "\" size=\"6\"/>��" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

        strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/super_doit_go.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"go\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"0\"/>");
        strhtml.Append("<postfield name=\"paytype\" value=\"" + paytype + "\"/>");
        strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
        strhtml.Append("<postfield name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>ȷ��Ͷע</anchor><br/>");

        

    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">�����ϼ�</a> ");
    
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
    strhtml.Append(this.ERROR);
    if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("����¼�����Ϊ�գ�  ");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
        strhtml.Append("</div>");

    }

    else if (this.INFO == "NUMBER")
    {

        strhtml.Append("<div class=\"tip\"><b>ֻ��¼����ֵ�����ڷ�Χ��</b></div>");

    }
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<div class=\"tip\"><b>��Ǹ�����" + siteVo.sitemoneyname + "�����ˣ�</b></div>");
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">��ע�ɹ���<a href=\"" + this.http_start + "games/ball/super_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">����</a></div>");

    }


    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("������ѡ��" + min_ball + "������,���շ���������ѡ��ı������Ϊ׼.");
        strhtml.Append("</div>");
        
        strhtml.Append("<div class=\"content\">");
        int kk = 0;
        for (int i = 0; listVo != null && i < listVo.Count; i++)
        {

            strhtml.Append("��������" + (i + 1) + ":"+listVo[i].payview);

            strhtml.Append("<br/>[<a href=\"" + this.http_start + "games/ball/super_doit.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">ɾ��</a>.<a href=\"" + this.http_start + "games/ball/super_book_view.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">�޸�</a>]");
            strhtml.Append("<br/>----------<br/>");
            kk++;


        }
        long yy = max_ball - kk;
        if (yy > 0)
        {
            for (int i = 0; i < yy; i++)
            {

                strhtml.Append("��������" + (kk + 1) + ":");

                strhtml.Append("[<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">ѡ��</a>]");
                strhtml.Append("<br/>----------<br/>");
                kk++;


            }

        }
        
        
        
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("��������" + userVo.money + "��" + siteVo.sitemoneyname + "��<br/>");
      
        strhtml.Append("<form name=\"gt\" action=\"" + http_start + "games/ball/super_doit_go.aspx\" method=\"post\">");

        strhtml.Append("Ͷע���:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>��" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"go\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"0\" />");
        strhtml.Append("<input type=\"hidden\" name=\"paytype\" value=\"" + this.paytype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + this.ptype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + this.page + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\" />");
        strhtml.Append("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("ȷ��Ͷע|ȷ��Ͷע|ȷ��Ͷע") + "\"/>");
        strhtml.Append("</form>");

        strhtml.Append("</div>");

    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">�����ϼ�</a> ");

    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
