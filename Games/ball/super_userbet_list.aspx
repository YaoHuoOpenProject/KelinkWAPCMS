<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_userbet_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_userbet_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="��ʷͶע";
if (p_active == "0")
{
    title = "δ��Ͷע";
}
else if (p_active == "1")
{
    title = "�ѿ�Ͷע";
}
else if (p_active == "2")
{
    title = "����Ͷע";
}
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);



   
    strhtml.Append("����Ͷע:");
    if (p_active == "0")
    {
        strhtml.Append("δ��.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">��ʷ</a>");
    }
    else if (p_active == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">δ��</a>.�ѿ�.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">��ʷ</a>");
    }
    else if (p_active == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">�ѿ�</a>.����.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">��ʷ</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">����</a>.��ʷ");

    }
   
    strhtml.Append("<br/>");
    strhtml.Append("��ԱID<input type=\"text\" name=\"touserid" + r + "\" size=\"5\" value=\"" + this.touserid + "\" />");

    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/super_userbet_list.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"p_active\" value=\"" + p_active + "\"/>");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
    strhtml.Append("<postfield name=\"searchtype\" value=\"" + searchtype + "\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>��ѯ</anchor>");
    

    strhtml.Append("<br/>----------<br/>");
    //��ʾ�б�

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (i % 2 == 0)
        {
           // strhtml.Append("<div class=\"line1\">");
        }
        else
        {
           // strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(index);
        strhtml.Append(".��עʱ��:" + listVo[i].paytimes+"<br/>");
        strhtml.Append(listVo[i].payview);

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;id="+listVo[i].ID+"" + "\">");
        if (listVo[i].p_active == 0)
        {
            strhtml.Append("״̬��δ��");

        }
        else if (listVo[i].p_active == 1)
        {
            strhtml.Append("״̬������");

        } else if (listVo[i].p_active == 2)
        {
            strhtml.Append("״̬��ƽ��");

        }        
        if (listVo[i].p_getMoney > 0)
        {

            strhtml.Append("��Ӯ:" + listVo[i].p_getMoney.ToString("f2"));
        }
        strhtml.Append("</a>");
            
        strhtml.Append("<br/>=========<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>û�м�¼��</b><br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">�����ϼ�</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append("����Ͷע:");
    if (p_active == "0")
    {
        strhtml.Append("δ��.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">��ʷ</a>");
    }
    else if (p_active == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">δ��</a>.�ѿ�.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">����</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">��ʷ</a>");
    }
    else if (p_active == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">�ѿ�</a>.����.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">��ʷ</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">δ��</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">�ѿ�</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">����</a>.��ʷ");
   
    }
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/ball/super_userbet_list.aspx\" method=\"post\">");

    strhtml.Append("��ԱID<input type=\"text\" name=\"touserid\" size=\"5\" value=\"" +this.touserid + "\" />");


    strhtml.Append("<input type=\"submit\" name=\"b\" value=\"��ѯ\" />");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"p_active\" value=\"" + p_active + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"searchtype\" value=\"" + searchtype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    
    strhtml.Append("</div>");

  
    //��ʾ�б�
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(index);
        strhtml.Append(".��עʱ��:" + listVo[i].paytimes + "<br/>");
        strhtml.Append(listVo[i].payview);
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;id=" + listVo[i].ID + "" + "\">");
        
         if (listVo[i].p_active == 0)
        {
            strhtml.Append("״̬��δ��");

        }
        else if (listVo[i].p_active == 1)
        {
            strhtml.Append("״̬������");

        } else if (listVo[i].p_active == 2)
        {
            strhtml.Append("״̬��ƽ��");

        }        
        if (listVo[i].p_getMoney > 0)
        {

            strhtml.Append("��Ӯ:" + listVo[i].p_getMoney.ToString("f2"));
        }
        strhtml.Append("</a>");
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">û�м�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">�����ϼ�</a>");
    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
