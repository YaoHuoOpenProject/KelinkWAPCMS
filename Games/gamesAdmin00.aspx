<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gamesAdmin00.aspx.cs" Inherits="KeLin.WebSite.Games.gamesAdmin00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("游戏大厅超级管理员后台", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");

    //显示内容
    //strhtml.Append("<div class=\"line2\">");
    strhtml.Append("00.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">聊天内容管理</a><br/>");
    strhtml.Append("--------<br/>");

    strhtml.Append("游戏配置需要站长身份管理！<br/>");
    strhtml.Append("--------<br/>");

    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));    
    
    
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{




    strhtml.Append("<div class=\"subtitle\">游戏大厅超级管理员后台</div>");
    
  
    //显示内容
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("00.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">聊天内容管理</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("游戏配置需要站长身份管理！<br/>");
    strhtml.Append("</div>");
    
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
   

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
