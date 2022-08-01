<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("高手排行榜单", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>高手排行榜单</b>");
    strhtml.Append("<br/>--------<br/>");  
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">选一数投</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">选一红投</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">任选二</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">选二连组</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">选二连直</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">任选三</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">选三前组</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">选三前直</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">任选四</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">任选五</a><br/>");
    
   
    strhtml.Append("<br/>--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    strhtml.Append("<div class=\"subtitle\">高手排行榜单</div>");

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("请选择<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">选一数投</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">选一红投</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">任选二</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">选二连组</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">选二连直</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">任选三</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">选三前组</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">选三前直</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">任选四</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">任选五</a><br/>");
    
    strhtml.Append("</div>");
   
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
