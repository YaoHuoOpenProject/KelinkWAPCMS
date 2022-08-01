<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.marksix.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title ="下注"+siteVo.sitemoneyname;
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("所有录入框不能为空！  <br/>");
        Response.Write("</b>");
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
        Response.Write("下注成功，<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a><br/>");

    }

    if (this.INFO != "OK")
    {
      
        Response.Write("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖！<br/>");
        Response.Write("----------<br/>");
        Response.Write("上期第 <b>" + lastVo.period + "</b> 期开奖结果如下:<br/>");
        Response.Write("<b>平码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball1 + "\">" + lastVo.ball1 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball2 + "\">" + lastVo.ball2 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball3 + "\">" + lastVo.ball3 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball4 + "\">" + lastVo.ball4 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball5 + "\">" + lastVo.ball5 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball6 + "\">" + lastVo.ball6 + "</a><br/>");
        Response.Write("特码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ballTeMa + "\">" + lastVo.ballTeMa + "</a> (" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.wave_color_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.five_elements_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.single_double_from_number(configVo.config, lastVo.ballTeMa) + ")</b><br/>");


        if (myMarkSix == "9")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码，赔率" + WapTool.getArryString(configVo.config, '|', 9) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");

            Response.Write("----------<br/>");
            for (int i = 1; i < 50; i++)
            {
                string temp = "";
                if (i.ToString().Length == 1)
                {
                    temp = ("0" + i.ToString());
                }
                else
                {
                    temp = i.ToString();
                }

                if ((selurl + ",").IndexOf("," + temp + ",") >= 0)
                {
                    Response.Write(temp);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "\">" + temp + "</a>");

                }
                Response.Write("　");
                if (i % 7 == 0)
                {
                    Response.Write("<br/>");
                }


            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }

        }
        else if (myMarkSix == "10")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平码，赔率" + WapTool.getArryString(configVo.config, '|', 10) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            for (int i = 1; i < 50; i++)
            {
                string temp = "";
                if (i.ToString().Length == 1)
                {
                    temp = ("0" + i.ToString());
                }
                else
                {
                    temp = i.ToString();
                }

                if ((selurl + ",").IndexOf("," + temp + ",") >= 0)
                {
                    Response.Write(temp);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "\">" + temp + "</a>");

                }
                Response.Write("　");
                if (i % 7 == 0)
                {
                    Response.Write("<br/>");
                }


            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }
            Response.Write("<br/><br/>独平规则：即投注的号码在本期六个平码中出现才中奖.");

        }
        else if (myMarkSix == "11")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平特肖，赔率" + WapTool.getArryString(configVo.config, '|', 11) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            string[] arry = { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" };
            for (int i = 0; i < arry.Length; i++)
            {
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }

                if ((selurl + ",").IndexOf("," + arry[i] + ",") >= 0)
                {
                    Response.Write(arry[i]);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "\">" + arry[i] + "</a>");

                }
                Response.Write("　");



            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每肖金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }

            Response.Write("<br/><br/>平特肖规则：即投注的生肖在本期的七个号码中(特或平)有这个生肖即中奖.");

        }
        else if (myMarkSix == "12")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特肖，赔率" + WapTool.getArryString(configVo.config, '|', 12) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            string[] arry = { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" };
            for (int i = 0; i < arry.Length; i++)
            {
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }

                if ((selurl + ",").IndexOf("," + arry[i] + ",") >= 0)
                {
                    Response.Write(arry[i]);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "\">" + arry[i] + "</a>");

                }
                Response.Write("　");



            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content"+r+"\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每肖金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }

            Response.Write("<br/><br/>特肖规则：特.码对应的生肖");
        }
        else if (myMarkSix == "13")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码五行，赔率" + WapTool.getArryString(configVo.config, '|', 13) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            string[] arry = { "金", "木", "水", "火", "土" };
            Response.Write("选择属性:<select name=\"content"+r+"\">");
            for (int i = 0; i < arry.Length; i++)
            {
                Response.Write("<option value=\"" + arry[i] + "\">" + arry[i] + "</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");

        }
        else if (myMarkSix == "14")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            //Response.Write("<b>波色，赔率" + WapTool.getArryString(configVo.config, '|', 13) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("特码波色:<select name=\"content"+r+"\">");

            Response.Write("<option value=\"红\">红(赔率" + WapTool.getArryString(configVo.config, '|', 14) + ")</option>");
            Response.Write("<option value=\"绿\">绿(赔率" + WapTool.getArryString(configVo.config, '|', 15) + ")</option>");
            Response.Write("<option value=\"蓝\">蓝(赔率" + WapTool.getArryString(configVo.config, '|', 16) + ")</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");

        }
        else if (myMarkSix == "17")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码单双，赔率" + WapTool.getArryString(configVo.config, '|', 17) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择属性:<select name=\"content"+r+"\">");

            Response.Write("<option value=\"单\">单</option>");
            Response.Write("<option value=\"双\">双</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>单双规则：49不计单双(打和)");


        }
        else if (myMarkSix == "18")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码大小，赔率" + WapTool.getArryString(configVo.config, '|', 18) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择属性:<select name=\"content"+r+"\">");

            Response.Write("<option value=\"大\">大</option>");
            Response.Write("<option value=\"小\">小</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>大小规则：49不计单双(打和)");
        }
        else if (myMarkSix == "19")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平二中二，赔率" + WapTool.getArryString(configVo.config, '|', 19) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
           /*
            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");

            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content)\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            */

            Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=19&amp;id=" + bookVo.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width  +"\">请点击此进入彩版投注。</a>");
            Response.Write("<br/><br/>平二中二规则：投注的二个平码都中了才得奖.");

        }
        else if (myMarkSix == "20")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平三中二，赔率" + WapTool.getArryString(configVo.config, '|', 20) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            /*
            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");
            Response.Write("第三个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");

            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content)\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
           */
           Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=20&amp;id=" + bookVo.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width  +"\">请点击此进入彩版投注。</a>");
           
            Response.Write("<br/><br/>平三中二规则：投注的三个平码中二个或三个即中奖.");

        }
        else if (myMarkSix == "21")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平三中三，赔率" + WapTool.getArryString(configVo.config, '|', 21) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
/*
            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");
            Response.Write("第三个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0" + rnd.Next(1, 49).ToString(), 2) + "\"/><br/>");

            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

           // Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content)\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
*/
            Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=21&amp;id=" + bookVo.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">请点击此进入彩版投注。</a>");
           
            Response.Write("<br/><br/>平三中三规则：投注的三个平码全中才中奖.");

        }
        else if (myMarkSix == "51")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特串，赔率" + WapTool.getArryString(configVo.config, '|', 51) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
/*
            Response.Write("第一个号码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + rnd.Next(1, 49).ToString() + "\"/><br/>");

            Response.Write("第二个号码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + rnd.Next(1, 49).ToString() + "\"/><br/>");

            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

           // Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content)\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
 */
            Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=51&amp;id=" + bookVo.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">请点击此进入彩版投注。</a>");
           
            Response.Write("<br/><br/>特串规则：即投注的二个号码其中一个为特,一个为平码才中奖.");

        }
        else if (myMarkSix == "52")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平特尾，赔率" + WapTool.getArryString(configVo.config, '|', 52) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择平特尾数:<select name=\"content"+r+"\">");
            for (int i = 0; i < 10; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "尾</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>平特尾规则：即投注的尾数在本期的七个号码中(特或平)有这个尾即中奖.");
        }
        else if (myMarkSix == "53")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特尾，赔率" + WapTool.getArryString(configVo.config, '|', 53) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特尾数:<select name=\"content"+r+"\">");
            for (int i = 0; i < 10; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "尾</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>特尾规则：即投注的尾数在本期的特码有这个尾即中奖.");
        }
        else if (myMarkSix == "54")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特头，赔率" + WapTool.getArryString(configVo.config, '|', 54) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特头数:<select name=\"content"+r+"\">");
            for (int i = 0; i < 5; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "头</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>特头规则：即投注的头数在本期的特码有这个头即中奖.");
        }
        else if (myMarkSix == "55")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码家野，赔率" + WapTool.getArryString(configVo.config, '|', 55) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码家野:<select name=\"content"+r+"\">");

            Response.Write("<option value=\"家禽\">家禽</option>");
            Response.Write("<option value=\"野兽\">野兽</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>家野规则：<br/>家禽：" + WapTool.getArryString(configVo.config, '|', 60) + " <br/>野兽：" + WapTool.getArryString(configVo.config, '|', 61) + "");
        }
        else if (myMarkSix == "56")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>六肖，赔率" + WapTool.getArryString(configVo.config, '|', 56) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------");
            string[] arry = { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" };
            for (int i = 0; i < arry.Length; i++)
            {
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }

                //if ((selurl + ",").IndexOf("," + arry[i] + ",") >= 0)
                //{
                //    Response.Write(arry[i]);
                //}
                //else
                //{
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "\">" + arry[i] + "</a>");

                //}
                Response.Write("　");



            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content" + r + "\" value=\"" + selurl + "\"/><br/>");
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney" + r + "\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>确定投注</anchor><br/>");
            }
            
            Response.Write("<br/><br/>六肖规则：即自选六个生肖来投注,你选择的生肖在本期特码中出现才中奖");

        }
        else if (myMarkSix == "57")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码半波，赔率" + WapTool.getArryString(configVo.config, '|', 57) + "倍</b><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码半波:<select name=\"content"+r+"\">");
            Response.Write("<option value=\"红单\">红单</option>");
            Response.Write("<option value=\"红双\">红双</option>");
            Response.Write("<option value=\"蓝单\">蓝单</option>");
            Response.Write("<option value=\"蓝双\">蓝双</option>");
            Response.Write("<option value=\"绿单\">绿单</option>");
            Response.Write("<option value=\"绿双\">绿双</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");

        }
        else if (myMarkSix == "58")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码合数单双，赔率" + WapTool.getArryString(configVo.config, '|', 58) + "倍</b><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码合数单双:<select name=\"content"+r+"\">");
            Response.Write("<option value=\"合双\">合双</option>");
            Response.Write("<option value=\"合单\">合单</option>");

            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>合数单双规则：即投注了本期开奖对应的合单或合双才中奖.");

            Response.Write("<br/>49不合单也不合双，将打和。<br/>合单：" + WapTool.getArryString(configVo.config, '|', 62) + " <br/>合双：" + WapTool.getArryString(configVo.config, '|', 63) + "");

        }
        else if (myMarkSix == "59")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码合数大小，赔率" + WapTool.getArryString(configVo.config, '|', 59) + "倍</b><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码合数大小:<select name=\"content"+r+"\">");
            Response.Write("<option value=\"合大\">合大</option>");
            Response.Write("<option value=\"合小\">合小</option>");

            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<anchor><go href=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<postfield name=\"myMarkSix\" value=\"" + myMarkSix + "\"/>");
            Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
            Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>确定投注</anchor><br/>");
            Response.Write("<br/><br/>合数单双规则：即投注了本期开奖对应的合大或合小才中奖.");

            Response.Write("<br/>49不合大也不合小，将打和。<br/>合大：" + WapTool.getArryString(configVo.config, '|', 64) + " <br/>合小：" + WapTool.getArryString(configVo.config, '|', 65) + "");

        }
        Response.Write("<br/>");
        
        if (per != 0)
        {
            Response.Write("<br/>说明:如果您获胜,您将获得奖金的" + per + "%金币，即赢了收取" + (100 - per) + "%的手续费。");
        }
        Response.Write("<br/>");
    }
    Response.Write("--------<br/>");
    Response.Write("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
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
        Response.Write("<div class=\"tip\">下注成功，<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a></div>");
    
    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "games/marksix/doit.aspx\" method=\"post\">");
        Response.Write("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖！<br/>");
        Response.Write("----------<br/>");
        Response.Write("上期第 <b>" + lastVo.period + "</b> 期开奖结果如下:<br/>");
        Response.Write("<b>平码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball1 + "\">" + lastVo.ball1 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball2 + "\">" + lastVo.ball2 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball3 + "\">" + lastVo.ball3 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball4 + "\">" + lastVo.ball4 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball5 + "\">" + lastVo.ball5 + "</a>-<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball6 + "\">" + lastVo.ball6 + "</a><br/>");
        Response.Write("特码：<a href=\"" + this.http_start + "games/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ballTeMa + "\">" + lastVo.ballTeMa + "</a> (" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.wave_color_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.five_elements_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.single_double_from_number(configVo.config, lastVo.ballTeMa) + ")</b><br/>");

        
        if (myMarkSix == "9")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>"+bookVo.period+"</b> 期<br/>");
            Response.Write("<b>特码，赔率" + WapTool.getArryString(configVo.config, '|', 9) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
           
            Response.Write("----------<br/>");
            for (int i = 1; i < 50; i++)
            {
                string temp = "";
                if (i.ToString().Length == 1)
                {
                    temp =("0" + i.ToString());
                }
                else
                {
                    temp=i.ToString();
                }

                if ((selurl+",").IndexOf(","+temp+",") >= 0)
                {
                    Response.Write(temp);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix="+myMarkSix+"&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "\">" + temp + "</a>");

                }
                Response.Write("　");
                if (i % 7 == 0)
                {
                    Response.Write("<br/>");
                }


            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个"+siteVo.sitemoneyname+"(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

        }
        else if (myMarkSix == "10")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平码，赔率" + WapTool.getArryString(configVo.config, '|', 10) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            for (int i = 1; i < 50; i++)
            {
                string temp = "";
                if (i.ToString().Length == 1)
                {
                    temp = ("0" + i.ToString());
                }
                else
                {
                    temp = i.ToString();
                }

                if ((selurl + ",").IndexOf("," + temp + ",") >= 0)
                {
                    Response.Write(temp);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix="+myMarkSix+"&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "\">" + temp + "</a>");

                }
                Response.Write("　");
                if (i % 7 == 0)
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
            Response.Write("<br/><br/>独平规则：即投注的号码在本期六个平码中出现才中奖.");

        }
        else if (myMarkSix == "11")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平特肖，赔率" + WapTool.getArryString(configVo.config, '|', 11) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            string[] arry = {"鼠","牛","虎","兔","龙","蛇","马","羊","猴","鸡","狗","猪" };
            for (int i = 0; i < arry.Length ; i++)
            {
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }

                if ((selurl + ",").IndexOf("," + arry[i] + ",") >= 0)
                {
                    Response.Write(arry[i]);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "\">" + arry[i] + "</a>");

                }
                Response.Write("　");
                


            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每肖金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

            Response.Write("<br/><br/>平特肖规则：即投注的生肖在本期的七个号码中(特或平)有这个生肖即中奖.");

        }
        else if (myMarkSix == "12")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特肖，赔率" + WapTool.getArryString(configVo.config, '|', 12) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            string[] arry = { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" };
            for (int i = 0; i < arry.Length; i++)
            {
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }

                if ((selurl + ",").IndexOf("," + arry[i] + ",") >= 0)
                {
                    Response.Write(arry[i]);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "\">" + arry[i] + "</a>");

                }
                Response.Write("　");



            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每肖金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

            Response.Write("<br/><br/>特肖规则：特.码对应的生肖");
        }
        else if (myMarkSix == "13")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码五行，赔率" + WapTool.getArryString(configVo.config, '|', 13) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            string[] arry = { "金", "木", "水", "火", "土" };
            Response.Write("选择属性:<select name=\"content\">");
            for (int i = 0; i < arry.Length; i++)
            {
                Response.Write("<option value=\""+arry[i]+"\">"+arry[i]+"</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");


        }
        else if (myMarkSix == "14")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            //Response.Write("<b>波色，赔率" + WapTool.getArryString(configVo.config, '|', 13) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");
            
            Response.Write("特码波色:<select name=\"content\">");

            Response.Write("<option value=\"红\">红(赔率" + WapTool.getArryString(configVo.config, '|', 14) + ")</option>");
            Response.Write("<option value=\"绿\">绿(赔率" + WapTool.getArryString(configVo.config, '|', 15) + ")</option>");
            Response.Write("<option value=\"蓝\">蓝(赔率" + WapTool.getArryString(configVo.config, '|', 16) + ")</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");


        }
        else if (myMarkSix == "17")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码单双，赔率" + WapTool.getArryString(configVo.config, '|', 17) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择属性:<select name=\"content\">");

            Response.Write("<option value=\"单\">单</option>");
            Response.Write("<option value=\"双\">双</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>单双规则：49不计单双(打和)");
    

        }
        else if (myMarkSix == "18")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码大小，赔率" + WapTool.getArryString(configVo.config, '|', 18) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择属性:<select name=\"content\">");

            Response.Write("<option value=\"大\">大</option>");
            Response.Write("<option value=\"小\">小</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>大小规则：49不计单双(打和)");
        }
        else if (myMarkSix == "19")
        {
            Random rnd = new Random();
            
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平二中二，赔率" + WapTool.getArryString(configVo.config, '|', 19) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>平二中二规则：投注的二个平码都中了才得奖.");

        }
        else if (myMarkSix == "20")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平三中二，赔率" + WapTool.getArryString(configVo.config, '|', 20) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");
            Response.Write("第三个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>平三中二规则：投注的三个平码中二个或三个即中奖.");

        }
        else if (myMarkSix == "21")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平三中三，赔率" + WapTool.getArryString(configVo.config, '|', 21) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");
            Response.Write("第三个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>平三中三规则：投注的三个平码全中才中奖.");

        }
        else if (myMarkSix == "51")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特串，赔率" + WapTool.getArryString(configVo.config, '|', 51) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个号码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + rnd.Next(1, 49).ToString() + "\"/><br/>");

            Response.Write("第二个号码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + rnd.Next(1, 49).ToString() + "\"/><br/>");
           
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>特串规则：即投注的二个号码其中一个为特,一个为平码才中奖.");

        }
        else if (myMarkSix == "52")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平特尾，赔率" + WapTool.getArryString(configVo.config, '|', 52) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择平特尾数:<select name=\"content\">");
            for (int i = 0; i < 10; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "尾</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>平特尾规则：即投注的尾数在本期的七个号码中(特或平)有这个尾即中奖.");
        }
        else if (myMarkSix == "53")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特尾，赔率" + WapTool.getArryString(configVo.config, '|', 53) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特尾数:<select name=\"content\">");
            for (int i = 0; i < 10; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "尾</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>特尾规则：即投注的尾数在本期的特码有这个尾即中奖.");
        }
        else if (myMarkSix == "54")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特头，赔率" + WapTool.getArryString(configVo.config, '|', 54) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特头数:<select name=\"content\">");
            for (int i = 0; i < 5; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "头</option>");

            }
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>特头规则：即投注的头数在本期的特码有这个头即中奖.");
        }
        else if (myMarkSix == "55")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码家野，赔率" + WapTool.getArryString(configVo.config, '|', 55) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码家野:<select name=\"content\">");

            Response.Write("<option value=\"家禽\">家禽</option>");
            Response.Write("<option value=\"野兽\">野兽</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>家野规则：<br/>家禽：" + WapTool.getArryString(configVo.config, '|', 60) + " <br/>野兽：" + WapTool.getArryString(configVo.config, '|', 61) + "");
        }
        else if (myMarkSix == "56")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>六肖，赔率" + WapTool.getArryString(configVo.config, '|', 56) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            Response.Write("----------");
            string[] arry = { "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪" };
            for (int i = 0; i < arry.Length; i++)
            {
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }

                //if ((selurl + ",").IndexOf("," + arry[i] + ",") >= 0)
                //{
                //    Response.Write(arry[i]);
                //}
                //else
                //{
                    Response.Write("<a href=\"" + this.http_start + "games/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "\">" + arry[i] + "</a>");

                //}
                Response.Write("　");



            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            } 
            Response.Write("<br/><br/>六肖规则：即自选六个生肖来投注,你选择的生肖在本期特码中出现才中奖");

        }
        else if (myMarkSix == "57")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码半波，赔率" + WapTool.getArryString(configVo.config, '|', 57) + "倍</b><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码半波:<select name=\"content\">");
            Response.Write("<option value=\"红单\">红单</option>");
            Response.Write("<option value=\"红双\">红双</option>");
            Response.Write("<option value=\"蓝单\">蓝单</option>");
            Response.Write("<option value=\"蓝双\">蓝双</option>");
            Response.Write("<option value=\"绿单\">绿单</option>");
            Response.Write("<option value=\"绿双\">绿双</option>");
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");


        }
        else if (myMarkSix == "58")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码合数单双，赔率" + WapTool.getArryString(configVo.config, '|', 58) + "倍</b><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码合数单双:<select name=\"content\">");
            Response.Write("<option value=\"合双\">合双</option>");
            Response.Write("<option value=\"合单\">合单</option>");
            
            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>合数单双规则：即投注了本期开奖对应的合单或合双才中奖.");

            Response.Write("<br/>49不合单也不合双，将打和。<br/>合单：" + WapTool.getArryString(configVo.config, '|', 62) + " <br/>合双：" + WapTool.getArryString(configVo.config, '|', 63) + "");
       
        }
        else if (myMarkSix == "59")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码合数大小，赔率" + WapTool.getArryString(configVo.config, '|', 59) + "倍</b><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码合数大小:<select name=\"content\">");
            Response.Write("<option value=\"合大\">合大</option>");
            Response.Write("<option value=\"合小\">合小</option>");

            Response.Write("</select><br/>");
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>合数单双规则：即投注了本期开奖对应的合大或合小才中奖.");

            Response.Write("<br/>49不合大也不合小，将打和。<br/>合大：" + WapTool.getArryString(configVo.config, '|', 64) + " <br/>合小：" + WapTool.getArryString(configVo.config, '|', 65) + "");

        }
        Response.Write("<br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"mymarksix\" value=\"" + myMarkSix + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");        
        Response.Write("</form>");
        if (per != 0)
        {
            Response.Write("<br/>说明:如果您获胜,您将获得奖金的" + per + "%金币，即赢了收取"+(100-per)+"%的手续费。");
        }
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


