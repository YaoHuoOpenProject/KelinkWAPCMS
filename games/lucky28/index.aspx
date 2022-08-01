<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.lucky28.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("幸运28游戏", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

    strhtml.Append("<b>幸运28游戏</b><br/>");

    strhtml.Append("今日投注总数:" + configVo.todayTimes + "次 <br/>");
    strhtml.Append("今日投注总量:" + configVo.todayMoney + "个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("--------<br/>");

    //显示内容
    strhtml.Append("<b>我的信息</b>");
    strhtml.Append("<br/>");
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");
 
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/lucky28/book_list.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我的投注记录</a>|<a href=\"" + this.http_start + "games/lucky28/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史查询</a>");

    strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>第" + bookVo.periodID + "期-奖金池:" + this.totalMoney + siteVo.sitemoneyname + "！</b>"); //

    strhtml.Append("<br/>距开奖还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "！<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a>");
    //显示列表    
    strhtml.Append("<br/>");
    strhtml.Append("本期下注人数:" + bookVo.People + "人<br/>");

    strhtml.Append("=<a href=\"" + this.http_start + "games/lucky28/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + bookVo.periodID + "\">我要投注</a>= <br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + bookVo.periodID + "\">本期投注</a>");

    strhtml.Append("/<a href=\"" + this.http_start + "games/lucky28/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">游戏规则</a><br/>");

    strhtml.Append("【往期开奖查询】<br/>");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (listVo[i].Result != "")
        {
            strhtml.Append("第" + listVo[i].periodID + "期开<a href=\"" + this.http_start + "games/lucky28/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + listVo[i].periodID + "\">" + listVo[i].Result + "=" + listVo[i].num1 + "+" + listVo[i].num2 + "+" + listVo[i].num3 + "</a>");
            strhtml.Append("<br/>");
        }

    }
    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史查询查询&gt;&gt;</a>");


    strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>聊聊经验吧</b>");
    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" size=\"8\" maxlength=\"200\"/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"lucky28\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>快速提交</anchor>"); 
    strhtml.Append("<br/>");
    if (showRe > 0)
    {
        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            strhtml.Append("[<a href=\"" + this.http_start + "games/" + relistVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + relistVo[i].gameCn + "</a>]");
            //if (relistVo[i].content.Length > 10) relistVo[i].content = relistVo[i].content.Substring(0, 9) + "...";
            strhtml.Append(relistVo[i].content + "(<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + relistVo[i].userid + "\">" + relistVo[i].nickName + "</a>/" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + ")<br/>");

        }

        if (relistVo == null)
        {
            strhtml.Append("暂无聊天记录！<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=lucky28&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多聊天...</a><br/>");
        }

    }
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>玩家排行</b>");
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=lucky28&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赢家排行</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=lucky28&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赚币排行</a>");
      
    strhtml.Append("<br/>--------<br/>");

    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<br/>");
        strhtml.Append("【<a href=\"" + this.http_start + "games/lucky28/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/lucky28/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">清空开奖记录</a>】<br/>");
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

    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop);
    }
    strhtml.Append("<div class=\"subtitle\">幸运28游戏</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("今日投注总数:" + configVo.todayTimes + "次 <br/>");
    strhtml.Append("今日投注总量:" + configVo.todayMoney + "个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    
    //显示内容
    strhtml.Append("<div class=\"subtitle\">我的信息</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");
 
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/lucky28/book_list.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我的投注记录</a>|<a href=\"" + this.http_start + "games/lucky28/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史查询</a>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">第" + bookVo.periodID + "期-奖金池:" + this.totalMoney + siteVo.sitemoneyname + "！</div>");//奖金池:" + this.totalMoney + siteVo.sitemoneyname + "!

    strhtml.Append("<div class=\"content\">距开奖还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "！<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a>");
    //显示列表    
    strhtml.Append("<br/>");
    strhtml.Append("本期下注人数:"+bookVo.People+"人<br/>");
   
    strhtml.Append("=<a href=\"" + this.http_start + "games/lucky28/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + bookVo.periodID + "\">我要投注</a>= <br/>");

    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + bookVo.periodID + "\">本期投注</a>");
     
    strhtml.Append("/<a href=\"" + this.http_start + "games/lucky28/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">游戏规则</a><br/>");

    strhtml.Append("【往期开奖查询】<br/>");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (listVo[i].Result != "")
        {
            strhtml.Append("第" + listVo[i].periodID + "期开<a href=\"" + this.http_start + "games/lucky28/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + listVo[i].periodID + "\">" + listVo[i].Result + "=" + listVo[i].num1 + "+" + listVo[i].num2 + "+" + listVo[i].num3+"</a>");
            strhtml.Append("<br/>");
        }

    }
    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/history.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史查询查询&gt;&gt;</a>");
    
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">聊天交流 <a class=\"urlbtn\" href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"lucky28\"/>");
    strhtml.Append("<br/><input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发言|发言|submit") + "\"/>");

    strhtml.Append("</form><br/>");
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
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=lucky28&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看更多...</a></div>");

        }

    }

   
    strhtml.Append("</div>");
   
    strhtml.Append("<div class=\"subtitle\">玩家排行</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=lucky28&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赢家排行</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=lucky28&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赚币排行</a>");
    strhtml.Append("</div>");
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("【<a href=\"" + this.http_start + "games/lucky28/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/lucky28/index.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">清空开奖记录</a>】<br/>");
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
