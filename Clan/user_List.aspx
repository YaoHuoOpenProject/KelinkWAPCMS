<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_List.aspx.cs" Inherits="KeLin.WebSite.clan.user_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="家族成员";
if (type == "0")
{
    title = "家族成员";
}
else if (type == "1")
{

    title = "成员排行";
}
else if (type == "1")
{

    title = "成员管理";
}


Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


   
    //显示列表
   
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
            
        if (type == "0")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
        }
        else if (type == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a> 积分:" + listVo[i].mark + "<br/>");
       

        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/user_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;touserid="+listVo[i].userid+"&amp;page=" + this.CurrentPage + "\">删除</a>]<br/>");
       
        }

        //strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + title + "</div>");


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
        index = index + kk;
        strhtml.Append(index + ".");
        if (type == "0")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
        }
        else if (type == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a> 积分:" + listVo[i].mark + "<br/>");


        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/user_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;touserid=" + listVo[i].userid + "&amp;page=" + this.CurrentPage + "\">删除</a>]<br/>");

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
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"" + "\">返回家族</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
