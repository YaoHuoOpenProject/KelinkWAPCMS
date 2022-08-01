<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.rank.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=GamesClassManager.Tool.GetGameCN(id);
if(this.type=="0"){
    title = title+"赢家排行";
}else{
    title = title+"赚币排行";
}
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (type == "0")
    {
        strhtml.Append("赢家排行|<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">赚币排行</a>");
        strhtml.Append("<br/>排行榜按照净胜局数排列,比如赢20局输5局,则净胜15局<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">赢家排行</a>|赚币排行");
        strhtml.Append("<br/>排行榜按照在" + GamesClassManager.Tool.GetGameCN(id) + "游戏净赚金币数排名<br/>");
    
    }

    strhtml.Append("--------<br/>");
    //显示列表

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (type == "0")
        {
            strhtml.Append("<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">"+listVo[i].nickName+"</a>(ID"+listVo[i].userid+")净胜"+listVo[i].rankTimes+"局");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")净胜" + listVo[i].rankMoney + "个"+siteVo.sitemoneyname);
        
        }

        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "games/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+id+"" + "\">返回"+GamesClassManager.Tool.GetGameCN(id)+"游戏</a>-");
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
    strhtml.Append("<div class=\"content\">");
    if (type == "0")
    {
        strhtml.Append("赢家排行|<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=1&amp;nid=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">赚币排行</a>");
        strhtml.Append("<br/>排行榜按照净胜局数排列,比如赢20局输5局,则净胜15局");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=0&amp;nid=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">赢家排行</a>|赚币排行");
        strhtml.Append("<br/>排行榜按照在" + GamesClassManager.Tool.GetGameCN(id) + "游戏净赚金币数排名");
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
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")净胜" + listVo[i].rankTimes + "局");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")净胜" + listVo[i].rankMoney + "个" + siteVo.sitemoneyname);

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
    strhtml.Append("<a href=\"" + this.http_start + "games/" + id + "/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "" + "\">返回" + GamesClassManager.Tool.GetGameCN(id) + "游戏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
