<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPModifyADD.aspx.cs" Inherits="KeLin.WebSite.guangbo.admin_WAPModifyADD" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("续期广播信息|续期广播信息|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("标题和内容不能小于2个字符！  ");
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
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<b>抱歉，站长还没有配置好发布扣币参数！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>抱歉，你的"+siteVo.sitemoneyname+"不够了！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("续期广播信息成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</b><br/>");

    }

     if (this.INFO != "OK"){
        //选择栏目
        
         
         Response.Write(this.GetLang("分钟|分钟|days") + "*:<select name=\"days" + r + "\">");
               
        for (int i = 0; (showdays != null && i < showdays.Length); i++)
        {
            if (WapTool.IsNumeric(this.showdays[i]) && WapTool.IsNumeric(this.showdays[i]))
                Response.Write("<option value=\"" + this.showdays[i] + "\">" + this.showdays[i] + "分钟" + this.needmoney[i] + siteVo.sitemoneyname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write("<anchor><go href=\"" + http_start + "guangbo/admin_WAPModifyADD.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");       
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"totype\" value=\"" + this.totype + "\"/>");
        Response.Write("<postfield name=\"touserid\" value=\"" + this.touserid + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + this.id + "\"/>");
        Response.Write("<postfield name=\"days\" value=\"$(days" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("确 定|确 定|submit") + "</anchor><br/>");
        Response.Write("我随身" + siteVo.sitemoneyname + ":" + userVo.money + "<br/><br/>");
        Response.Write("<br/>如果时间已过续费从续的时间开始，如果时间没有过期即直接增加。");
       
    }
 
    Response.Write("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("续期广播信息|续期广播信息|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("标题和内容不能小于2个字符！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "LOCK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<div class=\"tip\"><b>抱歉，站长还没有配置好发布扣币参数！</b></div>");

    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<div class=\"tip\"><b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b></div>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("续期广播信息成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        //选择栏目

        Response.Write("<form name=\"gt\" action=\"" + http_start + "guangbo/admin_WAPModifyadd.aspx\" method=\"post\">");
        
        Response.Write(this.GetLang("分钟|分钟|days") + "*:<select name=\"days\">");
        for (int i = 0; (showdays != null && i < showdays.Length); i++)
        {
            if(WapTool.IsNumeric(this.showdays[i])&&WapTool.IsNumeric(this.showdays[i]))
            Response.Write("<option value=\"" + this.showdays[i] + "\">" + this.showdays[i] + "分钟"+this.needmoney[i]+siteVo.sitemoneyname+"</option>");

        }
        Response.Write("</select><br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"totype\" value=\"" + this.totype + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"touserid\" value=\"" + this.touserid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + this.id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("确 定|确 定|submit") + "\"/></form>");
        Response.Write("<br/>我随身" + siteVo.sitemoneyname + ":" + userVo.money);
        Response.Write("<br/>如果时间已过续费从续的时间开始，如果时间没有过期即直接增加。");
        Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "guangbo/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;touserid=" + this.touserid + "&amp;totype=" + this.totype + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


