<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_user_win.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.book_user_win" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string showtitle="��Ҫ�ҽ�";

Response.Write(WapTool.showTop(showtitle, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        
        strhtml.Append("<b>�ҽ��ɹ���");


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "&amp;lpage=" + lpage + "" + "\">����</a><br/>");
       
    }
    else if (this.INFO == "NO")
    {
       
        strhtml.Append("<b>�����ҵĶҽ���¼!");
        strhtml.Append("</b><br/>");
        

    }

    //��ʾ�б�

    if (this.INFO == "")
    {
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

            strhtml.Append(string.Format("{0:dd��HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "���" + listVo[i].peroid + "��]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>Ͷע[" + GamesClassManager.Tool.GetwaBao_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]��" + listVo[i].num + "ע��ÿע���" + listVo[i].betMoney + "�����:");
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
            allmoney = allmoney + listVo[i].GetMoney;
            //strhtml.Append("");


            strhtml.Append("<br/>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("<b>�����ҵĶҽ���¼��</b><br/>");
        }
    }
    //��ʾ������ҳ
    strhtml.Append("----------<br/>");
    strhtml.Append("����Ӯ:" + allmoney.ToString("f2") + "��" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ȷ���ҽ�</a>��");
    
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + showtitle + "</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("�ҽ��ɹ���");
       

        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "&amp;lpage=" + lpage + "" + "\">����</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NO")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("������Ҫ�ҽ���¼!");
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    

    //��ʾ�б�
    if (this.INFO == "")
    {


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

            strhtml.Append(string.Format("{0:dd��HH:mm}", listVo[i].betTime) + "[" + listVo[i].years + "���" + listVo[i].peroid + "��]" + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "(" + listVo[i].userid + ")</a>Ͷע[" + GamesClassManager.Tool.GetwaBao_PlayName(listVo[i].types.ToString()) + ":" + listVo[i].types_content + "]��" + listVo[i].num + "ע��ÿע���" + listVo[i].betMoney + "�����:");
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
            allmoney = allmoney + listVo[i].GetMoney;


            strhtml.Append("</div>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("<div class=\"tip\">������Ҫ�ҽ���¼��</div>");
        }
    }

    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("����Ӯ:" + allmoney.ToString("f2") + "��" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ȷ���ҽ�</a>��");
    strhtml.Append("</div>");
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
