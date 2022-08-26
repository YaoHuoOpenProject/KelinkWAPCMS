<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userbet_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.userbet_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="历史投注";
if (p_active == "0")
{
    title = "未开投注";
}
else if (p_active == "1")
{
    title = "已开投注";
}
else if (p_active == "2")
{
    title = "已中投注";
}
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);



   
    strhtml.Append("球彩投注:");
    if (p_active == "0")
    {
        strhtml.Append("未开.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">历史</a>");
    }
    else if (p_active == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">未开</a>.已开.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">历史</a>");
    }
    else if (p_active == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">已开</a>.已中.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">历史</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">已中</a>.历史");

    }
    strhtml.Append("<br/>----------<br/>");

    strhtml.Append("球:");
    if (ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=0\">全部</a>");
    }
    if (ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=1\">足球</a>");
    }
    if (ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=2\">篮球</a>");
    }

    strhtml.Append("<br/>盘:");

    if (searchtype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=0\">全部</a>");
    }
    if (searchtype == "1")
    {
        strhtml.Append(".上下");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=1\">上下</a>");
    }
    if (searchtype == "2")
    {
        strhtml.Append(".大小");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=2\">大小</a>");
    }
    if (searchtype == "3")
    {
        strhtml.Append(".标准");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=3\">标准</a>");
    }

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("会员ID<input type=\"text\" name=\"touserid" + r + "\" size=\"5\" value=\"" + this.touserid + "\" />");

    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/userbet_list.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"p_active\" value=\"" + p_active + "\"/>");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
    strhtml.Append("<postfield name=\"searchtype\" value=\"" + searchtype + "\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>查询</anchor>");
    

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
        strhtml.Append(index);
        strhtml.Append("." + listVo[i].payview);

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
        if (listVo[i].p_getMoney > 0)
        {

            strhtml.Append("，赢:" + listVo[i].p_getMoney.ToString("f2"));
        }
        strhtml.Append("<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>没有记录。</b><br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append("球彩投注:");
    if (p_active == "0")
    {
        strhtml.Append("未开.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">历史</a>");
    }
    else if (p_active == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">未开</a>.已开.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">历史</a>");
    }
    else if (p_active == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">已开</a>.已中.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.touserid + "\">历史</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.touserid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.touserid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.touserid + "\">已中</a>.历史");
   
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("球:");
    if (ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=0\">全部</a>");
    }
    if (ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=1\">足球</a>");
    }
    if (ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=2\">篮球</a>");
    }

    strhtml.Append("<br/>盘:");

    if (searchtype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=0\">全部</a>");
    }
    if (searchtype == "1")
    {
        strhtml.Append(".上下");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=1\">上下</a>");
    }
    if (searchtype == "2")
    {
        strhtml.Append(".大小");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=2\">大小</a>");
    }
    if (searchtype == "3")
    {
        strhtml.Append(".标准");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=" + ptype + "&amp;searchtype=3\">标准</a>");
    }

    strhtml.Append("<br/><form name=\"f\" action=\"" + http_start + "games/ball/userbet_list.aspx\" method=\"post\">");

    strhtml.Append("会员ID<input type=\"text\" name=\"touserid\" size=\"5\" value=\"" +this.touserid + "\" />");


    strhtml.Append("<input type=\"submit\" name=\"b\" value=\"查询\" />");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"p_active\" value=\"" + p_active + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"searchtype\" value=\"" + searchtype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    
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
        strhtml.Append(index);
        strhtml.Append("." + listVo[i].payview);

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
        if (listVo[i].p_getMoney > 0)
        {

            strhtml.Append("，赢:" + listVo[i].p_getMoney.ToString("f2"));
        }
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录。</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");
    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
