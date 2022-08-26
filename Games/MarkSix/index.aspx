<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="KeLin.WebSite.Games.MarkSix.index" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.title, wmlVo));//显示头    
                                                                                                                                                          
if (ver == "1")
{

    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop+"<br/>");
    }

 
    
  
    
   

    
        strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid="+this.classid+"&amp;key=" + this.userid + "&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");
   
        strhtml.Append("<br/>我的投注:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未开</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已开</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已中</a>");
    
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>");
        strhtml.Append("<br/>我的兑奖:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未兑</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已兑</a>");
        strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">去兑奖</a>");
       
        strhtml.Append("<br/>----------<br/>");
        //显示列表    
        strhtml.Append("<b>我要下注</b>");

        strhtml.Append("<b>[特类]：</b><br/>");
        if (this.type9 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=9&amp;id=" + bookVo.id + "\">特码</a>－");
        }


        if (this.type12 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=12&amp;id=" + bookVo.id + "\">特肖</a>－");
        }
        if (this.type53 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=53&amp;id=" + bookVo.id + "\">特尾</a>－");
        }
        if (this.type54 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=54&amp;id=" + bookVo.id + "\">特头</a>");
        }
        strhtml.Append("<br/>");
        if (this.type13 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=13&amp;id=" + bookVo.id + "\">五行</a>－");
        }
        if (this.type14 != "0" || this.type15 != "0" || this.type16 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=14&amp;id=" + bookVo.id + "\">波色</a>－");
        }

        if (this.type17 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=17&amp;id=" + bookVo.id + "\">单双</a>－");
        }
        if (this.type18 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=18&amp;id=" + bookVo.id + "\">大小</a>－");
        }
        if (this.type55 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=55&amp;id=" + bookVo.id + "\">家野</a><br/>");
        }
        if (this.type56 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=56&amp;id=" + bookVo.id + "\">六肖</a>－");
        }
        if (this.type57 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=57&amp;id=" + bookVo.id + "\">半波</a>－");
        }
        if (this.type58 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=58&amp;id=" + bookVo.id + "\">合数单双</a>－");
        }
        if (this.type59 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=59&amp;id=" + bookVo.id + "\">合数大小</a><br/>");
        }


        strhtml.Append("<b>[平类]：</b><br/>");
        if (this.type10 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=10&amp;id=" + bookVo.id + "\">独平</a>－");
        }
        if (this.type11 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=11&amp;id=" + bookVo.id + "\">平特肖</a>－");
        }
        if (this.type52 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=52&amp;id=" + bookVo.id + "\">平特尾</a>");
        }

        strhtml.Append("<br/>");
        strhtml.Append("<b>[连码]：</b><br/>");

        if (this.type19 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=19&amp;id=" + bookVo.id + "\">平2中2</a>－");
        }
        if (this.type20 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=20&amp;id=" + bookVo.id + "\">平3中2</a>－");
        }
        if (this.type21 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=21&amp;id=" + bookVo.id + "\">平3中3</a>－");
        }
        if (this.type51 != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=51&amp;id=" + bookVo.id + "\">特串</a> <br/>");
        }
        strhtml.Append("<b>[本期]：</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">下注统计</a>");
        strhtml.Append("－<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史记录</a>");





        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("<b>投注参考</b><br/>");

        strhtml.Append("【<a href=\"" + http_start + "games/marksix/rank_list.aspx?nid=marksix&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赌神榜单</a>.<a href=\"" + this.http_start + "games/marksix/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">高手排行榜</a>】<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史开奖</a>－<a href=\"" + this.http_start + "games/marksix/randnum.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">随机选号</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">波色对照</a>－<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">生肖对照</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">五行对照</a>－<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=\">号码属性</a><br/>");
  
    
    
    strhtml.Append("----------<br/>");
    
    strhtml.Append("本期为: <b>" + bookVo.period + "</b> 期<br/>");
    
    strhtml.Append("开奖时间:" + string.Format("{0:yyyy-MM-dd HH:mm}", bookVo.OpenTime) + "<a href=\"" + this.http_start + "games/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "\">【更正】</a> <br/>");
    strhtml.Append("状态:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
    strhtml.Append("参与人数:" + this.local_people + "<br/>");
    strhtml.Append("下注金额:" + this.local_money + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("下注注数:" + this.local_doit + "<br/>");
    strhtml.Append("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖,<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">【刷新】</a> ");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("上期第 <b>" + lastVo.period + "</b> 期开奖结果如下:<br/>");
    strhtml.Append("<b>平码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball1 + "\">" + lastVo.ball1 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball2 + "\">" + lastVo.ball2 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball3 + "\">" + lastVo.ball3 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball4 + "\">" + lastVo.ball4 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball5 + "\">" + lastVo.ball5 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball6 + "\">" + lastVo.ball6 + "</a><br/>");
    strhtml.Append("特码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ballTeMa + "\">" + lastVo.ballTeMa + "</a> (" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.wave_color_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.five_elements_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.single_double_from_number(configVo.config, lastVo.ballTeMa) + ")</b><br/>");
    strhtml.Append("状态:<b>" + GamesClassManager.Tool.MarkSix_state(lastVo.state) + "</b><br/>");
    strhtml.Append("参与人数:" + this.last_people + "<br/>");
    strhtml.Append("下注金额:" + this.last_money + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("下注注数:" + this.last_doit + "<br/>");
    strhtml.Append("中奖人数:" + this.last_people_win + "<br/>");
    strhtml.Append("中奖注数:" + this.last_doit_win + "<br/>");
    strhtml.Append("中奖奖金:" + this.last_money_win + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("----------<br/>");
    
    if (this.content != "")
    {        
        strhtml.Append(this.content+"<br/>");    
    }
    //strhtml.Append("<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<b>聊聊经验吧</b>");
    strhtml.Append("<br/>");
    strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\"marksix\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>发言</anchor>");
    strhtml.Append(".<a href=\"" + http_start + "games/chat/book_re.aspx?nid=marksix&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多...</a><br/>");
      
   // strhtml.Append("<br/>");
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

  
    strhtml.Append("<br/>--------<br/>");

    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("【<a href=\"" + this.http_start + "games/marksix/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/marksix/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">开奖管理</a>】<br/>");
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
   
    strhtml.Append("<div class=\"subtitle\">" + this.title + "</div>");
    
    
    //显示内容

    strhtml.Append("<div class=\"content\">");

    strhtml.Append("我随身有 <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;key=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + userVo.money + "</a> 个" + siteVo.sitemoneyname + "！");
    strhtml.Append("<br/>我的投注:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已开</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已中</a>");

    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史</a>");
    strhtml.Append("<br/>我的兑奖:<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=4&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">未兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?touserid=" + this.userid + "&amp;tostate=5&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">已兑</a>");
    strhtml.Append(".<a href=\"" + this.http_start + "games/marksix/book_user_win.aspx?touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">去兑奖</a>");

    strhtml.Append("</div>");
    //显示列表    
    strhtml.Append("<div class=\"subtitle\">我要下注</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<b>[特类]：</b><br/>");
    if (this.type9 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=9&amp;id=" + bookVo.id + "\">特码</a>－");
    }


    if (this.type12 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=12&amp;id=" + bookVo.id + "\">特肖</a>－");
    }
    if (this.type53 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=53&amp;id=" + bookVo.id + "\">特尾</a>－");
    }
    if (this.type54 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=54&amp;id=" + bookVo.id + "\">特头</a>");
    }
    strhtml.Append("<br/>");
    if (this.type13 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=13&amp;id=" + bookVo.id + "\">五行</a>－");
    }
    if (this.type14 != "0" || this.type15 != "0" || this.type16 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=14&amp;id=" + bookVo.id + "\">波色</a>－");
    }

    if (this.type17 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=17&amp;id=" + bookVo.id + "\">单双</a>－");
    }
    if (this.type18 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=18&amp;id=" + bookVo.id + "\">大小</a>－");
    }
    if (this.type55 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=55&amp;id=" + bookVo.id + "\">家野</a><br/>");
    }
    if (this.type56 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=56&amp;id=" + bookVo.id + "\">六肖</a>－");
    }
    if (this.type57 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=57&amp;id=" + bookVo.id + "\">半波</a>－");
    }
    if (this.type58 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=58&amp;id=" + bookVo.id + "\">合数单双</a>－");
    }
    if (this.type59 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=59&amp;id=" + bookVo.id + "\">合数大小</a><br/>");
    }


    strhtml.Append("<b>[平类]：</b><br/>");
    if (this.type10 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=10&amp;id=" + bookVo.id + "\">独平</a>－");
    }
    if (this.type11 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=11&amp;id=" + bookVo.id + "\">平特肖</a>－");
    }
    if (this.type52 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=52&amp;id=" + bookVo.id + "\">平特尾</a>");
    }

    strhtml.Append("<br/>");
    strhtml.Append("<b>[连码]：</b><br/>");

    if (this.type19 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=19&amp;id=" + bookVo.id + "\">平2中2</a>－");
    }
    if (this.type20 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=20&amp;id=" + bookVo.id + "\">平3中2</a>－");
    }
    if (this.type21 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=21&amp;id=" + bookVo.id + "\">平3中3</a>－");
    }
    if (this.type51 != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=51&amp;id=" + bookVo.id + "\">特串</a> <br/>");
    }
    strhtml.Append("<b>[本期]：</b><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?toyear=" + DateTime.Now.Year.ToString() + "&amp;content=" + bookVo.period + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">下注统计</a>");
    strhtml.Append("－<a href=\"" + this.http_start + "games/marksix/book_list_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史记录</a>");





    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">投注参考</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("【<a href=\"" + http_start + "games/marksix/rank_list.aspx?nid=marksix&amp;type=1&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">赌神榜单</a>.<a href=\"" + this.http_start + "games/marksix/rank.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">高手排行榜</a>】<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">历史开奖</a>－<a href=\"" + this.http_start + "games/marksix/randnum.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#c\">随机选号</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#a\">波色对照</a>－<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#b\">生肖对照</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/marksix/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "#c\">五行对照</a>－<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=\">号码属性</a><br/>");
    strhtml.Append("</div>");
    
  
    strhtml.Append("<div class=\"subtitle\">本期为: <b>" + bookVo.period + "</b> 期</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("开奖时间:" + string.Format("{0:yyyy-MM-dd HH:mm}", bookVo.OpenTime) + "<a href=\"" + this.http_start + "games/marksix/book_modify.aspx?siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "\">【更正】</a> <br/>");
    strhtml.Append("状态:<b>" + GamesClassManager.Tool.MarkSix_state(bookVo.state) + "</b><br/>");
    strhtml.Append("参与人数:" + this.local_people + "<br/>");
    strhtml.Append("下注金额:" + this.local_money + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("下注注数:" + this.local_doit + "<br/>");
    strhtml.Append("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖,<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">【刷新】</a> ");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">上期第 <b>" + lastVo.period + "</b> 期开奖结果如下:</div>");
    strhtml.Append("<div class=\"content\"><b>平码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball1 + "\">" + lastVo.ball1 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball2 + "\">" + lastVo.ball2 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball3 + "\">" + lastVo.ball3 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball4 + "\">" + lastVo.ball4 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball5 + "\">" + lastVo.ball5 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball6 + "\">" + lastVo.ball6 + "</a><br/>");
    strhtml.Append("特码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ballTeMa + "\">" + lastVo.ballTeMa + "</a> (" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.wave_color_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.five_elements_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.single_double_from_number(configVo.config, lastVo.ballTeMa) + ")</b><br/>");
    strhtml.Append("状态:<b>" + GamesClassManager.Tool.MarkSix_state(lastVo.state) + "</b><br/>");
    strhtml.Append("参与人数:" + this.last_people + "<br/>");
    strhtml.Append("下注金额:" + this.last_money + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("下注注数:" + this.last_doit + "<br/>");
    strhtml.Append("中奖人数:" + this.last_people_win + "<br/>");
    strhtml.Append("中奖注数:" + this.last_doit_win + "<br/>");
    strhtml.Append("中奖奖金:" + this.last_money_win + " 个" + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    
    if (this.content != "")
    {        
        strhtml.Append(this.content);    
    }
    strhtml.Append("<div class=\"subtitle\">聊天交流</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"nid\" value=\"marksix\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发言|发言|submit") + "\"/></form>");
    
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
            
            strhtml.Append(relistVo[i].content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].addtime) + "</span><br/>");
            strhtml.Append("</div>");
        }

        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">暂无聊天记录！</div>");
        }
        else
        {
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "games/chat/book_re.aspx?nid=marksix&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">查看更多...</a></div>");
     
        }

       

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
        strhtml.Append("【<a href=\"" + this.http_start + "games/marksix/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">参数属性配置</a>|<a href=\"" + this.http_start + "games/marksix/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">开奖管理</a>】<br/>");
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
