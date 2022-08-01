<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_doit.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="超级串串竟猜";

Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "NULL")
    {
        
        strhtml.Append("所有录入框不能为空！  ");
        strhtml.Append("<br/>");
    }
    else if (this.INFO == "WAITING")
    {
        
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
   

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
        strhtml.Append("下注成功，<a href=\"" + this.http_start + "games/ball/super_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">返回</a><br/>");

    }


    if (this.INFO != "OK")
    {
       
        strhtml.Append("请最少选择" + min_ball + "场比赛,最终返彩以所有选择的比赛结果为准.");
        strhtml.Append("<br/>----------<br/>");

       
        int kk = 0;
        for (int i = 0; listVo != null && i < listVo.Count; i++)
        {

            strhtml.Append("比赛场次" + (i + 1) + ":" + listVo[i].payview);

            strhtml.Append("<br/>[<a href=\"" + this.http_start + "games/ball/super_doit.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">删除</a>.<a href=\"" + this.http_start + "games/ball/super_book_view.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">修改</a>]");
            strhtml.Append("<br/>----------<br/>");
            kk++;


        }
        long yy = max_ball - kk;
        if (yy > 0)
        {
            for (int i = 0; i < yy; i++)
            {

                strhtml.Append("比赛场次" + (kk + 1) + ":");

                strhtml.Append("[<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">选择</a>]");
                strhtml.Append("<br/>----------<br/>");
                kk++;


            }

        }



       // strhtml.Append("----------<br/>");
        
        strhtml.Append("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");

        strhtml.Append("投注金额:<input type=\"text\" name=\"mymoney" + r + "\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

        strhtml.Append("<anchor><go href=\"" + http_start + "games/ball/super_doit_go.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"go\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"0\"/>");
        strhtml.Append("<postfield name=\"paytype\" value=\"" + paytype + "\"/>");
        strhtml.Append("<postfield name=\"ptype\" value=\"" + ptype + "\"/>");
        strhtml.Append("<postfield name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>确认投注</anchor><br/>");

        

    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">返回上级</a> ");
    
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
        strhtml.Append("<div class=\"tip\">下注成功，<a href=\"" + this.http_start + "games/ball/super_book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">返回</a></div>");

    }


    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("请最少选择" + min_ball + "场比赛,最终返彩以所有选择的比赛结果为准.");
        strhtml.Append("</div>");
        
        strhtml.Append("<div class=\"content\">");
        int kk = 0;
        for (int i = 0; listVo != null && i < listVo.Count; i++)
        {

            strhtml.Append("比赛场次" + (i + 1) + ":"+listVo[i].payview);

            strhtml.Append("<br/>[<a href=\"" + this.http_start + "games/ball/super_doit.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">删除</a>.<a href=\"" + this.http_start + "games/ball/super_book_view.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + listVo[i].bcid + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">修改</a>]");
            strhtml.Append("<br/>----------<br/>");
            kk++;


        }
        long yy = max_ball - kk;
        if (yy > 0)
        {
            for (int i = 0; i < yy; i++)
            {

                strhtml.Append("比赛场次" + (kk + 1) + ":");

                strhtml.Append("[<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;page=" + this.page + "&amp;paytype=" + this.paytype + "\">选择</a>]");
                strhtml.Append("<br/>----------<br/>");
                kk++;


            }

        }
        
        
        
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("我随身有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
      
        strhtml.Append("<form name=\"gt\" action=\"" + http_start + "games/ball/super_doit_go.aspx\" method=\"post\">");

        strhtml.Append("投注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"go\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"0\" />");
        strhtml.Append("<input type=\"hidden\" name=\"paytype\" value=\"" + this.paytype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"ptype\" value=\"" + this.ptype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + this.page + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\" />");
        strhtml.Append("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");
        strhtml.Append("</form>");

        strhtml.Append("</div>");

    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">返回上级</a> ");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
