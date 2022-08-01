﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.shoot.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("应战|应战|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("只能数值且不能为0！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }

    else if (this.INFO == "NUMBER")
    {

        Response.Write("<b>只能数值，或不在范围内！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>抱歉，你的"+siteVo.sitemoneyname+"不够了！</b><br/>");
    }





    Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
    Response.Write("这是<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode("games/shoot/doit.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">" + bookVo.nickName + "</a>的挑战:<br/>");
    Response.Write("赌注是:" + bookVo.myMoney + "个" + siteVo.sitemoneyname + "<br/>");
    if (this.INFO == "OK")
    {

        Response.Write("对方射门方向[" + GamesClassManager.Tool.GetShootType(bookVo.myShoot.ToString()) + "]<br/>");
        Response.Write("您扑球的方向[" + GamesClassManager.Tool.GetShootType(myshoot) + "]<br/>");

        Response.Write("<b>");

        if (bookVo.state == 3)
        {
            Response.Write("打成平手了！");
        }
        else if (bookVo.state == 1)
        {
            Response.Write("恭喜您，打赢了！获得:" + (bookVo.myMoney * per) / 100 + "个" + siteVo.sitemoneyname);
        }
        else if (bookVo.state == 2)
        {
            Response.Write("很遗憾,您输了" + bookVo.myMoney + "个" + siteVo.sitemoneyname + ",再去挑战一个,赢回来吧！");
        }

        Response.Write("</b><br/>");

    }
    else
    {

        Response.Write("请选择你想要扑球的方向:<br/>");
        Response.Write("<select name=\"myshoot" + r + "\" value=\"1\">");
        Response.Write("<option value=\"1\">左</option>");
        Response.Write("<option value=\"2\">中</option>");
        Response.Write("<option value=\"3\">右</option>");
        Response.Write("</select><br/>");
        Response.Write("<anchor><go href=\"" + http_start + "games/shoot/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"myshoot\" value=\"$(myshoot" + r + ")\"/>");

        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("确 定|确 定|submit") + "</anchor><br/>");
        Response.Write("<br/>说明:如果您获胜,您将获得您赌注的" + per + "%金币。<br/>");
    }

    

  Response.Write("<a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
  Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
  Response.Write(WapTool.GetVS(wmlVo));
  Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("应战|应战|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("只能数值且不能为0！  ");
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
        
    }


    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"gt\" action=\"" + http_start + "games/shoot/doit.aspx\" method=\"post\">");
    Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
    Response.Write("这是<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.userid + "&amp;backurl=" + HttpUtility.UrlEncode("games/shoot/doit.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">" + bookVo.nickName + "</a>的挑战:<br/>");
    Response.Write("赌注是:" + bookVo.myMoney + "个" + siteVo.sitemoneyname + "<br/>");
    if (this.INFO == "OK")
    {

        Response.Write("对方射门方向[" + GamesClassManager.Tool.GetShootType(bookVo.myShoot.ToString()) + "]<br/>");
        Response.Write("您扑球的方向[" + GamesClassManager.Tool.GetShootType(myshoot.ToString()) + "]<br/>");

        Response.Write("<b>");

        if (bookVo.state == 3)
        {
            Response.Write("打成平手了！");
        }
        else if (bookVo.state == 1)
        {
            Response.Write("恭喜您，打赢了！获得:" + (bookVo.myMoney * per) / 100 + "个" + siteVo.sitemoneyname);
        }
        else if (bookVo.state == 2)
        {
            Response.Write("很遗憾,您输了" + bookVo.myMoney + "个" + siteVo.sitemoneyname + ",再去挑战一个,赢回来吧！");
        }

        Response.Write("</b><br/>");

    }
    else
    {
        Response.Write("请选择你想要扑球的方向:<br/>");
        Response.Write("<select name=\"myshoot\">");
        Response.Write("<option value=\"1\">左</option>");
        Response.Write("<option value=\"2\">中</option>");
        Response.Write("<option value=\"3\">右</option>");
        Response.Write("</select><br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确 定|确 定|submit") + "\"/></form>");
        Response.Write("<br/>说明:如果其它友友获胜,您的赌注就要输光哦,如果您获胜,您将获得您赌注的" + per + "%金币。");

    }
    Response.Write("</div>");
    
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


