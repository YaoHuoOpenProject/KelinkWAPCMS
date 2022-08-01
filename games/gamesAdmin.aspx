<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gamesAdmin.aspx.cs" Inherits="KeLin.WebSite.Games.gamesAdmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("游戏大厅站长后台", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");

    //显示内容
    //strhtml.Append("<div class=\"line2\">");
    strhtml.Append("*.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">聊天内容管理</a><br/>");
    strhtml.Append("--------<br/>");
    
    strhtml.Append("*.<a href=\"" + this.http_start + "games/admin_WAPAdvertise.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">广告内容管理</a><br/>");
    strhtml.Append("--------<br/>");
   
    strhtml.Append("01.<a href=\"" + this.http_start + "games/stone/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">疯狂石头参数配置</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("02.<a href=\"" + this.http_start + "games/touzi/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">激情骰子参数配置</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("03.<a href=\"" + this.http_start + "games/apple/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">苹果机参数配置</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("04.<a href=\"" + this.http_start + "games/quankun/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">乾坤宝参数配置</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("05.<a href=\"" + this.http_start + "games/chuiniu/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">疯狂吹牛参数配置</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("06.<a href=\"" + this.http_start + "games/war/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">掠夺军团参数配置</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("07.<a href=\"" + this.http_start + "games/lucky28/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">幸运28参数配置</a> <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("08.<a href=\"" + this.http_start + "games/shoot/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">疯狂射门参数配置</a> <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("09.<a href=\"" + this.http_start + "games/horse/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">赛马场参数配置</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("10.<a href=\"" + this.http_start + "games/egg/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">砸金蛋参数配置</a> <br/>");
    strhtml.Append("11.<a href=\"" + this.http_start + "games/marksix/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">博彩参数配置</a> <br/>");
    strhtml.Append("12.<a href=\"" + this.http_start + "games/happyTen/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">快乐十分参数配置</a> <br/>");
    strhtml.Append("13.<a href=\"" + this.http_start + "games/wabao/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">挖宝游戏参数配置</a> <br/>");

    strhtml.Append("--------<br/>");

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("游戏大厅") + "&amp;gopath=games/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));    
    
    
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{




    strhtml.Append("<div class=\"subtitle\">游戏大厅站长后台</div>");
    
  
    //显示内容
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("*.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">聊天内容管理</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("*.<a href=\"" + this.http_start + "games/admin_WAPAdvertise.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">广告内容管理</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("01.<a href=\"" + this.http_start + "games/stone/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">疯狂石头参数配置</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("02.<a href=\"" + this.http_start + "games/touzi/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">激情骰子参数配置</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("03.<a href=\"" + this.http_start + "games/apple/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">苹果机参数配置</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("04.<a href=\"" + this.http_start + "games/quankun/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">乾坤宝参数配置</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("05.<a href=\"" + this.http_start + "games/chuiniu/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">疯狂吹牛参数配置</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("06.<a href=\"" + this.http_start + "games/war/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">掠夺军团参数配置</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("07.<a href=\"" + this.http_start + "games/lucky28/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">幸运28参数配置</a> <br/>");
   strhtml.Append("</div>");  
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("08.<a href=\"" + this.http_start + "games/shoot/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">疯狂射门参数配置</a> <br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("09.<a href=\"" + this.http_start + "games/horse/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">赛马场参数配置</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("10.<a href=\"" + this.http_start + "games/egg/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">砸金蛋参数配置</a> <br/>");
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("11.<a href=\"" + this.http_start + "games/marksix/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">博彩参数配置</a> <br/>");
    strhtml.Append("12.<a href=\"" + this.http_start + "games/happyTen/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">快乐十分参数配置</a> <br/>");
    strhtml.Append("13.<a href=\"" + this.http_start + "games/wabao/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">挖宝游戏参数配置</a> <br/>");
    strhtml.Append("</div>");
    
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("游戏大厅") + "&amp;gopath=games/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
   

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
