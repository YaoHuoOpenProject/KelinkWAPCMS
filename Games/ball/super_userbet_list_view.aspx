<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_userbet_list_view.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_userbet_list_view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="查看串串明细";

Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);



   
    strhtml.Append("串串明细:");
    
    strhtml.Append("<br/>----------<br/>");
    //显示列表

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
        strhtml.Append("场次"+index);
        strhtml.Append(":<br/>" + listVo[i].payview);

        strhtml.Append("<br/>比赛结果"+listVo[i].p_result_one+":"+listVo[i].p_result_two);
        strhtml.Append("<br/>");
         if (listVo[i].p_active == 0)
        {
            strhtml.Append("状态：未开");

        }
        else if (listVo[i].p_active == 1)
        {
            strhtml.Append("状态：结束");

        } else if (listVo[i].p_active == 2)
        {
            strhtml.Append("状态：平盘");

        }        
        
        strhtml.Append("<br/>----------<br/>");

    }
    
    //显示导航分页
 
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active="+this.p_active+"&amp;touserid="+this.touserid+"" + "\">返回上级</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append(title  );   
    
    strhtml.Append("</div>");

  
    //显示列表
    
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
        strhtml.Append("场次" + index);
        strhtml.Append(":<br/>" + listVo[i].payview);
        strhtml.Append("<br/>比赛结果" + listVo[i].p_result_one + ":" + listVo[i].p_result_two);
        strhtml.Append("<br/>");
        if (listVo[i].p_active == 0)
        {
            strhtml.Append("状态：未开");

        }
        else if (listVo[i].p_active == 1)
        {
            strhtml.Append("状态：结束");

        } else if (listVo[i].p_active == 2)
        {
            strhtml.Append("状态：平盘");

        }        
        
        strhtml.Append("</div>");
       
    }
   
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "" + "\">返回上级</a>");
    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
