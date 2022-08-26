<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rule.aspx.cs" Inherits="KeLin.WebSite.clan.rule" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("游戏规则", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
  
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }


    strhtml.Append("游戏介绍:<br/>");
    strhtml.Append("家族间进行争斗,胜者为王,败者为寇!<br/>");
    strhtml.Append("游戏规则:<br/>");
    strhtml.Append("1.进行游戏5秒后方可进行攻击!<br/>");
    strhtml.Append("2.每一次攻击相隔至少5秒!<br/>");
    strhtml.Append("3.距离上一次攻击5秒后方可以退出争霸!<br/>");
    strhtml.Append("4.家族内部成员不可以互相攻击!<br/>");
    strhtml.Append("5.攻击力按照个人等级计算!<br/>");
    strhtml.Append("6.玩家在两分钟内没有刷新页面会自动离线!<br/>");

    
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a>-");

   
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{


 

    

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //显示内容
    strhtml.Append("<div class=\"subtitle\">游戏规则</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("游戏介绍:<br/>");
    strhtml.Append("家族间进行争斗,胜者为王,败者为寇!<br/>");
    strhtml.Append("游戏规则:<br/>");
    strhtml.Append("1.进行游戏10秒后方可进行攻击!<br/>");
    strhtml.Append("2.每一次攻击相隔至少10秒!<br/>");
    strhtml.Append("3.距离上一次攻击10秒后方可以退出争霸!<br/>");
    strhtml.Append("4.家族内部成员不可以互相攻击!<br/>");
    strhtml.Append("5.攻击力按照个人等级计算!<br/>");
    strhtml.Append("6.玩家在两分钟内没有刷新页面会自动离线!<br/>");
    
    strhtml.Append("</div>");
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

  
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a> ");
   
  
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append("</div></div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }

   
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
