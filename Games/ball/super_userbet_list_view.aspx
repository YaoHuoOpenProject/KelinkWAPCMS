<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_userbet_list_view.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_userbet_list_view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="�鿴������ϸ";

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);



   
    strhtml.Append("������ϸ:");
    
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
        strhtml.Append("����"+index);
        strhtml.Append(":<br/>" + listVo[i].payview);

        strhtml.Append("<br/>�������"+listVo[i].p_result_one+":"+listVo[i].p_result_two);
        strhtml.Append("<br/>");
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
        
        strhtml.Append("<br/>----------<br/>");

    }
    
    //��ʾ������ҳ
 
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active="+this.p_active+"&amp;touserid="+this.touserid+"" + "\">�����ϼ�</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append(title  );   
    
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
        strhtml.Append("����" + index);
        strhtml.Append(":<br/>" + listVo[i].payview);
        strhtml.Append("<br/>�������" + listVo[i].p_result_one + ":" + listVo[i].p_result_two);
        strhtml.Append("<br/>");
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
        
        strhtml.Append("</div>");
       
    }
   
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "" + "\">�����ϼ�</a>");
    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
