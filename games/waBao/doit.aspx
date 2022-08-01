<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title ="下注"+siteVo.sitemoneyname;
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("所有录入框不能为空！  ");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
      
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        

    }

    else if (this.INFO == "NUMBER")
    {

        Response.Write("<b>只能录入数值！或不在范围内</b><br/>");

    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("下注成功，<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a><br/>");

    }

    if (this.INFO != "OK")
    {
     
        //Response.Write("<form name=\"gt\" action=\"" + http_start + "games/waBao/doit.aspx\" method=\"post\">");
       
        
        Response.Write("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖！<br/>");



        if (mywaBao == "1")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>大小，赔率" + WapTool.getArryString(configVo.config, '|', 1) + "倍</b><br/>");
           
            Response.Write("----------<br/>");
            Response.Write("选择属性:<select name=\"content"+r+"\">");

            Response.Write("<option value=\"大\">大</option>");
            Response.Write("<option value=\"小\">小</option>");
            Response.Write("</select><br/>");
            Response.Write("每注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            
            Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");

           
        }
        else if (mywaBao == "17")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>单双，赔率" + WapTool.getArryString(configVo.config, '|', 17) + "倍</b><br/>");
           
            Response.Write("----------<br/>");
            Response.Write("选择属性:<select name=\"content"+r+"\">");

            Response.Write("<option value=\"单\">单</option>");
            Response.Write("<option value=\"双\">双</option>");
            Response.Write("</select><br/>");
            Response.Write("每注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");

        }
        else if (mywaBao == "2")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和9-12，赔率" + WapTool.getArryString(configVo.config, '|', 2) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            for (int i = 9; i < 13; i++)
            {
                string temp = "";

                temp = i.ToString();



                Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "\">押 " + temp + "</a>");


                Response.Write("　");
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }


            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }
            //Response.Write("<br/><br/>选一红投规则：19，20为红号，从这两个号码任选一个投注，开奖号码第一位是红号（19或20）即中奖。");

        }
        else if (mywaBao == "3")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和8,13，赔率" + WapTool.getArryString(configVo.config, '|', 3) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=8&amp;selurl=" + selurl + "\">押 8</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=13&amp;selurl=" + selurl + "\">押 13</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }

            Response.Write("<br/><br/>选二任选规则：从01-20中任选2个,投注号码与开奖号码任意两位相同即中奖，奖金8元。投注时可选择1个号码作为每注都有的胆码，再补充其它号码作为拖码投注。");

        }
        else if (mywaBao == "4")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和7,14，赔率" + WapTool.getArryString(configVo.config, '|', 4) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=7&amp;selurl=" + selurl + "\">押 7</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=14&amp;selurl=" + selurl + "\">押 14</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                ///Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }

            Response.Write("<br/><br/>选二任选规则：从01-20中任选2个,投注号码与开奖号码任意两位相同即中奖，奖金8元。投注时可选择1个号码作为每注都有的胆码，再补充其它号码作为拖码投注。");

        }
        else if (mywaBao == "5")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和6,15，赔率" + WapTool.getArryString(configVo.config, '|', 5) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=6&amp;selurl=" + selurl + "\">押 6</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=15&amp;selurl=" + selurl + "\">押 15</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }


        }
        else if (mywaBao == "6")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和5,16，赔率" + WapTool.getArryString(configVo.config, '|', 6) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=5&amp;selurl=" + selurl + "\">押 5</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=16&amp;selurl=" + selurl + "\">押 16</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }


        }
        else if (mywaBao == "13")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和4,17，赔率" + WapTool.getArryString(configVo.config, '|', 13) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=4&amp;selurl=" + selurl + "\">押 4</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=17&amp;selurl=" + selurl + "\">押 17</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }


        }
        else if (mywaBao == "14")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>对子，赔率" + WapTool.getArryString(configVo.config, '|', 14) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=1&amp;selurl=" + selurl + "\">押 两个1</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=2&amp;selurl=" + selurl + "\">押 两个2</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=3&amp;selurl=" + selurl + "\">押 两个3</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=4&amp;selurl=" + selurl + "\">押 两个4</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=5&amp;selurl=" + selurl + "\">押 两个5</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=6&amp;selurl=" + selurl + "\">押 两个6</a><br/>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }


        }
        else if (mywaBao == "15")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>指定豹子，赔率" + WapTool.getArryString(configVo.config, '|', 15) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=1&amp;selurl=" + selurl + "\">押 豹子1</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=2&amp;selurl=" + selurl + "\">押 豹子2</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=3&amp;selurl=" + selurl + "\">押 豹子3</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=4&amp;selurl=" + selurl + "\">押 豹子4</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=5&amp;selurl=" + selurl + "\">押 豹子5</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=6&amp;selurl=" + selurl + "\">押 豹子6</a><br/>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }


        }
        else if (mywaBao == "16")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>任意豹子，赔率" + WapTool.getArryString(configVo.config, '|', 16) + "倍</b><br/>");
            Response.Write("已下" + this.num + "注，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=0&amp;selurl=" + selurl + "\">押任意豹子</a><br/>");


            if (action == "sel")
            {
                Response.Write("<br/>每注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/wabao/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"" + selurl + "\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }


        }
        Response.Write("<br/>");
       
        if (per != 0)
        {
            Response.Write("<br/>说明:如果您获胜,您将获得奖金的" + per + "%金币，即赢了收取" + (100 - per) + "%的手续费。");
        }
        Response.Write("<br/>");
    }

    Response.Write("--------<br/>");
    Response.Write("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
  Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + title + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("所有录入框不能为空！  ");
        Response.Write("</div>");
    }  
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
   
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<div class=\"tip\"><b>只能录入数值！或不在范围内</b></div>");

    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<div class=\"tip\"><b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b></div>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">下注成功，<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a></div>");
    
    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "games/waBao/doit.aspx\" method=\"post\">");
        Response.Write("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖！<br/>");
        
        
        
        if (mywaBao == "1")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>"+bookVo.period+"</b> 期<br/>");
            Response.Write("<b>大小，赔率" + WapTool.getArryString(configVo.config, '|', 1) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
           
            Response.Write("----------<br/>");
            Response.Write("选择属性:<select name=\"content\">");

            Response.Write("<option value=\"大\">大</option>");
            Response.Write("<option value=\"小\">小</option>");
            Response.Write("</select><br/>");
            Response.Write("每注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个"+siteVo.sitemoneyname+"(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            

        }
        else if (mywaBao == "17")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>单双，赔率" + WapTool.getArryString(configVo.config, '|', 17) + "倍</b><br/>");
           // Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");

            Response.Write("----------<br/>");
            Response.Write("选择属性:<select name=\"content\">");

            Response.Write("<option value=\"单\">单</option>");
            Response.Write("<option value=\"双\">双</option>");
            Response.Write("</select><br/>");
            Response.Write("每注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");


        }
        else if (mywaBao == "2")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和9-12，赔率" + WapTool.getArryString(configVo.config, '|', 2) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            for (int i = 9; i < 13; i++)
            {
                string temp = "";
               
                    temp = i.ToString();
                

                
                    Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao="+mywaBao+"&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "\">押 " + temp + "</a>");

                
                Response.Write("　");
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }


            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                
            }
            //Response.Write("<br/><br/>选一红投规则：19，20为红号，从这两个号码任选一个投注，开奖号码第一位是红号（19或20）即中奖。");

        }
        else if (mywaBao == "3")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和8,13，赔率" + WapTool.getArryString(configVo.config, '|', 3) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=8&amp;selurl=" + selurl + "\">押 8</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=13&amp;selurl=" + selurl + "\">押 13</a>");

            

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

            Response.Write("<br/><br/>选二任选规则：从01-20中任选2个,投注号码与开奖号码任意两位相同即中奖，奖金8元。投注时可选择1个号码作为每注都有的胆码，再补充其它号码作为拖码投注。");

        }
        else if (mywaBao == "4")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和7,14，赔率" + WapTool.getArryString(configVo.config, '|', 4) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=7&amp;selurl=" + selurl + "\">押 7</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=14&amp;selurl=" + selurl + "\">押 14</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

            Response.Write("<br/><br/>选二任选规则：从01-20中任选2个,投注号码与开奖号码任意两位相同即中奖，奖金8元。投注时可选择1个号码作为每注都有的胆码，再补充其它号码作为拖码投注。");

        }
        else if (mywaBao == "5")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和6,15，赔率" + WapTool.getArryString(configVo.config, '|', 5) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=6&amp;selurl=" + selurl + "\">押 6</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=15&amp;selurl=" + selurl + "\">押 15</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

           
        }
        else if (mywaBao == "6")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和5,16，赔率" + WapTool.getArryString(configVo.config, '|', 6) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=5&amp;selurl=" + selurl + "\">押 5</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=16&amp;selurl=" + selurl + "\">押 16</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }


        }
        else if (mywaBao == "13")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>总和4,17，赔率" + WapTool.getArryString(configVo.config, '|',13) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=4&amp;selurl=" + selurl + "\">押 4</a><br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=17&amp;selurl=" + selurl + "\">押 17</a>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }


        }
        else if (mywaBao == "14")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>对子，赔率" + WapTool.getArryString(configVo.config, '|', 14) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=1&amp;selurl=" + selurl + "\">押 两个1</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=2&amp;selurl=" + selurl + "\">押 两个2</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=3&amp;selurl=" + selurl + "\">押 两个3</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=4&amp;selurl=" + selurl + "\">押 两个4</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=5&amp;selurl=" + selurl + "\">押 两个5</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=6&amp;selurl=" + selurl + "\">押 两个6</a><br/>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }


        }
        else if (mywaBao == "15")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>指定豹子，赔率" + WapTool.getArryString(configVo.config, '|', 15) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=1&amp;selurl=" + selurl + "\">押 豹子1</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=2&amp;selurl=" + selurl + "\">押 豹子2</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=3&amp;selurl=" + selurl + "\">押 豹子3</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=4&amp;selurl=" + selurl + "\">押 豹子4</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=5&amp;selurl=" + selurl + "\">押 豹子5</a><br/>");
            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=6&amp;selurl=" + selurl + "\">押 豹子6</a><br/>");



            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }


        }
        else if (mywaBao == "16")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>任意豹子，赔率" + WapTool.getArryString(configVo.config, '|', 16) + "倍</b><br/>");
            Response.Write("已下" + this.num + "注，<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("<a href=\"" + this.http_start + "games/waBao/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mywaBao=" + mywaBao + "&amp;id=" + bookVo.id + "&amp;selcontent=0&amp;selurl=" + selurl + "\">押任意豹子</a><br/>");
         

            if (action == "sel")
            {
                Response.Write("<br/><input type=\"hidden\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }


        }
        Response.Write("<br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"mywaBao\" value=\"" + mywaBao + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</form>");
        if (per != 0)
        {
            Response.Write("<br/>说明:如果您获胜,您将获得奖金的" + per + "%金币，即赢了收取"+(100-per)+"%的手续费。");
        }
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


