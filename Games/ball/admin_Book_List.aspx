<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="球彩竞猜管理后台";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("输入球队或赛事ID：<br/><input type=\"text\" name=\"p_title" + r + "\" value=\"" + this.p_title + "\" size=\"8\"/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/admin_book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\" />");
    strhtml.Append("<postfield name=\"p_title\" value=\"$(p_title" + r + ")\" />");      
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    strhtml.Append("<br/>--------<br/>");
    //显示列表
     if (ptype == "1")
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">全部</a>.足球.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");
    }
     else if (ptype == "2")
     {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">全部</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>.篮球.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");
   

     }
     else if (ptype == "3")
     {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">全部</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>.联赛.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");
   

     }
     else
     {
         strhtml.Append("全部.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");
   

     }

     strhtml.Append("<br/>");
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            if (i != 0)
            {
                if (string.Format("{0:MM月dd日}", listVo[i].p_TPRtime) != string.Format("{0:MM月dd日}", listVo[i - 1].p_TPRtime))
                {

                    strhtml.Append(string.Format("{0:MM月dd日}", listVo[i].p_TPRtime) + "<br/>");

                }
            }
            else
            {
                strhtml.Append(string.Format("{0:MM月dd日}", listVo[i].p_TPRtime) + "<br/>");
            }

            strhtml.Append("[<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">管理</a>]<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">" + string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");
            if (listVo[i].p_del == 1)
            {
                strhtml.Append("{隐}");
            }
            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{走}");
            }
            if (listVo[i].p_active == 1)
            {
                strhtml.Append("{已开}");
            }
            if (listVo[i].p_active == 2)
            {
                strhtml.Append("{平盘}");
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
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回球彩竟猜</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回游戏中心</a> ");
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
    strhtml.Append("输入球队或赛事ID：<br/><input type=\"text\" name=\"p_title\" value=\"" + p_title + "\" size=\"8\"/>");
   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + this.ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "\">增加赛事</a>.排行榜.搜索");
    strhtml.Append("<br/>");
    //显示列表
    if (ptype == "1")
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">全部</a>.足球.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");
    }
    else if (ptype == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">全部</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>.篮球.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");


    }
    else if (ptype == "3")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">全部</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>.联赛.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");


    }
    else
    {
        strhtml.Append("全部.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>.<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>.<a href=\"" + this.http_start + "games/ball/admin_super.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=4\">串串</a>");


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
        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

        }
        else
        {
            if (i != 0)
            {
                if (string.Format("{0:MM月dd日}", listVo[i].p_TPRtime) != string.Format("{0:MM月dd日}", listVo[i - 1].p_TPRtime))
                {

                    strhtml.Append(string.Format("{0:MM月dd日}", listVo[i].p_TPRtime) + "<br/>");

                }
            }
            else
            {
                strhtml.Append(string.Format("{0:MM月dd日}", listVo[i].p_TPRtime) + "<br/>");
            }

            strhtml.Append("[<a href=\"" + this.http_start + "games/ball/admin_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">管理</a>]<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].ID + "\">" + string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");

            if (listVo[i].p_del == 1)
            {
                strhtml.Append("{隐}");
            }
            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{走}");
            }
            if (listVo[i].p_active == 1)
            {
                strhtml.Append("{已开}");
            }
            if (listVo[i].p_active == 2)
            {
                strhtml.Append("{平盘}");
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
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回球彩游戏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回游戏中心</a> ");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
