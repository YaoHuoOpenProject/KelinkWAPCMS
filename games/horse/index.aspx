<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.horse.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("������Ϸ", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //��ʾ���
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

    strhtml.Append("<b>������Ϸ</b><br/>");

    strhtml.Append("����ѹע����:" + configVo.todayTimes + "�� <br/>");
    strhtml.Append("����ѹע����:" + configVo.todayMoney + "��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("--------<br/>");

    //��ʾ����
    strhtml.Append("<b>�ҵ���Ϣ</b>");
    strhtml.Append("<br/>");
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
 
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/horse/book_list.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҵ�Ͷע��¼</a>|<a href=\"" + this.http_start + "games/horse/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");

    strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>��" + bookVo.periodID + "��-<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></b>");

    strhtml.Append("<br/>����" + WapTool.DateToString(this.leftTime, base.lang, 0) + "����!<br/><img src=\"dm.gif\" alt=\"PIC\"/>");
    //��ʾ�б�    
    strhtml.Append("<br/>");
    strhtml.Append("ѹ<b>1����</b>��" + bookVo.type1Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>2����</b>��" + bookVo.type2Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>3����</b>��" + bookVo.type3Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>4����</b>��" + bookVo.type4Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>5����</b>��" + bookVo.type5Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>6����</b>��" + bookVo.type6Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("<b>1����</b>(1��" + this.type1 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=1&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a><br/>");
    strhtml.Append("<b>2����</b>(1��" + this.type2 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=2&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>3����</b>(1��" + this.type3 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=3&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>4����</b>(1��" + this.type4 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=4&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>5����</b>(1��" + this.type5 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=5&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>6����</b>(1��" + this.type6 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=6&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + bookVo.periodID + "\">����Ͷע</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">Ͷע��¼</a>");

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/horse/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");

    strhtml.Append("/<a href=\"" + this.http_start + "games/horse/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ϸ����</a><br/>");


    if (lastVo != null)
    {
        strhtml.Append("<b>��" + lastVo.periodID + "����" + lastVo.Result + "</b> <a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;towin=1&amp;toid=" + lastVo.periodID + "\">Ӯ��</a>��" + lastVo.winAllMoney + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("<img src=\"" + lastVo.num + ".gif\" alt=\"" + lastVo.num + "\"/><br/>");
    }
    
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>���ľ����</b>");
    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" size=\"8\" maxlength=\"200\"/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"horse\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>�����ύ</anchor>"); 
    strhtml.Append("<br/>");
    if (showRe > 0)
    {
        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
            //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
            strhtml.Append(relistVo[i].content + "(<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>/" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");

        }

        if (relistVo == null)
        {
            strhtml.Append("���������¼��<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=horse&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��������...</a><br/>");
        }

    }
    
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>�������</b>");
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=horse&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">Ӯ������</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=horse&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">׬������</a>");
    
    strhtml.Append("<br/>--------<br/>");

    
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        //strhtml.Append("--------<br/>");
        strhtml.Append("��<a href=\"" + this.http_start + "games/horse/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/horse/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����¼</a>��<br/>");
        strhtml.Append("--------<br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">������Ϸ����</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">��ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    //��ʾ���
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop);
    }
    strhtml.Append("<div class=\"subtitle\">������Ϸ</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("����ѹע����:" + configVo.todayTimes + "�� <br/>");
    strhtml.Append("����ѹע����:" + configVo.todayMoney + "��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">�ҵ���Ϣ</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
 
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/horse/book_list.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҵ�Ͷע��¼</a>|<a href=\"" + this.http_start + "games/horse/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">��" + bookVo.periodID + "��-<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></div>");

    strhtml.Append("<div class=\"content\">����" + WapTool.DateToString(this.leftTime, base.lang, 0) + "����!<br/><img src=\"dm.gif\" alt=\"PIC\"/></div>");
    //��ʾ�б�    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("ѹ<b>1����</b>��" + bookVo.type1Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>2����</b>��" + bookVo.type2Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>3����</b>��" + bookVo.type3Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>4����</b>��" + bookVo.type4Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>5����</b>��" + bookVo.type5Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("ѹ<b>6����</b>��" + bookVo.type6Money + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("<b>1����</b>(1��" + this.type1 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=1&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a><br/>");
    strhtml.Append("<b>2����</b>(1��" + this.type2 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=2&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>3����</b>(1��" + this.type3 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=3&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>4����</b>(1��" + this.type4 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=4&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>5����</b>(1��" + this.type5 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=5&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");
    strhtml.Append("<b>6����</b>(1��" + this.type6 + ")<a href=\"" + this.http_start + "games/horse/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhorse=6&amp;id=" + bookVo.periodID + "\">ѹ" + siteVo.sitemoneyname + "</a> <br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + bookVo.periodID + "\">����Ͷע</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">Ͷע��¼</a>");
    
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/horse/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");
    
    strhtml.Append("/<a href=\"" + this.http_start + "games/horse/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ϸ����</a><br/>");
    
    
    if (lastVo != null)
    {
        strhtml.Append("<b>��" + lastVo.periodID + "����" + lastVo.Result + "</b> <a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;towin=1&amp;toid=" + lastVo.periodID + "\">Ӯ��</a>��" + lastVo.winAllMoney + siteVo.sitemoneyname + "<br/>");
        strhtml.Append("<img src=\"" + lastVo.num + ".gif\" alt=\"" + lastVo.num + "\"/><br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">���콻�� <a class=\"urlbtn\" href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"horse\"/>");
    strhtml.Append("<br/><input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("����|����|submit") + "\"/>");

    strhtml.Append("</form><br/>");
    if (showRe > 0)
    {
        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }
            strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
            //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>:");

            strhtml.Append(relistVo[i].content + " <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + "</span><br/>");
            strhtml.Append("</div>");
        }

        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">���������¼��</div>");
        }
        else
        {
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=horse&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">�鿴����...</a></div>");

        }

    }


 
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">�������</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=horse&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">Ӯ������</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=horse&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">׬������</a>");
    strhtml.Append("</div>");
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��<a href=\"" + this.http_start + "games/horse/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/horse/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����¼</a>��<br/>");
        strhtml.Append("</div>");
    }
    
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">������Ϸ����</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">��ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
