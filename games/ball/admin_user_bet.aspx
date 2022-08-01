<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_user_bet.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_user_bet" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="球彩竞猜管理后台";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("输入昵称或会员ID：<br/><input type=\"text\" name=\"p_title" + r + "\" value=\"" + this.p_title + "\" size=\"8\"/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/admin_user_bet.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + this.id + "\" />");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<postfield name=\"searchtype\" value=\"" + this.searchtype + "\" />");
    strhtml.Append("<postfield name=\"p_title\" value=\"$(p_title" + r + ")\" />");      
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    strhtml.Append("<br/>--------<br/>");
    //显示列表
     if (searchtype == "1")
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;searchtype=0\">下注记录</a>|赢输记录");
    }
     else
     {
         strhtml.Append("下注记录|<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "&amp;searchtype=1\">赢输记录</a>");
   

     }
    

     strhtml.Append("<br/>");
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;        
        strhtml.Append(index);
        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].payusid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].payusname + "</a>下注" + listVo[i].payCent.ToString("f2") + siteVo.sitemoneyname + ",共" + listVo[i].ID + "注");
        if (searchtype == "1")
        {
            strhtml.Append("赢:" + listVo[i].p_getMoney.ToString("f2"));

        }
        
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录或赛事并没有结束...<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype="+this.ptype+"&amp;id="+this.id+"" + "\">返回上级</a>");

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
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/apple/book_list.aspx\" method=\"get\">");
    strhtml.Append("输入昵称或会员ID：<br/><input type=\"text\" name=\"p_title\" value=\"" + p_title + "\" size=\"8\"/>");
   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"searchtype\" value=\"" + searchtype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    strhtml.Append("</form><br/>");
  
    //显示列表
    if (searchtype == "1")
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;searchtype=0&amp;id="+this.id+"\">下注记录</a>|赢输记录");
    }
    else
    {
        strhtml.Append("下注记录|<a href=\"" + this.http_start + "games/ball/admin_user_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;searchtype=1&amp;id=" + this.id + "\">赢输记录</a>");


    }
    strhtml.Append("</div>");
    //显示列表
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
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
        strhtml.Append(index);
        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].payusid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].payusname + "</a>下注" + listVo[i].payCent.ToString("f2") + siteVo.sitemoneyname + ",共" + listVo[i].ID + "注");
        if (searchtype == "1")
        {
            strhtml.Append("赢:" + listVo[i].p_getMoney.ToString("f2"));

        }
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录或赛事并没有结束...</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "" + "\">返回上级</a>");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
