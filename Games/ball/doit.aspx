<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.ball.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=bookVo.p_one + "VS" +bookVo.p_two;
if (this.INFO == "OK")
{
    wmlVo.timer = "1";
    wmlVo.strUrl = "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype ;

}

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "NULL")
    {
      
        strhtml.Append("*����¼�����Ϊ�գ�  ");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "WAITING")
    {

        strhtml.Append("*<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
        strhtml.Append("<br/>");

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
        strhtml.Append("��ע�ɹ���<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">����</a><br/>");

    }


    if (this.INFO != "OK")
    {


       
        strhtml.Append(bookVo.p_title + ":");
        strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
        strhtml.Append("<br/>����:" + bookVo.p_TPRtime);
        strhtml.Append("<br/>����״̬:" + bookVo.p_once);
        strhtml.Append("<br/>��ʱ�ȷ�:" + bookVo.p_result_temp1 + ":" + bookVo.p_result_temp2);
        strhtml.Append("<br/>----------<br/>");
       
        if (paytype == "1")
        {
            strhtml.Append("������[");

            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }


            strhtml.Append("]ѹ[" + bookVo.p_one + "]����(" + tVo.p_one_lu.ToString("f2") + ")");

        }
        else if (paytype == "2")
        {
            strhtml.Append("������[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }
            strhtml.Append("]ѹ[" + bookVo.p_two + "]����(" + tVo.p_two_lu.ToString("f2") + ")");
        }
        else if (paytype == "3")
        {
            strhtml.Append("��С��[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("]ѹ[��]����(" + tVo.p_big_lu.ToString("f2") + ")");
        }
        else if (paytype == "4")
        {
            strhtml.Append("��С��[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("��С��ѹ[С]����(" + tVo.p_small_lu.ToString("f2") + ")");
        }
        else if (paytype == "5")
        {
            strhtml.Append("��׼��ѹ[��ʤ]����(" + tVo.p_bzs_lu.ToString("f2") + ")");
        }
        else if (paytype == "6")
        {
            strhtml.Append("��׼��ѹ[ƽ��]����(" + tVo.p_bzp_lu.ToString("f2") + ")");
        }
        else if (paytype == "7")
        {
            strhtml.Append("��׼��ѹ[��ʤ]����(" + tVo.p_bzx_lu.ToString("f2") + ")");
        }
        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("��������" + userVo.money + "��" + siteVo.sitemoneyname + "��<br/>");
        strhtml.Append("����" + WapTool.DateToString(this.leftTime2, base.lang, 0) + "��ֹͶע��<br/>");

        strhtml.Append("Ͷע���:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>��" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
       
        strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"goadd\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"paytype\" value=\"" + paytype + "\"/>");
        strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
        strhtml.Append("<postfield name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>ȷ��Ͷע</anchor>");
        


        strhtml.Append("<br/>");

    }

    strhtml.Append("<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">�����ϼ�</a> ");
    
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
        strhtml.Append("<div class=\"tip\">��ע�ɹ���<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype+"\">����</a></div>");

    }


    if (this.INFO != "OK")
    {
        
        
        strhtml.Append("<div class=\"content\">");
        strhtml.Append(bookVo.p_title + ":");
        strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
        strhtml.Append("<br/>����:" + bookVo.p_TPRtime);
        strhtml.Append("<br/>����״̬:" + bookVo.p_once);
        strhtml.Append("<br/>��ʱ�ȷ�:" + bookVo.p_result_temp1 + ":" + bookVo.p_result_temp2);
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\">");
        if (paytype == "1")
        {
            strhtml.Append("������[");

            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }


            strhtml.Append("]ѹ[" + bookVo.p_one + "]����(" + tVo.p_one_lu.ToString("f2") + ")");

        }
        else if (paytype == "2")
        {
            strhtml.Append("������[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }
            strhtml.Append("]ѹ[" + bookVo.p_two + "]����(" + tVo.p_two_lu.ToString("f2") + ")");
        }
        else if (paytype == "3")
        {
            strhtml.Append("��С��[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("]ѹ[��]����(" + tVo.p_big_lu.ToString("f2") + ")");
        }
        else if (paytype == "4")
        {
            strhtml.Append("��С��[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("��С��ѹ[С]����(" + tVo.p_small_lu.ToString("f2") + ")");
        }
        else if (paytype == "5")
        {
            strhtml.Append("��׼��ѹ[��ʤ]����(" + tVo.p_bzs_lu.ToString("f2") + ")");
        }
        else if (paytype == "6")
        {
            strhtml.Append("��׼��ѹ[ƽ��]����(" + tVo.p_bzp_lu.ToString("f2") + ")");
        }
        else if (paytype == "7")
        {
            strhtml.Append("��׼��ѹ[��ʤ]����(" + tVo.p_bzx_lu.ToString("f2") + ")");
        }
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("��������" + userVo.money + "��" + siteVo.sitemoneyname + "��<br/>");
        strhtml.Append("����" + WapTool.DateToString(this.leftTime2, base.lang, 0) + "��ֹͶע��<br/>");

        strhtml.Append("<form name=\"gt\" action=\"" + http_start + "games/ball/doit.aspx\" method=\"post\">");

        strhtml.Append("Ͷע���:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>��" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goadd\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + this.id + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"paytype\" value=\"" + this.paytype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + this.ptype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + this.page + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\" />");
        strhtml.Append("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("ȷ��Ͷע|ȷ��Ͷע|ȷ��Ͷע") + "\"/>");
        strhtml.Append("</form>");

        strhtml.Append("</div>");

    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">�����ϼ�</a> ");

    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
