<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.stone.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("ʯͷ��������Ϸ", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //��ʾ���
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

    strhtml.Append("<b>ʯͷ��������Ϸ</b><br/>");
    
    strhtml.Append("���շ������:" + configVo.todayTimes + "�� <br/>");
    strhtml.Append("����ʯͷ����:" + configVo.todayMoney + "��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("--------<br/>");

    //��ʾ����
    strhtml.Append("<b>�ҵ���Ϣ</b><br/>");
    //strhtml.Append("��ӭ<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + userVo.nickname + "</a>,");
    //if (userVo.userid == 0)
    //{
    //    strhtml.Append("����<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode("games/gamesindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">��¼</a>��");
    //}
   // else
    //{
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
 
    //}
    strhtml.Append("<br/>�ҵ�<a href=\"" + this.http_start + "games/stone/book_list.aspx?type=0&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ս��¼</a>|<a href=\"" + this.http_start + "games/stone/book_list.aspx?type=1&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӧս��¼</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/stone/add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\"><img src=\"st.gif\" alt=\"PIC\"/>��Ҫ������ս</a>");
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<b>������ս</b>-<a href=\"" + this.http_start + "games/stone/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a><br/>");
    //��ʾ�б�    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        string del = "";
        if (base.IsCheckManagerLvl("|00|01|", ""))
        {
            del = "[<a href=\"" + this.http_start + "games/stone/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "\">ɾ</a>]";
        }
        strhtml.Append((i + 1) + "."+del+"<a href=\"" + this.http_start + "games/stone/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "\">" + listVo[i].nickName + "(ID" + listVo[i].userid + ")������ս(" + listVo[i].myMoney + siteVo.sitemoneyname + ")</a><br/>");
    }

    if (listVo == null)
    {
        strhtml.Append("������ս��¼��<br/>");
    }
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>���ľ����</b><br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" size=\"8\" maxlength=\"200\"/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"stone\"/>");
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

            strhtml.Append(relistVo[i].content + "(<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>/" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");

        }

        if (relistVo == null)
        {
            strhtml.Append("���������¼��<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=stone&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��������...</a><br/>");
        }

    }
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>�������</b><br/>");

    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=stone&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">Ӯ������</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=stone&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">׬������</a>");
    strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        //strhtml.Append("--------<br/>");
        strhtml.Append("��<a href=\"" + this.http_start + "games/stone/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>��<br/>");
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
    strhtml.Append("<div class=\"subtitle\">ʯͷ��������Ϸ</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("���շ��������"+configVo.todayTimes+"�� <br/>");
    strhtml.Append("����ʯͷ������"+configVo.todayMoney+""+siteVo.sitemoneyname+"<br/>");
    strhtml.Append("</div>");
    
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">�ҵ���Ϣ</div>");
    strhtml.Append("<div class=\"content\">");
    //strhtml.Append("��ӭ<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + userVo.nickname + "</a>,");

    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
 
    strhtml.Append("<br/>�ҵ�<a href=\"" + this.http_start + "games/stone/book_list.aspx?type=0&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ս��¼</a> | <a href=\"" + this.http_start + "games/stone/book_list.aspx?type=1&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӧս��¼</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/stone/add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\"><img src=\"st.gif\" alt=\"PIC\"/>��Ҫ������ս</a>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">������ս <a href=\""+this.http_start+"games/stone/index.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;r="+this.r+"\">ˢ��</a></div>");
    //��ʾ�б�    
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
        string del = "";
        if (base.IsCheckManagerLvl("|00|01|", ""))
        {
            del = "[<a href=\"" + this.http_start + "games/stone/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "\">ɾ</a>]";
        }
        strhtml.Append((i+1)+"."+del+"<a href=\""+this.http_start+"games/stone/doit.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+listVo[i].id+"\">"+listVo[i].nickName+"(ID"+listVo[i].userid+")������ս("+listVo[i].myMoney+siteVo.sitemoneyname+")</a></div>");
    }

    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">������ս��¼��</div>");
    }
    strhtml.Append("<div class=\"subtitle\">���콻����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" required=\"required\" rows=\"5\" class=\"KL_textarea\" style=\"width:96.6%\"></textarea><br/>");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"stone\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("�� ��|����|submit") + "\"/>");
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
            strhtml.Append("<div class=\"more\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=stone&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">�鿴����</a></div>");

        }

    }

   
    strhtml.Append("</div>");

    
    strhtml.Append("<div class=\"subtitle\">�������</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=stone&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">Ӯ������</a> | <a href=\"" + http_start + "games/rank/book_list.aspx?nid=stone&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">׬������</a>");
    strhtml.Append("</div>");
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��<a href=\"" + this.http_start + "games/stone/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>��<br/>");
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
