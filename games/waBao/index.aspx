<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("挖宝竟猜", wmlVo));//显示头    
                                                                                                                                                               
if (ver == "1")
{

    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

   


    //显示内容
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");

    strhtml.Append("<br/>我的投注:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已中</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>");
    strhtml.Append("<br/>我的兑奖:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">去兑奖</a>");

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("第<b>" + bookVo.period + "</b>期还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + " <a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a><br/>");

    strhtml.Append("押:");
    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=1&amp;id=" + bookVo.id + "\">大小</a> ");
    }
    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=17&amp;id=" + bookVo.id + "\">单双</a> ");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=14&amp;id=" + bookVo.id + "\">对子</a> ");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=15&amp;id=" + bookVo.id + "\">指定豹</a> ");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=16&amp;id=" + bookVo.id + "\">任意豹</a> ");
    }
    strhtml.Append("<br/>");
    strhtml.Append("押总和:<br/>");

    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=2&amp;id=" + bookVo.id + "\">9-12</a> ");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=3&amp;id=" + bookVo.id + "\">8,13</a> ");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=4&amp;id=" + bookVo.id + "\">7,14</a> ");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=5&amp;id=" + bookVo.id + "\">6,15</a> ");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=6&amp;id=" + bookVo.id + "\">5,16</a> ");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=13&amp;id=" + bookVo.id + "\">4,17</a> ");
    }



    strhtml.Append("<br/>本期下注金额:" + this.local_money + " 个,");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">明细</a>");
    strhtml.Append("<br/>----------<br/>");

 




    //显示列表    
    strhtml.Append("往期开奖↓");
    strhtml.Append("<a href=\"" + http_start + "games/waBao/Rank_list.aspx?nid=waBao&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">榜单</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">高手</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>.<a href=\"" + this.http_start + "games/waBao/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">规则</a><br/>");



    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (listVo[i].state == 0)
        {
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/waBao/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].years + "年第" + listVo[i].period + "期:" + listVo[i].ball1 + "," + listVo[i].ball2 + "," + listVo[i].ball3 + "|" + listVo[i].ball4 + "|" + listVo[i].ball5 + "|" + listVo[i].ball6);

            if (listVo[i].ball7 != "")
            {
                strhtml.Append("|" + listVo[i].ball7);
            }
            if (listVo[i].ball8 != "")
            {
                strhtml.Append("|" + listVo[i].ball8);
            }
            strhtml.Append("</a>");
        }
        strhtml.Append("<br/>");

    }







   
    if (this.content != "")
    {
        strhtml.Append(this.content);
    }

    strhtml.Append("----------<br/>");
    strhtml.Append("页面聊天 <a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a>");
    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\" /><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"waBao\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>发言</anchor>");
    strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多...</a><br/>");
       
    
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
           // strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?id=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多聊天...</a><br/>");
        }

    }

 
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {

        strhtml.Append("【<a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/waBao/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">清空开奖下注记录</a>】<br/>");
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
    strhtml.Append("<div class=\"subtitle\">挖宝竟猜</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");

    strhtml.Append("<br/>我的投注:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已中</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>");
    strhtml.Append("<br/>我的兑奖:<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/waBao/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">去兑奖</a>");
    strhtml.Append("</div>");
    //strhtml.Append("<div class=\"title\">挖宝竟猜</div>");
    strhtml.Append("<div class=\"subtitle\">第<b>" + bookVo.period + "</b>期还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + " <a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("押:");
    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=1&amp;id=" + bookVo.id + "\">大小</a> ");
    }
    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=17&amp;id=" + bookVo.id + "\">单双</a> ");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=14&amp;id=" + bookVo.id + "\">对子</a> ");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=15&amp;id=" + bookVo.id + "\">指定豹</a> ");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=16&amp;id=" + bookVo.id + "\">任意豹</a> ");
    }
    strhtml.Append("<br/>");
    strhtml.Append("押总和:");

    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=2&amp;id=" + bookVo.id + "\">9-12</a> ");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=3&amp;id=" + bookVo.id + "\">8,13</a> ");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=4&amp;id=" + bookVo.id + "\">7,14</a> ");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=5&amp;id=" + bookVo.id + "\">6,15</a> ");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=6&amp;id=" + bookVo.id + "\">5,16</a> ");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=13&amp;id=" + bookVo.id + "\">4,17</a> ");
    }
    
    
  
   strhtml.Append("<br/>本期下注金额:" + this.local_money + " 个,");
   strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">明细</a>");
   strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");
    strhtml.Append("<br/><a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我的未开投注</a>－<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史投注</a>");
    strhtml.Append("</div>");
    
    
    
    //显示列表    
    strhtml.Append("<div class=\"subtitle\">往期开奖↓");
    strhtml.Append("<a href=\"" + http_start + "games/waBao/Rank_list.aspx?nid=waBao&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">榜单</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">高手</a>.");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>.<a href=\"" + this.http_start + "games/waBao/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">规则</a><br/>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        
        if (listVo[i].state == 0)
        {
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "games/waBao/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toyear=" + listVo[i].years + "&amp;content=" + listVo[i].period + "" + "\">" + listVo[i].years + "年第" + listVo[i].period + "期:" + listVo[i].ball1 + "," + listVo[i].ball2 + "," + listVo[i].ball3 + "|" + listVo[i].ball4 + "|" + listVo[i].ball5 + "|" + listVo[i].ball6);

            if (listVo[i].ball7 != "")
            {
                strhtml.Append("|" + listVo[i].ball7);
            }
            if (listVo[i].ball8 != "")
            {
                strhtml.Append("|" + listVo[i].ball8);
            }
            strhtml.Append("</a>");
        }
        strhtml.Append("<br/>");
      
    }

    

    



    strhtml.Append("</div>");

    if (this.content != "")
    {
        strhtml.Append(this.content);
    }
    strhtml.Append("<div class=\"subtitle\">聊天交流 <a class=\"urlbtn\" href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">刷新</a></div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"waBao\"/>");
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
        }

    }

    strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看更多...</a></div>");

    strhtml.Append("</div>");

    
    
    /*
    //显示内容
    //strhtml.Append("<div class=\"subtitle\">我的信息</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("欢迎您：<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + WapTool.GetColorNickName(userVo.idname, userVo.nickname, lang, ver) + "</a> <br/>");
    if (userVo.userid == 0)
    {
        strhtml.Append("请先<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode("games/gamesindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">登录</a>！");
    }
    else
    {
        strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid="+this.classid+"&amp;key=" + this.userid + "&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");
    }

    strhtml.Append("<br/><a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我的未开投注</a>－<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史投注</a>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">第 <b>" +lastVo.period  + "</b> 期开奖结果如下:</div>");
    strhtml.Append("<div class=\"content\"><b>" + lastVo.ball1 + "," + lastVo.ball2 + "," + lastVo.ball3 + " | " + lastVo.ball4 + " (" + lastVo.ball5 + "" + lastVo.ball6 + ")</b><br/>");
    strhtml.Append("状态:<b>" + GamesClassManager.Tool.MarkSix_state (lastVo.state)+ "</b><br/>");
    strhtml.Append("参与人数:"+this.last_people+"<br/>");
    strhtml.Append("下注金额:" + this.last_money + " 个"+siteVo.sitemoneyname+"<br/>");
    strhtml.Append("下注注数:" + this.last_doit + "<br/>");
    strhtml.Append("中奖人数:" + this.last_people_win + "<br/>");
    strhtml.Append("中奖注数:" + this.last_doit_win + "<br/>");
    strhtml.Append("中奖奖金:" + this.last_money_win + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">本期为: <b>" + bookVo.period + "</b> 期</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("开奖时间:" + string.Format("{0:yyyy-MM-dd HH:mm}", bookVo.OpenTime) + "<br/>");
    strhtml.Append("状态:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
    strhtml.Append("参与人数:" + this.local_people + "<br/>");
    strhtml.Append("下注金额:" + this.local_money + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("下注注数:" + this.local_doit + "<br/>");
    strhtml.Append("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖,<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">【刷新】</a> ");
    strhtml.Append("</div>");
    //显示列表    
    strhtml.Append("<div class=\"subtitle\">我要下注</div>");
    strhtml.Append("<div class=\"content\">");

    if (this.type1 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=1&amp;id=" + bookVo.id + "\">大小</a> (1赔" + type1 + ")<br/>");
    }
    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=17&amp;id=" + bookVo.id + "\">单双</a> (1赔" + type17 + ")<br/>");
    }
    
    if (this.type2 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=2&amp;id=" + bookVo.id + "\">总和:9-12</a> (1赔" + type2 + ")<br/>");
    }
    if (this.type3 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=3&amp;id=" + bookVo.id + "\">总和:8,13</a> (1赔" + type3 + ")<br/>");
    }
    if (this.type4 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=4&amp;id=" + bookVo.id + "\">总和:7,14</a> (1赔" + type4 + ")<br/>");
    }
    if (this.type5 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=5&amp;id=" + bookVo.id + "\">总和:6,15</a> (1赔" + type5 + ")<br/>");
    }
    if (this.type6 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=6&amp;id=" + bookVo.id + "\">总和:5,16</a> (1赔" + type6 + ")<br/>");
    }
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=13&amp;id=" + bookVo.id + "\">总和:4,17</a> (1赔" + type13 + ")<br/>");
    }
    if (this.type14 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=14&amp;id=" + bookVo.id + "\">对子</a> (1赔" + type14 + ")<br/>");
    }
    if (this.type15 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=15&amp;id=" + bookVo.id + "\">指定豹子</a> (1赔" + type15 + ")<br/>");
    }
    if (this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/waBao/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=16&amp;id=" + bookVo.id + "\">任意豹子</a> (1赔"+type16+")<br/>");
    }
    
    
    strhtml.Append("<b>[本期]：</b><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?toyear="+DateTime.Now.Year.ToString()+"&amp;content="+bookVo.period+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">下注统计</a>");
    strhtml.Append("－<a href=\"" + this.http_start + "games/waBao/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史记录</a>");
    
  
    
    
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">投注参考</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\""+this.http_start+"games/waBao/rank.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">【高手排行榜】<a/><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史开奖</a>－<a href=\"" + this.http_start + "games/waBao/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">游戏规则</a><br/>");
    strhtml.Append("</div>");
    if (this.content != "")
    {        
        strhtml.Append(this.content);    
    }
    strhtml.Append("<div class=\"subtitle\">聊聊经验吧</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<input type=\"text\"  name=\"content\" size=\"10\" value=\"\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"waBao\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("快速发言|快速发言|submit") + "\"/></form>");
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
            strhtml.Append("<a href=\"" + http_start + "games/chat/book_re.aspx?nid=waBao&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多聊天...</a><br/>");
        }

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">玩家排行</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "games/rank/book_list.aspx?nid=waBao&amp;type=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赢家排行</a>|<a href=\"" + http_start + "games/rank/book_list.aspx?nid=waBao&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赚币排行</a>");
    strhtml.Append("</div>");
     */ 
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("【<a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/waBao/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">清空开奖下注记录</a>】<br/>");
        strhtml.Append("</div>");
    }
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回游戏中心</a>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
