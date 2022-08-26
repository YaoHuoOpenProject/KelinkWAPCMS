<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="joinClan.aspx.cs" Inherits="KeLin.WebSite.clan.joinclan" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("加入家族|加入家族|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("您已经成功发送请求,请耐心等候族长审核!");
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<b>");
        Response.Write("验证信息不能为空！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "MAXCLAN")
    {
        Response.Write("<b>");
        Response.Write("最多申请:"+configVo.maxclanadd+"个家族，您已经申请:"+mymaxclan+"个了！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<b>");
        Response.Write("申请需要币:" + bookVo.clan_joinmoney + "个，您只有:" + userVo.money + "个了！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "HASEXIT")
    {
        Response.Write("<b>");
        Response.Write("已经是该家族成员,你无需重复加入！");
        Response.Write("</b><br/>");
    }

    if (this.INFO != "OK")
    {
        
        Response.Write("家族名称:"+bookVo.clan_name+"<br/>");
        Response.Write("需要支付" + bookVo.clan_joinmoney + "个"+siteVo.sitemoneyname+"!<br/>");

        
        Response.Write("验证信息:<br/>");
        Response.Write("<input type=\"text\" name=\"remark" + r + "\"  value=\"" + remark + "\"/><br/>");


        Response.Write("<anchor><go href=\"" + http_start + "clan/joinclan.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"backtype\" value=\"" + backtype + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");

        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>确认申请</anchor>");

    }
   
        Response.Write("<br/><a href=\"" + this.http_start + "clan/my.aspx?id="+this.id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
   
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("加入家族|加入家族|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("您已经成功发送请求,请耐心等候族长审核!");
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("验证信息不能为空！");
        Response.Write("</b></div>");
    }
    else if (this.INFO == "MAXCLAN")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("最多申请:" + configVo.maxclanadd + "个家族，您已经申请:" + mymaxclan + "个了！");
        Response.Write("</b></div>");
    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("申请需要币:" + bookVo.clan_joinmoney + "个，您只有:" + userVo.money + "个了！");
        Response.Write("</b></div>");
    }
    else if (this.INFO == "HASEXIT")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("已经是该家族成员,你无需重复加入！");
        Response.Write("</b></div>");
    }

    if (this.INFO != "OK")
    {
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "clan/joinclan.aspx\" method=\"post\">");


    Response.Write("家族名称:" + bookVo.clan_name + "<br/>");
    Response.Write("需要支付" + bookVo.clan_joinmoney + "个" + siteVo.sitemoneyname + "!<br/>");


    Response.Write("验证信息:<br/>");
    Response.Write("<input type=\"text\" name=\"remark\"  value=\"" + remark + "\"/><br/>");


        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"backtype\" value=\"" + backtype + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
        Response.Write("</form>");
    
    Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    
        Response.Write("<br/><a href=\"" + this.http_start + "clan/my.aspx?id="+this.id+"&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


