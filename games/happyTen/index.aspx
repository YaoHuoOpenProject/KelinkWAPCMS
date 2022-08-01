<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("快乐十分", wmlVo));//显示头    
                                                                                                                                                                
if (ver == "1")
{

    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");

    strhtml.Append("<br/>我的投注:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已中</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>");
    strhtml.Append("<br/>我的兑奖:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">去兑奖</a>");

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("第<b>" + bookVo.period + "</b>期还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + " <a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a><br/>");

    
    strhtml.Append("押：");
    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=1&amp;id=" + bookVo.id + "\">选一数投</a>.");
    }
    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=2&amp;id=" + bookVo.id + "\">选一红投</a><br/>");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=3&amp;id=" + bookVo.id + "\">任选二</a>.");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=4&amp;id=" + bookVo.id + "\">选二连组</a>.");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=5&amp;id=" + bookVo.id + "\">选二连直</a><br/>");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=6&amp;id=" + bookVo.id + "\">任选三</a>.");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=13&amp;id=" + bookVo.id + "\">选三前组</a>.");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=14&amp;id=" + bookVo.id + "\">选三前直</a><br/>");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=15&amp;id=" + bookVo.id + "\">任选四</a>.");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=16&amp;id=" + bookVo.id + "\">任选五</a>.<br/>");
    }


    strhtml.Append("本期下注总金额:" + this.local_money + "个，");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">明细</a>");
    strhtml.Append("<br/>----------<br/>");



    strhtml.Append("往期开奖↓<a href=\"" + this.http_start + "games/happyTen/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">更多</a>.<a href=\"" + http_start + "games/happyTen/rank_list.aspx?nid=happyTen&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">榜单</a>.<a href=\"" + this.http_start + "games/happyTen/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">高手</a>.<a href=\"" + this.http_start + "games/happyTen/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">规则</a><br/>");


    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (listVo[i].state == 0)
        {
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].years + "年第" + listVo[i].period + "期:" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "-" + listVo[i].ball7 + "-" + listVo[i].ball8 + "</a>");
        }
        strhtml.Append("<br/>");

    }


    if (this.content != "")
    {        
        strhtml.Append(this.content);    
    }
    //strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("页面聊天 <a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a>");
   
    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"happyTen\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>发言</anchor>");
    strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=happyTen&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多...</a><br/>");
       
    
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
        }

    }

  
    strhtml.Append("--------<br/>");

    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        //strhtml.Append("--------<br/>");
        strhtml.Append("【<a href=\"" + this.http_start + "games/happyTen/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">开奖兑奖管理</a>】<br/>");
        strhtml.Append("--------<br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回游戏中心</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    //long ll = 0;
    //ll = Convert.ToInt64(Double.Parse("100") * Double.Parse("1.222") * 95 / 100);
    
    //Response.Write(ll+"-->");

    if (this.ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">" + this.ERROR + "</div>");
    }
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop);
    }
    strhtml.Append("<div class=\"subtitle\">快乐十分</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");

    strhtml.Append("<br/>我的投注:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已中</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>");
    strhtml.Append("<br/>我的兑奖:<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">去兑奖</a>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">第<b>" + bookVo.period + "</b>期还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + " <a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("押：");
    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=1&amp;id=" + bookVo.id + "\">选一数投</a>.");
    }
    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=2&amp;id=" + bookVo.id + "\">选一红投</a><br/>");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=3&amp;id=" + bookVo.id + "\">任选二</a>.");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=4&amp;id=" + bookVo.id + "\">选二连组</a>.");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=5&amp;id=" + bookVo.id + "\">选二连直</a><br/>");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=6&amp;id=" + bookVo.id + "\">任选三</a>.");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=13&amp;id=" + bookVo.id + "\">选三前组</a>.");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=14&amp;id=" + bookVo.id + "\">选三前直</a><br/>");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=15&amp;id=" + bookVo.id + "\">任选四</a>.");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;myhappyTen=16&amp;id=" + bookVo.id + "\">任选五</a>.<br/>");
    }


    strhtml.Append("本期下注总金额:" + this.local_money + "个，");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">明细</a>");
    strhtml.Append("</div>");



    strhtml.Append("<div class=\"subtitle\">往期开奖↓<a href=\"" + this.http_start + "games/happyTen/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">更多</a>.<a href=\"" + http_start + "games/happyTen/rank_list.aspx?nid=happyTen&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">榜单</a>.<a href=\"" + this.http_start + "games/happyTen/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">高手</a>.<a href=\"" + this.http_start + "games/happyTen/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">规则</a></div>");

    strhtml.Append("<div class=\"content\">");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        
        if (listVo[i].state == 0)
        {
       }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/happyTen/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].years + "年第" + listVo[i].period + "期:" + listVo[i].ball1 + "-" + listVo[i].ball2 + "-" + listVo[i].ball3 + "-" + listVo[i].ball4 + "-" + listVo[i].ball5 + "-" + listVo[i].ball6 + "-" + listVo[i].ball7 + "-" + listVo[i].ball8 + "</a>");
        }
        strhtml.Append("<br/>");
       
    }
    
    strhtml.Append("</div>");   
    
    
    
  
    if (this.content != "")
    {        
        strhtml.Append(this.content);    
    }
    strhtml.Append("<div class=\"subtitle\">聊天交流 <a class=\"urlbtn\" href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"happyTen\"/>");
    strhtml.Append("<br/><input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发言|发言|submit") + "\"/></form>");
      
    //strhtml.Append("<br/>");
    if (showRe > 0)
    {
        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }
            
            strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
            //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>:");
            
            strhtml.Append(relistVo[i].content + " <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + "</span><br/>");
            strhtml.Append("</div>");
        }

        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">暂无聊天记录！</div>");
        }
        else
        {
            //strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=happyTen&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多聊天...</a><br/>");
        }

        strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=happyTen&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看更多...</a></div>");
    

    }
    strhtml.Append("</div>");
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("【<a href=\"" + this.http_start + "games/happyTen/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">开奖兑奖管理</a>】<br/>");
        strhtml.Append("</div>");
    }
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回游戏中心</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
