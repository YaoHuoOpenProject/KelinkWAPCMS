<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.ball.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();



Response.Write(WapTool.showTop("�ʹ���ʾ���", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��<br/>");

    strhtml.Append("�ҵ����Ͷע:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">��ʷ</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҽ�</a><br/>");

    strhtml.Append("�ҵĳ�����Ͷע:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">��ʷ</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҽ�</a><br/>");

    strhtml.Append("----------<br/>");
    //��ʾ����



    if (this.ptype == "0")
    {
        strhtml.Append("ȫ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">ȫ��</a>");
    }
    if (this.ptype == "1")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">ˢ��</a>");


    strhtml.Append("<br/>");
    strhtml.Append("ǿ��:<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">��������</a>");
    if (p_ison == "1")
    {
        strhtml.Append(".�ߵ�");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=1\">�ߵ�</a>");
    }


    strhtml.Append("<br/>��������<input type=\"text\" name=\"p_one" + r + "\" size=\"8\" value=\"" + this.p_one + "\" />");

    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/index.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"p_ison\" value=\"" + p_ison + "\"/>");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
    strhtml.Append("<postfield name=\"p_one\" value=\"$(p_one" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>��ѯ</anchor>");
    
   

    strhtml.Append("<br/>----------<br/>");





    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        indexs = indexs + kk;
        if (i % 2 == 0)
        {
           // strhtml.Append("<div class=\"line1\">");
        }
        else
        {
           // strhtml.Append("<div class=\"line2\">");
        }

        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            if (i != 0)
            {
                if (string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) != string.Format("{0:MM��dd��}", listVo[i - 1].p_TPRtime))
                {

                    strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");

                }
            }
            else
            {
                strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");
            }

            strhtml.Append(string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + "<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + listVo[i].p_type + "&amp;id=" + listVo[i].ID + "&amp;backtype=0&amp;page=" + this.CurrentPage + "\">[" + listVo[i].p_title + "]" + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");


            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{��}");
            }
        }
        strhtml.Append("<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>���޵������¼�¼��</b><br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    strhtml.Append("----------<br/>");


    strhtml.Append("<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">���¼�¼</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/help.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ϸ����</a>");
    strhtml.Append("<br/>----------<br/>");

    strhtml.Append("����:");
    if (this.isclose != "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">{�ر�����}</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">{��������}</a>");

    }
    strhtml.Append("<br/>");

    if (this.isclose == "0")
    {

        strhtml.Append("<b>���ľ����</b><br/>");
        strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" size=\"8\" maxlength=\"200\"/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"nid\" value=\"ball\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>����</anchor>");
        strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=ball&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">����...</a><br/>");

        //strhtml.Append("<br/>");
        if (showRe > 0)
        {
            for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
                //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
                strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>:");

                strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");

            }

            if (relistVo == null)
            {
                strhtml.Append("���������¼��<br/>");
            }
            else
            {
                //strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=happyTen&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��������...</a><br/>");
            }

        }
        //strhtml.Append("<br/>");
    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("----------<br/>");
        strhtml.Append("��<a href=\"" + this.http_start + "games/ball/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">��������</a>.");
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">���¹���</a>��");
        strhtml.Append("<br/>");
    }
    //������ť
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    strhtml.Append("<div class=\"subtitle\">�ʹ���ʾ���</div>");

    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��<br/>");

    strhtml.Append("�ҵ����Ͷע:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">��ʷ</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҽ�</a><br/>");

    strhtml.Append("�ҵĳ�����Ͷע:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">��ʷ</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҽ�</a><br/>");
  
    strhtml.Append("</div>");
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">");


    if (this.ptype == "0")
    {
        strhtml.Append("ȫ��");
    }
    else
    {
        strhtml.Append("<a href=\""+this.http_start+"games/ball/index.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;ptype=0&amp;sid="+this.sid+"\">ȫ��</a>");
    } 
    if (this.ptype == "1")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">ˢ��</a>");

  
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("ǿ��:<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">��������</a>");
    if (p_ison == "1")
    {
        strhtml.Append(".�ߵ�");
    }
    else  
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"&amp;p_ison=1\">�ߵ�</a>");
    }

    
    strhtml.Append("<br/><form name=\"f\" aciont=\"" + http_start + "games/ball/index.aspx\" method=\"get\">");
    strhtml.Append("��������:<input type=\"text\" name=\"p_one\" size=\"5\" value=\"" + this.p_one + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"b\" value=\"��ѯ\" />");    
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"p_ison\" value=\"" + p_ison + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    
    strhtml.Append("</div>");
    

  
    

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        indexs = indexs + kk;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }

        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            if (i != 0)
            {
                if (string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) != string.Format("{0:MM��dd��}", listVo[i - 1].p_TPRtime))
                {

                    strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");

                }
            }
            else
            {
                strhtml.Append(string.Format("{0:MM��dd��}", listVo[i].p_TPRtime) + "<br/>");
            }

            strhtml.Append(string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + "<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + listVo[i].p_type + "&amp;id=" + listVo[i].ID + "&amp;backtype=0&amp;page=" + this.CurrentPage + "\">[" + listVo[i].p_title + "]" + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");


            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{��}");
            }
        }
        strhtml.Append("</div>");

    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޵������¼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"content\">");
   

    strhtml.Append("<a href=\""+this.http_start+"games/ball/ball_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">���¼�¼</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/help.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ϸ����</a>");
     strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"subtitle\">����:");
    if (this.isclose != "1")
    {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison="+this.p_ison+"\">{�ر�����}</a>");
    }
    else
    {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">{��������}</a>");

    }
    strhtml.Append("</div>");

    if (this.isclose == "0")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
        strhtml.Append("<input type=\"text\"  name=\"content\"  value=\"\" />");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"ball\"/>");
        strhtml.Append("<br/><input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|submit") + "\"/></form>");
        strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=ball&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">����...</a><br/>");

        //strhtml.Append("<br/>");
        if (showRe > 0)
        {
            for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
                //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
                strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>:");

                strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");

            }

            if (relistVo == null)
            {
                strhtml.Append("���������¼��<br/>");
            }
            else
            {
                //strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=happyTen&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��������...</a><br/>");
            }

        }
        strhtml.Append("</div>");
    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("��<a href=\"" + this.http_start + "games/ball/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">��������</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">���¹���</a>��");
    strhtml.Append("</div>");
    }
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
