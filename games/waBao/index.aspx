<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("�ڱ�����", wmlVo));//��ʾͷ    
                                                                                                                                                               
if (ver == "1")
{

    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //��ʾ���
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

   


    //��ʾ����
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");

    strhtml.Append("<br/>�ҵ�Ͷע:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ѿ�</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ</a>");
    strhtml.Append("<br/>�ҵĶҽ�:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�Ѷ�</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ȥ�ҽ�</a>");

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("��<b>" + bookVo.period + "</b>�ڻ���" + WapTool.DateToString(this.leftTime, base.lang, 0) + " <a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a><br/>");

    strhtml.Append("Ѻ:");
    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=1&amp;id=" + bookVo.id + "\">��С</a> ");
    }
    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=17&amp;id=" + bookVo.id + "\">��˫</a> ");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=14&amp;id=" + bookVo.id + "\">����</a> ");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=15&amp;id=" + bookVo.id + "\">ָ����</a> ");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=16&amp;id=" + bookVo.id + "\">���ⱪ</a> ");
    }
    strhtml.Append("<br/>");
    strhtml.Append("Ѻ�ܺ�:<br/>");

    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=2&amp;id=" + bookVo.id + "\">9-12</a> ");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=3&amp;id=" + bookVo.id + "\">8,13</a> ");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=4&amp;id=" + bookVo.id + "\">7,14</a> ");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=5&amp;id=" + bookVo.id + "\">6,15</a> ");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=6&amp;id=" + bookVo.id + "\">5,16</a> ");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=13&amp;id=" + bookVo.id + "\">4,17</a> ");
    }



    strhtml.Append("<br/>������ע���:" + this.local_money + " ��,");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ϸ</a>");
    strhtml.Append("<br/>----------<br/>");

 




    //��ʾ�б�    
    strhtml.Append("���ڿ�����");
    strhtml.Append("<a href=\"" + http_start + "games/waBao/Rank_list.aspx?nid=waBao&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ</a>.<a href=\"" + this.http_start + "games/waBao/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");



    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (listVo[i].state == 0)
        {
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/waBao/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].years + "���" + listVo[i].period + "��:" + listVo[i].ball1 + "," + listVo[i].ball2 + "," + listVo[i].ball3 + "|" + listVo[i].ball4 + "|" + listVo[i].ball5 + "|" + listVo[i].ball6);

            if (listVo[i].ball7 != "")
            {
                strhtml.Append("|" + listVo[i].ball7);
            }
            if (listVo[i].ball8 != "")
            {
                strhtml.Append("|" + listVo[i].ball8);
            }
            strhtml.Append("</a>");
        }
        strhtml.Append("<br/>");

    }







   
    if (this.content != "")
    {
        strhtml.Append(this.content);
    }

    strhtml.Append("----------<br/>");
    strhtml.Append("ҳ������ <a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a>");
    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" /><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"waBao\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>����</anchor>");
    strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">����...</a><br/>");
       
    
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
           // strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?id=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��������...</a><br/>");
        }

    }

 
    
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {

        strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/waBao/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����ע��¼</a>��<br/>");
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
    //long ll = 0;
    //ll = Convert.ToInt64(Double.Parse("100") * Double.Parse("1.222") * 95 / 100);
    
    //Response.Write(ll+"-->");

    if (this.ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">" + this.ERROR + "</div>");
    }
    //��ʾ���
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop);
    }
    strhtml.Append("<div class=\"subtitle\">�ڱ�����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");

    strhtml.Append("<br/>�ҵ�Ͷע:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ѿ�</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ</a>");
    strhtml.Append("<br/>�ҵĶҽ�:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�Ѷ�</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ȥ�ҽ�</a>");
    strhtml.Append("</div>");
    //strhtml.Append("<div class=\"title\">�ڱ�����</div>");
    strhtml.Append("<div class=\"subtitle\">��<b>" + bookVo.period + "</b>�ڻ���" + WapTool.DateToString(this.leftTime, base.lang, 0) + " <a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("Ѻ:");
    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=1&amp;id=" + bookVo.id + "\">��С</a> ");
    }
    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=17&amp;id=" + bookVo.id + "\">��˫</a> ");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=14&amp;id=" + bookVo.id + "\">����</a> ");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=15&amp;id=" + bookVo.id + "\">ָ����</a> ");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=16&amp;id=" + bookVo.id + "\">���ⱪ</a> ");
    }
    strhtml.Append("<br/>");
    strhtml.Append("Ѻ�ܺ�:");

    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=2&amp;id=" + bookVo.id + "\">9-12</a> ");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=3&amp;id=" + bookVo.id + "\">8,13</a> ");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=4&amp;id=" + bookVo.id + "\">7,14</a> ");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=5&amp;id=" + bookVo.id + "\">6,15</a> ");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=6&amp;id=" + bookVo.id + "\">5,16</a> ");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=13&amp;id=" + bookVo.id + "\">4,17</a> ");
    }
    
    
  
   strhtml.Append("<br/>������ע���:" + this.local_money + " ��,");
   strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ϸ</a>");
   strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҵ�δ��Ͷע</a>��<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷͶע</a>");
    strhtml.Append("</div>");
    
    
    
    //��ʾ�б�    
    strhtml.Append("<div class=\"subtitle\">���ڿ�����");
    strhtml.Append("<a href=\"" + http_start + "games/waBao/Rank_list.aspx?nid=waBao&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ</a>.<a href=\"" + this.http_start + "games/waBao/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        
        if (listVo[i].state == 0)
        {
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/waBao/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].years + "���" + listVo[i].period + "��:" + listVo[i].ball1 + "," + listVo[i].ball2 + "," + listVo[i].ball3 + "|" + listVo[i].ball4 + "|" + listVo[i].ball5 + "|" + listVo[i].ball6);

            if (listVo[i].ball7 != "")
            {
                strhtml.Append("|" + listVo[i].ball7);
            }
            if (listVo[i].ball8 != "")
            {
                strhtml.Append("|" + listVo[i].ball8);
            }
            strhtml.Append("</a>");
        }
        strhtml.Append("<br/>");
      
    }

    

    



    strhtml.Append("</div>");

    if (this.content != "")
    {
        strhtml.Append(this.content);
    }
    strhtml.Append("<div class=\"subtitle\">���콻�� <a class=\"urlbtn\" href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">ˢ��</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"waBao\"/>");
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
        }

    }

    strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">�鿴����...</a></div>");

    strhtml.Append("</div>");

    
    
    /*
    //��ʾ����
    //strhtml.Append("<div class=\"subtitle\">�ҵ���Ϣ</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("��ӭ����<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + WapTool.GetColorNickName(userVo.idname, userVo.nickname, lang, ver) + "</a> <br/>");
    if (userVo.userid == 0)
    {
        strhtml.Append("����<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode("games/gamesindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">��¼</a>��");
    }
    else
    {
        strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid="+this.classid+"&amp;key=" + this.userid + "&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҵ�δ��Ͷע</a>��<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷͶע</a>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">�� <b>" +lastVo.period  + "</b> �ڿ����������:</div>");
    strhtml.Append("<div class=\"content\"><b>" + lastVo.ball1 + "," + lastVo.ball2 + "," + lastVo.ball3 + " | " + lastVo.ball4 + " (" + lastVo.ball5 + "" + lastVo.ball6 + ")</b><br/>");
    strhtml.Append("״̬:<b>" + GamesClassManager.Tool.MarkSix_state (lastVo.state)+ "</b><br/>");
    strhtml.Append("��������:"+this.last_people+"<br/>");
    strhtml.Append("��ע���:" + this.last_money + " ��"+siteVo.sitemoneyname+"<br/>");
    strhtml.Append("��עע��:" + this.last_doit + "<br/>");
    strhtml.Append("�н�����:" + this.last_people_win + "<br/>");
    strhtml.Append("�н�ע��:" + this.last_doit_win + "<br/>");
    strhtml.Append("�н�����:" + this.last_money_win + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">����Ϊ: <b>" + bookVo.period + "</b> ��</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("����ʱ��:" + string.Format("{0:yyyy-MM-dd HH:mm}", bookVo.OpenTime) + "<br/>");
    strhtml.Append("״̬:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
    strhtml.Append("��������:" + this.local_people + "<br/>");
    strhtml.Append("��ע���:" + this.local_money + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("��עע��:" + this.local_doit + "<br/>");
    strhtml.Append("����" + WapTool.DateToString(this.leftTime, base.lang, 0) + "����,<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">��ˢ�¡�</a> ");
    strhtml.Append("</div>");
    //��ʾ�б�    
    strhtml.Append("<div class=\"subtitle\">��Ҫ��ע</div>");
    strhtml.Append("<div class=\"content\">");

    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=1&amp;id=" + bookVo.id + "\">��С</a> (1��" + type1 + ")<br/>");
    }
    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=17&amp;id=" + bookVo.id + "\">��˫</a> (1��" + type17 + ")<br/>");
    }
    
    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=2&amp;id=" + bookVo.id + "\">�ܺ�:9-12</a> (1��" + type2 + ")<br/>");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=3&amp;id=" + bookVo.id + "\">�ܺ�:8,13</a> (1��" + type3 + ")<br/>");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=4&amp;id=" + bookVo.id + "\">�ܺ�:7,14</a> (1��" + type4 + ")<br/>");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=5&amp;id=" + bookVo.id + "\">�ܺ�:6,15</a> (1��" + type5 + ")<br/>");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=6&amp;id=" + bookVo.id + "\">�ܺ�:5,16</a> (1��" + type6 + ")<br/>");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=13&amp;id=" + bookVo.id + "\">�ܺ�:4,17</a> (1��" + type13 + ")<br/>");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=14&amp;id=" + bookVo.id + "\">����</a> (1��" + type14 + ")<br/>");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=15&amp;id=" + bookVo.id + "\">ָ������</a> (1��" + type15 + ")<br/>");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=16&amp;id=" + bookVo.id + "\">���ⱪ��</a> (1��"+type16+")<br/>");
    }
    
    
    strhtml.Append("<b>[����]��</b><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?toyear="+DateTime.Now.Year.ToString()+"&amp;content="+bookVo.period+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��עͳ��</a>");
    strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��¼</a>");
    
  
    
    
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">Ͷע�ο�</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\""+this.http_start+"games/waBao/rank.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">���������а�<a/><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ����</a>��<a href=\"" + this.http_start + "games/waBao/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ϸ����</a><br/>");
    strhtml.Append("</div>");
    if (this.content != "")
    {        
        strhtml.Append(this.content);    
    }
    strhtml.Append("<div class=\"subtitle\">���ľ����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<input type=\"text\"  name=\"content\" size=\"10\" value=\"\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"waBao\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("���ٷ���|���ٷ���|submit") + "\"/></form>");
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
            strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">��������...</a><br/>");
        }

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">�������</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=waBao&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">Ӯ������</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=waBao&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">׬������</a>");
    strhtml.Append("</div>");
     */ 
    
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��<a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/waBao/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����ע��¼</a>��<br/>");
        strhtml.Append("</div>");
    }
    
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">������Ϸ����</a>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");

    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
