<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank_List.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.Rank_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=GamesClassManager.Tool.GetGameCN(id);
if (this.type == "0")
{
    title = title + "胜率";
}
else if (this.type == "1")
{
    title = title + "盈利";
}
else if (this.type == "2")
{
    title = title + "亏损";
}
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (type == "0")
    {
        strhtml.Append("胜率");
      
    }else{
        
       strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">胜率</a>");
        
    }


    if (type == "1")
    {
        strhtml.Append(".盈利");

    }
    else
    {

        strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">盈利</a>");

    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        if (type == "2")
        {
            strhtml.Append(".亏损");

        }
        else
        {
            strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">亏损</a>");
        }

        strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返利</a>");
       
        
    }

    strhtml.Append("<br/>--------<br/>");
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        kk++;
        strhtml.Append("[第" + kk + "名]");
        if (type == "0")
        {
            strhtml.Append("<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;touserid="+listVo[i].userid+"&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"&amp;sid="+this.sid+"\">"+listVo[i].nickName+"</a>(ID"+listVo[i].userid+")净胜"+listVo[i].rankTimes+"局");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")净胜" + listVo[i].rankMoney + "个" + siteVo.sitemoneyname);
        
        }

        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {

        strhtml.Append("【<a href=\"" + this.http_start + "games/happyTen/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">清空开奖下注记录</a>】<br/>");
        strhtml.Append("--------<br/>");
    }

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
        strhtml.Append("胜率");

    }
    else
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">胜率</a>");

    }


    if (type == "1")
    {
        strhtml.Append(".盈利");

    }
    else
    {

        strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">盈利</a>");

    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        if (type == "2")
        {
            strhtml.Append(".亏损");

        }
        else
        {
            strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">亏损</a>");
        }
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返利</a>");
       
    strhtml.Append("</div>");

    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        kk++;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("[第" + kk + "名]");
        if (type == "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")净胜" + listVo[i].rankTimes + "局");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")净胜" + listVo[i].rankMoney + "个" + siteVo.sitemoneyname);

        }
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("【<a href=\"" + this.http_start + "games/happyTen/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">清空开奖下注记录</a>】<br/>");
        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/" + id + "/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "" + "\">返回" + GamesClassManager.Tool.GetGameCN(id) + "游戏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
