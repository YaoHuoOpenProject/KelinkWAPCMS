<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.clan.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("家族配置|家族配置|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<b>");
        Response.Write("只能数值！");
        Response.Write("</b><br/>");
    }



    Response.Write("[0]创建家族需要币:<br/>");
    Response.Write("<input type=\"text\" name=\"createmoney"+r+"\" size=\"8\" value=\"" + configVo.createmoney + "\"/><br/>");
    Response.Write("[1]默认最大人数:<br/>");
    Response.Write("<input type=\"text\" name=\"weekmenber" + r + "\" size=\"8\" value=\"" + configVo.weekmenber + "\"/><br/>");
    Response.Write("[2]每增加一个人需要币:<br/>");
    Response.Write("<input type=\"text\" name=\"addMenberNeedMoney" + r + "\" size=\"8\" value=\"" + configVo.addMenberNeedMoney + "\"/><br/>");
    Response.Write("[3]默认战斗力<br/>");
    Response.Write("<input type=\"text\" name=\"power" + r + "\" size=\"8\" value=\"" + configVo.power + "\"/><br/>");
    Response.Write("[4]一个币能购买多少战斗能量:<br/>");
    Response.Write("<input type=\"text\" name=\"addPowerNeedMoney" + r + "\" size=\"8\" value=\"" + configVo.addPowerNeedMoney + "\"/><br/>");

    Response.Write("[5]转让家族需要币:<br/>");
    Response.Write("<input type=\"text\" name=\"transfermoney" + r + "\" size=\"8\" value=\"" + configVo.transfermoney + "\"/><br/>");
    Response.Write("[6]创建家族需要经验大于:<br/>");
    Response.Write("<input type=\"text\" name=\"needlvls" + r + "\" size=\"8\" value=\"" + configVo.needlvls + "\"/><br/>");
    Response.Write("[7]每人最多创建族数<br/>");
    Response.Write("<input type=\"text\" name=\"maxclan" + r + "\" size=\"8\" value=\"" + configVo.maxclan + "\"/>个<br/>");
    Response.Write("[8]每人最多加入家族数<br/>");
    Response.Write("<input type=\"text\" name=\"maxclanadd" + r + "\" size=\"8\" value=\"" + configVo.maxclanadd + "\"/>个<br/>");
    

    Response.Write("<anchor><go href=\"" + http_start + "clan/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"backtype\" value=\"" + backtype + "\"/>");
    Response.Write("<postfield name=\"createmoney\" value=\"$(createmoney" + r + ")\"/>");
    Response.Write("<postfield name=\"weekmenber\" value=\"$(weekmenber" + r + ")\"/>");
    Response.Write("<postfield name=\"addMenberNeedMoney\" value=\"$(addMenberNeedMoney" + r + ")\"/>");
    Response.Write("<postfield name=\"power\" value=\"$(power" + r + ")\"/>");
    Response.Write("<postfield name=\"transfermoney\" value=\"$(transfermoney" + r + ")\"/>");
    Response.Write("<postfield name=\"needlvls\" value=\"$(needlvls" + r + ")\"/>");
    Response.Write("<postfield name=\"maxclan\" value=\"$(maxclan" + r + ")\"/>");
    Response.Write("<postfield name=\"maxclanadd\" value=\"$(maxclanadd" + r + ")\"/>");
    Response.Write("<postfield name=\"addPowerNeedMoney\" value=\"$(addPowerNeedMoney" + r + ")\"/>");  
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");


    if (backtype == "gamesadmin")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    }else
    {
        Response.Write("<br/><a href=\"" + this.http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("家族配置|家族配置|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("只能数值！");
        Response.Write("</b></div>");
    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "clan/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]创建家族需要币:<br/>");
    Response.Write("<input type=\"text\" name=\"createmoney\" size=\"8\" value=\"" + configVo.createmoney + "\"/><br/>");
    Response.Write("[1]默认最大人数:<br/>");
    Response.Write("<input type=\"text\" name=\"weekmenber\" size=\"8\" value=\"" + configVo.weekmenber + "\"/><br/>");
    Response.Write("[2]每增加一个人需要币:<br/>");
    Response.Write("<input type=\"text\" name=\"addMenberNeedMoney\" size=\"8\" value=\"" + configVo.addMenberNeedMoney + "\"/><br/>");
    Response.Write("[3]默认战斗力<br/>");
    Response.Write("<input type=\"text\" name=\"power\" size=\"8\" value=\"" + configVo.power + "\"/><br/>");
    Response.Write("[4]一个币能购买多少战斗能量:<br/>");
    Response.Write("<input type=\"text\" name=\"addPowerNeedMoney\" size=\"8\" value=\"" + configVo.addPowerNeedMoney + "\"/><br/>");

    Response.Write("[4]转让家族需要币:<br/>");
    Response.Write("<input type=\"text\" name=\"transfermoney\" size=\"8\" value=\"" + configVo.transfermoney + "\"/><br/>");
    Response.Write("[5]创建家族需要经验大于:<br/>");
    Response.Write("<input type=\"text\" name=\"needlvls\" size=\"8\" value=\"" + configVo.needlvls + "\"/><br/>");
    Response.Write("[6]每人最多创建家族数<br/>");
    Response.Write("<input type=\"text\" name=\"maxclan\" size=\"8\" value=\"" + configVo.maxclan + "\"/>个<br/>");

    Response.Write("[7]每人最多加入家族数<br/>");
    Response.Write("<input type=\"text\" name=\"maxclanadd\" size=\"8\" value=\"" + configVo.maxclanadd + "\"/>个<br/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backtype\" value=\"" + backtype + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
    Response.Write("</form>");
    Response.Write("</form></div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    
     if (backtype == "gamesadmin")
    {
        Response.Write("<a href=\"" + this.http_start + "games/gamesadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    } else 
     {
         Response.Write("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
     }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


