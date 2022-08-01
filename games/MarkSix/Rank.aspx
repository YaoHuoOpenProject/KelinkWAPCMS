<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank.aspx.cs" Inherits="KeLin.WebSite.Games.marksix.Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("高手排行榜单", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
   
   
    

    strhtml.Append("<b>高手排行榜单</b>");
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("<b>特类</b><br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=9\">特码</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=12\">特肖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=53\">特尾</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=54\">特头</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">五行</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">波色</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">单双</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=18\">大小</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=55\">家野</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=56\">六肖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=57\">半波</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=58\">合数单双</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=59\">合数大小</a><br/>");

    strhtml.Append("--------<br/>");
    strhtml.Append("<b>平类</b><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=10\">独平</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=11\">平特肖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=52\">平特尾</a><br/>");

    strhtml.Append("--------<br/>");
    strhtml.Append("<b>连码</b><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=19\">平二中二</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=20\">平三中二</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=21\">平三中三</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=51\">特串</a><br/>");

    strhtml.Append("--------<br/>");

    //导航按钮

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    strhtml.Append("<div class=\"title\">高手排行榜单</div>");
    strhtml.Append("<div class=\"subtitle\">特类</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=9\">特码</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=12\">特肖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=53\">特尾</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=54\">特头</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=13\">五行</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=14\">波色</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=17\">单双</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=18\">大小</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=55\">家野</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=56\">六肖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=57\">半波</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=58\">合数单双</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=59\">合数大小</a><br/>");
   
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">平类</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=10\">独平</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=11\">平特肖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=52\">平特尾</a><br/>");
       
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">连码</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=19\">平二中二</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=20\">平三中二</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=21\">平三中三</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_win.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;typeid=51\">特串</a><br/>");

    strhtml.Append("</div>");
   
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
