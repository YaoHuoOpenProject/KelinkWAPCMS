<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("高手排行榜单", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>高手排行榜单</b>");

    strhtml.Append("<br/>--------<br/>");  
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">大小</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">单双</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">总和：9-12</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">总和：8,13</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">总和：7,14</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">总和：6,15</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">总和：5,16</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">总和：4,17</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">对子</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">指定豹子</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">任意豹子</a><br/>");
    
   
    strhtml.Append("--------<br/>");  

    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
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
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=1\">大小</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">单双</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=2\">总和：9-12</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=3\">总和：8,13</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=4\">总和：7,14</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=5\">总和：6,15</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=6\">总和：5,16</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">总和：4,17</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">对子</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=15\">指定豹子</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=16\">任意豹子</a><br/>");
    
    strhtml.Append("</div>");
   
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
