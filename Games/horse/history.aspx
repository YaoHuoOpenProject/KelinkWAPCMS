<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="KeLin.WebSite.Games.horse.history" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="历史查询";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("<b>赛马场前10期提示记录</b><br/>");
    //显示列表

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (listVo[i].Result != "")
        {
            strhtml.Append("第<a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + listVo[i].periodID + "\">" + listVo[i].periodID + "</a>场" +  listVo[i].Result+"<img src=\""+listVo[i].num+".gif\" alt=\"PIC\"/>胜出");

            strhtml.Append("<br/>");
        }
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回赛马场游戏</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append(title);    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">赛马场前10场提示记录</div>");
    

    //显示列表

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].Result != "")
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



            strhtml.Append("第<a href=\"" + this.http_start + "games/horse/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + listVo[i].periodID + "\">" + listVo[i].periodID + "</a>场" + listVo[i].Result + "<img src=\"" + listVo[i].num + ".gif\" alt=\"PIC\"/>胜出");

            strhtml.Append("</div>");
        }
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回赛马场游戏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
