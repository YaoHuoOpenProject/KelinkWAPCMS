<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.MarkSix.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.title, wmlVo));//��ʾͷ    
                                                                                                                                                          
if (ver == "1")
{

    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //��ʾ���
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

 
    
  
    
   

    
        strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid="+this.classid+"&amp;key=" + this.userid + "&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
   
        strhtml.Append("<br/>�ҵ�Ͷע:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ѿ�</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");
    
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ</a>");
        strhtml.Append("<br/>�ҵĶҽ�:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�Ѷ�</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ȥ�ҽ�</a>");
       
        strhtml.Append("<br/>----------<br/>");
        //��ʾ�б�    
        strhtml.Append("<b>��Ҫ��ע</b>");

        strhtml.Append("<b>[����]��</b><br/>");
        if (this.type9 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=9&amp;id=" + bookVo.id + "\">����</a>��");
        }


        if (this.type12 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=12&amp;id=" + bookVo.id + "\">��Ф</a>��");
        }
        if (this.type53 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=53&amp;id=" + bookVo.id + "\">��β</a>��");
        }
        if (this.type54 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=54&amp;id=" + bookVo.id + "\">��ͷ</a>");
        }
        strhtml.Append("<br/>");
        if (this.type13 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=13&amp;id=" + bookVo.id + "\">����</a>��");
        }
        if (this.type14 != "0" || this.type15 != "0" || this.type16 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=14&amp;id=" + bookVo.id + "\">��ɫ</a>��");
        }

        if (this.type17 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=17&amp;id=" + bookVo.id + "\">��˫</a>��");
        }
        if (this.type18 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=18&amp;id=" + bookVo.id + "\">��С</a>��");
        }
        if (this.type55 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=55&amp;id=" + bookVo.id + "\">��Ұ</a><br/>");
        }
        if (this.type56 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=56&amp;id=" + bookVo.id + "\">��Ф</a>��");
        }
        if (this.type57 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=57&amp;id=" + bookVo.id + "\">�벨</a>��");
        }
        if (this.type58 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=58&amp;id=" + bookVo.id + "\">������˫</a>��");
        }
        if (this.type59 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=59&amp;id=" + bookVo.id + "\">������С</a><br/>");
        }


        strhtml.Append("<b>[ƽ��]��</b><br/>");
        if (this.type10 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=10&amp;id=" + bookVo.id + "\">��ƽ</a>��");
        }
        if (this.type11 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=11&amp;id=" + bookVo.id + "\">ƽ��Ф</a>��");
        }
        if (this.type52 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=52&amp;id=" + bookVo.id + "\">ƽ��β</a>");
        }

        strhtml.Append("<br/>");
        strhtml.Append("<b>[����]��</b><br/>");

        if (this.type19 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=19&amp;id=" + bookVo.id + "\">ƽ2��2</a>��");
        }
        if (this.type20 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=20&amp;id=" + bookVo.id + "\">ƽ3��2</a>��");
        }
        if (this.type21 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=21&amp;id=" + bookVo.id + "\">ƽ3��3</a>��");
        }
        if (this.type51 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=51&amp;id=" + bookVo.id + "\">�ش�</a> <br/>");
        }
        strhtml.Append("<b>[����]��</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��עͳ��</a>");
        strhtml.Append("��<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��¼</a>");





        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("<b>Ͷע�ο�</b><br/>");

        strhtml.Append("��<a href=\"" + http_start + "games/marksix/rank_list.aspx?nid=marksix&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">�����</a>.<a href=\"" + this.http_start + "games/marksix/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������а�</a>��<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ����</a>��<a href=\"" + this.http_start + "games/marksix/randnum.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">���ѡ��</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ɫ����</a>��<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ф����</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">���ж���</a>��<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=\">��������</a><br/>");
  
    
    
    strhtml.Append("----------<br/>");
    
    strhtml.Append("����Ϊ: <b>" + bookVo.period + "</b> ��<br/>");
    
    strhtml.Append("����ʱ��:" + string.Format("{0:yyyy-MM-dd HH:mm}", bookVo.OpenTime) + "<a href=\"" + this.http_start + "games/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "\">��������</a> <br/>");
    strhtml.Append("״̬:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
    strhtml.Append("��������:" + this.local_people + "<br/>");
    strhtml.Append("��ע���:" + this.local_money + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("��עע��:" + this.local_doit + "<br/>");
    strhtml.Append("����" + WapTool.DateToString(this.leftTime, base.lang, 0) + "����,<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">��ˢ�¡�</a> ");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("���ڵ� <b>" + lastVo.period + "</b> �ڿ����������:<br/>");
    strhtml.Append("<b>ƽ�룺<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball1 + "\">" + lastVo.ball1 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball2 + "\">" + lastVo.ball2 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball3 + "\">" + lastVo.ball3 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball4 + "\">" + lastVo.ball4 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball5 + "\">" + lastVo.ball5 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball6 + "\">" + lastVo.ball6 + "</a><br/>");
    strhtml.Append("���룺<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ballTeMa + "\">" + lastVo.ballTeMa + "</a> (" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.wave_color_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.five_elements_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.single_double_from_number(configVo.config, lastVo.ballTeMa) + ")</b><br/>");
    strhtml.Append("״̬:<b>" + GamesClassManager.Tool.MarkSix_state(lastVo.state) + "</b><br/>");
    strhtml.Append("��������:" + this.last_people + "<br/>");
    strhtml.Append("��ע���:" + this.last_money + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("��עע��:" + this.last_doit + "<br/>");
    strhtml.Append("�н�����:" + this.last_people_win + "<br/>");
    strhtml.Append("�н�ע��:" + this.last_doit_win + "<br/>");
    strhtml.Append("�н�����:" + this.last_money_win + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("----------<br/>");
    
    if (this.content != "")
    {        
        strhtml.Append(this.content+"<br/>");    
    }
    //strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>���ľ����</b>");
    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"marksix\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>����</anchor>");
    strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=marksix&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">����...</a><br/>");
      
   // strhtml.Append("<br/>");
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
        }

    }

  
    strhtml.Append("<br/>--------<br/>");

    
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("��<a href=\"" + this.http_start + "games/marksix/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/marksix/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>��<br/>");
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
   
    strhtml.Append("<div class=\"subtitle\">" + this.title + "</div>");
    
    
    //��ʾ����

    strhtml.Append("<div class=\"content\">");

    strhtml.Append("�������� <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> ��" + siteVo.sitemoneyname + "��");
    strhtml.Append("<br/>�ҵ�Ͷע:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ѿ�</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ</a>");
    strhtml.Append("<br/>�ҵĶҽ�:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">δ��</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�Ѷ�</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ȥ�ҽ�</a>");

    strhtml.Append("</div>");
    //��ʾ�б�    
    strhtml.Append("<div class=\"subtitle\">��Ҫ��ע</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<b>[����]��</b><br/>");
    if (this.type9 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=9&amp;id=" + bookVo.id + "\">����</a>��");
    }


    if (this.type12 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=12&amp;id=" + bookVo.id + "\">��Ф</a>��");
    }
    if (this.type53 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=53&amp;id=" + bookVo.id + "\">��β</a>��");
    }
    if (this.type54 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=54&amp;id=" + bookVo.id + "\">��ͷ</a>");
    }
    strhtml.Append("<br/>");
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=13&amp;id=" + bookVo.id + "\">����</a>��");
    }
    if (this.type14 != "0" || this.type15 != "0" || this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=14&amp;id=" + bookVo.id + "\">��ɫ</a>��");
    }

    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=17&amp;id=" + bookVo.id + "\">��˫</a>��");
    }
    if (this.type18 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=18&amp;id=" + bookVo.id + "\">��С</a>��");
    }
    if (this.type55 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=55&amp;id=" + bookVo.id + "\">��Ұ</a><br/>");
    }
    if (this.type56 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=56&amp;id=" + bookVo.id + "\">��Ф</a>��");
    }
    if (this.type57 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=57&amp;id=" + bookVo.id + "\">�벨</a>��");
    }
    if (this.type58 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=58&amp;id=" + bookVo.id + "\">������˫</a>��");
    }
    if (this.type59 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=59&amp;id=" + bookVo.id + "\">������С</a><br/>");
    }


    strhtml.Append("<b>[ƽ��]��</b><br/>");
    if (this.type10 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=10&amp;id=" + bookVo.id + "\">��ƽ</a>��");
    }
    if (this.type11 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=11&amp;id=" + bookVo.id + "\">ƽ��Ф</a>��");
    }
    if (this.type52 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=52&amp;id=" + bookVo.id + "\">ƽ��β</a>");
    }

    strhtml.Append("<br/>");
    strhtml.Append("<b>[����]��</b><br/>");

    if (this.type19 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=19&amp;id=" + bookVo.id + "\">ƽ2��2</a>��");
    }
    if (this.type20 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=20&amp;id=" + bookVo.id + "\">ƽ3��2</a>��");
    }
    if (this.type21 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=21&amp;id=" + bookVo.id + "\">ƽ3��3</a>��");
    }
    if (this.type51 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=51&amp;id=" + bookVo.id + "\">�ش�</a> <br/>");
    }
    strhtml.Append("<b>[����]��</b><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��עͳ��</a>");
    strhtml.Append("��<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ��¼</a>");





    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">Ͷע�ο�</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("��<a href=\"" + http_start + "games/marksix/rank_list.aspx?nid=marksix&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">�����</a>.<a href=\"" + this.http_start + "games/marksix/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������а�</a>��<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ����</a>��<a href=\"" + this.http_start + "games/marksix/randnum.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#c\">���ѡ��</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#a\">��ɫ����</a>��<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#b\">��Ф����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#c\">���ж���</a>��<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=\">��������</a><br/>");
    strhtml.Append("</div>");
    
  
    strhtml.Append("<div class=\"subtitle\">����Ϊ: <b>" + bookVo.period + "</b> ��</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("����ʱ��:" + string.Format("{0:yyyy-MM-dd HH:mm}", bookVo.OpenTime) + "<a href=\"" + this.http_start + "games/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "\">��������</a> <br/>");
    strhtml.Append("״̬:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
    strhtml.Append("��������:" + this.local_people + "<br/>");
    strhtml.Append("��ע���:" + this.local_money + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("��עע��:" + this.local_doit + "<br/>");
    strhtml.Append("����" + WapTool.DateToString(this.leftTime, base.lang, 0) + "����,<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">��ˢ�¡�</a> ");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">���ڵ� <b>" + lastVo.period + "</b> �ڿ����������:</div>");
    strhtml.Append("<div class=\"content\"><b>ƽ�룺<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball1 + "\">" + lastVo.ball1 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball2 + "\">" + lastVo.ball2 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball3 + "\">" + lastVo.ball3 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball4 + "\">" + lastVo.ball4 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball5 + "\">" + lastVo.ball5 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball6 + "\">" + lastVo.ball6 + "</a><br/>");
    strhtml.Append("���룺<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ballTeMa + "\">" + lastVo.ballTeMa + "</a> (" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.wave_color_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.five_elements_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.single_double_from_number(configVo.config, lastVo.ballTeMa) + ")</b><br/>");
    strhtml.Append("״̬:<b>" + GamesClassManager.Tool.MarkSix_state(lastVo.state) + "</b><br/>");
    strhtml.Append("��������:" + this.last_people + "<br/>");
    strhtml.Append("��ע���:" + this.last_money + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("��עע��:" + this.last_doit + "<br/>");
    strhtml.Append("�н�����:" + this.last_people_win + "<br/>");
    strhtml.Append("�н�ע��:" + this.last_doit_win + "<br/>");
    strhtml.Append("�н�����:" + this.last_money_win + " ��" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    
    if (this.content != "")
    {        
        strhtml.Append(this.content);    
    }
    strhtml.Append("<div class=\"subtitle\">���콻��</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"marksix\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("����|����|submit") + "\"/></form>");
    
    //strhtml.Append("<br/>");
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
            
            strhtml.Append(relistVo[i].content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + "</span><br/>");
            strhtml.Append("</div>");
        }

        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">���������¼��</div>");
        }
        else
        {
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=marksix&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">�鿴����...</a></div>");
     
        }

       

    }
    strhtml.Append("</div>");
    
    //��ʾ���
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��<a href=\"" + this.http_start + "games/marksix/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/marksix/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>��<br/>");
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
