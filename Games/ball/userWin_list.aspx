<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userWin_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.userWin_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="���¶ҽ�";

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (ptype == "0")
    {
        strhtml.Append("ȫ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=0\">ȫ��</a>");
    }
    if (ptype == "1")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=1\">����</a>");
    }
    if (ptype == "2")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=2\">����</a>");
    }


    strhtml.Append("<br/>---------<br/>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append("�ҽ��ɹ���");
        strhtml.Append("</b><br/>");
    }
    else if (this.INFO == "NO")
    {
        strhtml.Append("<b>");
        strhtml.Append("�ҽ�ʧ�ܣ����ܲ����Լ��Ļ�û��Ҫ�ҽ��ļ�¼�ˡ�");
        strhtml.Append("</b><br/>");
    }
    //��ʾ�б�

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(index);
        strhtml.Append("." + listVo[i].payview);
        if (listVo[i].p_active == 2)
        {
            strhtml.Append(",ƽ��");
        }
        else
        {
            strhtml.Append(",���" + listVo[i].p_result_one + ":" + listVo[i].p_result_two);
        }


        strhtml.Append("<br/>ʱ��:" + listVo[i].paytimes + ",��" + listVo[i].p_getMoney.ToString("f2") + siteVo.sitemoneyname);

        allmoney = allmoney + listVo[i].p_getMoney;
        strhtml.Append("<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>û��Ҫ�ҽ��ļ�¼�ˡ�</b><br/>");
    }

    strhtml.Append("---------<br/>");
    strhtml.Append("����Ӯ:" + allmoney.ToString("f2") + "��" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/ball/userwin_list.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "\">ȷ���ҽ�</a>��");

    strhtml.Append("<br/>---------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">�����ϼ�</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    
    strhtml.Append("<div class=\"subtitle\">" );
    

    strhtml.Append("");
    if (ptype == "0")
    {
        strhtml.Append("ȫ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=0\">ȫ��</a>");
    }
    if (ptype == "1")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=1\">����</a>");
    }
    if (ptype == "2")
    {
        strhtml.Append(".����");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=2\">����</a>");
    }


    strhtml.Append("</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("�ҽ��ɹ���");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NO")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("�ҽ�ʧ�ܣ����ܲ����Լ��Ļ�û��Ҫ�ҽ��ļ�¼�ˡ�");
        strhtml.Append("</div>");
    }
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
        strhtml.Append("." + listVo[i].payview);
        if (listVo[i].p_active == 2)
        {
            strhtml.Append(",ƽ��");
        }
        else
        {
            strhtml.Append(",���" + listVo[i].p_result_one + ":" + listVo[i].p_result_two);
        }


        strhtml.Append("<br/>ʱ��:"+listVo[i].paytimes+",��" + listVo[i].p_getMoney.ToString("f2")+siteVo.sitemoneyname);

        allmoney = allmoney + listVo[i].p_getMoney;
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">û��Ҫ�ҽ��ļ�¼�ˡ�</div>");
    }


    strhtml.Append("<div class=\"subtitle\">����Ӯ:" + allmoney.ToString("f2") + "��" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/ball/userwin_list.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"\">ȷ���ҽ�</a>��</div>");
   
    //��ʾ������ҳ
   
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">�����ϼ�</a>");
    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
