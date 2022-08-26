<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.egg.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("砸金蛋结果|砸金蛋结果|content add"), wmlVo));//显示头                                                                                                                                                                       
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
    Response.Write("--------<br/>");
    for (int i = 1; i < 9; i++)
    {

        if (myegg == i.ToString())
        {
            if (myegg == sysegg)
            {
                Response.Write(i + "号<img src=\"2.gif\" alt=\"WIN\"/> ");
            }
            else
            {
                Response.Write(i + "号<img src=\"1.gif\" alt=\"Fail\"/> ");
            }
        }
        else if (sysegg == i.ToString())
        {
            Response.Write(i + "号<img src=\"2.gif\" alt=\"WIN\"/> ");
        }
        else
        {

            Response.Write(i + "号<img src=\"egg.gif\" alt=\"EGG\"/> ");
        }

        if (i % 2 == 0) Response.Write("<br/>");

    }
    if (myegg == sysegg)
    {
        Response.Write("<br/>恭喜您，砸中金蛋，赚了" + getmoney + "个" + siteVo.sitemoneyname);
    }
    else
    {
        Response.Write("<br/>抱歉，亏了" + getmoney + "个" + siteVo.sitemoneyname);
    }
    Response.Write("<br/><a href=\"" + this.http_start + "games/egg/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "\">继续游戏</a>");
    Response.Write("<br/>--------<br/>");
    

  Response.Write("<a href=\"" + this.http_start + "games/egg/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
  Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
  Response.Write(WapTool.GetVS(wmlVo));
  Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("砸金蛋结果|砸金蛋结果|Add operation") + "</div>");
    
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
    Response.Write("<form name=\"gt\" action=\"" + http_start + "games/egg/doit.aspx\" method=\"post\">");
    Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");

    Response.Write("--------<br/>");
    for (int i = 1; i < 9; i++)
    {

        if (myegg == i.ToString())
        {
            if (myegg == sysegg)
            {
                Response.Write(i + "号<img src=\"2.gif\" alt=\"WIN\"/> ");
            }
            else
            {
                Response.Write(i + "号<img src=\"1.gif\" alt=\"Fail\"/> ");
            }
        }
        else if (sysegg == i.ToString())
        {
            Response.Write(i + "号<img src=\"2.gif\" alt=\"WIN\"/> ");
        }else 
        {

            Response.Write(i + "号<img src=\"egg.gif\" alt=\"EGG\"/> ");
        }

        if (i % 2 == 0) Response.Write("<br/>");

    }
    if (myegg == sysegg)
    {
        Response.Write("<br/>恭喜您，砸中金蛋，赚了" + getmoney + "个" + siteVo.sitemoneyname);
    }
    else
    {
        Response.Write("<br/>抱歉，亏了" + getmoney + "个" + siteVo.sitemoneyname);
    }
    Response.Write("<br/><a href=\""+this.http_start+"games/egg/index.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;type="+this.type+"&amp;sid="+this.sid+"\">继续游戏</a>");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/egg/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


