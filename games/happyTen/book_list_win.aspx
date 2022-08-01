<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list_win.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.book_list_win" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string showtitle=GamesClassManager.Tool.GetHappyTen_PlayName(this.typeid) +"高手排行榜";

Response.Write(WapTool.showTop(showtitle, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    strhtml.Append("<b>" + showtitle + "</b>");

    strhtml.Append("<br/>--------<br/>"); 

    //显示列表

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
           // strhtml.Append("<div class=\"line1\">");
        }
        else
        {
           // strhtml.Append("<div class=\"line2\">");
        }


        strhtml.Append("Top" + kk + "." + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "投" + listVo[i].num + "次中" + listVo[i].attribute);


        strhtml.Append("<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<b>暂无记录！</b><br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<br/>--------<br/>");  
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/Rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + showtitle + "</div>");
    
   

    //显示列表

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }


        strhtml.Append("Top" + kk + "." + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "投" + listVo[i].num + "次中" + listVo[i].attribute);
        
        
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/Rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
