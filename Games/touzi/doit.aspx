<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.touzi.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title ="压"+siteVo.sitemoneyname;
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
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

        Response.Write("<b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">压注成功，<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a></div>");

    }

    if (this.INFO != "OK")
    {




        Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开盅！<br/>");


        Response.Write("请输入压" + GamesClassManager.Tool.GetTouziTypeCN(int.Parse(this.mytouzi)) + "的" + siteVo.sitemoneyname + "数量(" + min + "-" + max + "):<br/>");
        Response.Write("<input type=\"\" name=\"mymoney" + r + "\" value=\""+min+"\" size=\"6\"/><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "games/touzi/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"mytouzi\" value=\"" + mytouzi + "\"/>");
        Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" +r+ ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("确定压注|确定压注|确定压注") + "</anchor><br/>");
        Response.Write("<br/>说明:如果您获胜,您将获得您奖金的" + per + "%金币。<br/>");

    }
    

  Response.Write("<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
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
        Response.Write("<div class=\"tip\">压注成功，<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a></div>");
    
    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "games/touzi/doit.aspx\" method=\"post\">");
        Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开盅！<br/>");

        Response.Write("请输入压" + GamesClassManager.Tool.GetTouziTypeCN(int.Parse(this.mytouzi)) + "的" + siteVo.sitemoneyname + "数量(" + min + "-" + max + "):<br/>");
        Response.Write("<input type=\"\" name=\"mymoney\" value=\""+min+"\" size=\"6\"/><br/>");

        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"mytouzi\" value=\"" + mytouzi + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定压注|确定压注|确定压注") + "\"/></form>");
        Response.Write("<br/>说明:如果您获胜,您将获得您奖金的" + per + "%金币。");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


