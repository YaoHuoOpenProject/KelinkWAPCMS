<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addClan.aspx.cs" Inherits="KeLin.WebSite.clan.addClan" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("创建家族|创建家族|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("创建成功！|创建成功！|Successfully Update"));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<b>");
        Response.Write("所有项不能为空间，币数只能数值！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "MAXCLAN")
    {
        Response.Write("<b>");
        Response.Write("最多创建:"+configVo.maxclan+"个家族，您已经创建:"+mymaxclan+"个了！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<b>");
        Response.Write("创建需要币:" + configVo.createmoney + "个，您只有:" + userVo.money + "个了！");
        Response.Write("</b><br/>");
    }

    if (this.INFO != "OK")
    {
        Response.Write("创建家族我的经验需要大于" + configVo.needlvls + "，需要扣" + configVo.createmoney + "币!<br/>");

        Response.Write("家族名称:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_name" + r + "\"   value=\"" + clan_name + "\"/><br/>");
        Response.Write("加入家族所需币数:<br/>");
        Response.Write("<input type=\"text\" name=\"joinmoney" + r + "\" size=\"8\" value=\"" + joinmoney + "\"/><br/>");


        Response.Write("<anchor><go href=\"" + http_start + "clan/addclan.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"backtype\" value=\"" + backtype + "\"/>");
        Response.Write("<postfield name=\"clan_name\" value=\"$(clan_name" + r + ")\"/>");
        Response.Write("<postfield name=\"joinmoney\" value=\"$(joinmoney" + r + ")\"/>");

        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");

    }
   
        Response.Write("<br/><a href=\"" + this.http_start + "clan/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
   
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("创建家族|创建家族|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("创建成功！|创建成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("所有项不能为空，币数只能数值！");
        Response.Write("</b></div>");
    }
    else if (this.INFO == "MAXCLAN")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("最多创建:" + configVo.maxclan + "个家族，您已经创建:" + mymaxclan + "个了！");
        Response.Write("</b></div>");
    }
    else if (this.INFO == "NOMONEY")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("创建需要币:" + configVo.createmoney + "个，您只有:" + userVo.money + "个了！");
        Response.Write("</b></div>");
    }

    if (this.INFO != "OK")
    {
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "clan/addclan.aspx\" method=\"post\">");

   
        Response.Write("创建家族我的经验需要大于" + configVo.needlvls + "，需要扣" + configVo.createmoney + "币!<br/>");

        Response.Write("家族名称:<br/>");
        Response.Write("<input type=\"text\" name=\"clan_name\"  value=\"" + clan_name + "\"/><br/>");
        Response.Write("加入家族所需币数:<br/>");
        Response.Write("<input type=\"text\" name=\"joinmoney\" size=\"8\" value=\"" + joinmoney + "\"/><br/>");


        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"backtype\" value=\"" + backtype + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
        Response.Write("</form>");
    
    Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    
        Response.Write("<a href=\"" + this.http_start + "clan/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


