<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_userWin_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_userWin_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="�������¶ҽ�";

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    

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
        strhtml.Append(".��עʱ��:"+listVo[i].paytimes+"<br/>" + listVo[i].payview);

        strhtml.Append("<br/>���:<a href=\"" + this.http_start + "games/ball/super_userbet_list_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;id=" + listVo[i].ID + "" + "\">");
        
        if (listVo[i].p_active == 2)
        {
            strhtml.Append(",ƽ��");
        }
        else
        {
            strhtml.Append(",Ӯ��");
        }

        strhtml.Append("</a>");
        strhtml.Append("<br/>ʱ��:" + listVo[i].paytimes + ",��" + listVo[i].p_getMoney.ToString("f2") + siteVo.sitemoneyname);

        allmoney = allmoney + listVo[i].p_getMoney;
        strhtml.Append("<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>û��Ҫ�ҽ��ļ�¼�ˡ�</b><br/>");
    }

    strhtml.Append("---------<br/>");
    strhtml.Append("����Ӯ:" + allmoney.ToString("f2") + "��" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/ball/super_userWin_list.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "\">ȷ���ҽ�</a>��");

    strhtml.Append("<br/>---------<br/>");
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
    

    strhtml.Append(title);
    

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
        strhtml.Append(".��עʱ��:" + listVo[i].paytimes + "<br/>" + listVo[i].payview);

        strhtml.Append("<br/>���:<a href=\"" + this.http_start + "games/ball/super_userbet_list_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;id=" + listVo[i].ID + "" + "\">");
        
  
        if (listVo[i].p_active == 2)
        {
            strhtml.Append(",ƽ��");
        }
        else
        {
            strhtml.Append(",Ӯ��");
        }

        strhtml.Append("</a>");
        strhtml.Append("<br/>ʱ��:"+listVo[i].paytimes+",��" + listVo[i].p_getMoney.ToString("f2")+siteVo.sitemoneyname);

        allmoney = allmoney + listVo[i].p_getMoney;
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">û��Ҫ�ҽ��ļ�¼�ˡ�</div>");
    }


    strhtml.Append("<div class=\"subtitle\">����Ӯ:" + allmoney.ToString("f2") + "��" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/ball/super_userWin_list.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"\">ȷ���ҽ�</a>��</div>");
   
    //��ʾ������ҳ
   
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">�����ϼ�</a>");
    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
