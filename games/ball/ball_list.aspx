<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ball_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.ball_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();



Response.Write(WapTool.showTop("���¼�¼", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    if (this.ptype == "0")
    {
        strhtml.Append("ȫ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">ȫ��</a>");
    }
    if (this.ptype == "1")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>");
    }


    strhtml.Append("<br/>----------<br/>");






    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        indexs = indexs + kk;
        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }
        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

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

            strhtml.Append(string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + "<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "&amp;backtype=1&amp;page=" + this.CurrentPage + "\">[" + listVo[i].p_title + "]" + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");

            if (listVo[i].p_active > 0)
            {
                strhtml.Append("{��}");
            }

            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{��}");
            }

        }
        strhtml.Append("<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>�������¼�¼��</b><br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);



    //������ť
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapball_list.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">");


    if (this.ptype == "0")
    {
        strhtml.Append("ȫ��");
    }
    else
    {
        strhtml.Append("<a href=\""+this.http_start+"games/ball/ball_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;ptype=0&amp;sid="+this.sid+"\">ȫ��</a>");
    } 
    if (this.ptype == "1")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">����</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">����</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">����</a>");
    }

    
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
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

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

            strhtml.Append(string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + "<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "&amp;backtype=1&amp;page=" + this.CurrentPage + "\">[" + listVo[i].p_title + "]" + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");

            if (listVo[i].p_active > 0)
            {
                strhtml.Append("{��}");
            }

            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{��}");
            }

        }
        strhtml.Append("</div>");

    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">�������¼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

  
    
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapball_list.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");

    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
