<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank_list_back.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.Rank_list_back" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title ="返利活动";
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
        Response.Write("返利成功，<a href=\"" + this.http_start + "games/happyTen/rank_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a><br/>");

    }

    if (this.INFO != "OK")
    {

        
        Response.Write("对象:<select name=\"type" + r + "\">");
        Response.Write("<option value=\"0\">胜率</option>");
        Response.Write("<option value=\"1\">盈利</option>");
        Response.Write("<option value=\"2\">亏损</option>");
        Response.Write("</select><br/>");
        Response.Write("返利人数:<input type=\"text\" name=\"num" + r + "\" value=\"0\" size=\"6\"/>(0或空为所有)<br/>");
        Response.Write("返奖比率:<input type=\"text\" name=\"per" + r + "\" value=\"2\" size=\"6\"/>%<br/>");
        Response.Write("留言通知:<br/><input type=\"text\" name=\"message" + r + "\" value=\"根据返利活动，您获得[per]%的返利奖励，合计[money]"+siteVo.sitemoneyname+"，感谢您对" + siteVo.sitename + "的支持！\"/><br/>");
        Response.Write("留言通知中的[per][money]将自动动态替换<br/>");
        Response.Write("<anchor><go href=\"" + http_start + "games/happyTen/rank_list_back.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"message\" value=\"$(message" + r + ")\"/>");
        Response.Write("<postfield name=\"per\" value=\"$(per" + r + ")\"/>");
        Response.Write("<postfield name=\"type\" value=\"$(type" + r + ")\"/>");
        Response.Write("<postfield name=\"num\" value=\"$(num" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>确定返利</anchor><br/>");
    }

    Response.Write("--------<br/>");
    Response.Write("<a href=\"" + this.http_start + "games/happyTen/rank_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
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
        Response.Write("<div class=\"tip\">返利成功，<a href=\"" + this.http_start + "games/happyTen/rank_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a></div>");
    
    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "games/happyTen/rank_list_back.aspx\" method=\"post\">");


        Response.Write("对象:<select name=\"type\">");
        Response.Write("<option value=\"0\">胜率</option>");
        Response.Write("<option value=\"1\">盈利</option>");
        Response.Write("<option value=\"2\">亏损</option>");
        Response.Write("</select><br/>");
        Response.Write("返利人数:<input type=\"text\" name=\"num\" value=\"0\" size=\"6\"/>(0或空为所有)<br/>");
        Response.Write("返奖比率:<input type=\"text\" name=\"per\" value=\"2\" size=\"6\"/>%<br/>");
        Response.Write("留言通知:<br/><textarea style=\"width:100%; height:55px;\" name=\"message\">根据返利活动，您获得[per]%的返利奖励，合计[money]"+siteVo.sitemoneyname+"，感谢您对"+siteVo.sitename+"的支持！</textarea><br/>");
        Response.Write("留言通知中的[per][money]将自动动态替换<br/>");

        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");

        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"确定返利\"/>");
        Response.Write("</form>");

       
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/happyTen/rank_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


