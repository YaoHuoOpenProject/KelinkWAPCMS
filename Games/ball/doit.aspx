<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.ball.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=bookVo.p_one + "VS" +bookVo.p_two;
if (this.INFO == "OK")
{
    wmlVo.timer = "1";
    wmlVo.strUrl = "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype ;

}

Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "NULL")
    {
      
        strhtml.Append("*所有录入框不能为空！  ");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "WAITING")
    {

        strhtml.Append("*<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        strhtml.Append("<br/>");

    }

    else if (this.INFO == "NUMBER")
    {

        strhtml.Append("<b>只能录入数值！或不在范围内</b><br/>");

    }
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("下注成功，<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">返回</a><br/>");

    }


    if (this.INFO != "OK")
    {


       
        strhtml.Append(bookVo.p_title + ":");
        strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
        strhtml.Append("<br/>开赛:" + bookVo.p_TPRtime);
        strhtml.Append("<br/>比赛状态:" + bookVo.p_once);
        strhtml.Append("<br/>即时比分:" + bookVo.p_result_temp1 + ":" + bookVo.p_result_temp2);
        strhtml.Append("<br/>----------<br/>");
       
        if (paytype == "1")
        {
            strhtml.Append("上下盘[");

            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }


            strhtml.Append("]压[" + bookVo.p_one + "]赔率(" + tVo.p_one_lu.ToString("f2") + ")");

        }
        else if (paytype == "2")
        {
            strhtml.Append("上下盘[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }
            strhtml.Append("]压[" + bookVo.p_two + "]赔率(" + tVo.p_two_lu.ToString("f2") + ")");
        }
        else if (paytype == "3")
        {
            strhtml.Append("大小盘[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("]压[大]赔率(" + tVo.p_big_lu.ToString("f2") + ")");
        }
        else if (paytype == "4")
        {
            strhtml.Append("大小盘[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("大小盘压[小]赔率(" + tVo.p_small_lu.ToString("f2") + ")");
        }
        else if (paytype == "5")
        {
            strhtml.Append("标准盘压[主胜]赔率(" + tVo.p_bzs_lu.ToString("f2") + ")");
        }
        else if (paytype == "6")
        {
            strhtml.Append("标准盘压[平手]赔率(" + tVo.p_bzp_lu.ToString("f2") + ")");
        }
        else if (paytype == "7")
        {
            strhtml.Append("标准盘压[客胜]赔率(" + tVo.p_bzx_lu.ToString("f2") + ")");
        }
        strhtml.Append("<br/>----------<br/>");
        strhtml.Append("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        strhtml.Append("还有" + WapTool.DateToString(this.leftTime2, base.lang, 0) + "截止投注！<br/>");

        strhtml.Append("投注金额:<input type=\"text\" name=\"mymoney"+r+"\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
       
        strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"goadd\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"paytype\" value=\"" + paytype + "\"/>");
        strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
        strhtml.Append("<postfield name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>确认投注</anchor>");
        


        strhtml.Append("<br/>");

    }

    strhtml.Append("<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">返回上级</a> ");
    
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(title);
    strhtml.Append("</div>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("所有录入框不能为空！  ");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        strhtml.Append("</div>");

    }

    else if (this.INFO == "NUMBER")
    {

        strhtml.Append("<div class=\"tip\"><b>只能录入数值！或不在范围内</b></div>");

    }
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<div class=\"tip\"><b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b></div>");
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">下注成功，<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype+"\">返回</a></div>");

    }


    if (this.INFO != "OK")
    {
        
        
        strhtml.Append("<div class=\"content\">");
        strhtml.Append(bookVo.p_title + ":");
        strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
        strhtml.Append("<br/>开赛:" + bookVo.p_TPRtime);
        strhtml.Append("<br/>比赛状态:" + bookVo.p_once);
        strhtml.Append("<br/>即时比分:" + bookVo.p_result_temp1 + ":" + bookVo.p_result_temp2);
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"subtitle\">");
        if (paytype == "1")
        {
            strhtml.Append("上下盘[");

            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }


            strhtml.Append("]压[" + bookVo.p_one + "]赔率(" + tVo.p_one_lu.ToString("f2") + ")");

        }
        else if (paytype == "2")
        {
            strhtml.Append("上下盘[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_pn(tVo.p_pn) + "." + GamesClassManager.Tool.GetBallCNname_from_p_pk(tVo.p_pk));
            }
            else
            {
                strhtml.Append(tVo.p_pk.ToString("f2"));

            }
            strhtml.Append("]压[" + bookVo.p_two + "]赔率(" + tVo.p_two_lu.ToString("f2") + ")");
        }
        else if (paytype == "3")
        {
            strhtml.Append("大小盘[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("]压[大]赔率(" + tVo.p_big_lu.ToString("f2") + ")");
        }
        else if (paytype == "4")
        {
            strhtml.Append("大小盘[");
            if (bookVo.p_type == 1)
            {
                strhtml.Append(GamesClassManager.Tool.GetBallCNname_from_p_dx_pk(tVo.p_dx_pk));
            }
            else
            {
                strhtml.Append(tVo.p_dx_pk.ToString("f2"));

            }
            strhtml.Append("大小盘压[小]赔率(" + tVo.p_small_lu.ToString("f2") + ")");
        }
        else if (paytype == "5")
        {
            strhtml.Append("标准盘压[主胜]赔率(" + tVo.p_bzs_lu.ToString("f2") + ")");
        }
        else if (paytype == "6")
        {
            strhtml.Append("标准盘压[平手]赔率(" + tVo.p_bzp_lu.ToString("f2") + ")");
        }
        else if (paytype == "7")
        {
            strhtml.Append("标准盘压[客胜]赔率(" + tVo.p_bzx_lu.ToString("f2") + ")");
        }
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        strhtml.Append("还有" + WapTool.DateToString(this.leftTime2, base.lang, 0) + "截止投注！<br/>");

        strhtml.Append("<form name=\"gt\" action=\"" + http_start + "games/ball/doit.aspx\" method=\"post\">");

        strhtml.Append("投注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goadd\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + this.id + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"paytype\" value=\"" + this.paytype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + this.ptype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + this.page + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\" />");
        strhtml.Append("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
        strhtml.Append("</form>");

        strhtml.Append("</div>");

    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">返回上级</a> ");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
