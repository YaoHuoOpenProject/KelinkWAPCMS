<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.apple.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("ƻ������Ϸ", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //��ʾ���
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

    strhtml.Append("<b>ƻ������Ϸ</b><br/>");

    strhtml.Append("����Ͷע����:" + configVo.todayTimes + "�� <br/>");
    strhtml.Append("����Ͷע���:" + configVo.todayMoney + "��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("--------<br/>");

    //��ʾ����
    strhtml.Append("<b>�ҵ���Ϣ</b>");
    strhtml.Append("<br/>");
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
 
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/apple/book_list.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҵ�Ͷע��¼</a>|<a href=\"" + this.http_start + "games/apple/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");

    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<b>��" + bookVo.appleID + "��-<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></b>");

    strhtml.Append("<br/>����" + WapTool.DateToString(this.leftTime, base.lang, 0) + "����,��λ�͹ٸϿ����������ֿ�!");
    //��ʾ�б�    
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=1&amp;id=" + bookVo.appleID + "\">��ע</a><b>ƻ��</b>��" + this.type1 + "(" + bookVo.type1 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=2&amp;id=" + bookVo.appleID + "\">��ע</a><b>ľ��</b>��" + this.type2 + "+<b>Сľ</b>��" + this.type3 + "(" + bookVo.type2 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=4&amp;id=" + bookVo.appleID + "\">��ע</a><b>����</b>��" + this.type4 + "+<b>С��</b>��" + this.type5 + "(" + bookVo.type4 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=6&amp;id=" + bookVo.appleID + "\">��ע</a><b>â��</b>��" + this.type6 + "+<b>Сâ</b>��" + this.type7 + "(" + bookVo.type6 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=8&amp;id=" + bookVo.appleID + "\">��ע</a><b>˫��</b>��" + this.type8 + "+<b>С��</b>��" + this.type9 + "(" + bookVo.type8 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=10&amp;id=" + bookVo.appleID + "\">��ע</a><b>����</b>��" + this.type10 + "+<b>С��</b>��" + this.type11 + "(" + bookVo.type10 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=12&amp;id=" + bookVo.appleID + "\">��ע</a><b>˫��</b>��" + this.type12 + "+<b>С��</b>��" + this.type13 + "(" + bookVo.type12 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=14&amp;id=" + bookVo.appleID + "\">��ע</a><b>Ԫ��</b>��" + this.type14 + "(" + bookVo.type14 + "ע)<br/>");



    strhtml.Append("<a href=\"" + this.http_start + "games/apple/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + bookVo.appleID + "\">����Ͷע</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "games/apple/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">Ͷע��¼</a>");

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/apple/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");

    strhtml.Append("/<a href=\"" + this.http_start + "games/apple/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ϸ����</a><br/>");


    if (lastVo != null)
    {
        strhtml.Append("<b>��" + lastVo.appleID + "�ڿ� " + lastVo.Result + "</b> <a href=\"" + this.http_start + "games/apple/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;towin=1&amp;toid=" + lastVo.appleID + "\">Ӯ��</a>��" + lastVo.winAllMoney + siteVo.sitemoneyname + "<br/>");
    }
    //strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>���ľ����</b><br/>");    
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" size=\"8\" maxlength=\"200\"/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"apple\"/>");
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
            strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=apple&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��������...</a><br/>");
        }

    }
    //strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>�������</b>");
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=apple&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">Ӯ������</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=apple&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">׬������</a>");
      
    strhtml.Append("<br/>--------<br/>");

    
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        //strhtml.Append("--------<br/>");
        strhtml.Append("��<a href=\"" + this.http_start + "games/apple/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/apple/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����¼</a>��<br/>");
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
    strhtml.Append("<div class=\"subtitle\">ƻ������Ϸ</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("����Ͷע����:" + configVo.todayTimes + "�� <br/>");
    strhtml.Append("����Ͷע����:" + configVo.todayMoney + "��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">�ҵ���Ϣ</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
 
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/apple/book_list.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҵ�Ͷע��¼</a>|<a href=\"" + this.http_start + "games/apple/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">��" + bookVo.appleID + "��-<a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></div>");
    
    strhtml.Append("<div class=\"content\">����"+WapTool.DateToString(this.leftTime,base.lang,0)+"����,��λ�͹ٸϿ����������ֿ�!<br/><br/>");
    //��ʾ�б�    
   // strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=1&amp;id=" + bookVo.appleID + "\">��ע</a><b>ƻ��</b>��"+this.type1+"(" + bookVo.type1 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=2&amp;id=" + bookVo.appleID + "\">��ע</a><b>ľ��</b>��" + this.type2 + "+<b>Сľ</b>��" + this.type3 + "(" + bookVo.type2 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=4&amp;id=" + bookVo.appleID + "\">��ע</a><b>����</b>��" + this.type4 + "+<b>С��</b>��" + this.type5 + "(" + bookVo.type4 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=6&amp;id=" + bookVo.appleID + "\">��ע</a><b>â��</b>��" + this.type6 + "+<b>Сâ</b>��" + this.type7 + "(" + bookVo.type6 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=8&amp;id=" + bookVo.appleID + "\">��ע</a><b>˫��</b>��" + this.type8 + "+<b>С��</b>��" + this.type9 + "(" + bookVo.type8 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=10&amp;id=" + bookVo.appleID + "\">��ע</a><b>����</b>��" + this.type10 + "+<b>С��</b>��" + this.type11 + "(" + bookVo.type10 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=12&amp;id=" + bookVo.appleID + "\">��ע</a><b>˫��</b>��" + this.type12 + "+<b>С��</b>��" + this.type13 + "(" + bookVo.type12 + "ע)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myapple=14&amp;id=" + bookVo.appleID + "\">��ע</a><b>Ԫ��</b>��" + this.type14 + "(" + bookVo.type14 + "ע)<br/>");
    
    
    
    strhtml.Append("<a href=\"" + this.http_start + "games/apple/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + bookVo.appleID + "\">����Ͷע</a>");
    strhtml.Append("/<a href=\"" + this.http_start + "games/apple/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">Ͷע��¼</a>");
    
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/apple/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��ѯ</a>");
    
    strhtml.Append("/<a href=\"" + this.http_start + "games/apple/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ϸ����</a><br/>");
    
    
    if (lastVo != null)
    {
        strhtml.Append("<b>��" + lastVo.appleID + "�ڿ� " + lastVo.Result + "</b> <a href=\"" + this.http_start + "games/apple/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;towin=1&amp;toid=" + lastVo.appleID + "\">Ӯ��</a>��" + lastVo.winAllMoney + siteVo.sitemoneyname + "<br/>");
   }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">���콻�� <a class=\"urlbtn\" href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"apple\"/>");
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
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=apple&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">�鿴����...</a></div>");

        }

    }

   
    strhtml.Append("</div>");

    
    strhtml.Append("<div class=\"subtitle\">�������</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=apple&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">Ӯ������</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=apple&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">׬������</a>");
    strhtml.Append("</div>");
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��<a href=\"" + this.http_start + "games/apple/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/apple/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����¼</a>��<br/>");
        strhtml.Append("</div>");
    }
    
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">������Ϸ����</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
