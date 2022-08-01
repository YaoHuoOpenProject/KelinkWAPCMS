<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title ="发表投注贴";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    Response.Write("<br/><a href=\"" + this.http_start + "bbs/marksix/doit.aspx?mymarksix=" + WapTool.getArryString(classVo.smallimg, '|', 39)+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">进入WAP2.0界面发表</a> <br/>");
   

 
    Response.Write("--------<br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
    
    Response.Write(WapTool.GetVS(wmlVo));
  Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + title + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
   if (this.INFO == "NULL")
    {
        Response.Write("<b>标题最少" + this.titlemax + "字，内容最少" + this.contentmax + "字！</b><br/>");

    }
    else if (this.INFO == "TITLEMAX")
    {

        if (title_max != "0")
        {
            Response.Write("<b>标题最大" + this.title_max + "字。</b><br/>");

        }
        if (content_max != "0")
        {
            Response.Write("<b>内容最大" + this.content_max + "字。</b><br/>");

        }
    }
    else if (this.INFO == "ERR_FORMAT")
    {
        Response.Write("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "PWERROR")
    {

        Response.Write("<b>密码错误，请重新录入我的密码！</b><br/>");
    }
    else if (this.INFO == "ERROR_Secret")
    {

        Response.Write("<b>暗号错误，如果忘记联系站长索取！</b><br/>");
    }
    else if (this.INFO == "MAX")
    {

        Response.Write("<b>今天你已超过发贴限制：" + this.KL_CheckBBSCount + " 个贴子了，请明天再来！</b><br/>");
    }
    else if (this.INFO == "SENDMONEY")
    {

        Response.Write("<b>你当前的只有:" + userVo.money + "个，所以你悬赏值只能小于或等于" + userVo.money + "个</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>你当前的只有:" + userVo.money + "个，发贴需要扣掉：" + getmoney2 + "个</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    } 
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
   
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<b>只能录入数值！或不在范围内</b>");

    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("发表投注贴成功，<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">返回</a>");
    
    }

   Response.Write("</div>");

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "bbs/marksix/doit.aspx\" method=\"post\">");
        Response.Write("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("本"+bookVo.period+"期开奖时间:"+bookVo.OpenTime);
        Response.Write("<br/>还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖！<br/>");
        Response.Write("----------<br/>");
        Response.Write("上期第 <b>" + lastVo.period + "</b> 期开奖结果如下:<br/>");
        Response.Write("<b>平码：<a href=\"" + this.http_start + "bbs/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball1 + "&amp;sid=" + this.sid + "\">" + lastVo.ball1 + "</a>-<a href=\"" + this.http_start + "bbs/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball2 + "&amp;sid=" + this.sid + "\">" + lastVo.ball2 + "</a>-<a href=\"" + this.http_start + "bbs/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball3 + "&amp;sid=" + this.sid + "\">" + lastVo.ball3 + "</a>-<a href=\"" + this.http_start + "bbs/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball4 + "&amp;sid=" + this.sid + "\">" + lastVo.ball4 + "</a>-<a href=\"" + this.http_start + "bbs/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball5 + "&amp;sid=" + this.sid + "\">" + lastVo.ball5 + "</a>-<a href=\"" + this.http_start + "bbs/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ball6 + "&amp;sid=" + this.sid + "\">" + lastVo.ball6 + "</a><br/>");
        Response.Write("特码：<a href=\"" + this.http_start + "bbs/marksix/NumberInfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;num=" + lastVo.ballTeMa + "&amp;sid=" + this.sid + "\">" + lastVo.ballTeMa + "</a> (" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.wave_color_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.five_elements_from_number(configVo.config, lastVo.ballTeMa) + "/" + GamesClassManager.Tool.single_double_from_number(configVo.config, lastVo.ballTeMa) + ")</b><br/>");

        
        if (myMarkSix == "9")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>"+bookVo.period+"</b> 期<br/>");
            Response.Write("<b>特码，赔率" + WapTool.getArryString(configVo.config, '|', 9) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
           
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
                    Response.Write("<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix="+myMarkSix+"&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "&amp;sid=" + this.sid + "\">" + temp + "</a>");

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
                if (par69 == "1")
                {
                    Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                }
                else
                {
                    Response.Write("每个号系统送下注"+sysNeedMoney+"个" + siteVo.sitemoneyname + "<br/>");
               
                }
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

        }
        else if (myMarkSix == "10")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平码，赔率" + WapTool.getArryString(configVo.config, '|', 10) + "倍</b><br/>");
            Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
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
                    Response.Write("<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix="+myMarkSix+"&amp;id=" + bookVo.id + "&amp;selcontent=" + i + "&amp;selurl=" + selurl + "&amp;sid=" + this.sid + "\">" + temp + "</a>");

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
                if (par69 == "1")
                {
                    Response.Write("每个号金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                }
                else
                {
                    Response.Write("每个号系统送下注"+sysNeedMoney+"个" + siteVo.sitemoneyname + "<br/>");
               
                }
                    //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
                
            }
            Response.Write("<br/><br/>独平规则：即投注的号码在本期六个平码中出现才中奖.");

        }
        else if (myMarkSix == "11")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平特肖，赔率" + WapTool.getArryString(configVo.config, '|', 11) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
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
                    Response.Write("<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "&amp;sid=" + this.sid + "\">" + arry[i] + "</a>");

                }
                Response.Write("　");
                


            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                if(par69=="1"){
                Response.Write("每肖金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                }
                else
                {
                    Response.Write("每肖系统送下注" + sysNeedMoney + "个" + siteVo.sitemoneyname + "<br/>");

                }
                    //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

            Response.Write("<br/><br/>平特肖规则：即投注的生肖在本期的七个号码中(特或平)有这个生肖即中奖.");

        }
        else if (myMarkSix == "12")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特肖，赔率" + WapTool.getArryString(configVo.config, '|', 12) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
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
                    Response.Write("<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "&amp;sid=" + this.sid + "\">" + arry[i] + "</a>");

                }
                Response.Write("　");



            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                if(par69 =="1"){
                Response.Write("每肖金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                }
                else
                {
                    Response.Write("每肖系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

                } 
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            }

            Response.Write("<br/><br/>特肖规则：特.码对应的生肖");
        }
        else if (myMarkSix == "13")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码五行，赔率" + WapTool.getArryString(configVo.config, '|', 13) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");
            string[] arry = { "金", "木", "水", "火", "土" };
            Response.Write("选择属性:<select name=\"content\">");
            for (int i = 0; i < arry.Length; i++)
            {
                Response.Write("<option value=\""+arry[i]+"\">"+arry[i]+"</option>");

            }
            Response.Write("</select><br/>");
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");


        }
        else if (myMarkSix == "14")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            //Response.Write("<b>波色，赔率" + WapTool.getArryString(configVo.config, '|', 13) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");
            
            Response.Write("特码波色:<select name=\"content\">");

            Response.Write("<option value=\"红\">红(赔率" + WapTool.getArryString(configVo.config, '|', 14) + ")</option>");
            Response.Write("<option value=\"绿\">绿(赔率" + WapTool.getArryString(configVo.config, '|', 15) + ")</option>");
            Response.Write("<option value=\"蓝\">蓝(赔率" + WapTool.getArryString(configVo.config, '|', 16) + ")</option>");
            Response.Write("</select><br/>");
            if(par69=="1"){
                
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");


        }
        else if (myMarkSix == "17")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码单双，赔率" + WapTool.getArryString(configVo.config, '|', 17) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择属性:<select name=\"content\">");

            Response.Write("<option value=\"单\">单</option>");
            Response.Write("<option value=\"双\">双</option>");
            Response.Write("</select><br/>");
            if(par69=="1"){
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>单双规则：49不计单双(打和)");
    

        }
        else if (myMarkSix == "18")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码大小，赔率" + WapTool.getArryString(configVo.config, '|', 18) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择属性:<select name=\"content\">");

            Response.Write("<option value=\"大\">大</option>");
            Response.Write("<option value=\"小\">小</option>");
            Response.Write("</select><br/>");
            if(par69=="1"){
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>大小规则：49不计单双(打和)");
        }
        else if (myMarkSix == "19")
        {
            Random rnd = new Random();
            
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平二中二，赔率" + WapTool.getArryString(configVo.config, '|', 19) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            if(par69 =="1"){
            Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>平二中二规则：投注的二个平码都中了才得奖.");

        }
        else if (myMarkSix == "20")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平三中二，赔率" + WapTool.getArryString(configVo.config, '|', 20) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");
            Response.Write("第三个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>平三中二规则：投注的三个平码中二个或三个即中奖.");

        }
        else if (myMarkSix == "21")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平三中三，赔率" + WapTool.getArryString(configVo.config, '|', 21) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");

            Response.Write("第二个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");
            Response.Write("第三个平码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + WapTool.right("0"+rnd.Next(1, 49).ToString(),2) + "\"/><br/>");
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>平三中三规则：投注的三个平码全中才中奖.");

        }
        else if (myMarkSix == "51")
        {
            Random rnd = new Random();

            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特串，赔率" + WapTool.getArryString(configVo.config, '|', 51) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("第一个号码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + rnd.Next(1, 49).ToString() + "\"/><br/>");

            Response.Write("第二个号码:<input type=\"text\" name=\"content\" size=\"5\" value=\"" + rnd.Next(1, 49).ToString() + "\"/><br/>");
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
            Response.Write("<br/><br/>特串规则：即投注的二个号码其中一个为特,一个为平码才中奖.");

        }
        else if (myMarkSix == "52")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>平特尾，赔率" + WapTool.getArryString(configVo.config, '|', 52) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择平特尾数:<select name=\"content\">");
            for (int i = 0; i < 10; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "尾</option>");

            }
            Response.Write("</select><br/>");
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
                //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>平特尾规则：即投注的尾数在本期的七个号码中(特或平)有这个尾即中奖.");
        }
        else if (myMarkSix == "53")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特尾，赔率" + WapTool.getArryString(configVo.config, '|', 53) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特尾数:<select name=\"content\">");
            for (int i = 0; i < 10; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "尾</option>");

            }
            Response.Write("</select><br/>");
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>特尾规则：即投注的尾数在本期的特码有这个尾即中奖.");
        }
        else if (myMarkSix == "54")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特头，赔率" + WapTool.getArryString(configVo.config, '|', 54) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特头数:<select name=\"content\">");
            for (int i = 0; i < 5; i++)
            {
                Response.Write("<option value=\"" + i + "\">" + i + "头</option>");

            }
            Response.Write("</select><br/>");
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>特头规则：即投注的头数在本期的特码有这个头即中奖.");
        }
        else if (myMarkSix == "55")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>特码家野，赔率" + WapTool.getArryString(configVo.config, '|', 55) + "倍</b><br/>");
            //Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
            Response.Write("----------<br/>");

            Response.Write("选择特码家野:<select name=\"content\">");

            Response.Write("<option value=\"家禽\">家禽</option>");
            Response.Write("<option value=\"野兽\">野兽</option>");
            Response.Write("</select><br/>");
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<br/><br/>家野规则：<br/>家禽：" + WapTool.getArryString(configVo.config, '|', 60) + " <br/>野兽：" + WapTool.getArryString(configVo.config, '|', 61) + "");
        }
        else if (myMarkSix == "56")
        {
            Response.Write("----------<br/>");
            Response.Write("购买期数：<b>" + bookVo.period + "</b> 期<br/>");
            Response.Write("<b>六肖，赔率" + WapTool.getArryString(configVo.config, '|', 56) + "倍</b><br/>");
            Response.Write("已选生肖" + this.num + "个，<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=&amp;selurl=&amp;sid=" + this.sid + "\">重选</a><br/>");
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
                    Response.Write("<a href=\"" + this.http_start + "bbs/marksix/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mymarksix=" + myMarkSix + "&amp;id=" + bookVo.id + "&amp;selcontent=" + HttpUtility.UrlEncode(arry[i]) + "&amp;selurl=" + HttpUtility.UrlEncode(selurl) + "&amp;sid=" + this.sid + "\">" + arry[i] + "</a>");

                //}
                Response.Write("　");



            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
                if (par69 == "1")
                {
                    Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
                }
                else
                {
                    Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

                } 
               // Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
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
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
            //Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");


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
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
              //  Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

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
            if (par69 == "1")
            {
                Response.Write("下注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            }
            else
            {
                Response.Write("系统送" + sysNeedMoney + "个" + siteVo.sitemoneyname + "下注。<br/>");

            } 
                

            Response.Write("<br/><br/>合数单双规则：即投注了本期开奖对应的合大或合小才中奖.");

            Response.Write("<br/>49不合大也不合小，将打和。<br/>合大：" + WapTool.getArryString(configVo.config, '|', 64) + " <br/>合小：" + WapTool.getArryString(configVo.config, '|', 65) + "");

        }
        Response.Write("<br/><br/>----------<br/><br/>");
        //显示表情
        Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/book_view_add.aspx\" method=\"post\">");
        Response.Write("<select name=\"face\">");
        Response.Write("<option value=\"\">表情</option>");
        for (int i = 0; (facelist != null && i < this.facelist.Length); i++)
        {
            Response.Write("<option value=\"" + this.facelistImg[i] + "\">" + this.facelist[i] + "</option>");
        }
        Response.Write("</select>");
        //显示类别
        Response.Write("<select name=\"stype\">");
        Response.Write("<option value=\"\">类别</option>");
        for (int i = 0; (stypelist != null && i < this.stypelist.Length); i++)
        {
            Response.Write("<option value=\"" + this.stypelist[i] + "\">" + this.stypelist[i] + "</option>");
        }
        Response.Write("</select><br/>");


        Response.Write(this.GetLang("标题|標題|Title") + ":(可以为空)<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + book_title + "\"/><br/>");

        Response.Write(this.GetLang("内容|內容|Content") + ":(可以为空)<br/>");

        Response.Write("<textarea name=\"book_content\" rows=\"5\" style=\"width:100%\">" + book_content + "</textarea><br/>");

        Response.Write("<input type=\"button\" value=\"添加缩放图\" onclick=\"document.getElementById('add_book_img').style.display='';\" /><span id=\"add_book_img\" style=\"display:none\">:<input type=\"text\" name=\"book_img\" value=\"\"/><br/>(用http://开头或/开头的地址，也可以到【<a href=\"" + this.http_start + "bbs/book_view_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">发文件贴</a>】，上传图片自动作为缩放图)</span><br/>");

        //查看条件
        Response.Write("<select name=\"viewtype\" value=\"" + viewtype + "\">");
        Response.Write("<option value=\"0\">0_特殊贴↓</option>");
        Response.Write("<option value=\"1\">1_登录可见</option>");
        Response.Write("<option value=\"2\">2_手机可见</option>");
        Response.Write("<option value=\"3\">3_回复可见</option>");
        Response.Write("<option value=\"4\">4_金钱可见需要</option>");
        Response.Write("<option value=\"5\">5_经验可见需要</option>");
        Response.Write("<option value=\"6\">6_付费" + siteVo.sitemoneyname + "可见需要</option>");
        Response.Write("<option value=\"7\">7_付费RMB可见需要</option>");
        Response.Write("</select><br/>");
        //查看值
        Response.Write("需要:<input type=\"text\" format=\"*N\" name=\"viewmoney\" value=\"" + viewmoney + "\" size=\"4\" /><br/>");

        
        if (this.needpwFlag == "1")
        {
            Response.Write("我的密码*:<input type=\"text\" name=\"needpw\" value=\"" + needpw + "\" size=\"10\" /><br/>");

        }
        if (this.isNeedSecret == true)
        {
            Response.Write("本版暗号*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");

        }
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\" 确 认 发 表 \"/>");
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
    Response.Write("<div class=\"content\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;sid=" + this.sid + "\">发表普通贴</a><br/>");
   
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view_sendmoney.aspx?action=class&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;sid=" + this.sid + "\">发表派币贴</a><br/>");

    Response.Write("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?action=friends&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;sid=" + this.sid + "\">发表交友贴</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view_addvote.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("发表投票贴|发表投票贴|add vote") + "</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid + "\">" + this.GetLang("发表文件贴|发表文件贴|upload file") + "</a><br/>");

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


