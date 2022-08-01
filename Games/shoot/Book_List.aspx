<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.shoot.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="";
if(this.type=="1"){
    title = "应战记录";
}else{
    title = "挑战记录";
}
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    strhtml.Append("我的");
    if (type == "0")
    {
        strhtml.Append("挑战记录|<a href=\"" + this.http_start + "games/shoot/book_list.aspx?type=1&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">应战记录</a>");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/shoot/book_list.aspx?type=0&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">挑战记录</a>|应战记录");

    }

    strhtml.Append("<br/>--------<br/>");
    //显示列表

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (type == "0")
        {
            strhtml.Append("ID:<a href=\"" + this.http_start + "games/shoot/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>,");
            if (listVo[i].state == 0)
            {
                strhtml.Append("进行中");
            }
            else if (listVo[i].state == 2)
            {
                strhtml.Append("被<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>应战,获胜,您赚了" + listVo[i].myMoney + "(包税)个" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("被<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>应战,失败,输了" + listVo[i].myMoney + "个" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("平局!");
            }

        }
        else
        {


            strhtml.Append("您应战<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>的ID:<a href=\"" + this.http_start + "games/shoot/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>的挑战,");
            if (listVo[i].state == 2)
            {
                strhtml.Append("失败,您输了" + listVo[i].myMoney + "个" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("获胜,您赚了" + listVo[i].myMoney + "(包税)个" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("平局!");
            }


        }
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回射门游戏</a>-");
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
    strhtml.Append("我的");
    if (type == "0")
    {
        strhtml.Append("挑战记录|<a href=\"" + this.http_start + "games/shoot/book_list.aspx?type=1&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">应战记录</a>");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/shoot/book_list.aspx?type=0&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">挑战记录</a>|应战记录");

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
            strhtml.Append("ID:<a href=\"" + this.http_start + "games/shoot/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;touserid="+this.touserid+"&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>,");
            if (listVo[i].state == 0)
            {
                strhtml.Append("进行中");
            }
            else if (listVo[i].state == 2)
            {
                strhtml.Append("被<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>应战,获胜,您赚了" + listVo[i].myMoney + "(包税)个" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("被<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>应战,失败,输了" + listVo[i].myMoney + "个" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("被<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>应战,平局!");
            }

        }
        else
        {


            strhtml.Append("您应战<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>的ID:<a href=\"" + this.http_start + "games/shoot/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;touserid=" + this.touserid + "&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>的挑战,");
            if (listVo[i].state == 2)
            {
                strhtml.Append("失败,您输了" + listVo[i].myMoney + "个" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("获胜,您赚了" + listVo[i].myMoney + "(包税)个" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("平局!");
            }
            else if (listVo[i].state == 0)
            {
                strhtml.Append("进行中!");
            }


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
    strhtml.Append("<a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回射门游戏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
