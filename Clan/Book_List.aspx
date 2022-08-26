<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.clan.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="家族列表";



Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (type == "0")
    {
        strhtml.Append("排列:最新.<a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">热门</a>.<a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">实力</a>");
   
    }
    else if (type == "1")
    {
        strhtml.Append("排列:<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">最新</a>.热门.<a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">实力</a>");
   
    }else if(type =="2")
    {
        strhtml.Append("排列:<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">最新</a>.<a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">热门</a>.实力");
   
    }

    strhtml.Append("<br/>--------<br/>");
    //显示列表

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (type == "0")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "人)<br/>");
        }
        else if (type == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "人)<br/>");
       

        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "人)[积分:" + listVo[i].clan_mark + "]<br/>");
       
        }

        //strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回家族</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"title\"><a href=\"" + this.http_start + "\">首页</a>>" + title + "</div>");
    strhtml.Append("<div class=\"content\">");
    if (type == "0")
    {
        strhtml.Append("排列：最新.<a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">热门</a> <a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">实力</a>");

    }
    else if (type == "1")
    {
        strhtml.Append("排列：<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">最新</a> 热门 <a href=\"" + this.http_start + "clan/book_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">实力</a>");

    }
    else if (type == "2")
    {
        strhtml.Append("排列：<a href=\"" + this.http_start + "clan/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">最新</a> <a href=\"" + this.http_start + "clan/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">热门</a> 实力");

    }
    strhtml.Append("</div>");

    //显示列表

    
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
        if (type == "0")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "人)<br/>");
        }
        else if (type == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "人)<br/>");


        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].id + "" + "\">" + listVo[i].clan_name + "</a>(" + listVo[i].clan_memberCount + "/" + listVo[i].clan_maxMemberCount + "人)[积分:" + listVo[i].clan_mark + "]<br/>");

        }
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?classid=" + classid + "" + "\">家族中心</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
