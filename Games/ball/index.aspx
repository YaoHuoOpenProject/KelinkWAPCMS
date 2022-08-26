<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.ball.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();



Response.Write(WapTool.showTop("皇冠球彩竟猜", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！<br/>");

    strhtml.Append("我的球彩投注:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">历史</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">兑奖</a><br/>");

    strhtml.Append("我的超级串投注:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">历史</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">兑奖</a><br/>");

    strhtml.Append("----------<br/>");
    //显示内容



    if (this.ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">全部</a>");
    }
    if (this.ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".联赛");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">刷新</a>");


    strhtml.Append("<br/>");
    strhtml.Append("强猜:<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">超级竟猜</a>");
    if (p_ison == "1")
    {
        strhtml.Append(".走地");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=1\">走地</a>");
    }


    strhtml.Append("<br/>赛事名称<input type=\"text\" name=\"p_one" + r + "\" size=\"8\" value=\"" + this.p_one + "\" />");

    strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/index.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"p_ison\" value=\"" + p_ison + "\"/>");
    strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
    strhtml.Append("<postfield name=\"p_one\" value=\"$(p_one" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>查询</anchor>");
    
   

    strhtml.Append("<br/>----------<br/>");





    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        indexs = indexs + kk;
        if (i % 2 == 0)
        {
           // strhtml.Append("<div class=\"line1\">");
        }
        else
        {
           // strhtml.Append("<div class=\"line2\">");
        }

        if (ptype == "3")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

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

            strhtml.Append(string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + "<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + listVo[i].p_type + "&amp;id=" + listVo[i].ID + "&amp;backtype=0&amp;page=" + this.CurrentPage + "\">[" + listVo[i].p_title + "]" + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");


            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{走}");
            }
        }
        strhtml.Append("<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>暂无当天赛事记录！</b><br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("----------<br/>");


    strhtml.Append("<a href=\"" + this.http_start + "games/ball/ball_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">赛事记录</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/help.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">游戏规则</a>");
    strhtml.Append("<br/>----------<br/>");

    strhtml.Append("闲聊:");
    if (this.isclose != "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">{关闭聊天}</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">{开启聊天}</a>");

    }
    strhtml.Append("<br/>");

    if (this.isclose == "0")
    {

        strhtml.Append("<b>聊聊经验吧</b><br/>");
        strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" size=\"8\" maxlength=\"200\"/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"nid\" value=\"ball\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>发言</anchor>");
        strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=ball&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多...</a><br/>");

        //strhtml.Append("<br/>");
        if (showRe > 0)
        {
            for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
                //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
                strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>:");

                strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");

            }

            if (relistVo == null)
            {
                strhtml.Append("暂无聊天记录！<br/>");
            }
            else
            {
                //strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=happyTen&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多聊天...</a><br/>");
            }

        }
        //strhtml.Append("<br/>");
    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("----------<br/>");
        strhtml.Append("【<a href=\"" + this.http_start + "games/ball/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">参数配置</a>.");
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">赛事管理</a>】");
        strhtml.Append("<br/>");
    }
    //导航按钮
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">皇冠球彩竟猜</div>");

    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！<br/>");

    strhtml.Append("我的球彩投注:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">历史</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">兑奖</a><br/>");

    strhtml.Append("我的超级串投注:<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=0&amp;touserid=" + this.userid + "\">未开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=1&amp;touserid=" + this.userid + "\">已开</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=2&amp;touserid=" + this.userid + "\">已中</a>.<a href=\"" + this.http_start + "games/ball/super_userbet_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=3&amp;touserid=" + this.userid + "\">历史</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/super_userwin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">兑奖</a><br/>");
  
    strhtml.Append("</div>");
    //显示内容
    strhtml.Append("<div class=\"subtitle\">");


    if (this.ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\""+this.http_start+"games/ball/index.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;ptype=0&amp;sid="+this.sid+"\">全部</a>");
    } 
    if (this.ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=1\">足球</a>");
    }
    if (this.ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=2\">篮球</a>");
    }

    if (this.ptype == "3")
    {
        strhtml.Append(".联赛");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=3\">联赛</a>");
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">刷新</a>");

  
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("强猜:<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0\">超级竟猜</a>");
    if (p_ison == "1")
    {
        strhtml.Append(".走地");
    }
    else  
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"&amp;p_ison=1\">走地</a>");
    }

    
    strhtml.Append("<br/><form name=\"f\" aciont=\"" + http_start + "games/ball/index.aspx\" method=\"get\">");
    strhtml.Append("赛事名称:<input type=\"text\" name=\"p_one\" size=\"5\" value=\"" + this.p_one + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"b\" value=\"查询\" />");    
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"p_ison\" value=\"" + p_ison + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + ptype + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    
    strhtml.Append("</div>");
    

  
    

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        indexs = indexs + kk;
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
            strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=0&amp;title=" + HttpUtility.UrlEncode(listVo[i].p_title) + "&amp;backtype=0\">" + listVo[i].p_title + "(" + listVo[i].ID + ")</a>");

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

            strhtml.Append(string.Format("{0:HH:mm}", listVo[i].p_TPRtime) + "<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + listVo[i].p_type + "&amp;id=" + listVo[i].ID + "&amp;backtype=0&amp;page=" + this.CurrentPage + "\">[" + listVo[i].p_title + "]" + listVo[i].p_one + "VS" + listVo[i].p_two + "</a>");


            if (listVo[i].p_ison == 1)
            {
                strhtml.Append("{走}");
            }
        }
        strhtml.Append("</div>");

    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无当天赛事记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"content\">");
   

    strhtml.Append("<a href=\""+this.http_start+"games/ball/ball_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">赛事记录</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/ball/help.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">游戏规则</a>");
     strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"subtitle\">闲聊:");
    if (this.isclose != "1")
    {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison="+this.p_ison+"\">{关闭聊天}</a>");
    }
    else
    {
         strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?isclose=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;p_ison=" + this.p_ison + "\">{开启聊天}</a>");

    }
    strhtml.Append("</div>");

    if (this.isclose == "0")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
        strhtml.Append("<input type=\"text\"  name=\"content\"  value=\"\" />");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"ball\"/>");
        strhtml.Append("<br/><input type=\"submit\" name=\"g\" value=\"" + this.GetLang("发言|发言|submit") + "\"/></form>");
        strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=ball&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多...</a><br/>");

        //strhtml.Append("<br/>");
        if (showRe > 0)
        {
            for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
                //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
                strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>:");

                strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");

            }

            if (relistVo == null)
            {
                strhtml.Append("暂无聊天记录！<br/>");
            }
            else
            {
                //strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=happyTen&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多聊天...</a><br/>");
            }

        }
        strhtml.Append("</div>");
    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("【<a href=\"" + this.http_start + "games/ball/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">参数配置</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=\">赛事管理</a>】");
    strhtml.Append("</div>");
    }
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
