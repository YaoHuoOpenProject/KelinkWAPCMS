<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userbet_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_userbet_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="��ʾ��¹����̨";
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

   

    //��ʾ�б�
     if (searchtype == "1")
    {
        strhtml.Append("�����̣�<b>����</b>��ע�б�");
     }
     else if (searchtype == "2")
     {
         strhtml.Append("�����̣�<b>����</b>��ע�б�");
     }
     else if (searchtype == "3")
     {
         strhtml.Append("��С�̣�<b>����</b>��ע�б�");
     }
     else if (searchtype == "4")
     {
         strhtml.Append("��С�̣�<b>С��</b>��ע�б�");
     }
     else if (searchtype == "5")
     {
         strhtml.Append("��׼�̣�<b>��ʤ</b>��ע�б�");
     }
     else if (searchtype == "6")
     {
         strhtml.Append("��׼�̣�<b>ƽ��</b>��ע�б�");
     }
     else if (searchtype == "7")
     {
         strhtml.Append("��׼�̣�<b>��ʤ</b>��ע�б�");
     }
    

     strhtml.Append("<br/>");
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;        
        strhtml.Append(index);
        strhtml.Append("."+listVo[i].payview);
        
        if (listVo[i].p_active > 0)
        {
            strhtml.Append(",Ӯ:" + listVo[i].p_getMoney.ToString("f2"));

        }
        
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("û�м�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype="+this.ptype+"&amp;id="+this.id+"" + "\">�����ϼ�</a>");

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
    strhtml.Append("<div class=\"content\">");


    //��ʾ�б�
    if (searchtype == "1")
    {
        strhtml.Append("�����̣�<b>����</b>��ע�б�");
    }
    else if (searchtype == "2")
    {
        strhtml.Append("�����̣�<b>����</b>��ע�б�");
    }
    else if (searchtype == "3")
    {
        strhtml.Append("��С�̣�<b>����</b>��ע�б�");
    }
    else if (searchtype == "4")
    {
        strhtml.Append("��С�̣�<b>С��</b>��ע�б�");
    }
    else if (searchtype == "5")
    {
        strhtml.Append("��׼�̣�<b>��ʤ</b>��ע�б�");
    }
    else if (searchtype == "6")
    {
        strhtml.Append("��׼�̣�<b>ƽ��</b>��ע�б�");
    }
    else if (searchtype == "7")
    {
        strhtml.Append("��׼�̣�<b>��ʤ</b>��ע�б�");
    }
    
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
        strhtml.Append("." + listVo[i].payview);

        if (listVo[i].p_active > 0)
        {
            strhtml.Append(",Ӯ:" + listVo[i].p_getMoney.ToString("f2"));

        }
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">û�м�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "" + "\">�����ϼ�</a>");

    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
